set(IOMODULE_NUM_DRIVER_INSTANCES "")
set(UARTLITE_NUM_DRIVER_INSTANCES "axi_uartlite_0")
set(UARTLITE0_PROP_LIST "0x40600000")
list(APPEND TOTAL_UARTLITE_PROP_LIST UARTLITE0_PROP_LIST)
set(UARTNS550_NUM_DRIVER_INSTANCES "")
set(UARTPS_NUM_DRIVER_INSTANCES "")
set(UARTPSV_NUM_DRIVER_INSTANCES "")
set(lmb_bram_if_cntlr_0_memory_0 "0x0;0x10000")
set(DDR lmb_bram_if_cntlr_0_memory_0)
set(CODE lmb_bram_if_cntlr_0_memory_0)
set(DATA lmb_bram_if_cntlr_0_memory_0)
set(TOTAL_MEM_CONTROLLERS "lmb_bram_if_cntlr_0_memory_0")
set(MEMORY_SECTION "MEMORY
{
	lmb_bram_if_cntlr_0_memory_0 : ORIGIN = 0x0, LENGTH = 0x10000
}")
set(STACK_SIZE 0x400)
set(HEAP_SIZE 0x800)
