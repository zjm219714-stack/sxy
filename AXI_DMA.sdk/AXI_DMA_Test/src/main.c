#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <math.h>
#include <string.h>
#include "xparameters.h"
#include "xsdps.h"
#include "xil_printf.h"
#include "ff.h"
#include "xil_cache.h"
#include "xaxidma.h"
#include "COMMON.h"

#include "lwip/udp.h"
#include "lwip/init.h"
#include "lwip/inet.h"
#include "netif/xadapter.h"

#define NUM_CHANNELS          64
#define POINTS_PER_FRAME      128
#define TOTAL_SAMPLES         (NUM_CHANNELS * POINTS_PER_FRAME)
#define SAMPLING_RATE         75000.0f
#define SOUND_SPEED           343.0f
#define RX_FRAME_BYTES        (TOTAL_SAMPLES * 8)
#define GRID_POINTS           1681

#define TARGET_PC_IP          "192.168.1.33"
#define UDP_PORT              8080
#define LOCAL_CTRL_PORT       8081

#define MAX_SOURCES           2
#define MAX_ACTIVE_BINS       6
#define PD_MAX_ACTIVE_BINS    16
#define PD_DEFAULT_MIN_HZ     18000.0f
#define PD_DEFAULT_MAX_HZ     35000.0f
#define PD_MAP_KEEP_FACTOR    0.92f
#define CLOUD_W               32
#define CLOUD_H               24
#define CLOUD_MAGIC           0x5A5AA5A5u
#define WAVE_MAGIC            0x57415645u
#define WAVEFORM_POINTS       128
#define WAVEFORM_CHANNEL      0

uint64_t RX_Buf[TOTAL_SAMPLES] __attribute__ ((aligned(64)));
#ifdef XPAR_AXI_DMA_RAW_0_DEVICE_ID
int16_t Waveform_Buf[WAVEFORM_POINTS] __attribute__ ((aligned(64)));
static XAxiDma RawWaveDma;
static int raw_wave_dma_active = 0;
#endif
float dist_table[GRID_POINTS * NUM_CHANNELS] __attribute__ ((aligned(64)));
float energy_map[GRID_POINTS];
static float pd_energy_map[GRID_POINTS];
static int pd_map_valid = 0;
float sine_lut[4096];

typedef struct { float re, im; } ComplexFloat;
ComplexFloat obs_vector[NUM_CHANNELS];

extern XAxiDma AxiDma0;
extern volatile int RxDone, Error;
static FATFS SD_Dev;

static struct netif server_netif;
static struct udp_pcb *send_pcb;
static struct udp_pcb *recv_pcb;
static ip_addr_t pc_ipaddr;

typedef enum {
    MODE_SINGLE_SOURCE = 0,
    MODE_MULTI_SOURCE = 1,
    MODE_PARTIAL_DISCHARGE = 2
} WorkMode_t;

volatile WorkMode_t current_mode = MODE_SINGLE_SOURCE;
volatile int is_locating = 0;
volatile float freq_min_hz = 1000.0f;
volatile float freq_max_hz = 38500.0f;

typedef struct {
    uint32_t magic;
    float peak_freq;
    float peak_pwr;
    uint8_t grid[CLOUD_W * CLOUD_H];
} __attribute__((packed)) CloudPacket_t;

typedef struct {
    uint32_t magic;
    float sampling_rate;
    uint16_t channel;
    uint16_t sample_count;
    int16_t samples[WAVEFORM_POINTS];
} __attribute__((packed)) WavePacket_t;

void init_sine_lut();
static inline float fast_sin(float p);
static inline float fast_cos(float p);
void extract_obs_vector(int bin);
float get_bin_power(int bin);
int find_peak_bin();
int find_top_n_bins(int* out_bins, int max_n);
int find_pd_bins(int* out_bins, float* out_weights, int max_n, float* center_freq);
void run_beamforming(float freq, int clear_map, float weight);
void reset_pd_accumulation(void);
void accumulate_pd_map(void);
void network_init_setup();
void send_udp_cloudmap(float peak_freq, float peak_pwr);
#ifdef XPAR_AXI_DMA_RAW_0_DEVICE_ID
static void init_raw_wave_dma(void);
static void service_raw_wave_dma(void);
static void send_udp_waveform(void);
#endif

