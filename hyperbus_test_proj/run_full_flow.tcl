# SPDX-FileCopyrightText: 2026 Glen Lowe
# SPDX-License-Identifier: Apache-2.0
set script_dir [file dirname [file normalize [info script]]]
set xpr_path [file normalize [file join $script_dir "hyperbus_test_proj.xpr"]]

set jobs 8
set do_reset 0
set export_dir [file normalize [file join $script_dir "build" "export"]]

for {set i 0} {$i < [llength $argv]} {incr i} {
    set a [lindex $argv $i]
    if {$a eq "--jobs"} {
        incr i
        if {$i >= [llength $argv]} {
            error "--jobs requires a value"
        }
        set jobs [lindex $argv $i]
    } elseif {$a eq "--reset"} {
        set do_reset 1
    } elseif {$a eq "--export_dir"} {
        incr i
        if {$i >= [llength $argv]} {
            error "--export_dir requires a value"
        }
        set export_dir [file normalize [lindex $argv $i]]
    } else {
        error "Unknown argument: $a"
    }
}

if {![file exists $xpr_path]} {
    error "Project file not found: $xpr_path"
}

proc run_and_check {run_name jobs {to_step ""}} {
    if {$to_step eq ""} {
        puts "INFO: Launching run '$run_name' with -jobs $jobs"
        launch_runs $run_name -jobs $jobs
    } else {
        puts "INFO: Launching run '$run_name' to step '$to_step' with -jobs $jobs"
        launch_runs $run_name -to_step $to_step -jobs $jobs
    }
    wait_on_run $run_name
    set run_obj [get_runs $run_name]
    set status [get_property STATUS $run_obj]
    set progress [get_property PROGRESS $run_obj]
    puts "INFO: Run '$run_name' completed. STATUS='$status' PROGRESS='$progress'"
    if {![string match "*100%*" $progress] || [regexp -nocase {error|fail} $status]} {
        error "Run '$run_name' did not complete cleanly (STATUS='$status', PROGRESS='$progress')"
    }
}

puts "INFO: Opening project: $xpr_path"
open_project $xpr_path

puts "INFO: Step 1/5: Upgrade IP"
set ips [get_ips -quiet]
if {[llength $ips] > 0} {
    catch {report_ip_status -name ip_status_before_upgrade}
    set rc [catch {upgrade_ip $ips} upgrade_msg]
    if {$rc != 0} {
        error "IP upgrade failed: $upgrade_msg"
    }
    catch {report_ip_status -name ip_status_after_upgrade}
} else {
    puts "INFO: No IPs returned by get_ips; skipping upgrade step."
}
update_compile_order -fileset sources_1

set ooc_run "design_1_hyperbus_controller_0_0_synth_1"
set top_synth_run "synth_1"
set impl_run "impl_1"

if {$do_reset} {
    puts "INFO: Resetting runs: $ooc_run, $top_synth_run, $impl_run"
    catch {reset_run $ooc_run}
    reset_run $top_synth_run
    reset_run $impl_run
}

puts "INFO: Step 2/5: Run synthesis (OOC + top)"
run_and_check $ooc_run $jobs
run_and_check $top_synth_run $jobs

puts "INFO: Step 3/5: Run implementation"
puts "INFO: Step 4/5: Generate device image (bitstream)"
run_and_check $impl_run $jobs "write_bitstream"

puts "INFO: Step 5/5: Export device image artifacts"
open_run $impl_run
file mkdir $export_dir

set top_name [get_property top [get_runs $top_synth_run]]
if {$top_name eq ""} {
    set top_name "design_1_wrapper"
}

set bit_src [file normalize [file join $script_dir "hyperbus_test_proj.runs" $impl_run "${top_name}.bit"]]
if {![file exists $bit_src]} {
    set bit_src [file normalize [file join $script_dir "hyperbus_test_proj.runs" $impl_run "design_1_wrapper.bit"]]
}
if {![file exists $bit_src]} {
    error "Bitstream file not found under impl run directory."
}

set bit_dst [file join $export_dir [file tail $bit_src]]
file copy -force $bit_src $bit_dst
puts "INFO: Exported bitstream: $bit_dst"

set xsa_out [file join $export_dir "${top_name}.xsa"]
write_hw_platform -fixed -include_bit -force -file $xsa_out
puts "INFO: Exported hardware platform: $xsa_out"

close_project
exit 0
