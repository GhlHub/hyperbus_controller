// mmcm_clk_gen.v
// MMCM clock generator for Spartan UltraScale+
//
// Reference input : 100 MHz differential pair (IBUFDS → MMCM)
//   clk1  : 200 MHz
//   clk2  : 200 MHz, 90° phase shift
//   clk3  :  50 MHz
//   clk4  : 300 MHz
//   clk5  : 200 MHz, BUFGCE-buffered, dynamic phase shift enabled
//             (dedicated MMCM output – not derived from clk1)
//
// VCO = 100 MHz × MULT_F(12) / DIVCLK(1) = 1200 MHz (within 800–1600 MHz range)

`timescale 1ns / 1ps

module mmcm_clk_gen (
    // Differential reference clock input & reset
    input  wire clk_in_p,     // 100 MHz, positive leg
    input  wire clk_in_n,     // 100 MHz, negative leg
    input  wire reset,        // active-high synchronous reset

    // Generated clocks
    output wire clk1,         // 200 MHz
    output wire clk2,         // 200 MHz, 90° phase
    output wire clk3,         //  50 MHz
    output wire clk4,         // 300 MHz
    output wire clk5,         // 200 MHz, BUFGCE buffered, dynamic-phase-shift capable

    // MMCM status
    output wire locked,

    // Dynamic phase-shift interface (affects clk5 / CLKOUT4)
    input  wire ps_clk,       // phase-shift clock (≤ 200 MHz)
    input  wire ps_en,        // pulse high for one ps_clk cycle to trigger shift
    input  wire ps_incdec,    // 1 = increment, 0 = decrement
    output wire ps_done,      // pulses high when shift is complete

    // BUFGCE clock-enable for clk5
    input  wire clk5_ce       // 1 = clk5 running, 0 = clk5 gated
);

    // -----------------------------------------------------------------------
    // Internal wires
    // -----------------------------------------------------------------------
    wire clk_in_se;      // single-ended clock after IBUFDS
    wire mmcm_clkfbout;
    wire mmcm_clkout0;   // → clk1
    wire mmcm_clkout1;   // → clk2
    wire mmcm_clkout2;   // → clk3
    wire mmcm_clkout3;   // → clk4
    wire mmcm_clkout4;   // → clk5 (dynamic-phase-shift output)

    // -----------------------------------------------------------------------
    // Differential input buffer
    // -----------------------------------------------------------------------
    IBUFDS #(
        .DIFF_TERM    ("FALSE"),  // no on-chip termination (use external if needed)
        .IBUF_LOW_PWR ("FALSE"),  // optimise for performance at 100 MHz
        .IOSTANDARD   ("LVDS")
    ) ibufds_clkin (
        .I  (clk_in_p),
        .IB (clk_in_n),
        .O  (clk_in_se)
    );

    // -----------------------------------------------------------------------
    // MMCME4_ADV instantiation
    // -----------------------------------------------------------------------
    MMCME4_ADV #(
        // Input
        .CLKIN1_PERIOD      (10.000),   // 100 MHz → 10 ns period

        // VCO: 100 × 12 / 1 = 1200 MHz
        .CLKFBOUT_MULT_F    (12.000),
        .DIVCLK_DIVIDE      (1),
        .CLKFBOUT_PHASE     (0.000),

        // CLKOUT0 → clk1 : 1200 / 6 = 200 MHz, 0°
        .CLKOUT0_DIVIDE_F   (6.000),
        .CLKOUT0_PHASE      (0.000),
        .CLKOUT0_DUTY_CYCLE (0.500),
        .CLKOUT0_USE_FINE_PS("FALSE"),

        // CLKOUT1 → clk2 : 1200 / 6 = 200 MHz, 90°
        .CLKOUT1_DIVIDE     (6),
        .CLKOUT1_PHASE      (90.000),
        .CLKOUT1_DUTY_CYCLE (0.500),
        .CLKOUT1_USE_FINE_PS("FALSE"),

        // CLKOUT2 → clk3 : 1200 / 24 = 50 MHz
        .CLKOUT2_DIVIDE     (24),
        .CLKOUT2_PHASE      (0.000),
        .CLKOUT2_DUTY_CYCLE (0.500),
        .CLKOUT2_USE_FINE_PS("FALSE"),

        // CLKOUT3 → clk4 : 1200 / 4 = 300 MHz
        .CLKOUT3_DIVIDE     (4),
        .CLKOUT3_PHASE      (0.000),
        .CLKOUT3_DUTY_CYCLE (0.500),
        .CLKOUT3_USE_FINE_PS("FALSE"),

        // CLKOUT4 → clk5 : 1200 / 6 = 200 MHz, dynamic phase shift enabled
        // Dedicated independent output – not related to CLKOUT0
        .CLKOUT4_DIVIDE     (6),
        .CLKOUT4_PHASE      (0.000),
        .CLKOUT4_DUTY_CYCLE (0.500),
        .CLKOUT4_USE_FINE_PS("TRUE"),   // enables dynamic phase shift on this output
        .CLKOUT4_CASCADE    ("FALSE"),

        // CLKOUT5 / CLKOUT6 unused
        .CLKOUT5_DIVIDE     (1),
        .CLKOUT5_PHASE      (0.000),
        .CLKOUT5_DUTY_CYCLE (0.500),
        .CLKOUT5_USE_FINE_PS("FALSE"),

        .CLKOUT6_DIVIDE     (1),
        .CLKOUT6_PHASE      (0.000),
        .CLKOUT6_DUTY_CYCLE (0.500),
        .CLKOUT6_USE_FINE_PS("FALSE"),

        // Miscellaneous
        .BANDWIDTH          ("OPTIMIZED"),
        .STARTUP_WAIT       ("FALSE"),
        .COMPENSATION       ("INTERNAL"),
        .REF_JITTER1        (0.010)
    ) mmcm_inst (
        // Clock inputs
        .CLKIN1     (clk_in_se),
        .CLKIN2     (1'b0),
        .CLKINSEL   (1'b1),             // select CLKIN1

        // Feedback
        .CLKFBOUT   (mmcm_clkfbout),
        .CLKFBOUTB  (),
        .CLKFBIN    (mmcm_clkfbout),
        //.CLKFBIN    (),

        // Clock outputs
        .CLKOUT0    (mmcm_clkout0),
        .CLKOUT0B   (),
        .CLKOUT1    (mmcm_clkout1),
        .CLKOUT1B   (),
        .CLKOUT2    (mmcm_clkout2),
        .CLKOUT2B   (),
        .CLKOUT3    (mmcm_clkout3),
        .CLKOUT3B   (),
        .CLKOUT4    (mmcm_clkout4),
        .CLKOUT5    (),
        .CLKOUT6    (),

        // Control
        .RST        (reset),
        .PWRDWN     (1'b0),
        .LOCKED     (locked),

        // Dynamic phase shift
        .PSCLK      (ps_clk),
        .PSEN       (ps_en),
        .PSINCDEC   (ps_incdec),
        .PSDONE     (ps_done),

        // DRP – tied off (not used)
        .DCLK       (1'b0),
        .DEN        (1'b0),
        .DWE        (1'b0),
        .DADDR      (7'h00),
        .DI         (16'h0000),
        .DO         (),
        .DRDY       ()
    );

    // -----------------------------------------------------------------------
    // Clock buffers
    // -----------------------------------------------------------------------

    // clk1 – 200 MHz
    BUFG bufg_clk1 (.I(mmcm_clkout0), .O(clk1));

    // clk2 – 200 MHz, 90°
    BUFG bufg_clk2 (.I(mmcm_clkout1), .O(clk2));

    // clk3 – 50 MHz
    BUFG bufg_clk3 (.I(mmcm_clkout2), .O(clk3));

    // clk4 – 300 MHz
    BUFG bufg_clk4 (.I(mmcm_clkout3), .O(clk4));

    // clk5 – 200 MHz, BUFGCE (clock-enable gating), dynamic phase shift
    BUFGCE bufgce_clk5 (
        .I  (mmcm_clkout4),
        .CE (clk5_ce),
        .O  (clk5)
    );

endmodule