static int freq_to_start_bin(void) {
    float bin_hz = SAMPLING_RATE / (float)POINTS_PER_FRAME;
    int b = (int)ceilf(freq_min_hz / bin_hz);
    if (b < 1) b = 1;
    if (b > 63) b = 63;
    return b;
}

static int freq_to_end_bin(void) {
    float bin_hz = SAMPLING_RATE / (float)POINTS_PER_FRAME;
    int b = (int)floorf(freq_max_hz / bin_hz);
    if (b < 1) b = 1;
    if (b > 63) b = 63;
    return b;
}

void udp_recv_callback(void *arg, struct udp_pcb *pcb, struct pbuf *p, const ip_addr_t *addr, u16_t port) {
    if (p != NULL) {
        if (p->len >= 4) {
            const uint8_t *payload = (const uint8_t *)p->payload;
            uint32_t cmd;
            memcpy(&cmd, payload, 4);

            if (cmd == 4 && p->len >= 12) {
                float f_min_khz, f_max_khz;
                memcpy(&f_min_khz, payload + 4, 4);
                memcpy(&f_max_khz, payload + 8, 4);

                if (f_min_khz < 1.0f) f_min_khz = 1.0f;
                if (f_max_khz > 38.5f) f_max_khz = 38.5f;
                if (f_min_khz < f_max_khz) {
                    freq_min_hz = f_min_khz * 1000.0f;
                    freq_max_hz = f_max_khz * 1000.0f;
                    xil_printf("\r\n[CTRL] Freq band: %d Hz - %d Hz\r\n", (int)freq_min_hz, (int)freq_max_hz);
                }
            } else if (p->len == 4) {
                if (cmd == 0) {
                    current_mode = MODE_SINGLE_SOURCE;
                    xil_printf("\r\n[CTRL] Mode: SINGLE SOURCE\r\n");
                } else if (cmd == 1) {
                    current_mode = MODE_MULTI_SOURCE;
                    xil_printf("\r\n[CTRL] Mode: MULTI SOURCE\r\n");
                } else if (cmd == 5) {
                    current_mode = MODE_PARTIAL_DISCHARGE;
                    freq_min_hz = PD_DEFAULT_MIN_HZ;
                    freq_max_hz = PD_DEFAULT_MAX_HZ;
                    reset_pd_accumulation();
                    xil_printf("\r\n[CTRL] Mode: PARTIAL DISCHARGE (%d Hz - %d Hz)\r\n",
                               (int)freq_min_hz, (int)freq_max_hz);
                } else if (cmd == 2) {
                    is_locating = 1;
                    xil_printf("\r\n[CTRL] Command: START Locating\r\n");
                } else if (cmd == 3) {
                    is_locating = 0;
                    xil_printf("\r\n[CTRL] Command: STOP Locating\r\n");
                }
            }
        }
        pbuf_free(p);
    }
}

