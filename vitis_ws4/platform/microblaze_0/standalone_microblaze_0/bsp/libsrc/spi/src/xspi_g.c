#include "xspi.h"

XSpi_Config XSpi_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,axi-quad-spi-3.2", /* compatible */
		0x44a00000, /* reg */
		0x1, /* xlnx,hasfifos */
		0x0, /* xlnx,slaveonly */
		0x1, /* xlnx,num-ss-bits */
		0x8, /* bits-per-word */
		0x2, /* xlnx,spi-mode */
		0x0, /* xlnx,axi-interface */
		0x0, /* xlnx,Axi4-address */
		0x0, /* xlnx,xip-mode */
		0x1, /* xlnx,startup-block */
		0x100, /* fifo-size */
		0x2, /* interrupts */
		0x41200001 /* interrupt-parent */
	},
	 {
		 NULL
	}
};