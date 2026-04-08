set(hyperram "0x80000050;0x007fffb0")
set(DDR hyperram)
set(CODE hyperram)
set(DATA hyperram)
set(TOTAL_MEM_CONTROLLERS "hyperram")
set(MEMORY_SECTION "MEMORY
{
	hyperram : ORIGIN = 0x80000050, LENGTH = 0x007fffb0
}")
set(STACK_SIZE 0x400)
set(HEAP_SIZE 0x800)
