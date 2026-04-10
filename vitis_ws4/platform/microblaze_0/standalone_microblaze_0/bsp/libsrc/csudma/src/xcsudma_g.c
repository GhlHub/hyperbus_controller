#include "xcsudma.h"

XCsuDma_Config XCsuDma_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,pmcl-dma-11.0", /* compatible */
		0x40e0000, /* reg */
		0x1, /* xlnx,dma-type */
		0xffff, /* interrupts */
		0xffff /* interrupt-parent */
	},
	 {
		 NULL
	}
};