int main() {
    FIL file_dist;
    UINT br;

    xil_printf("\r\n--- 64-Ch Acoustic Camera: Pro CloudMap ---\r\n");

    ScuGic_Init();
    AXI_DMA_Init(&AxiDma0, XPAR_AXI_DMA_0_DEVICE_ID);
#ifdef XPAR_AXI_DMA_RAW_0_DEVICE_ID
    init_raw_wave_dma();
#endif
    AXI_DMA_RxInt_Init(&AxiDma0, XPAR_FABRIC_AXI_DMA_0_S2MM_INTROUT_INTR, RxIntrHandler);
    init_sine_lut();

    if (f_mount(&SD_Dev, "0:/", 1) == FR_OK) {
        if (f_open(&file_dist, "dist.bin", FA_READ) == FR_OK) {
            f_read(&file_dist, dist_table, (GRID_POINTS * NUM_CHANNELS * 4), &br);
            f_close(&file_dist);
            xil_printf("Algorithm: dist.bin loaded successfully.\r\n");
        } else {
            xil_printf("Fatal Error: dist.bin not found on SD card!\r\n");
            return -1;
        }
    }

    network_init_setup();
    xil_printf("System Ready. Waiting for PC 'START' Command...\r\n");

    while(1) {
        xemacif_input(&server_netif);

        if (is_locating) {
            RxDone = 0; Error = 0;
            Xil_DCacheInvalidateRange((UINTPTR)RX_Buf, RX_FRAME_BYTES);
            XAxiDma_SimpleTransfer(&AxiDma0, (UINTPTR)RX_Buf, RX_FRAME_BYTES, XAXIDMA_DEVICE_TO_DMA);

            while (!RxDone && !Error && is_locating) {
                xemacif_input(&server_netif);
            }

            if (!Error && is_locating) {
                if (current_mode == MODE_SINGLE_SOURCE) {
                    int active_bins[MAX_ACTIVE_BINS];
                    int active_count = find_top_n_bins(active_bins, MAX_ACTIVE_BINS);

                    if (active_count > 0) {
                        float main_freq = (float)active_bins[0] *
                                          (SAMPLING_RATE / (float)POINTS_PER_FRAME);

                        for (int i = 0; i < active_count; i++) {
                            float freq = (float)active_bins[i] *
                                         (SAMPLING_RATE / (float)POINTS_PER_FRAME);
                            extract_obs_vector(active_bins[i]);
                            run_beamforming(freq, i == 0, 1.0f);
                        }

                        float max_e = 0.0001f;
                        for (int i = 0; i < GRID_POINTS; i++) {
                            if (energy_map[i] > max_e) max_e = energy_map[i];
                        }
                        send_udp_cloudmap(main_freq, max_e);
                    }
                } else if (current_mode == MODE_MULTI_SOURCE) {
                    int peak_bins[MAX_SOURCES];
                    int num_peaks = find_top_n_bins(peak_bins, MAX_SOURCES);

                    float main_peak_pwr = 0.0f;
                    float main_freq = 0.0f;
                    float total_max_e = 0.0001f;
                    int valid_sources_rendered = 0;

                    for(int p = 0; p < num_peaks; p++) {
                        float current_pwr = get_bin_power(peak_bins[p]);

                        if (p == 0) {
                            main_peak_pwr = current_pwr;
                            main_freq = (float)peak_bins[0] * (SAMPLING_RATE / (float)POINTS_PER_FRAME);
                        } else if (current_pwr < main_peak_pwr * 0.15f) {
                            continue;
                        }

                        float freq = (float)peak_bins[p] * (SAMPLING_RATE / (float)POINTS_PER_FRAME);
                        extract_obs_vector(peak_bins[p]);
                        run_beamforming(freq, (valid_sources_rendered == 0) ? 1 : 0, 1.0f);
                        valid_sources_rendered++;
                    }

                    if (valid_sources_rendered > 0) {
                        for(int i = 0; i < GRID_POINTS; i++) {
                            if(energy_map[i] > total_max_e) total_max_e = energy_map[i];
                        }
                        send_udp_cloudmap(main_freq, total_max_e);
                    }
                } else if (current_mode == MODE_PARTIAL_DISCHARGE) {
                    int pd_bins[PD_MAX_ACTIVE_BINS];
                    float pd_weights[PD_MAX_ACTIVE_BINS];
                    float center_freq = 0.0f;
                    int pd_count = find_pd_bins(pd_bins, pd_weights, PD_MAX_ACTIVE_BINS, &center_freq);

                    if (pd_count > 0) {
                        for (int i = 0; i < pd_count; i++) {
                            float freq = (float)pd_bins[i] *
                                         (SAMPLING_RATE / (float)POINTS_PER_FRAME);
                            extract_obs_vector(pd_bins[i]);
                            run_beamforming(freq, i == 0, pd_weights[i]);
                        }

                        accumulate_pd_map();
                        float max_e = 0.0001f;
                        for (int g = 0; g < GRID_POINTS; g++) {
                            if (energy_map[g] > max_e) max_e = energy_map[g];
                        }
                        send_udp_cloudmap(center_freq, max_e);
                    }
                }
#ifdef XPAR_AXI_DMA_RAW_0_DEVICE_ID
                service_raw_wave_dma();
#endif
            }
        }
    }
    return 0;
}

void init_sine_lut() {
    for(int i = 0; i < 4096; i++) {
        sine_lut[i] = sinf((float)i * 2.0f * 3.14159265f / 4096.0f);
    }
}

static inline float fast_sin(float p) {
    int index = (int)(p * 651.8986f) & 4095;
    return sine_lut[index];
}

