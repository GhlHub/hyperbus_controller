open_checkpoint /raid/work/hyperbus_ai3/vivado_projects/hyperbus_test_proj/hyperbus_test_proj.runs/impl_1/design_1_wrapper_routed.dcp
set c [get_cells -hier -filter {NAME =~ *u_cmd_fifo*}]
puts "CELLS=$c"
foreach x $c {
  puts "CELL:$x"
  report_property $x
}
exit
