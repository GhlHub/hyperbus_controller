/******************************************************************************
* Copyright (C) 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#include "xparameters.h"
#include "xil_io.h"

#define EUART_TX_BYTE_FIFO_OFFSET       0x00U
#define EUART_RX_BYTE_FIFO_OFFSET       0x08U
#define EUART_INT_MASK_OFFSET           0x14U
#define EUART_CTRL_OFFSET               0x18U
#define EUART_BAUDRATE_CNTR_OFFSET      0x20U
#define EUART_OVERSAMPLE_CNTR_OFFSET    0x24U
#define EUART_INT_HOLDOFF_CFG_OFFSET    0x28U
#define EUART_TX_FIFO_CNT_OFFSET        0x38U
#define EUART_RX_FIFO_CNT_OFFSET        0x3CU

#define EUART_CTRL_TX_EN                0x01U
#define EUART_CTRL_RX_EN                0x02U

#define EUART_HOLDOFF_CLK_CNT_SHIFT     0U
#define EUART_HOLDOFF_BYTES_SHIFT       16U

#define EUART_OVERSAMPLE_RATE           5U
#define EUART_BAUD_RATE                 115200U
#define EUART_FIFO_DEPTH_BYTES          1024U

static unsigned int prvEUartReadFifoOccupancy( unsigned int ulOffset )
{
    unsigned int ulOccupancy = Xil_In32( XPAR_E_UART_0_BASEADDR + ulOffset );

    if( ulOccupancy > EUART_FIFO_DEPTH_BYTES )
    {
        ulOccupancy = EUART_FIFO_DEPTH_BYTES;
    }

    return ulOccupancy;
}

void euart_console_init( void )
{
#ifdef XPAR_E_UART_0_BASEADDR
    const unsigned int ulBusClockHz = ( unsigned int ) XPAR_MICROBLAZE_RISCV_FREQ;
    const unsigned int ulOversampleTicks =
        ( ulBusClockHz + ( ( EUART_BAUD_RATE * EUART_OVERSAMPLE_RATE ) / 2U ) ) /
        ( EUART_BAUD_RATE * EUART_OVERSAMPLE_RATE );
    const unsigned int ulBaudrateTicks =
        ( ulBusClockHz + ( EUART_BAUD_RATE / 2U ) ) / EUART_BAUD_RATE;
    const unsigned int ulInterruptHoldoff =
        ( 5U << EUART_HOLDOFF_CLK_CNT_SHIFT ) |
        ( 5U << EUART_HOLDOFF_BYTES_SHIFT );

    Xil_Out32( XPAR_E_UART_0_BASEADDR + EUART_CTRL_OFFSET, 0U );
    Xil_Out32( XPAR_E_UART_0_BASEADDR + EUART_BAUDRATE_CNTR_OFFSET, ulBaudrateTicks - 1U );
    Xil_Out32( XPAR_E_UART_0_BASEADDR + EUART_OVERSAMPLE_CNTR_OFFSET, ulOversampleTicks - 1U );
    Xil_Out32( XPAR_E_UART_0_BASEADDR + EUART_INT_MASK_OFFSET, 0U );
    Xil_Out32( XPAR_E_UART_0_BASEADDR + EUART_INT_HOLDOFF_CFG_OFFSET, ulInterruptHoldoff );
    Xil_Out32( XPAR_E_UART_0_BASEADDR + EUART_CTRL_OFFSET, EUART_CTRL_TX_EN | EUART_CTRL_RX_EN );
#endif
}

void outbyte( char c )
{
#ifdef XPAR_E_UART_0_BASEADDR
    while( prvEUartReadFifoOccupancy( EUART_TX_FIFO_CNT_OFFSET ) >= EUART_FIFO_DEPTH_BYTES )
    {
    }

    Xil_Out32( XPAR_E_UART_0_BASEADDR + EUART_TX_BYTE_FIFO_OFFSET, ( unsigned int ) ( unsigned char ) c );
#else
    ( void ) c;
#endif
}

char inbyte( void )
{
#ifdef XPAR_E_UART_0_BASEADDR
    while( prvEUartReadFifoOccupancy( EUART_RX_FIFO_CNT_OFFSET ) == 0U )
    {
    }

    return ( char ) ( Xil_In32( XPAR_E_UART_0_BASEADDR + EUART_RX_BYTE_FIFO_OFFSET ) & 0xFFU );
#else
    return '\0';
#endif
}