static inline float fast_cos(float p) {
    int index = (int)(p * 651.8986f + 1024.0f) & 4095;
    return sine_lut[index];
}

void extract_obs_vector(int bin) {
    float total_pwr = 0.0f;

    for (int hw_ch = 0; hw_ch < NUM_CHANNELS; hw_ch++) {
        uint64_t raw = RX_Buf[hw_ch * POINTS_PER_FRAME + bin];
        int32_t re_i = (int32_t)(raw & 0xFFFFFF);
        int32_t im_i = (int32_t)((raw >> 24) & 0xFFFFFF);
        if (re_i & 0x800000) re_i |= 0xFF000000;
        if (im_i & 0x800000) im_i |= 0xFF000000;
        total_pwr += (float)re_i * re_i + (float)im_i * im_i;
    }

    /* Normalize the complete array, not each channel, to retain relative amplitudes. */
    float scale = (total_pwr > 0.0f) ? sqrtf((float)NUM_CHANNELS / total_pwr) : 0.0f;

    for (int hw_ch = 0; hw_ch < NUM_CHANNELS; hw_ch++) {
        uint64_t raw = RX_Buf[hw_ch * POINTS_PER_FRAME + bin];
        int32_t re_i = (int32_t)(raw & 0xFFFFFF);
        int32_t im_i = (int32_t)((raw >> 24) & 0xFFFFFF);
        if (re_i & 0x800000) re_i |= 0xFF000000;
        if (im_i & 0x800000) im_i |= 0xFF000000;

        int line_idx = hw_ch % 8;
        int slot_idx = hw_ch / 8;
        int real_ch = line_idx * 8 + slot_idx;

        obs_vector[real_ch].re = (float)re_i * scale;
        obs_vector[real_ch].im = (float)im_i * scale;
    }
}

float get_bin_power(int bin) {
    float pwr_sum = 0.0f;

    for (int hw_ch = 0; hw_ch < NUM_CHANNELS; hw_ch++) {
        uint64_t raw = RX_Buf[hw_ch * POINTS_PER_FRAME + bin];
        int32_t re_i = (int32_t)(raw & 0xFFFFFF);
        int32_t im_i = (int32_t)((raw >> 24) & 0xFFFFFF);
        if (re_i & 0x800000) re_i |= 0xFF000000;
        if (im_i & 0x800000) im_i |= 0xFF000000;

        pwr_sum += (float)re_i * re_i + (float)im_i * im_i;
    }
    return pwr_sum / (float)NUM_CHANNELS;
}

int find_peak_bin() {
    int max_bin = -1;
    float max_pwr = 0.0f;
    int b_start = freq_to_start_bin();
    int b_end = freq_to_end_bin();

    if (b_end < b_start) return -1;

    for (int b = b_start; b <= b_end; b++) {
        float pwr = get_bin_power(b);
        if (pwr > max_pwr) { max_pwr = pwr; max_bin = b; }
    }
    return max_bin;
}

int find_top_n_bins(int* out_bins, int max_n) {
    float pwr_array[64] = {0};
    int b_start = freq_to_start_bin();
    int b_end = freq_to_end_bin();

    if (b_start < 2) b_start = 2;
    if (b_end > 62) b_end = 62;
    if (b_end < b_start || max_n <= 0) return 0;

    int fill_start = b_start - 1;
    int fill_end = b_end + 1;
    if (fill_start < 1) fill_start = 1;
    if (fill_end > 63) fill_end = 63;

    float total_pwr = 0.0f;
    int max_bin = b_start;
    float max_pwr = 0.0f;
    for (int b = fill_start; b <= fill_end; b++) {
        pwr_array[b] = get_bin_power(b);
        if (b >= b_start && b <= b_end) {
            total_pwr += pwr_array[b];
            if (pwr_array[b] > max_pwr) {
                max_pwr = pwr_array[b];
                max_bin = b;
            }
        }
    }

    if (max_pwr <= 0.0f) return 0;

    float mean_pwr = total_pwr / (float)(b_end - b_start + 1);
    float adaptive_threshold = mean_pwr * 1.15f;

    typedef struct { int bin; float pwr; } Peak;
    Peak peaks[64];
    int peak_count = 0;

    for (int b = b_start; b <= b_end; b++) {
        if (pwr_array[b] >= adaptive_threshold &&
            pwr_array[b] >= pwr_array[b-1] && pwr_array[b] >= pwr_array[b+1]) {
            peaks[peak_count].bin = b;
            peaks[peak_count].pwr = pwr_array[b];
            peak_count++;
        }
    }

    /* A broad PD spectrum can have no strict local maximum. Keep its strongest bin. */
    if (peak_count == 0 && max_pwr > 0.0f) {
        peaks[0].bin = max_bin;
        peaks[0].pwr = max_pwr;
        peak_count = 1;
    }

    for (int i = 0; i < peak_count - 1; i++) {
        for (int j = 0; j < peak_count - i - 1; j++) {
            if (peaks[j].pwr < peaks[j+1].pwr) {
                Peak temp = peaks[j];
                peaks[j] = peaks[j+1];
                peaks[j+1] = temp;
            }
        }
    }

    int count = (peak_count < max_n) ? peak_count : max_n;
    for (int i = 0; i < count; i++) { out_bins[i] = peaks[i].bin; }
    return count;
}

