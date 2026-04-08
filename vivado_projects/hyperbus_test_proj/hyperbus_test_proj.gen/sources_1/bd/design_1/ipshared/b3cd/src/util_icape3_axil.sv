module util_icape3_axil #(
    parameter int AXIL_ADDR_WIDTH = 8,
    parameter int AXIL_DATA_WIDTH = 32,
    // XCSU35P BSDL IDCODE with the revision nibble forced to 0.
    parameter logic [31:0] ICAPE3_DEVICE_ID = 32'h04E8_0093,
    parameter logic [31:0] VERSION_WORD = 32'h4943_5033
) (
    input  logic                         s_axi_aclk,
    input  logic                         s_axi_aresetn,
    input  logic [AXIL_ADDR_WIDTH-1:0]   s_axi_awaddr,
    input  logic                         s_axi_awvalid,
    output logic                         s_axi_awready,
    input  logic [AXIL_DATA_WIDTH-1:0]   s_axi_wdata,
    input  logic [(AXIL_DATA_WIDTH/8)-1:0] s_axi_wstrb,
    input  logic                         s_axi_wvalid,
    output logic                         s_axi_wready,
    output logic [1:0]                   s_axi_bresp,
    output logic                         s_axi_bvalid,
    input  logic                         s_axi_bready,
    input  logic [AXIL_ADDR_WIDTH-1:0]   s_axi_araddr,
    input  logic                         s_axi_arvalid,
    output logic                         s_axi_arready,
    output logic [AXIL_DATA_WIDTH-1:0]   s_axi_rdata,
    output logic [1:0]                   s_axi_rresp,
    output logic                         s_axi_rvalid,
    input  logic                         s_axi_rready
);

    localparam logic [AXIL_ADDR_WIDTH-1:0] ADDR_CONTROL = AXIL_ADDR_WIDTH'(8'h00);
    localparam logic [AXIL_ADDR_WIDTH-1:0] ADDR_STATUS  = AXIL_ADDR_WIDTH'(8'h04);
    localparam logic [AXIL_ADDR_WIDTH-1:0] ADDR_WBSTAR  = AXIL_ADDR_WIDTH'(8'h08);
    localparam logic [AXIL_ADDR_WIDTH-1:0] ADDR_VERSION = AXIL_ADDR_WIDTH'(8'h0C);

    localparam int CONTROL_IPROG_BIT      = 0;
    localparam int CONTROL_CLR_DONE_BIT   = 1;
    localparam int CONTROL_CLR_ERROR_BIT  = 2;

    localparam logic [31:0] ICAP_WORD_DUMMY        = 32'hFFFF_FFFF;
    localparam logic [31:0] ICAP_WORD_SYNC         = 32'hAA99_5566;
    localparam logic [31:0] ICAP_WORD_NOOP         = 32'h2000_0000;
    localparam logic [31:0] ICAP_WORD_WRITE_WBSTAR = 32'h3002_0001;
    localparam logic [31:0] ICAP_WORD_WRITE_CMD    = 32'h3000_8001;
    localparam logic [31:0] ICAP_WORD_IPROG        = 32'h0000_000F;

    typedef enum logic [1:0] {
        ICAP_IDLE = 2'd0,
        ICAP_SEND = 2'd1,
        ICAP_HOLD = 2'd2
    } icap_state_t;

    logic                         awaddr_valid_reg;
    logic [AXIL_ADDR_WIDTH-1:0]   awaddr_reg;
    logic                         wdata_valid_reg;
    logic [AXIL_DATA_WIDTH-1:0]   wdata_reg;
    logic [(AXIL_DATA_WIDTH/8)-1:0] wstrb_reg;
    logic                         bvalid_reg;
    logic                         araddr_valid_reg;
    logic [AXIL_ADDR_WIDTH-1:0]   araddr_reg;
    logic                         rvalid_reg;
    logic [AXIL_DATA_WIDTH-1:0]   rdata_reg;

    logic [31:0]                  wbstar_reg;
    logic                         iprog_done_reg;
    logic                         iprog_error_reg;
    logic                         iprog_busy_reg;
    logic                         iprog_start_pulse;

    logic [31:0]                  icap_i_reg;
    logic                         icap_csib_reg;
    logic                         icap_rdwrb_reg;
    logic [31:0]                  icap_o;
    logic                         icap_avail;
    logic                         icap_prdone;
    logic                         icap_prerror;
    logic [31:0]                  iprog_wbstar_reg;
    logic [3:0]                   icap_word_index_reg;
    icap_state_t                  icap_state_reg;

    logic                         icap_prdone_d1_reg;
    logic                         icap_prerror_d1_reg;

    logic                         write_fire;
    logic                         read_fire;
    logic [31:0]                  control_wdata;
    logic [31:0]                  wbstar_wdata;
    logic [31:0]                  status_readback;

    function automatic logic [31:0] apply_wstrb32(
        input logic [31:0] old_value,
        input logic [31:0] new_value,
        input logic [3:0]  strobe
    );
        apply_wstrb32 = old_value;
        if (strobe[0]) apply_wstrb32[7:0]   = new_value[7:0];
        if (strobe[1]) apply_wstrb32[15:8]  = new_value[15:8];
        if (strobe[2]) apply_wstrb32[23:16] = new_value[23:16];
        if (strobe[3]) apply_wstrb32[31:24] = new_value[31:24];
    endfunction

    function automatic logic [7:0] reverse8(input logic [7:0] value);
        reverse8 = {
            value[0], value[1], value[2], value[3],
            value[4], value[5], value[6], value[7]
        };
    endfunction

    function automatic logic [31:0] icap_encode_word(input logic [31:0] value);
        icap_encode_word = {
            reverse8(value[31:24]),
            reverse8(value[23:16]),
            reverse8(value[15:8]),
            reverse8(value[7:0])
        };
    endfunction

    function automatic logic [31:0] icap_seq_word(
        input logic [3:0]  index,
        input logic [31:0] boot_addr
    );
        unique case (index)
            4'd0:    icap_seq_word = ICAP_WORD_DUMMY;
            4'd1:    icap_seq_word = ICAP_WORD_SYNC;
            4'd2:    icap_seq_word = ICAP_WORD_NOOP;
            4'd3:    icap_seq_word = ICAP_WORD_WRITE_WBSTAR;
            4'd4:    icap_seq_word = boot_addr;
            4'd5:    icap_seq_word = ICAP_WORD_WRITE_CMD;
            4'd6:    icap_seq_word = ICAP_WORD_IPROG;
            default: icap_seq_word = ICAP_WORD_NOOP;
        endcase
    endfunction

    assign s_axi_awready = ~awaddr_valid_reg;
    assign s_axi_wready  = ~wdata_valid_reg;
    assign s_axi_bresp   = 2'b00;
    assign s_axi_bvalid  = bvalid_reg;
    assign s_axi_arready = ~araddr_valid_reg & ~rvalid_reg;
    assign s_axi_rdata   = rdata_reg;
    assign s_axi_rresp   = 2'b00;
    assign s_axi_rvalid  = rvalid_reg;

    assign write_fire = awaddr_valid_reg & wdata_valid_reg & ~bvalid_reg;
    assign read_fire  = araddr_valid_reg & ~rvalid_reg;

    assign control_wdata = apply_wstrb32(32'h0000_0000, wdata_reg, wstrb_reg);
    assign wbstar_wdata  = apply_wstrb32(wbstar_reg, wdata_reg, wstrb_reg);

    assign status_readback = {
        22'h000000,
        icap_avail,
        icap_prerror,
        icap_prdone,
        iprog_error_reg,
        iprog_done_reg,
        iprog_busy_reg,
        3'b000,
        (icap_state_reg != ICAP_IDLE)
    };

    always_ff @(posedge s_axi_aclk) begin
        if (!s_axi_aresetn) begin
            awaddr_valid_reg   <= 1'b0;
            awaddr_reg         <= '0;
            wdata_valid_reg    <= 1'b0;
            wdata_reg          <= '0;
            wstrb_reg          <= '0;
            bvalid_reg         <= 1'b0;
            araddr_valid_reg   <= 1'b0;
            araddr_reg         <= '0;
            rvalid_reg         <= 1'b0;
            rdata_reg          <= '0;
            wbstar_reg         <= 32'h0000_0000;
            iprog_done_reg     <= 1'b0;
            iprog_error_reg    <= 1'b0;
            iprog_start_pulse  <= 1'b0;
        end else begin
            iprog_start_pulse <= 1'b0;

            if (s_axi_awvalid && s_axi_awready) begin
                awaddr_valid_reg <= 1'b1;
                awaddr_reg       <= s_axi_awaddr;
            end

            if (s_axi_wvalid && s_axi_wready) begin
                wdata_valid_reg <= 1'b1;
                wdata_reg       <= s_axi_wdata;
                wstrb_reg       <= s_axi_wstrb;
            end

            if (write_fire) begin
                unique case (awaddr_reg)
                    ADDR_CONTROL: begin
                        if (control_wdata[CONTROL_IPROG_BIT] && !iprog_busy_reg) begin
                            iprog_start_pulse <= 1'b1;
                        end
                        if (control_wdata[CONTROL_CLR_DONE_BIT]) begin
                            iprog_done_reg <= 1'b0;
                        end
                        if (control_wdata[CONTROL_CLR_ERROR_BIT]) begin
                            iprog_error_reg <= 1'b0;
                        end
                    end

                    ADDR_WBSTAR: begin
                        if (!iprog_busy_reg) begin
                            wbstar_reg <= wbstar_wdata;
                        end
                    end

                    default: begin
                    end
                endcase

                awaddr_valid_reg <= 1'b0;
                wdata_valid_reg  <= 1'b0;
                bvalid_reg       <= 1'b1;
            end

            if (bvalid_reg && s_axi_bready) begin
                bvalid_reg <= 1'b0;
            end

            if (s_axi_arvalid && s_axi_arready) begin
                araddr_valid_reg <= 1'b1;
                araddr_reg       <= s_axi_araddr;
            end

            if (read_fire) begin
                unique case (araddr_reg)
                    ADDR_CONTROL: rdata_reg <= 32'h0000_0000;
                    ADDR_STATUS:  rdata_reg <= status_readback;
                    ADDR_WBSTAR:  rdata_reg <= wbstar_reg;
                    ADDR_VERSION: rdata_reg <= VERSION_WORD;
                    default:      rdata_reg <= 32'h0000_0000;
                endcase

                araddr_valid_reg <= 1'b0;
                rvalid_reg       <= 1'b1;
            end

            if (rvalid_reg && s_axi_rready) begin
                rvalid_reg <= 1'b0;
            end

            if (iprog_start_pulse) begin
                iprog_done_reg  <= 1'b0;
                iprog_error_reg <= 1'b0;
            end

            if (icap_prdone && !icap_prdone_d1_reg) begin
                iprog_done_reg <= 1'b1;
            end

            if (icap_prerror && !icap_prerror_d1_reg) begin
                iprog_error_reg <= 1'b1;
            end
        end
    end

    always_ff @(posedge s_axi_aclk) begin
        if (!s_axi_aresetn) begin
            icap_state_reg      <= ICAP_IDLE;
            icap_word_index_reg <= 4'd0;
            iprog_wbstar_reg    <= 32'h0000_0000;
            iprog_busy_reg      <= 1'b0;
            icap_i_reg          <= icap_encode_word(ICAP_WORD_NOOP);
            icap_csib_reg       <= 1'b1;
            icap_rdwrb_reg      <= 1'b0;
            icap_prdone_d1_reg  <= 1'b0;
            icap_prerror_d1_reg <= 1'b0;
        end else begin
            icap_prdone_d1_reg  <= icap_prdone;
            icap_prerror_d1_reg <= icap_prerror;

            unique case (icap_state_reg)
                ICAP_IDLE: begin
                    icap_csib_reg       <= 1'b1;
                    icap_rdwrb_reg      <= 1'b0;
                    icap_i_reg          <= icap_encode_word(ICAP_WORD_NOOP);
                    icap_word_index_reg <= 4'd0;
                    iprog_busy_reg      <= 1'b0;

                    if (iprog_start_pulse) begin
                        iprog_wbstar_reg <= wbstar_reg;
                        iprog_busy_reg   <= 1'b1;
                        icap_state_reg   <= ICAP_SEND;
                    end
                end

                ICAP_SEND: begin
                    icap_csib_reg  <= 1'b0;
                    icap_rdwrb_reg <= 1'b0;
                    icap_i_reg     <= icap_encode_word(icap_seq_word(icap_word_index_reg, iprog_wbstar_reg));

                    if (icap_word_index_reg == 4'd7) begin
                        icap_state_reg <= ICAP_HOLD;
                    end else begin
                        icap_word_index_reg <= icap_word_index_reg + 4'd1;
                    end
                end

                ICAP_HOLD: begin
                    icap_csib_reg  <= 1'b1;
                    icap_rdwrb_reg <= 1'b0;
                    icap_i_reg     <= icap_encode_word(ICAP_WORD_NOOP);
                    iprog_busy_reg <= 1'b0;
                    icap_state_reg <= ICAP_IDLE;
                end

                default: begin
                    icap_state_reg <= ICAP_IDLE;
                end
            endcase
        end
    end

    ICAPE3 #(
        .DEVICE_ID(ICAPE3_DEVICE_ID),
        .ICAP_AUTO_SWITCH("DISABLE"),
        .SIM_CFG_FILE_NAME("NONE")
    ) icape3_inst (
        .AVAIL(icap_avail),
        .O(icap_o),
        .PRDONE(icap_prdone),
        .PRERROR(icap_prerror),
        .CLK(s_axi_aclk),
        .CSIB(icap_csib_reg),
        .I(icap_i_reg),
        .RDWRB(icap_rdwrb_reg)
    );

endmodule
