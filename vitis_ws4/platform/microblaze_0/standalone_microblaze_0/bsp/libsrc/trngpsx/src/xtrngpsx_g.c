#include "xtrngpsx.h"

XTrngpsx_Config XTrngpsx_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,pmcl-trng-11.0", /* compatible */
		0x4120000 /* reg */
	},
	 {
		 NULL
	}
};