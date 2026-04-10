#define _CLI_DAC_C_

#include "../main.h"

void Cli_parseDAC(void)
{
	Cli_processHandlerList(&DacCliHandlerList[0]);
}

void Cli_parseDACSetCode(void)
{
	char *ptr;
	u32 dacPin;
	u32 dacValue;
	u32 spiValue;
	PDAC_PIN_CFG pPin;
	PDAC pDac;
	XSpi *pSpi;

	ptr = getNextToken();
	if(!ptr)
		return;
	usr_sscanf_int(ptr,(long*)&dacPin);

	ptr = getNextToken();
	if(!ptr)
		return;
	usr_sscanf_int(ptr,(long*)&dacValue);

	pPin = &DacPinList[dacPin];
	pDac = &DacList[pPin->dacNum];
	pSpi = &dSpi[pDac->spiCh];
	
	dacGenValue = dacValue;
	spiValue = BuildDacCmd(DacPinList[dacPin].dacCh,dacValue);
	dacGenValue = dacValue;
	
	XSpi_SetSlaveSelect(pSpi,0);
	XSpi_SetSlaveSelect(pSpi,pDac->spiSsBitMask);
	XSpi_Transfer(pSpi,(u8*)&spiValue,NULL,4);
//	xil_printf("SPI Transfer Sent %08x\r\n",spiValue);
	cliCmdAccepted = 1;
}

#ifndef OVERCAT_S3
void Cli_parseDACSetVoltage(void)
{
	char *ptr;
	int dacPin;
	float Vdac;
	u32 dacValue;
	u32 spiValue;
	PDAC_PIN_CFG pPin;
	PDAC pDac;
	u32	spiCh;
	u32 ssMask;

	ptr = getNextToken();
	if(!ptr)
		return;
	sscanf(ptr,"%d ",&dacPin);

	ptr = getNextToken();
	if(!ptr)
		return;
	sscanf(ptr,"%f ",&Vdac);

	pPin = &DacPinList[dacPin];
	pDac = &DacList[pPin->dacNum];
	spiCh = pDac->spiCh;
	ssMask= pDac->spiSsBitMask;

	dacValue = Dac_CalculateCode(pDac, Vdac);
	spiValue = BuildDacCmd(DacPinList[dacPin].dacCh,dacValue);

	XSpi_SetSlaveSelect(&dSpi[spiCh],0);
	XSpi_SetSlaveSelect(&dSpi[spiCh],ssMask);
	XSpi_Transfer(&dSpi[spiCh],(u8*)&spiValue,NULL,4);
	usr_printf_1("SPI Transfer Sent %08x\r\n",spiValue);
	cliCmdAccepted = 1;
}

void Cli_parseDACStatus(void)
{	
	usr_printf_1("DAC yield count = %d\r\n",dacYieldCount);
	cliCmdAccepted = 1;
}
#endif
