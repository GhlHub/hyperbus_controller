// hyperbus_hdio_top.v
// Top-level wrapper for the HyperBus HDIO design.
//
// Hierarchy:
//   hyperbus_hdio_top          <-- synthesis top (this file)
//     mmcm_clk_gen             <-- IBUFDS + MMCME4_ADV + BUFGs
//     design_1_wrapper         <-- Vivado block-design wrapper (auto-generated)
//
// The differential 100 MHz reference clock is consumed here by mmcm_clk_gen.
// The five generated clocks are fed into design_1_wrapper as plain single-ended
// signals.  The dynamic phase-shift control loop and the BUFGCE clock-enable
// cross between the two sub-modules as wires.

`timescale 1 ps / 1 ps

module hyperbus_hdio_top (
    // -----------------------------------------------------------------------
    // Board clock
    // -----------------------------------------------------------------------
    input  wire        sysclk_p,          // 100 MHz differential, positive leg
    input  wire        sysclk_n,          // 100 MHz differential, negative leg

    // -----------------------------------------------------------------------
    // Board reset  (active-high, LVCMOS33, pin F3)
    // -----------------------------------------------------------------------
    input  wire        ext_reset_in_0,

    // -----------------------------------------------------------------------
    // UART (LVCMOS33)
    // -----------------------------------------------------------------------
    input  wire        UART_0_rxd,
    output wire        UART_0_txd,

    // -----------------------------------------------------------------------
    // HyperBus interface (LVCMOS18)
    // -----------------------------------------------------------------------
    inout  wire [7:0]  io_hb_dq_0,
    inout  wire        io_hb_rwds_0,
    output wire        o_hb_ck_p_0,
    output wire        o_hb_ck_n_0,
    output wire        o_hb_cs_n_0,
    output wire        o_hb_reset_n_0
);

    // -----------------------------------------------------------------------
    // Internal wires
    // -----------------------------------------------------------------------

    // MMCM generated clocks
    wire clk1;           // 200 MHz
    wire clk2;           // 200 MHz, 90°
    wire clk3;           //  50 MHz
    wire clk4;           // 300 MHz
    wire clk5;           // 200 MHz, BUFGCE, dynamic phase shift

    wire mmcm_locked;

    // Dynamic phase shift – driven by block design, consumed by MMCM
    wire ps_clk;
    wire ps_en;
    wire ps_incdec;
    wire ps_done;

    // BUFGCE clock-enable for clk5 – driven by block design
    wire clk5_ce;

    // -----------------------------------------------------------------------
    // Clock generation
    // -----------------------------------------------------------------------
    mmcm_clk_gen u_mmcm_clk_gen (
        .clk_in_p   (sysclk_p),
        .clk_in_n   (sysclk_n),
        .reset      (1'b0),

        .clk1       (clk1),
        .clk2       (clk2),
        .clk3       (clk3),
        .clk4       (clk4),
        .clk5       (clk5),
        .locked     (mmcm_locked),

        .ps_clk     (ps_clk),
        .ps_en      (ps_en),
        .ps_incdec  (ps_incdec),
        .ps_done    (ps_done),

        .clk5_ce    (clk5_ce)
    );

    // -----------------------------------------------------------------------
    // Block design
    // -----------------------------------------------------------------------
    design_1_wrapper u_design_1_wrapper (
        // Clocks in
        .clk1           (clk1),
        .clk2           (clk2),
        .clk3           (clk3),
        .clk4           (clk4),
        .clk5           (clk5),

        // MMCM lock status → reset infrastructure
        .dcm_locked     (mmcm_locked),

        // Board reset
        .ext_reset_in_0 (ext_reset_in_0),

        // UART
        .UART_0_rxd     (UART_0_rxd),
        .UART_0_txd     (UART_0_txd),

        // HyperBus
        .io_hb_dq_0     (io_hb_dq_0),
        .io_hb_rwds_0   (io_hb_rwds_0),
        .o_hb_ck_p_0    (o_hb_ck_p_0),
        .o_hb_ck_n_0    (o_hb_ck_n_0),
        .o_hb_cs_n_0    (o_hb_cs_n_0),
        .o_hb_reset_n_0 (o_hb_reset_n_0),

        // clk5 BUFGCE enable (block design gates the HyperBus clock)
        .o_hb_clk_ce_0  (clk5_ce),

        // Dynamic phase shift control (block design drives, MMCM executes)
        .psclk_0        (ps_clk),
        .psen_0         (ps_en),
        .psincdec_0     (ps_incdec),
        .psdone_0       (ps_done)
    );

endmodule
