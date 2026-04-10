#include "xospipsv.h"

XOspiPsv_Config XOspiPsv_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,pmc-ospi-11.0", /* compatible */
		0x4090000, /* reg */
		0x0, /* xlnx,ospi-clk-freq-hz */
		0x0, /* xlnx,is-cache-coherent */
		0x0, /* xlnx,ospi-mode */
		0xffff, /* interrupts */
		0xffff, /* interrupt-parent */
		0x0 /* xlnx,ospi-bus-width */
	},
	 {
		 NULL
	}
};