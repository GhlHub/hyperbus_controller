#define _CLI_SPI_C_

#include "../main.h"

void Cli_parseSpiCmd(void)
{
	char *ptr;
	PCliHandler	hptr;	
	
	ptr = getNextToken();

	hptr = &SpiCliHandlerList[0];
	// Loop thru the list until a matching handler is found or end of handler list has been reached.
	while(hptr->cliToken)
	{
  		if(strcasecmp(ptr, hptr->cliToken) == 0)
  		{
  			hptr->cliFunc();
	  		break;
  		}
	  	hptr++;
	}
}

void Cli_parseSpiXfer(void)
{
	u32 value;
	u32 bytes;
	u32 mask;
	char *ptr;

	ptr = getNextToken();
	if(!ptr)
		return;
	sscanf(ptr,"%lx ",&mask);

	ptr = getNextToken();
	if(!ptr)
		return;
	sscanf(ptr,"%lx ",&value);
	
	ptr = getNextToken();
	if(!ptr)
		return;
	sscanf(ptr,"%lx ",&bytes);
	
	if(bytes && bytes <= 4)
	{
		XSpi_SetSlaveSelect(&dSpi[SPI_DAC],mask);
		XSpi_Transfer(&dSpi[SPI_DAC],(u8*)&value,NULL,bytes);
		usr_printf_1("SPI Transfer Sent %08x\r\n",value);
	}
	cliCmdAccepted = 1;
}

void Cli_parseSpiEnable(void)
{
	int x;
	
	for(x=0;x<SPI_MAX;x++)
	{
#ifdef XSpi_mEnable
		XSpi_mEnable(&dSpi[x]);
#else
		XSpi_Enable(&dSpi[x]);
#endif
	}
}

void Cli_parseSpiStatus(void)
{
	int x;
	static XSpi_Stats stats;
	
	for(x=0;x<SPI_MAX;x++)
	{
		XSpi_GetStats(&dSpi[x], &stats);
		usr_printf_7(
			"Spi # %d\r\n"
			"ModeFaults      : %d\r\n"
			"XmitUnderruns   : %d\r\n"
			"RecvOverruns    : %d\r\n"
			"SlaveModeFaults : %d\r\n"
			"BytesTransferred: %d\r\n"
			"NumInterrupts   : %d\r\n",
			x,
			stats.ModeFaults,
			stats.XmitUnderruns,
			stats.RecvOverruns,
			stats.SlaveModeFaults,
			stats.BytesTransferred,
			stats.NumInterrupts);
	}
}
