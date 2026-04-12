open_checkpoint /raid/work/hyperbus_ai3/vivado_projects/hyperbus_test_proj/hyperbus_test_proj.runs/impl_1/design_1_wrapper_routed.dcp
foreach p {io_hb_dq_0[0] io_hb_dq_0[1] io_hb_dq_0[2] io_hb_dq_0[3] io_hb_dq_0[4] io_hb_dq_0[5] io_hb_dq_0[6] io_hb_dq_0[7]} {
  set obj [get_ports $p]
  puts "$p DRIVE=[get_property DRIVE $obj] SLEW=[get_property SLEW $obj] IOSTANDARD=[get_property IOSTANDARD $obj]"
}
close_design
