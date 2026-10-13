module multichannel_buffer (
    input  wire          clk,
    input  wire          rst_n,
    
    // Input Interface
    input  wire          wr_en,
    input  wire [1023:0] wr_data,
    
    // Algorithm Read Interface
    input  wire [6:0]    rd_addr,
    output reg  [1023:0] rd_data
);

    // Flattened RAM: 128 locations, each 1024 bits wide
    // This perfectly matches standard BRAM inference templates
    (* ram_style = "block" *) reg [1023:0] ram_array [0:127]; 
    
    reg [6:0] wr_addr;

    // Write Logic (Synchronous, single assignment)
    always @(posedge clk) begin
        if (!rst_n) begin
            wr_addr <= 7'd0;
        end else if (wr_en) begin
            ram_array[wr_addr] <= wr_data;
            wr_addr <= wr_addr + 1'b1;
        end
    end

    // Read Logic (Synchronous, single assignment)
    always @(posedge clk) begin
        rd_data <= ram_array[rd_addr];
    end

    // --- ILA Debug Probes ---
    (* mark_debug = "true" *) wire [15:0] dbg_rd_ch0  = rd_data[15:0];       // Channel 0
    (* mark_debug = "true" *) wire [15:0] dbg_rd_ch1  = rd_data[31:16];      // Channel 1
    (* mark_debug = "true" *) wire [15:0] dbg_rd_ch63 = rd_data[1023:1008];  // Channel 63
    
    (* mark_debug = "true" *) wire [6:0]  dbg_rd_addr = rd_addr;
    (* mark_debug = "true" *) wire        dbg_wr_en   = wr_en;
    (* mark_debug = "true" *) wire [6:0]  dbg_wr_addr = wr_addr;

endmodule