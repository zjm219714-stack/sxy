import sys
import cv2
import numpy as np
import math
import socket
import struct
import time
import random
import datetime
from PySide6.QtWidgets import *
from PySide6.QtCore import *
from PySide6.QtGui import *

# ==========================================
# 1. 核心配置参数
# ==========================================
TARGET_W = 1280
TARGET_H = 720

UDP_IP = "0.0.0.0"
UDP_PORT = 8080
ZYNQ_IP = "192.168.1.10"
ZYNQ_CTRL_PORT = 8081

FREQ_DISPLAY_MIN_KHZ = 1.0
FREQ_DISPLAY_MAX_KHZ = 96.0
CLOUD_MAGIC = 0x5A5AA5A5
CLOUD_W = 32
CLOUD_H = 24
CLOUD_PACKET_BYTES = 12 + CLOUD_W * CLOUD_H
CLOUD_FLIP_Y = True

# ==========================================
# 2. 极致暗黑沉浸式样式表 (已适配 QSpinBox)
# ==========================================
PRO_DARK_STYLESHEET = """
QMainWindow { background-color: #121212; }
QWidget { color: #d4d4d4; font-family: 'Segoe UI', sans-serif; font-size: 11px; }
#Sidebar { background-color: #1e1e1e; border-right: 1px solid #333; }
QPushButton {
    background-color: transparent; border: none; padding: 12px 5px;
    color: #a0a0a0; font-weight: bold; border-radius: 4px;
}
QPushButton:hover { background-color: #333; color: #ffffff; }
QPushButton:checked { background-color: #2a2a2b; color: #4fc1ff; border-left: 3px solid #4fc1ff; }
QPushButton:disabled { color: #555; }
QDoubleSpinBox, QSpinBox, QComboBox {
    background-color: #252526; color: #4fc1ff; border: 1px solid #3e3e42;
    border-radius: 2px; padding: 2px;
}
QComboBox::drop-down { border: none; width: 15px;}
QLabel { color: #888; }
"""


class AcousticMainWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Acoustic Imager Pro - 真·云图极速联调版")
        self.resize(1360, 720)
        self.setStyleSheet(PRO_DARK_STYLESHEET)

        self.cap = cv2.VideoCapture(0)
        self.cap.set(cv2.CAP_PROP_FRAME_WIDTH, TARGET_W)
        self.cap.set(cv2.CAP_PROP_FRAME_HEIGHT, TARGET_H)

        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.sock.bind((UDP_IP, UDP_PORT))
        self.sock.setblocking(False)

        self.smooth_pwr, self.smooth_freq = 0.0, 0.0
        self.last_recv_time = 0.0
        self.is_previewing = False
        self.is_recording = False
        self.video_writer = None
        self.latest_rendered_frame = None

        gradient = np.linspace(255, 0, 256, dtype=np.uint8)
        gradient = np.tile(gradient, (20, 1)).T
        self.colorbar_img = cv2.applyColorMap(gradient, cv2.COLORMAP_JET)
        self.colorbar_img = cv2.resize(self.colorbar_img, (15, 300))

        self.init_ui()
        self.timer = QTimer(self)
        self.timer.timeout.connect(self.update_frame)
        self.timer.start(30)

    def init_ui(self):
        central_widget = QWidget()
        self.setCentralWidget(central_widget)
        main_layout = QHBoxLayout(central_widget)
        main_layout.setContentsMargins(0, 0, 0, 0)
        main_layout.setSpacing(0)

        sidebar = QWidget()
        sidebar.setObjectName("Sidebar")
        sidebar.setFixedWidth(85)
        side_layout = QVBoxLayout(sidebar)
        side_layout.setContentsMargins(5, 20, 5, 20)
        side_layout.setSpacing(10)

        self.btn_preview = QPushButton("PREVIEW\n开始")
        self.btn_preview.setCheckable(True)
        self.btn_record = QPushButton("REC\n录像")
        self.btn_record.setCheckable(True)
        self.btn_capture = QPushButton("SNAP\n截图")

        side_layout.addWidget(self.btn_preview)
        side_layout.addWidget(self.btn_record)
        side_layout.addWidget(self.btn_capture)

        side_layout.addStretch()

        # ==========================================
        # 新增：图像标定校正控件
        # ==========================================
        side_layout.addWidget(QLabel("X偏移(左右)"), alignment=Qt.AlignCenter)
        self.spin_offset_x = QSpinBox()
        self.spin_offset_x.setRange(-500, 500)
        self.spin_offset_x.setValue(0)
        self.spin_offset_x.setSingleStep(10)
        side_layout.addWidget(self.spin_offset_x)

        side_layout.addWidget(QLabel("Y偏移(上下)"), alignment=Qt.AlignCenter)
        self.spin_offset_y = QSpinBox()
        self.spin_offset_y.setRange(-500, 500)
        self.spin_offset_y.setValue(0)
        self.spin_offset_y.setSingleStep(10)
        side_layout.addWidget(self.spin_offset_y)

        # 加一根分割线
        line = QFrame()
        line.setFrameShape(QFrame.HLine)
        line.setStyleSheet("background-color: #333;")
        side_layout.addWidget(line)
        # ==========================================

        side_layout.addWidget(QLabel("场景预设"), alignment=Qt.AlignCenter)
        self.combo_scenario = QComboBox()
        self.combo_scenario.addItems(["气漏(静)", "气漏(噪)", "局放", "自定义"])
        side_layout.addWidget(self.combo_scenario)

        side_layout.addWidget(QLabel("Min(kHz)"), alignment=Qt.AlignCenter)
        self.spin_fmin = QDoubleSpinBox()
        self.spin_fmin.setRange(FREQ_DISPLAY_MIN_KHZ, FREQ_DISPLAY_MAX_KHZ)
        self.spin_fmin.setValue(1.0)
        side_layout.addWidget(self.spin_fmin)

        side_layout.addWidget(QLabel("Max(kHz)"), alignment=Qt.AlignCenter)
        self.spin_fmax = QDoubleSpinBox()
        self.spin_fmax.setRange(FREQ_DISPLAY_MIN_KHZ, FREQ_DISPLAY_MAX_KHZ)
        self.spin_fmax.setValue(96.0)
        side_layout.addWidget(self.spin_fmax)

        side_layout.addWidget(QLabel("门限(dB)"), alignment=Qt.AlignCenter)
        self.spin_thresh = QDoubleSpinBox()
        self.spin_thresh.setRange(0.0, 100.0)
        self.spin_thresh.setValue(20.0)
        self.spin_thresh.setSingleStep(2.0)
        side_layout.addWidget(self.spin_thresh)

        self.video_label = QLabel()
        self.video_label.setAlignment(Qt.AlignCenter)
        self.video_label.setMinimumSize(TARGET_W, TARGET_H)

        main_layout.addWidget(sidebar)
        main_layout.addWidget(self.video_label, stretch=1)

        self.btn_preview.clicked.connect(self.toggle_preview)
        self.btn_record.clicked.connect(self.toggle_record)
        self.btn_capture.clicked.connect(self.capture_screenshot)
        self.combo_scenario.currentIndexChanged.connect(self.on_scenario_changed)
        self.spin_fmin.valueChanged.connect(self.send_freq_band_cmd)
        self.spin_fmax.valueChanged.connect(self.send_freq_band_cmd)

    def on_scenario_changed(self, index):
        if index == 0:
            self.spin_fmin.setValue(20.0)
            self.spin_fmax.setValue(96.0)
        elif index == 1:
            self.spin_fmin.setValue(20.0)
            self.spin_fmax.setValue(96.0)
        elif index == 2:
            self.spin_fmin.setValue(1.0)
            self.spin_fmax.setValue(96.0)
        self.send_freq_band_cmd()

    def send_control_cmd(self, cmd_value):
        try:
            self.sock.sendto(struct.pack('<I', cmd_value), (ZYNQ_IP, ZYNQ_CTRL_PORT))
        except Exception:
            pass

    def send_freq_band_cmd(self):
        f_min = self.spin_fmin.value()
        f_max = self.spin_fmax.value()
        if f_min >= f_max:
            return
        try:
            self.sock.sendto(struct.pack('<Iff', 4, f_min, f_max), (ZYNQ_IP, ZYNQ_CTRL_PORT))
        except Exception:
            pass

    def toggle_preview(self, checked):
        self.is_previewing = checked
        if checked:
            self.send_freq_band_cmd()
            self.send_control_cmd(2)
            self.btn_preview.setText("STOP\n停止")
        else:
            self.send_control_cmd(3)
            self.btn_preview.setText("PREVIEW\n开始")
            self.smooth_pwr = 0.0

    def capture_screenshot(self):
        if self.latest_rendered_frame is not None:
            ts = time.strftime("%Y%m%d_%H%M%S")
            cv2.imwrite(f"Acoustic_Capture_{ts}.png", self.latest_rendered_frame)

    def toggle_record(self, checked):
        if checked:
            ts = time.strftime("%Y%m%d_%H%M%S")
            fourcc = cv2.VideoWriter_fourcc(*'mp4v')
            self.video_writer = cv2.VideoWriter(f"Record_{ts}.mp4", fourcc, 30.0, (TARGET_W, TARGET_H))
            if self.video_writer.isOpened():
                self.is_recording = True
                self.btn_record.setStyleSheet("color: #ff4a4a;")
            else:
                self.btn_record.setChecked(False)
        else:
            self.is_recording = False
            self.btn_record.setStyleSheet("")
            if self.video_writer:
                self.video_writer.release()
                self.video_writer = None

    # ==========================================
    # 核心：网络诊断与安全云图渲染
    # ==========================================
    def update_frame(self):
        current_time = time.time()
        ret, frame = self.cap.read()
        if not ret:
            frame = np.zeros((TARGET_H, TARGET_W, 3), dtype=np.uint8)
        else:
            frame = cv2.resize(frame, (TARGET_W, TARGET_H))

        real_h, real_w = frame.shape[:2]
        dyn_thresh = self.spin_thresh.value()
        current_fmin = self.spin_fmin.value()
        current_fmax = self.spin_fmax.value()
        # ==========================================
        # 核心修改：将底层硬件偏差设为基准零点
        # ==========================================
        #BASE_OFFSET_X = -130
        #BASE_OFFSET_Y = 110+110-140  # 隐藏的绝对物理偏差
        BASE_OFFSET_X = 0
        BASE_OFFSET_Y = 0  # 隐藏的绝对物理偏差
        # 获取UI标定参数
        # 实际偏移量 = 用户 UI 的微调值 + 底层物理偏差
        offset_x = self.spin_offset_x.value() + BASE_OFFSET_X
        offset_y = self.spin_offset_y.value() + BASE_OFFSET_Y

        # 1. 安全且透彻地清空 UDP 缓冲区，捕捉最新的有效包
        latest_valid_data = None
        while True:
            try:
                data, addr = self.sock.recvfrom(2048)
                if not self.is_previewing: continue

                # UDP protocol check: current firmware should send 780-byte cloud packets.
                if len(data) == 16:
                    print("\n[警告] 收到了 16 字节旧协议包，当前界面需要 780 字节云图包。")
                    continue
                elif len(data) == CLOUD_PACKET_BYTES:
                    latest_valid_data = data
                else:
                    print(f"[UDP] 忽略未知长度数据包: {len(data)} bytes")
            except:
                break

        grid_data = None

        # 2. 如果拿到了新协议数据，立刻更新底层状态 (确保 HUD 永远是活的)
        if latest_valid_data is not None:
            magic, freq_raw, pwr_raw = struct.unpack_from('<Iff', latest_valid_data, 0)

            if magic == CLOUD_MAGIC:
                self.last_recv_time = current_time
                pwr_db = 10.0 * math.log10(pwr_raw) if pwr_raw > 1.0 else 0.0
                freq_khz = freq_raw / 1000.0

                # 无论云图出不出得来，让 UI 数据一直跳动，给你安全感
                self.smooth_freq = freq_raw
                self.smooth_pwr += 0.3 * (pwr_db - self.smooth_pwr)

                # 只有当你设定的门限和频率均满足时，才提取云图矩阵
                if pwr_db > dyn_thresh and (current_fmin <= freq_khz <= current_fmax):
                    grid_data = np.frombuffer(
                        latest_valid_data,
                        dtype=np.uint8,
                        count=CLOUD_W * CLOUD_H,
                        offset=12
                    ).reshape((CLOUD_H, CLOUD_W))
                    if CLOUD_FLIP_Y:
                        grid_data = np.flipud(grid_data)
                else:
                    # Debug 提示：告诉你为什么没画云
                    print(f"[过滤拦截] 当前强度 {pwr_db:.1f}dB, 频率 {freq_khz:.1f}kHz。未满足 UI 设定条件，故隐藏云图。")
        else:
            if current_time - self.last_recv_time > 0.5:
                self.smooth_pwr += 0.3 * (0.0 - self.smooth_pwr)

        # 3. 云图的防弹级 OpenCV 渲染
        if grid_data is not None:
            # 归一化
            norm_grid = grid_data.astype(np.float32) / 255.0

            # 1. 提高基础门限 (例如从 0.15 提高到 0.4)，直接砍掉边缘低能量底噪
            norm_grid = np.clip((norm_grid - 0.4) / 0.6, 0.0, 1.0)

            # 2. 【核心缩圈魔法】引入非线性 Gamma 映射 (2次方或3次方)
            norm_grid = np.power(norm_grid, 3.0)

            heatmap_resized = cv2.resize(norm_grid, (real_w, real_h), interpolation=cv2.INTER_CUBIC)

            # ==========================================
            # 新增：仿射变换平移 (执行 UI 人为偏移设定)
            # ==========================================
            if offset_x != 0 or offset_y != 0:
                M = np.float32([[1, 0, offset_x], [0, 1, offset_y]])
                heatmap_resized = cv2.warpAffine(heatmap_resized, M, (real_w, real_h))
            # ==========================================

            # 【致命 BUG 修复点】：Bicubic 会在边缘产生负数振铃，必须强制二次限幅，否则颜色会崩溃成乱码！
            heatmap_resized = np.clip(heatmap_resized, 0.0, 1.0)

            heatmap_gray = (heatmap_resized * 255).astype(np.uint8)
            heatmap_color = cv2.applyColorMap(heatmap_gray, cv2.COLORMAP_JET).astype(float)

            # Alpha 遮罩
            alpha_mask = heatmap_resized[:, :, np.newaxis] * 0.75
            blended = frame.astype(float) * (1.0 - alpha_mask) + heatmap_color * alpha_mask
            frame = blended.astype(np.uint8)

            # 画峰值十字星 (基于平移后的矩阵自动寻找，PEAK标记会跟着一起动！)
            min_val, max_val, min_loc, max_loc = cv2.minMaxLoc(heatmap_resized)
            if max_val > 0.1:
                cv2.drawMarker(frame, max_loc, (0, 0, 0), markerType=cv2.MARKER_CROSS, markerSize=18, thickness=2)
                cv2.putText(frame, "PEAK", (max_loc[0] + 10, max_loc[1] + 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0),
                            2)

        # 4. 渲染 HUD OSD
        now = datetime.datetime.now()
        time_str = now.strftime("%Y-%m-%d  %H:%M:%S")
        cv2.putText(frame, time_str, (20, 30), cv2.FONT_HERSHEY_SIMPLEX, 0.6, (0, 0, 0), 2, cv2.LINE_AA)
        cv2.putText(frame, "Acoustic Imager Pro R&D Device", (20, 60), cv2.FONT_HERSHEY_SIMPLEX, 0.6, (0, 0, 0), 2,
                    cv2.LINE_AA)

        cv2.putText(frame, f"Det. Band : {current_fmin:.2f}KHz - {current_fmax:.2f}KHz", (20, real_h - 70),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.55, (0, 0, 0), 2)

        cv2.putText(frame, f"Peak Freq : {self.smooth_freq / 1000:.2f} KHz", (20, real_h - 45),
                    cv2.FONT_HERSHEY_SIMPLEX, 0.55, (0, 0, 0), 2)
        cv2.putText(frame, f"Peak Pwr  : {self.smooth_pwr:.2f} dB", (20, real_h - 20), cv2.FONT_HERSHEY_SIMPLEX, 0.55,
                    (0, 0, 0), 2)

        cb_x, cb_y = real_w - 180, 100
        frame[cb_y:cb_y + 300, cb_x:cb_x + 15] = self.colorbar_img
        cv2.putText(frame, f"{dyn_thresh + 40:.1f}dB", (cb_x - 15, cb_y - 10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 0, 0),
                    2)
        cv2.putText(frame, f"{dyn_thresh - 10:.1f}dB", (cb_x - 15, cb_y + 325), cv2.FONT_HERSHEY_SIMPLEX, 0.5,
                    (0, 0, 0), 2)

        spec_x = real_w - 60
        cv2.line(frame, (spec_x, 50), (spec_x, real_h - 50), (100, 100, 100), 1)
        for i in range(0, 97, 16):
            y_pos = int(real_h - 50 - (i / FREQ_DISPLAY_MAX_KHZ) * (real_h - 100))
            cv2.line(frame, (spec_x, y_pos), (spec_x + 5, y_pos), (150, 150, 150), 1)
            cv2.putText(frame, f"{i}k", (spec_x + 10, y_pos + 4), cv2.FONT_HERSHEY_SIMPLEX, 0.35, (0, 0, 0), 1)

        for i in range(50, real_h - 50, 3):
            bar_len = random.randint(1, 5)
            pixel_freq = FREQ_DISPLAY_MAX_KHZ * (1.0 - (i - 50) / (real_h - 100))
            if current_fmin < pixel_freq < current_fmax and self.smooth_pwr > dyn_thresh:
                diff = abs(pixel_freq - (self.smooth_freq / 1000.0))
                if diff < 2.0:
                    bar_len += int((2.0 - diff) * 15 * (self.smooth_pwr / 50.0))
                else:
                    bar_len += random.randint(5, 12)
            bar_len = min(bar_len, 60)
            cv2.line(frame, (spec_x, i), (spec_x - bar_len, i), (0, 255, 0), 1)

        y_top = int(real_h - 50 - (current_fmax / FREQ_DISPLAY_MAX_KHZ) * (real_h - 100))
        y_btm = int(real_h - 50 - (current_fmin / FREQ_DISPLAY_MAX_KHZ) * (real_h - 100))
        blue_color = (255, 144, 30)
        cv2.rectangle(frame, (spec_x - 30, y_top), (spec_x - 1, y_btm), blue_color, 1)
        cv2.rectangle(frame, (spec_x - 70, y_top - 8), (spec_x - 30, y_top + 8), blue_color, -1)
        cv2.putText(frame, f"{current_fmax:.1f}k", (spec_x - 68, y_top + 4), cv2.FONT_HERSHEY_SIMPLEX, 0.35, (0, 0, 0),
                    1)
        cv2.rectangle(frame, (spec_x - 70, y_btm - 8), (spec_x - 30, y_btm + 8), blue_color, -1)
        cv2.putText(frame, f"{current_fmin:.1f}k", (spec_x - 68, y_btm + 4), cv2.FONT_HERSHEY_SIMPLEX, 0.35, (0, 0, 0),
                    1)

        if self.is_recording and int(current_time * 2) % 2 == 0:
            cv2.circle(frame, (real_w - 230, 45), 6, (0, 0, 255), -1)
            cv2.putText(frame, "REC", (real_w - 215, 50), cv2.FONT_HERSHEY_SIMPLEX, 0.6, (0, 0, 255), 2)

        self.latest_rendered_frame = frame.copy()
        if self.is_recording and self.video_writer:
            self.video_writer.write(self.latest_rendered_frame)

        rgb_img = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
        q_img = QImage(rgb_img.data, real_w, real_h, real_w * 3, QImage.Format_RGB888)
        self.video_label.setPixmap(QPixmap.fromImage(q_img))

    def closeEvent(self, event):
        if self.is_recording and self.video_writer: self.video_writer.release()
        self.cap.release()
        self.sock.close()
        event.accept()


if __name__ == '__main__':
    app = QApplication(sys.argv)
    win = AcousticMainWindow()
    win.show()
    sys.exit(app.exec())