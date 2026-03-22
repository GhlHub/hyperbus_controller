open_checkpoint /raid/work/hyperbus_ai3/hyperbus_test_proj/hyperbus_test_proj.runs/impl_1/design_1_wrapper_routed.dcp
set c [get_cells design_1_i/hyperbus_controller_0/inst/u_fifo_bank/u_cmd_fifo]
puts "CELL=$c"
foreach p {REF_NAME WRITE_DATA_WIDTH READ_DATA_WIDTH FIFO_WRITE_DEPTH WAKEUP_TIME FIFO_MEMORY_TYPE} {
  catch {puts "$p=[get_property $p $c]"}
}
set c2 [get_cells design_1_i/hyperbus_controller_0/inst/u_fifo_bank/u_cmd_fifo/gnuram_async_fifo.xpm_fifo_base_inst]
puts "BASE=$c2"
foreach p {REF_NAME WRITE_DATA_WIDTH READ_DATA_WIDTH WR_DEPTH_RD RD_WIDTH WR_WIDTH FIFO_WRITE_DEPTH CDC_DEST_SYNC_FF} {
  catch {puts "BASE_$p=[get_property $p $c2]"}
}
exit
