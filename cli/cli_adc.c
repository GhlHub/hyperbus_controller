#define _CLI_ADC_C_
#include "../main.h"

void Cli_parseAdcCmd(void)
{
  char *ptr;
  PCliHandler	hptr;

  ptr = getNextToken();

  hptr = &AdcCliHandlerList[0];
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

float * fptr;

void Cli_parseAdcDumpStatus(void)
{
	int x, y;
	PADC pAdc;
	PADC_MEASUREMENTS pMeas;
	int i32;
	
	fptr = (float *) 0x100;	
	sysCfg_disableInterrupt(&dSysCfg);

	for(x=0;x<ADC_MAX;x++)
	{
		pAdc = &adcList[x];
		pMeas = pAdc->measurements;
		usr_printf_1("ADC %d Status:\r\n",x);
		usr_printf_1("BadCodes %d\r\n",adcBadCode[x]);
		for(y=0;y<ADC_SCAN_MAX;y++)
		{
			if(pMeas->status[y])
			{
				*fptr = Adc_CalculateVoltage(pAdc->adcNum, pMeas->adcData[y]);
				// The libc implementation of printf is pre-compiled and doesn't take advantage
				// of the floating point instructions.
				// Convert to int so the printf doesn't take forever to run.
				if(y > ADC_SCAN_CH15_CH14)
				{
					*fptr = *fptr + AdjustedVref[pAdc->vcomm];
					*fptr *= 1000;
					i32 = *fptr;
					usr_printf_2("%02d = %6d mV \r\n",y,i32);
				} else {
					*fptr *= 1000000;
					i32 = *fptr;
					usr_printf_2("%02d = %6d uV\r\n",y,i32);
				}
			}
		}
	}
	sysCfg_enableInterrupt(&dSysCfg);
	cliCmdAccepted = 1;
}

void Cli_parseAdcDisable(void)
{
	disable_interrupt(SYSCFG_INTR);	
	consolePrint("ADC Interrupts disabled\r\n");
	cliCmdAccepted = 1;
}

void Cli_parseAdcEnable(void)
{
	enable_interrupt(SYSCFG_INTR);	
	consolePrint("ADC Interrupts enabled\r\n");
	cliCmdAccepted = 1;
}

void Cli_parseAdcSetSampleRate(void)
{
	char *ptr;
	u32 adcNum;
	u32 sampleIdx;

	ptr = getNextToken();
	if(!ptr)
		return;
	sscanf(ptr,"%lu",&adcNum);
	
	ptr = getNextToken();
	if(!ptr)
		return;
	sscanf(ptr,"%lu",&sampleIdx);
	
	if(adcNum > ADC_MAX)
		return;
	if(sampleIdx > ADC_SAMPLE_RATE_MAX)
		return;
		
	adcSampleRateList[adcNum].adcSampleRate = sampleIdx;
	cliCmdAccepted = 1;
}
