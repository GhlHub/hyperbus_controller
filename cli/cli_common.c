#define _CLI_COMMON_C_

#include "../main.h"
void consolePrint(char *ptr);

void uart_usb_put_crlf(void)
{
	consolePrint("\r\n");
}

int Cli_parseTime(u32 *Ticks)
{
	char *ptr;
   float f_ticks;
	u32 usrNum;
	u32 usrNs;

	ptr = getNextToken();
	if(!ptr)
		return 1;
#ifdef USE_KERNEL
	sscanf(ptr,"%ld",&usrNum);
#endif
#ifdef OVERCAT_S3
	usr_sscanf_int(ptr, (long*)&usrNum);
#endif
	ptr = getNextToken();
	if(strcasecmp(ptr,"ns") == 0)
	{
		usrNs = usrNum;
	} else if(strcasecmp(ptr,"us") == 0)
	{
		usrNs = usrNum * 1000;
	} else if(strcasecmp(ptr,"ms") == 0)
	{
		usrNs = usrNum * 1000000;
	} else {
		sf_print(CLI_COM_SPEC_TIME_STR);
		return 1;
	}

   f_ticks = usrNs/(SYS_CLOCK_INTERVAL_NS);
   *Ticks = f_ticks+0.5;

	return 0;
}

void Cli_processHandlerList(PCliHandler hptr)
{
	char *ptr;
	
	ptr = getNextToken();
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

#ifdef COLOSSUS_V5
void Cli_parseShowIp(void)
{
	u8 *p;
	char buff[128];

	p = (u8 *) &ethif.ip_addr.addr;
	sprintf(buff,"INFO: IP Address = %d.%d.%d.%d\r\n",*p,*(p+1),*(p+2),*(p+3));
	consolePrint(buff);
	cliCmdAccepted = 1;	
}
#endif

void Cli_parseHelp(void)
{
#ifdef UNDERDOG_S3
	consolePrint("\r\n"
		  "Underdog Main Menu\r\n"
	      "There's no need to fear. Underdog is here.\r\n"
		  "debug|dbg  - debugging commands\r\n"
	      "spi        - SPI bus commands\r\n"
	      "dac        - DAC commands\r\n"
	      "volt[1]    - Normal mode voltage\r\n"
	      "volt2      - Normal mode 2 voltage\r\n"
	      "voltlpm    - Low Power Mode voltage commands\r\n"
	      "voltQ      - Query detected voltage\r\n"
	      "voltCurrQ  - Query detected voltage and current\r\n"
	      "currQ      - Query detected current\r\n"
	      "seq        - Power sequencing commands\r\n"
	      "ldoForce   - LDO force on/off commands\r\n"
	      "lpm        - Low Power Mode configuration\r\n"
	      "resetPulse [number] [ns/us/ms]- Athena Reset pulsing commands\r\n"
	      "reset      - Athena Reset pulse - Nominal\r\n"
	      "help       - This menu\r\n"
	      "Type [cmd] help to get more information\r\n");
#endif
#ifdef COLOSSUS_S3
	consolePrint("\r\n"
		  "ColossusS3 Main Menu\r\n"
	      "Colossus - The MobCom Project\r\n"
		  "debug|dbg  - debugging commands\r\n"
	      "spi        - SPI bus commands\r\n"
	      "dac        - DAC commands\r\n"
	      "volt[1]    - Normal mode voltage\r\n"
	      "volt2      - Normal mode 2 voltage\r\n"
	      "voltlpm    - Low Power Mode voltage commands\r\n"
	      "voltQ      - Query detected voltage\r\n"
	      "voltCurrQ  - Query detected voltage and current\r\n"
	      "currQ      - Query detected current\r\n"
	      "seq        - Power sequencing commands\r\n"
	      "ldoForce   - LDO force on/off commands\r\n"
	      "lpm        - Low Power Mode configuration\r\n"
	      "resetPulse [number] [ns/us/ms]- Hera Reset pulsing commands\r\n"
	      "reset      - Hera Reset pulse - Nominal\r\n"
	      "help       - This menu\r\n"
	      "Type [cmd] help to get more information\r\n");
#endif

#ifdef OVERCAT_S3
	sf_print(CLI_HELP_STR);
	sf_print(CLI_HELP_STR2);
	sf_print(CLI_HELP_STR3);
	sf_print(CLI_HELP_STR4);
#endif
#ifdef UNDERDOG_V5
	consolePrint("\r\n"
		  "Underdog V5 Main Menu\r\n"
		  "debug|dbg  - debugging commands\r\n"
		  "gpioTest   - GPIO Test Commands\r\n"
	      "i2sTest    - Configures the FPGA i2s block and lunches the i2s test\r\n"
	      "keypadTest - Keypad Test commands\r\n"
		  "spiTest    - SPI1 Test Commands\r\n"
		  "spiTest2   - SPI2 Test Commands\r\n"
	      "help       - This menu\r\n"
	      "Type \'<cmd> help\' to get more information\r\n");
#endif
#ifdef COLOSSUS_V5
	consolePrint("\r\n"
		  "Colossus V5 Main Menu\r\n"
		  "The MobCom project\r\n"
		  "debug|dbg  - debugging commands\r\n"
	      "mdio       - Ethernet PHY commands\r\n"
	      "showip     - Display DHCP'd IP Address\r\n"
	      "gpioTest   - gpio test functions\r\n"
		  "keypadTest - keypad test functions\r\n"
		  "help       - This menu\r\n"
	      "Type \'<cmd> help\' to get more information\r\n");
#endif
	cliCmdAccepted = 1;
}

int printErrorStatus(int status)
{
	if(status != XST_SUCCESS)
	{
		usr_printf_1("ERROR: Status = %d\r\n",status);
	}	
	return status;
}
