#define _CLI_ETHMDIO_C_

#include "../main.h"

#ifdef COLOSSUS_V5

void Cli_parseEthMdioCmd(void)
{
	Cli_processHandlerList(&EthMdioCliHandlerList[0]);
}

void Cli_parseEthMdioRd(void)
{
	char *aptr;
	u32 addr;
	u32 val;

	aptr = getNextToken();
	if(!aptr)
		return;
	
	sscanf(aptr,"%x",&addr);
	val = sysCfgV5_ethMdioRd(&dSysCfgV5, 0x1f, addr);
	usr_printf_2("INFO: MDIO Reg Rd %02x: %04x\r\n",addr,val);
	cliCmdAccepted = 1;
}

void Cli_parseEthMdioWr(void)
{
	char *aptr,*vptr;
	u32 addr;
	u32 val;

	aptr = getNextToken();
	if(!aptr)
		return;
	vptr = getNextToken();
	if(!vptr)
		return;
	
	sscanf(aptr,"%x",&addr);
	sscanf(vptr,"%x",&val);
	
	sysCfgV5_ethMdioWr(&dSysCfgV5, 0x1f, addr, val);
	usr_printf_2("INFO: MDIO Reg Wr %02x: %04x\r\n",addr,val);
	cliCmdAccepted = 1;
}

void Cli_parseEthMdioHelp(void)
{
	consolePrint("Ethernet PHY MDIO Commands\r\n"
				 "mdio rd [address]         - Read Ethernet Register\r\n"
				 "mdio wr [address] [value] - Write Ethernet Register\r\n");
	cliCmdAccepted = 1;
}

#endif
