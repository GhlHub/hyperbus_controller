#define _CLI_DEBUG_C_

#include "../main.h"

extern char *tokPtr;
extern char unknownCmdMsg[];

void Cli_parseDbg(void)
{
  char *ptr;
  PCliHandler	hptr;

  ptr = getNextToken();
  
  // Get pointer to list of top level cli handlers
  hptr = &DbgCliHandlerList[0];
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

u8 inline dbg_readMem8(u32 offset)
{
  u8 *ptr;

  ptr = (u8 *) offset;
  return *ptr;
}

void inline dbg_writeMem8(u32 offset, u8 val)
{
  unsigned char *ptr;

  ptr = (unsigned char *) offset;
  *ptr = val;
}

#ifdef CLI_MEM32_CMD_ENABLE
u32 inline dbg_readMem32(u32 offset)
{
  u32 *ptr;

  ptr = (u32 *) offset;
  return *ptr;
}

void inline dbg_writeMem32(u32 offset, u32 val)
{
  u32 *ptr;

  ptr = (u32 *) offset;
  *ptr = val;
}
#endif

#ifdef CLI_DUMP_CMD_ENABLE
void dbg_dumpMem8(u32 offset, u32 len)
{
#define FIELDS_PER_LINE 16
  u32 x,y;
  u32 lines;
  u32 rem;
  char ch;

  lines = len / FIELDS_PER_LINE;
  for(x=0;x<lines;x++)
  {
    usr_printf_1("%08x: ",(offset + (x<<3)));

    for(y=0;y<FIELDS_PER_LINE;y++)
    {
      usr_printf_1("%02x ",dbg_readMem8(offset+(x<<3)+y));
    }

    consolePrint(" | ");
    for(y=0;y<FIELDS_PER_LINE;y++)
    {
      ch = dbg_readMem8(offset+(x<<3)+y);
      if(IsValidDisplayChar(ch))
      {
	  	consoleOutbyte(ch);
      } else {
	  	consoleOutbyte('.');
      }
    }
	uart_usb_put_crlf();
  }

  rem = len % FIELDS_PER_LINE;
  if(rem)
  {
    usr_printf_1("%08x: ",(offset + (x<<3)));
    for(y=0;y<rem;y++)
    {
      usr_printf_1("%02x ",dbg_readMem8(offset+(x<<3)+y));
    }

    for(y=rem;y<FIELDS_PER_LINE;y++)
    {
      consolePrint("   ");
    }
    consolePrint(" | ");
    for(y=0;y<rem;y++)
    {
      ch = dbg_readMem8(offset+(x<<3)+y);
      if(IsValidDisplayChar(ch))
      {
        outbyte(ch);
      } else {
      	outbyte('.');
      }
    }
	uart_usb_put_crlf();
  }
  cliCmdAccepted = 1;
}

void dbg_dumpMem32(u32 offset, u32 words)
{
  u32 x;
  for(x=0;x<words;x++)
  {
    if((x % FIELDS_PER_LINE) == 0)
    {
      usr_printf_1("%08x: ",(offset + (x<<1)));
    }
    usr_printf_1("%08x ",dbg_readMem32(offset+(x<<1)));
    if((x % FIELDS_PER_LINE) == FIELDS_PER_LINE-1)
    {
      uart_usb_put_crlf();
    }
  }
  if((x % FIELDS_PER_LINE) != 3)
  {
    uart_usb_put_crlf();
  }
  cliCmdAccepted = 1;
}
#endif

void Cli_parseReadMem8(void)
{
  char *ptr;
  u32 addr;

  ptr = getNextToken();
  if(!ptr)
    return;
  if(sscanf(ptr,"%lx ",&addr))
  {
    usr_printf_2(readMem8Fmt,addr,dbg_readMem8(addr));
  }
  cliCmdAccepted = 1;
}

void Cli_parseWriteMem8(void)
{
  char *aptr;
  char *vptr;
  u32 addr, val;

  aptr = getNextToken();
  if(!aptr)
    return;
  vptr = getNextToken();
  if(!vptr)
    return;

  if(sscanf(aptr,"%lx",&addr) && sscanf(vptr,"%lx",&val))
  {
    dbg_writeMem8(addr,val);
    usr_printf_2(readMem8Fmt,addr,val);
    cliCmdAccepted = 1;
  }
}


#ifdef CLI_MEM32_CMD_ENABLE
void Cli_parseReadMem32(void)
{
  char *ptr;
  u32 addr;

  ptr = getNextToken();
  if(!ptr)
    return;
  if(sscanf(ptr,"%lx ",&addr))
  {
    usr_printf_2("%08x: %08x\r\n",addr,dbg_readMem32(addr));
    cliCmdAccepted = 1;
  }
}

void Cli_parseWriteMem32(void)
{
  char *aptr;
  char *vptr;
  u32 addr, val;

  aptr = getNextToken();
  if(!aptr)
    return;
  vptr = getNextToken();
  if(!vptr)
    return;

  if(sscanf(aptr,"%lx",&addr) && sscanf(vptr,"%lx",&val))
  {
    dbg_writeMem32(addr,val);
    usr_printf_2("%08x = %08x\r\n",addr,val);
    cliCmdAccepted = 1;
  }
}
#endif

#ifdef CLI_DUMP_CMD_ENABLE
void Cli_parseDumpMem8(void)
{
  char *aptr;
  char *lptr;
  u32 addr, len;

  aptr = getNextToken();
  if(!aptr)
    return;
  lptr = getNextToken();
  if(!lptr)
    return;

  if(sscanf(aptr,"%x",&addr) && sscanf(lptr,"%x",&len))
  {
    dbg_dumpMem8(addr,len);
    cliCmdAccepted = 1;
  }
}

void Cli_parseDumpMem32(void)
{
  char *aptr;
  char *lptr;
  u32 addr, len;

  aptr = getNextToken();
  if(!aptr)
    return;
  lptr = getNextToken();
  if(!lptr)
    return;

  if(sscanf(aptr,"%x",&addr) && sscanf(lptr,"%x",&len))
  {
    dbg_dumpMem32(addr,len);
    cliCmdAccepted = 1;
  }
}
#endif
