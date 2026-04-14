# program_flash.tcl
# Program the patched boot PDI to QSPI flash on the SCU35P (xcsu35p)
#
# Usage (standalone - NOT via xsct):
#   /tools/Xilinx/2025.2/Vitis/bin/program_flash \
#     -f resources/design_1_wrapper.pdi \
#     -flash_type cfgmem-1024-qspi-x4-single \
#     -verify \
#     -url tcp:10.0.1.107:3121
#
# Notes:
#   - program_flash is a standalone utility, not an xsct Tcl command
#   - Spartan UltraScale+ flash type: cfgmem-1024-qspi-x4-single
#   - hw_server must be running at the target URL
#   - PDI file can be used directly (does not need to be .bin)
#   - Default target_id 2 is xcsu35p (no explicit -target_id needed if only one device)

set pdi_file [file normalize [file join [file dirname [info script]] \
    resources/design_1_wrapper.pdi]]
set hw_url "tcp:10.0.1.107:3121"

puts "PDI: $pdi_file"
puts "Running program_flash..."

set rc [catch {
    exec /tools/Xilinx/2025.2/Vitis/bin/program_flash \
        -f          $pdi_file \
        -flash_type cfgmem-1024-qspi-x4-single \
        -verify \
        -url        $hw_url
} msg]

puts $msg
if {$rc != 0} {
    puts "ERROR: Flash programming failed."
    exit 1
}
puts "Flash programming complete."