int find_pd_bins(int* out_bins, float* out_weights, int max_n, float* center_freq) {
    float pwr_array[64] = {0};
    int b_start = freq_to_start_bin();
    int b_end = freq_to_end_bin();
    float total_pwr = 0.0f;
    float weighted_freq = 0.0f;
    float bin_hz = SAMPLING_RATE / (float)POINTS_PER_FRAME;

    if (b_start < 2) b_start = 2;
    if (b_end > 62) b_end = 62;
    if (b_end < b_start || max_n <= 0) return 0;

    for (int b = b_start; b <= b_end; b++) {
        pwr_array[b] = get_bin_power(b);
        total_pwr += pwr_array[b];
        weighted_freq += pwr_array[b] * ((float)b * bin_hz);
    }
    if (total_pwr <= 0.0f) return 0;

    *center_freq = weighted_freq / total_pwr;
    float mean_pwr = total_pwr / (float)(b_end - b_start + 1);
    int count = 0;
    while (count < max_n) {
        int best_bin = -1;
        float best_pwr = 0.0f;
        for (int b = b_start; b <= b_end; b++) {
            if (pwr_array[b] > best_pwr) {
                best_pwr = pwr_array[b];
                best_bin = b;
            }
        }
        if (best_bin < 0 || best_pwr <= 0.0f) break;

        out_bins[count] = best_bin;
        out_weights[count] = best_pwr / mean_pwr;
        if (out_weights[count] < 0.25f) out_weights[count] = 0.25f;
        if (out_weights[count] > 4.0f) out_weights[count] = 4.0f;
        pwr_array[best_bin] = -1.0f;
        count++;
    }
    return count;
}

void reset_pd_accumulation(void) {
    memset(pd_energy_map, 0, sizeof(pd_energy_map));
    pd_map_valid = 0;
}

void accumulate_pd_map(void) {
    for (int g = 0; g < GRID_POINTS; g++) {
        if (!pd_map_valid) {
            pd_energy_map[g] = energy_map[g];
        } else {
            pd_energy_map[g] = PD_MAP_KEEP_FACTOR * pd_energy_map[g] +
                               (1.0f - PD_MAP_KEEP_FACTOR) * energy_map[g];
        }
        energy_map[g] = pd_energy_map[g];
    }
    pd_map_valid = 1;
}

void run_beamforming(float freq, int clear_map, float weight) {
    float k = 2.0f * 3.14159265f * freq / SOUND_SPEED;
    for (int g = 0; g < GRID_POINTS; g++) {
        float s_re = 0.0f, s_im = 0.0f;
        int off = g * NUM_CHANNELS;
        for (int ch = 0; ch < NUM_CHANNELS; ch++) {
            float p = k * dist_table[off + ch];
            float wr = fast_cos(p), wi = fast_sin(p);
            s_re += obs_vector[ch].re * wr - obs_vector[ch].im * (-wi);
            s_im += obs_vector[ch].im * wr + obs_vector[ch].re * (-wi);
        }

        float raw_energy = s_re * s_re + s_im * s_im;
        float contribution = raw_energy * raw_energy * weight;

        if (clear_map) {
            energy_map[g] = contribution;
        } else {
            energy_map[g] += contribution;
        }
    }
}

#ifdef XPAR_AXI_DMA_RAW_0_DEVICE_ID
static void init_raw_wave_dma(void) {
    AXI_DMA_Init(&RawWaveDma, XPAR_AXI_DMA_RAW_0_DEVICE_ID);
}

static void service_raw_wave_dma(void) {
    if (!raw_wave_dma_active) {
        Xil_DCacheInvalidateRange((UINTPTR)Waveform_Buf, sizeof(Waveform_Buf));
        if (XAxiDma_SimpleTransfer(&RawWaveDma, (UINTPTR)Waveform_Buf,
                                   sizeof(Waveform_Buf), XAXIDMA_DEVICE_TO_DMA) == XST_SUCCESS) {
            raw_wave_dma_active = 1;
        }
        return;
    }

    if (!XAxiDma_Busy(&RawWaveDma, XAXIDMA_DEVICE_TO_DMA)) {
        Xil_DCacheInvalidateRange((UINTPTR)Waveform_Buf, sizeof(Waveform_Buf));
        send_udp_waveform();
        raw_wave_dma_active = 0;
    }
}

static void send_udp_waveform(void) {
    WavePacket_t pkt;
    pkt.magic = WAVE_MAGIC;
    pkt.sampling_rate = SAMPLING_RATE;
    pkt.channel = WAVEFORM_CHANNEL;
    pkt.sample_count = WAVEFORM_POINTS;
    memcpy(pkt.samples, Waveform_Buf, sizeof(Waveform_Buf));

    struct pbuf *p = pbuf_alloc(PBUF_TRANSPORT, sizeof(WavePacket_t), PBUF_RAM);
    if (p) {
        memcpy(p->payload, &pkt, sizeof(WavePacket_t));
        udp_send(send_pcb, p);
        pbuf_free(p);
    }
}
#endif

void network_init_setup() {
    ip_addr_t ipaddr, netmask, gw;
    unsigned char mac_addr[] = { 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

    lwip_init();
    IP4_ADDR(&ipaddr,  192, 168, 1, 10);
    IP4_ADDR(&netmask, 255, 255, 255, 0);
    IP4_ADDR(&gw,      192, 168, 1, 1);

    if (!xemac_add(&server_netif, &ipaddr, &netmask, &gw, mac_addr, XPAR_XEMACPS_0_BASEADDR)) {
        xil_printf("Error adding N/W interface\r\n");
        return;
    }
    netif_set_default(&server_netif);
    netif_set_up(&server_netif);

    send_pcb = udp_new();
    inet_aton(TARGET_PC_IP, &pc_ipaddr);
    udp_connect(send_pcb, &pc_ipaddr, UDP_PORT);

    recv_pcb = udp_new();
    udp_bind(recv_pcb, IP_ADDR_ANY, LOCAL_CTRL_PORT);
    udp_recv(recv_pcb, udp_recv_callback, NULL);
}

void send_udp_cloudmap(float peak_freq, float peak_pwr) {
    CloudPacket_t pkt;
    pkt.magic = CLOUD_MAGIC;
    pkt.peak_freq = peak_freq;
    pkt.peak_pwr = peak_pwr;

    float denominator = (peak_pwr > 0.0001f) ? peak_pwr : 1.0f;
    float scale = 255.0f / denominator;

    for(int y = 0; y < CLOUD_H; y++) {
        for(int x = 0; x < CLOUD_W; x++) {
            int src_x = (x * 40) / (CLOUD_W - 1);
            int src_y = (y * 40) / (CLOUD_H - 1);
            int src_idx = src_y * 41 + src_x;

            float val = energy_map[src_idx] * scale;
            if (val > 255.0f) val = 255.0f;
            if (val < 0.0f) val = 0.0f;

            pkt.grid[y * CLOUD_W + x] = (uint8_t)val;
        }
    }

    struct pbuf *p = pbuf_alloc(PBUF_TRANSPORT, sizeof(CloudPacket_t), PBUF_RAM);
    if (p) {
        memcpy(p->payload, &pkt, sizeof(CloudPacket_t));
        udp_send(send_pcb, p);
        pbuf_free(p);
    }
}
