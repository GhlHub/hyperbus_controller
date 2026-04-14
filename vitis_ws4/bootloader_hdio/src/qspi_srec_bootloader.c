/******************************************************************************
* Copyright (C) 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#include <stddef.h>
#include <stdint.h>
#include <string.h>

#include "boot_breadcrumbs.h"
#include "clk_wiz_phase_ctrl.h"
#include "errors.h"
#include "hyperbus_odly.h"
#include "platform.h"
#include "portab.h"
#include "srec.h"
#include "xil_cache.h"
#include "xil_exception.h"
#include "xil_io.h"
#include "xil_printf.h"
#include "xparameters.h"
#include "xstatus.h"
#include "xintc_l.h"
#include "xtmrctr_l.h"
#include "mb_interface.h"

#if defined(XPAR_XSPI_NUM_INSTANCES) || defined(XPAR_SPI_NUM_INSTANCES) || defined(XPAR_AXI_QUAD_SPI_0_BASEADDR) || defined(XPAR_XSPI_0_BASEADDR)
#include "xspi.h"
#define BOOTLOADER_HAS_XSPI 1
#else
#define BOOTLOADER_HAS_XSPI 0
#endif

#define BOOT_FLASH_IMAGE_OFFSET              0x00800000U
#define BOOT_SPI_SELECT_MASK                 0x01U
#define BOOT_FLASH_READ_CMD                  0x03U
#define BOOT_FLASH_READ_ID_CMD               0x9FU
#define BOOT_FLASH_CMD_BYTES                 4U
#define BOOTLOADER_RESIDENT_START            0x0000A000U
#define BOOTLOADER_RESIDENT_END              HB_BREADCRUMB_BASE
#define BOOT_BREADCRUMB_END                  ( HB_BREADCRUMB_BASE + HB_BREADCRUMB_SIZE_BYTES )
#define BOOT_HB_IDELAYCTRL_TIMEOUT_POLLS     0x8000U
#define BOOT_SREC_CONTINUE                   0x100U
#define BOOT_SREC_PROGRESS_INTERVAL          1000U
#define BOOT_VERIFY_MISMATCH_PRINT_LIMIT     16U
#define BOOT_CONTINUE_FLAG_SET               0xB00710ADU
#define BOOT_TEST_CACHED_ADDR                0x80700000U
#define BOOT_TEST_UNCACHED_ADDR              0x80000000U
#define BOOT_TEST_CACHED_PATTERN             0x11223344U
#define BOOT_TEST_UNCACHED_PATTERN           0x55667788U
#define BOOTLOADER_BUILD_TIMESTAMP           __DATE__ " " __TIME__
#define BOOT_HB_RESET_TOTAL_GUARD_US         1U
#define BOOT_HB_RESET_ASSERT_US              1U
#define BOOT_HB_RESET_DEASSERT_US            1U
#define BOOT_HB_ID0_MATCH_VALUE              0x00000C81U
#if defined( XPAR_AXI_CLK_WIZ_PHASE_CT_0_BASEADDR )
#define BOOT_HB_PHASE_CTRL_BASEADDR          XPAR_AXI_CLK_WIZ_PHASE_CT_0_BASEADDR
#else
#define BOOT_HB_PHASE_CTRL_BASEADDR          0x00020000U
#endif
#define BOOT_HB_PHASE_CTRL_TARGET_SEL        4U
#define BOOT_HB_PHASE_SWEEP_STEPS_PER_CYCLE  336U
#define BOOT_HB_PHASE_TIMEOUT_POLLS          0x8000U
#define BOOT_IMAGE_VECTOR_ENTRY_OFFSET       0x50U
#define BOOT_VECTOR_SLOT_BYTES               8U
#define BOOT_VECTOR_RESET_OFFSET             0x00U
#define BOOT_VECTOR_SW_EXCEPTION_OFFSET      0x08U
#define BOOT_VECTOR_INTERRUPT_OFFSET         0x10U
#define BOOT_VECTOR_HW_EXCEPTION_OFFSET      0x20U
#define BOOT_FLASH_READ_BUFFER_BYTES         SREC_MAX_BYTES
#define BL_PRINTF( ... )                     xil_printf( "[BL] " __VA_ARGS__ )

extern int srec_line;

#if BOOTLOADER_HAS_XSPI
static srec_info_t xSrecInfo;
static uint8 ucSrecLine[ SREC_MAX_BYTES ];
static uint8 ucSrecData[ SREC_DATA_MAX_BYTES ];
static XSpi xSpiInstance;
static uint8 ucSpiTx[ SREC_MAX_BYTES + BOOT_FLASH_CMD_BYTES ];
static uint8 ucSpiRx[ SREC_MAX_BYTES + BOOT_FLASH_CMD_BYTES ];
static uint8 ucFlashReadBuffer[ BOOT_FLASH_READ_BUFFER_BYTES ];
static uint32_t ulFlashReadBufferBase;
static size_t xFlashReadBufferValid;
static int iFlashReadBufferLoaded;
static uintptr_t uxImageStart;
static uintptr_t uxImageEnd;
static int iImageRangeValid;
static uint32_t ulSrecProcessedCount;
static volatile uint32_t ulBootContinueFlag = BOOT_CONTINUE_FLAG_SET;
static const char * const ppcErrorStrings[] =
{
    "",
    "record targets bootloader-reserved BRAM",
    "unable to read an S-record from flash",
    "S-record parse error",
    "S-record checksum error",
    "no valid S-record at boot image base",
    "loaded image verification failed"
};
#if defined(SDT)
#define BOOT_SPI_DEVICE XPAR_AXI_QUAD_SPI_0_BASEADDR
#else
#define BOOT_SPI_DEVICE XPAR_SPI_0_DEVICE_ID
#endif

static void prvBusyLoopForever( void )
{
    Xil_ExceptionDisable();

    for( ; ; )
    {
    }
}

static void prvDelayCycles( uint32_t ulCycles )
{
    volatile uint32_t ulIndex;

    for( ulIndex = 0U; ulIndex < ulCycles; ulIndex++ )
    {
        __asm__ volatile ( "nop" );
    }
}

static void prvDelayMicroseconds( uint32_t ulMicroseconds )
{
    const uint32_t ulCyclesPerMicrosecond =
        ( uint32_t ) ( XPAR_CPU_CORE_CLOCK_FREQ_HZ / 1000000U );
    uint32_t ulMicrosecond;

    for( ulMicrosecond = 0U; ulMicrosecond < ulMicroseconds; ulMicrosecond++ )
    {
        prvDelayCycles( ulCyclesPerMicrosecond );
    }
}

static inline volatile uint32_t *prvHbRegPtr( uintptr_t uxBase, uint32_t ulOffset )
{
    return ( volatile uint32_t * ) ( uxBase + ( uintptr_t ) ulOffset );
}

static inline uint32_t prvHbRegRead( uintptr_t uxBase, uint32_t ulOffset )
{
    return *prvHbRegPtr( uxBase, ulOffset );
}

static inline void prvHbRegWrite( uintptr_t uxBase, uint32_t ulOffset, uint32_t ulValue )
{
    *prvHbRegPtr( uxBase, ulOffset ) = ulValue;
}

static void prvHyperRamExplicitReset( uintptr_t uxHyperBusBase )
{
    uint32_t ulDelayRstCtrl = prvHbRegRead( uxHyperBusBase, HB_DELAY_RST_CTRL_OFFSET );

    ulDelayRstCtrl |= HB_DELAY_RST_HB_RESET;
    prvHbRegWrite( uxHyperBusBase, HB_DELAY_RST_CTRL_OFFSET, ulDelayRstCtrl );
    prvDelayMicroseconds( BOOT_HB_RESET_ASSERT_US );

    ulDelayRstCtrl &= ~HB_DELAY_RST_HB_RESET;
    prvHbRegWrite( uxHyperBusBase, HB_DELAY_RST_CTRL_OFFSET, ulDelayRstCtrl );
    prvDelayMicroseconds( BOOT_HB_RESET_DEASSERT_US );

    BL_PRINTF( "Issued explicit HyperRAM reset: assert %u us, deassert %u us\r\n",
               ( unsigned ) BOOT_HB_RESET_ASSERT_US,
               ( unsigned ) BOOT_HB_RESET_DEASSERT_US );
}

static int prvHyperRamPhasePassSample( uintptr_t uxHyperBusBase )
{
    uint32_t ulId0 = prvHbRegRead( uxHyperBusBase, HB_ID0_OFFSET );
    uint32_t ulErrStatus = prvHbRegRead( uxHyperBusBase, HB_ERR_STATUS_OFFSET );

    if( ( ulErrStatus & HB_ERR_STATUS_TIMEOUT ) != 0U )
    {
        prvHbRegWrite( uxHyperBusBase, HB_ERR_STATUS_OFFSET, HB_ERR_STATUS_TIMEOUT );
        return 0;
    }

    return ( ulId0 == BOOT_HB_ID0_MATCH_VALUE ) ? 1 : 0;
}

static int prvHyperRamPhaseSweepToMidpoint( uintptr_t uxHyperBusBase,
                                            uintptr_t uxPhaseCtrlBase,
                                            uint16_t *pusPhaseMinOut,
                                            uint16_t *pusPhaseMaxOut,
                                            uint16_t *pusPhaseMidOut )
{
    uint8_t ucPassWindow[ BOOT_HB_PHASE_SWEEP_STEPS_PER_CYCLE ];
    uint32_t ulStepIndex;
    uint32_t ulScanIndex;
    uint32_t ulRunLength = 0U;
    uint32_t ulBestRunLength = 0U;
    uint32_t ulBestRunStart = 0U;
    uint32_t ulPhaseMid;
    uint32_t ulTimeouts = 0U;
    uint32_t ulId0Mismatches = 0U;
    int iStatus;

    memset( ucPassWindow, 0, sizeof( ucPassWindow ) );

    /* Clear CE_FORCE so the HyperBus clock gate is driven solely by the
     * controller engine during the sweep (not forced on). */
    prvHbRegWrite( uxHyperBusBase, HB_HB_CLK_CE_FORCE_OFFSET, 0U );

    /* Verify AXI slave is reachable and at expected base address. */
    {
        uint32_t ulVer = prvHbRegRead( uxHyperBusBase, HB_VERSION_OFFSET );
        BL_PRINTF( "HB VERSION=0x%08X (expect 0x%08X) base=0x%08X\r\n",
                   ( unsigned ) ulVer, ( unsigned ) HB_VERSION_VALUE,
                   ( unsigned ) uxHyperBusBase );

        /* NOTE: In PHY_IO_STYLE=1 (EXT_CLK_PHASE_SHIFT), addresses 0x0200
         * (DELAY_RST_CTRL), 0x0204 (IDELAYCTRL_STATUS), and 0x0108 (ODLY_STATUS)
         * are NOT local AXI registers (axil_is_local_addr returns HAS_DELAY_CTRL=0
         * for those addresses).  Reading them here would launch HyperBus transactions
         * that timeout, each triggering a 220ns RESET_N pulse.  Omit those reads. */

        prvDelayMicroseconds( 10U );
    }

    /* Diagnostic: single read after CE enable to show raw ID0 and ERR_STATUS. */
    {
        uint32_t ulId0Diag  = prvHbRegRead( uxHyperBusBase, HB_ID0_OFFSET );
        uint32_t ulErrDiag  = prvHbRegRead( uxHyperBusBase, HB_ERR_STATUS_OFFSET );
        uint32_t ulRwdsCntr = prvHbRegRead( uxHyperBusBase, HB_AXIL_RWDS_CNTR_OFFSET );
        BL_PRINTF( "HB diag: ID0=0x%08X ERR_STATUS=0x%08X AXIL_RWDS_CNTR=0x%08X (expect ID0=0x%08X)\r\n",
                   ( unsigned ) ulId0Diag, ( unsigned ) ulErrDiag,
                   ( unsigned ) ulRwdsCntr, ( unsigned ) BOOT_HB_ID0_MATCH_VALUE );
        if( ( ulErrDiag & HB_ERR_STATUS_TIMEOUT ) != 0U )
        {
            prvHbRegWrite( uxHyperBusBase, HB_ERR_STATUS_OFFSET, HB_ERR_STATUS_TIMEOUT );
        }
    }

    for( ulStepIndex = 0U; ulStepIndex < BOOT_HB_PHASE_SWEEP_STEPS_PER_CYCLE; ulStepIndex++ )
    {
        uint32_t ulId0 = prvHbRegRead( uxHyperBusBase, HB_ID0_OFFSET );
        uint32_t ulErrStatus = prvHbRegRead( uxHyperBusBase, HB_ERR_STATUS_OFFSET );

        if( ( ulErrStatus & HB_ERR_STATUS_TIMEOUT ) != 0U )
        {
            prvHbRegWrite( uxHyperBusBase, HB_ERR_STATUS_OFFSET, HB_ERR_STATUS_TIMEOUT );
            ucPassWindow[ ulStepIndex ] = 0U;
            ulTimeouts++;
            /* A timeout triggers the controller's automatic 220ns RESET_N pulse.
             * Wait 1µs (> 220ns reset + 400ns tRH) so the device is ready before
             * the next phase step's ID0 read. */
            prvDelayMicroseconds( 1U );
        }
        else if( ulId0 == BOOT_HB_ID0_MATCH_VALUE )
        {
            ucPassWindow[ ulStepIndex ] = 1U;
        }
        else
        {
            ucPassWindow[ ulStepIndex ] = 0U;
            ulId0Mismatches++;
        }

        iStatus = clk_wiz_phase_ctrl_step( uxPhaseCtrlBase,
                                           BOOT_HB_PHASE_CTRL_TARGET_SEL,
                                           1,
                                           BOOT_HB_PHASE_TIMEOUT_POLLS );
        if( iStatus != 0 )
        {
            return ( -100 + iStatus );
        }
    }

    for( ulScanIndex = 0U; ulScanIndex < ( 2U * BOOT_HB_PHASE_SWEEP_STEPS_PER_CYCLE ); ulScanIndex++ )
    {
        if( ucPassWindow[ ulScanIndex % BOOT_HB_PHASE_SWEEP_STEPS_PER_CYCLE ] != 0U )
        {
            if( ulRunLength < BOOT_HB_PHASE_SWEEP_STEPS_PER_CYCLE )
            {
                ulRunLength++;
            }

            if( ulRunLength > ulBestRunLength )
            {
                ulBestRunLength = ulRunLength;
                ulBestRunStart = ( ulScanIndex + 1U - ulRunLength ) %
                                 BOOT_HB_PHASE_SWEEP_STEPS_PER_CYCLE;
            }
        }
        else
        {
            ulRunLength = 0U;
        }
    }

    if( ulBestRunLength == 0U )
    {
        uint32_t ulRwdsAfter = prvHbRegRead( uxHyperBusBase, HB_AXIL_RWDS_CNTR_OFFSET );
        BL_PRINTF( "Sweep: timeouts=%u id0_mismatches=%u (of %u steps) AXIL_RWDS_CNTR_after=0x%08X\r\n",
                   ( unsigned ) ulTimeouts, ( unsigned ) ulId0Mismatches,
                   ( unsigned ) BOOT_HB_PHASE_SWEEP_STEPS_PER_CYCLE,
                   ( unsigned ) ulRwdsAfter );
        return -3;
    }

    ulPhaseMid = ( ulBestRunStart + ulBestRunLength / 2U ) %
                 BOOT_HB_PHASE_SWEEP_STEPS_PER_CYCLE;

    iStatus = clk_wiz_phase_ctrl_step( uxPhaseCtrlBase,
                                       BOOT_HB_PHASE_CTRL_TARGET_SEL,
                                       ( int32_t ) ulPhaseMid,
                                       BOOT_HB_PHASE_TIMEOUT_POLLS );
    if( iStatus != 0 )
    {
        return ( -110 + iStatus );
    }

    if( pusPhaseMinOut != NULL )
    {
        *pusPhaseMinOut = ( uint16_t ) ulBestRunStart;
    }

    if( pusPhaseMaxOut != NULL )
    {
        *pusPhaseMaxOut = ( uint16_t ) ( ( ulBestRunStart + ulBestRunLength - 1U ) %
                                         BOOT_HB_PHASE_SWEEP_STEPS_PER_CYCLE );
    }

    if( pusPhaseMidOut != NULL )
    {
        *pusPhaseMidOut = ( uint16_t ) ulPhaseMid;
    }

    return 0;
}

static void prvFatalExceptionHandler( void *pvData )
{
    const uintptr_t uxRegisteredId = ( uintptr_t ) pvData;
    const unsigned long ulMsr = ( unsigned long ) mfmsr();
    const unsigned long ulEar = ( unsigned long ) mfear();
    const unsigned long ulEsr = ( unsigned long ) mfesr();
    const unsigned long ulBtr = ( unsigned long ) mfbtr();
    const unsigned long ulEdr = ( unsigned long ) mfedr();
    const unsigned long ulRa = ( unsigned long ) mfgpr( r15 );
    const unsigned long ulSp = ( unsigned long ) mfgpr( r1 );

    BL_PRINTF( "\r\nBOOTLOADER EXCEPTION\r\n" );
    BL_PRINTF( "registered_id=0x%08lx msr=0x%08lx esr=0x%08lx ear=0x%08lx\r\n",
               ( unsigned long ) uxRegisteredId,
               ulMsr,
               ulEsr,
               ulEar );
    BL_PRINTF( "btr=0x%08lx edr=0x%08lx ra=0x%08lx sp=0x%08lx\r\n",
               ulBtr,
               ulEdr,
               ulRa,
               ulSp );
    BL_PRINTF( "Bootloader halted in exception handler\r\n" );

    prvBusyLoopForever();
}

static void prvInstallExceptionHandlers( void )
{
    uint32_t ulId;

    Xil_ExceptionInit();

    for( ulId = XIL_EXCEPTION_ID_FIRST; ulId <= XIL_EXCEPTION_ID_LAST; ulId++ )
    {
        Xil_ExceptionRegisterHandler( ulId,
                                      prvFatalExceptionHandler,
                                      ( void * ) ( uintptr_t ) ulId );
    }
    Xil_ExceptionRegisterHandler( XIL_EXCEPTION_ID_INT,
                                  prvFatalExceptionHandler,
                                  ( void * ) ( uintptr_t ) XIL_EXCEPTION_ID_INT );
    Xil_ExceptionEnable();
}

static void prvPrintBreadcrumbSummary( void )
{
    const volatile HbBreadcrumbArea_t *pxArea = hb_breadcrumb_get_area();
    uint32_t ulCount = pxArea->ulCount;
    uint32_t ulLastTag = 0U;
    uint32_t ulLastValue = 0U;

    if( ulCount > HB_BREADCRUMB_MAX_ENTRIES )
    {
        ulCount = HB_BREADCRUMB_MAX_ENTRIES;
    }

    if( ulCount > 0U )
    {
        ulLastTag = pxArea->xEntries[ ulCount - 1U ].ulTag;
        ulLastValue = pxArea->xEntries[ ulCount - 1U ].ulValue;
    }

    BL_PRINTF( "\r\nHello-world breadcrumb signature detected in BRAM\r\n" );
    BL_PRINTF( "Breadcrumb region: 0x%08X-0x%08X\r\n",
               HB_BREADCRUMB_BASE,
               BOOT_BREADCRUMB_END - 1U );
    BL_PRINTF( "Breadcrumb count=%lu last_tag=0x%08lx last_value=0x%08lx\r\n",
               ( unsigned long ) ulCount,
               ( unsigned long ) ulLastTag,
               ( unsigned long ) ulLastValue );
    BL_PRINTF( "Type Y to clear breadcrumbs and continue booting.\r\n" );
    BL_PRINTF( "Waiting for UART input...\r\n" );
}

static void prvPrintRawBreadcrumbHeader( void )
{
    const volatile HbBreadcrumbArea_t *pxArea = hb_breadcrumb_get_area();

    BL_PRINTF( "Breadcrumb raw header: magic=0x%08lx version=0x%08lx count=0x%08lx reserved=0x%08lx\r\n",
               ( unsigned long ) pxArea->ulMagic,
               ( unsigned long ) pxArea->ulVersion,
               ( unsigned long ) pxArea->ulCount,
               ( unsigned long ) pxArea->ulReserved );
}

static void prvCheckAndClearBootContinueFlag( void )
{
    if( ulBootContinueFlag != BOOT_CONTINUE_FLAG_SET )
    {
        prvPrintRawBreadcrumbHeader();
        BL_PRINTF( "Boot continue flag already clear or invalid: 0x%08lx\r\n",
                   ( unsigned long ) ulBootContinueFlag );
        BL_PRINTF( "Bootloader halting before boot attempt\r\n" );
        prvBusyLoopForever();
    }

    BL_PRINTF( "Boot continue flag valid: 0x%08lx, clearing and continuing\r\n",
               ( unsigned long ) ulBootContinueFlag );
    ulBootContinueFlag = 0U;
}

static void prvWaitForBreadcrumbOverride( void )
{
    for( ; ; )
    {
        const char cChar = inbyte();

        if( ( cChar == 'Y' ) || ( cChar == 'y' ) )
        {
            hb_breadcrumb_clear();
            BL_PRINTF( "\r\nBreadcrumb signature cleared. Continuing boot.\r\n" );
            return;
        }
    }
}

static void prvWaitForSpacebar( const char *pcPrompt )
{
    BL_PRINTF( "%s", pcPrompt );
    euart_console_wait_tx_empty();

    for( ; ; )
    {
        if( inbyte() == ' ' )
        {
            BL_PRINTF( "\r\n" );
            return;
        }
    }
}

static int prvRangeTouchesBootloader( uintptr_t uxStart, size_t xLength )
{
    const uintptr_t uxEnd = uxStart + xLength;

    return ( uxStart < BOOTLOADER_RESIDENT_END ) && ( uxEnd > BOOTLOADER_RESIDENT_START );
}

static int prvFlashRead( uint32_t ulOffset, uint8 *pucBuffer, size_t xLength )
{
    size_t xIndex;
    int iStatus;

    if( xLength > SREC_MAX_BYTES )
    {
        return XST_FAILURE;
    }

    ucSpiTx[ 0 ] = BOOT_FLASH_READ_CMD;
    ucSpiTx[ 1 ] = ( uint8 ) ( ulOffset >> 16 );
    ucSpiTx[ 2 ] = ( uint8 ) ( ulOffset >> 8 );
    ucSpiTx[ 3 ] = ( uint8 ) ulOffset;

    for( xIndex = 0; xIndex < xLength; xIndex++ )
    {
        ucSpiTx[ BOOT_FLASH_CMD_BYTES + xIndex ] = 0xFFU;
    }

    iStatus = XSpi_Transfer( &xSpiInstance,
                             ucSpiTx,
                             ucSpiRx,
                             ( int ) ( BOOT_FLASH_CMD_BYTES + xLength ) );
    if( iStatus != XST_SUCCESS )
    {
        return iStatus;
    }

    memcpy( pucBuffer, &ucSpiRx[ BOOT_FLASH_CMD_BYTES ], xLength );
    return XST_SUCCESS;
}

static int prvFlashReadByte( uint32_t ulOffset, uint8 *pucValue )
{
    const uint32_t ulBufferEnd = ulFlashReadBufferBase + ( uint32_t ) xFlashReadBufferValid;
    int iStatus;

    if( ( iFlashReadBufferLoaded == 0 ) ||
        ( ulOffset < ulFlashReadBufferBase ) ||
        ( ulOffset >= ulBufferEnd ) )
    {
        iStatus = prvFlashRead( ulOffset, ucFlashReadBuffer, sizeof( ucFlashReadBuffer ) );
        if( iStatus != XST_SUCCESS )
        {
            return iStatus;
        }

        ulFlashReadBufferBase = ulOffset;
        xFlashReadBufferValid = sizeof( ucFlashReadBuffer );
        iFlashReadBufferLoaded = 1;
    }

    *pucValue = ucFlashReadBuffer[ ulOffset - ulFlashReadBufferBase ];
    return XST_SUCCESS;
}

static void prvResetFlashReadBuffer( void )
{
    ulFlashReadBufferBase = 0U;
    xFlashReadBufferValid = 0U;
    iFlashReadBufferLoaded = 0;
}

static void prvPrintFlashBytes( uint32_t ulOffset, const uint8 *pucData, size_t xLength )
{
    size_t xIndex;

    BL_PRINTF( "Flash bytes @0x%08X:", ulOffset );
    for( xIndex = 0; xIndex < xLength; xIndex++ )
    {
        xil_printf( " %02X", pucData[ xIndex ] );
    }
    xil_printf( "\r\n" );
}

static int prvFlashReadId( uint8 *pucId )
{
    int iStatus;

    ucSpiTx[ 0 ] = BOOT_FLASH_READ_ID_CMD;
    ucSpiTx[ 1 ] = 0xFFU;
    ucSpiTx[ 2 ] = 0xFFU;
    ucSpiTx[ 3 ] = 0xFFU;

    iStatus = XSpi_Transfer( &xSpiInstance, ucSpiTx, ucSpiRx, 4 );
    if( iStatus != XST_SUCCESS )
    {
        return iStatus;
    }

    pucId[ 0 ] = ucSpiRx[ 1 ];
    pucId[ 1 ] = ucSpiRx[ 2 ];
    pucId[ 2 ] = ucSpiRx[ 3 ];

    return XST_SUCCESS;
}

static int prvFlashGetSrecLineStrict( uint32_t *pulOffset, uint8 *pucLine )
{
    uint8 ucByte;
    size_t xLength = 0U;
    int iStatus;

    iStatus = prvFlashReadByte( *pulOffset, &ucByte );
    if( iStatus != XST_SUCCESS )
    {
        return iStatus;
    }
    ( *pulOffset )++;

    if( ucByte != 'S' )
    {
        return XST_FAILURE;
    }

    pucLine[ xLength++ ] = ucByte;

    while( xLength < SREC_MAX_BYTES )
    {
        iStatus = prvFlashReadByte( *pulOffset, &ucByte );
        if( iStatus != XST_SUCCESS )
        {
            return iStatus;
        }
        ( *pulOffset )++;

        if( ( ucByte == '\r' ) || ( ucByte == '\n' ) )
        {
            return XST_SUCCESS;
        }

        pucLine[ xLength++ ] = ucByte;
    }

    return XST_FAILURE;
}

static int prvFlashGetSrecLine( uint32_t *pulOffset, uint8 *pucLine )
{
    uint8 ucByte;
    size_t xLength = 0U;
    int iStatus;

    do
    {
        iStatus = prvFlashReadByte( *pulOffset, &ucByte );
        if( iStatus != XST_SUCCESS )
        {
            return iStatus;
        }
        ( *pulOffset )++;
    } while( ( ucByte == '\r' ) || ( ucByte == '\n' ) || ( ucByte == 0xFFU ) );

    if( ucByte != 'S' )
    {
        return XST_FAILURE;
    }

    pucLine[ xLength++ ] = ucByte;

    while( xLength < SREC_MAX_BYTES )
    {
        iStatus = prvFlashReadByte( *pulOffset, &ucByte );
        if( iStatus != XST_SUCCESS )
        {
            return iStatus;
        }
        ( *pulOffset )++;

        if( ( ucByte == '\r' ) || ( ucByte == '\n' ) )
        {
            return XST_SUCCESS;
        }

        pucLine[ xLength++ ] = ucByte;
    }

    return XST_FAILURE;
}

static void prvUpdateImageRange( uintptr_t uxStart, size_t xLength )
{
    const uintptr_t uxEnd = uxStart + xLength;

    if( iImageRangeValid == 0 )
    {
        uxImageStart = uxStart;
        uxImageEnd = uxEnd;
        iImageRangeValid = 1;
    }
    else
    {
        if( uxStart < uxImageStart )
        {
            uxImageStart = uxStart;
        }

        if( uxEnd > uxImageEnd )
        {
            uxImageEnd = uxEnd;
        }
    }
}

static void prvQuiesceInterruptStateForHandoff( void )
{
    BL_PRINTF( "Quiescing interrupt state for handoff\r\n" );

    /* Stop taking CPU-level interrupts/exceptions before dismantling the
     * bootloader-owned interrupt state. */
    Xil_ExceptionDisable();

#if defined( XPAR_XTMRCTR_0_BASEADDR )
    {
        const UINTPTR ulTimerBase = ( UINTPTR ) XPAR_XTMRCTR_0_BASEADDR;
        uint32_t ulTcsr0 = XTmrCtr_ReadReg( ulTimerBase, 0U, XTC_TCSR_OFFSET );

        /* Disable timer 0 and clear any pending interrupt status. */
        ulTcsr0 &= ~( XTC_CSR_ENABLE_TMR_MASK | XTC_CSR_ENABLE_INT_MASK );
        XTmrCtr_WriteReg( ulTimerBase,
                          0U,
                          XTC_TCSR_OFFSET,
                          ulTcsr0 | XTC_CSR_INT_OCCURED_MASK );
    }
#endif

#if defined( XPAR_XINTC_0_BASEADDR )
    {
        const UINTPTR ulIntcBase = ( UINTPTR ) XPAR_XINTC_0_BASEADDR;

        /* Disable all interrupt sources, acknowledge anything pending, and
         * clear the master-enable bits before transfer to the application. */
        Xil_Out32( ulIntcBase + XIN_CIE_OFFSET, 0xFFFFFFFFU );
        Xil_Out32( ulIntcBase + XIN_IAR_OFFSET, 0xFFFFFFFFU );
        Xil_Out32( ulIntcBase + XIN_MER_OFFSET, 0U );
    }
#endif
}

static int prvInstallApplicationVectorsForHandoff( uintptr_t uxEntry )
{
    static const uint32_t pulVectorOffsets[] =
    {
        BOOT_VECTOR_RESET_OFFSET,
        BOOT_VECTOR_SW_EXCEPTION_OFFSET,
        BOOT_VECTOR_INTERRUPT_OFFSET,
        BOOT_VECTOR_HW_EXCEPTION_OFFSET
    };
    const uintptr_t uxVectorBase =
        ( iImageRangeValid != 0 ) ? uxImageStart :
        ( ( uxEntry >= BOOT_IMAGE_VECTOR_ENTRY_OFFSET ) ?
          ( uxEntry - BOOT_IMAGE_VECTOR_ENTRY_OFFSET ) : 0U );
    size_t xIndex;

    if( uxVectorBase == 0U )
    {
        BL_PRINTF( "Unable to determine application vector base\r\n" );
        return XST_FAILURE;
    }

    for( xIndex = 0U; xIndex < ( sizeof( pulVectorOffsets ) / sizeof( pulVectorOffsets[ 0U ] ) ); xIndex++ )
    {
        const uintptr_t uxOffset = ( uintptr_t ) pulVectorOffsets[ xIndex ];
        const uintptr_t uxSource = uxVectorBase + uxOffset;
        const uintptr_t uxDestination = uxOffset;

        memcpy( ( void * ) uxDestination,
                ( const void * ) uxSource,
                BOOT_VECTOR_SLOT_BYTES );
    }

    Xil_DCacheFlushRange( 0U, BOOT_VECTOR_HW_EXCEPTION_OFFSET + BOOT_VECTOR_SLOT_BYTES );
    Xil_ICacheInvalidate();
#if defined(__riscv)
    __asm__ volatile ( "fence.i" ::: "memory" );
#endif

    return XST_SUCCESS;
}

static void prvPrintAndStartImage( void ( *pxEntryPoint )( void ) )
{
    const uintptr_t uxEntry = ( uintptr_t ) pxEntryPoint;
    const uintptr_t uxSize = ( iImageRangeValid != 0 ) ? ( uxImageEnd - uxImageStart ) : 0U;

    Xil_DCacheFlush();
    Xil_ICacheInvalidate();
#if defined(__riscv)
    __asm__ volatile ( "fence.i" ::: "memory" );
#endif
    BL_PRINTF( "SREC image start=0x%08lx size=0x%08lx entry=0x%08lx\r\n",
               ( unsigned long ) uxImageStart,
               ( unsigned long ) uxSize,
               ( unsigned long ) uxEntry );
    prvWaitForSpacebar( "Press spacebar to continue to the loaded executable..." );
    prvQuiesceInterruptStateForHandoff();
    if( prvInstallApplicationVectorsForHandoff( uxEntry ) != XST_SUCCESS )
    {
        prvBusyLoopForever();
    }
    BL_PRINTF( "Jumping to 0x%08lx\r\n", ( unsigned long ) uxEntry );
    euart_console_wait_tx_empty();
    pxEntryPoint();
}

static void prvPrintProgressIfNeeded( void )
{
    if( ( ulSrecProcessedCount > 0U ) &&
        ( ( ulSrecProcessedCount % BOOT_SREC_PROGRESS_INTERVAL ) == 0U ) )
    {
        BL_PRINTF( "Processed %lu S-records\r",
                   ( unsigned long ) ulSrecProcessedCount );
    }
}

static void prvPrintFinalProgress( void )
{
    BL_PRINTF( "Processed %lu S-records\r\n",
               ( unsigned long ) ulSrecProcessedCount );
}

static int prvVerifyRecordData( void )
{
    const volatile uint8 *pucTarget = ( const volatile uint8 * ) xSrecInfo.addr;
    const uint8 *pucExpected = ( const uint8 * ) xSrecInfo.sr_data;
    uint32_t ulMismatchCount = 0U;
    uint32_t ulPrintedMismatchCount = 0U;
    uint32_t ulIndex = 0U;

    if( ( ( ( ( uintptr_t ) pucTarget ) | ( ( uintptr_t ) pucExpected ) ) & 0x3U ) == 0U )
    {
        const volatile uint32_t *pulTarget = ( const volatile uint32_t * ) pucTarget;
        const uint32_t *pulExpected = ( const uint32_t * ) pucExpected;
        const uint32_t ulWordCount = xSrecInfo.dlen / sizeof( uint32_t );
        uint32_t ulWordIndex;

        for( ulWordIndex = 0U; ulWordIndex < ulWordCount; ulWordIndex++ )
        {
            if( pulTarget[ ulWordIndex ] != pulExpected[ ulWordIndex ] )
            {
                const uint32_t ulBaseIndex = ulWordIndex * ( uint32_t ) sizeof( uint32_t );
                uint32_t ulByteOffset;

                /* Preserve byte-accurate mismatch reporting on word miscompares. */
                for( ulByteOffset = 0U; ulByteOffset < ( uint32_t ) sizeof( uint32_t ); ulByteOffset++ )
                {
                    const uint32_t ulByteIndex = ulBaseIndex + ulByteOffset;
                    const uint8 ucActual = pucTarget[ ulByteIndex ];
                    const uint8 ucExpected = pucExpected[ ulByteIndex ];

                    if( ucActual != ucExpected )
                    {
                        if( ulPrintedMismatchCount < BOOT_VERIFY_MISMATCH_PRINT_LIMIT )
                        {
                            BL_PRINTF( "Verify mismatch @0x%08lx expected=%02X actual=%02X\r\n",
                                       ( unsigned long ) ( ( uintptr_t ) xSrecInfo.addr + ulByteIndex ),
                                       ucExpected,
                                       ucActual );
                        }

                        ulMismatchCount++;
                        ulPrintedMismatchCount++;
                    }
                }
            }
        }

        ulIndex = ulWordCount * ( uint32_t ) sizeof( uint32_t );
    }

    for( ; ulIndex < xSrecInfo.dlen; ulIndex++ )
    {
        const uint8 ucActual = pucTarget[ ulIndex ];
        const uint8 ucExpected = pucExpected[ ulIndex ];

        if( ucActual != ucExpected )
        {
            if( ulPrintedMismatchCount < BOOT_VERIFY_MISMATCH_PRINT_LIMIT )
            {
                BL_PRINTF( "Verify mismatch @0x%08lx expected=%02X actual=%02X\r\n",
                           ( unsigned long ) ( ( uintptr_t ) xSrecInfo.addr + ulIndex ),
                           ucExpected,
                           ucActual );
            }

            ulMismatchCount++;
            ulPrintedMismatchCount++;
        }
    }

    if( ulMismatchCount != 0U )
    {
        if( ulMismatchCount > BOOT_VERIFY_MISMATCH_PRINT_LIMIT )
        {
            BL_PRINTF( "Additional mismatches not shown: %lu\r\n",
                       ( unsigned long ) ( ulMismatchCount - BOOT_VERIFY_MISMATCH_PRINT_LIMIT ) );
        }

        BL_PRINTF( "Verification failed with %lu mismatches\r\n",
                   ( unsigned long ) ulMismatchCount );
        return LD_SREC_VERIFY_ERROR;
    }

    return XST_SUCCESS;
}

static int prvVerifyLoadedImage( void )
{
    uint32_t ulFlashOffset = BOOT_FLASH_IMAGE_OFFSET;
    void ( *pxEntryPoint )( void ) = NULL;
    int iStatus;

    xSrecInfo.sr_data = ucSrecData;
    srec_line = 0;
    prvResetFlashReadBuffer();

    iStatus = prvFlashGetSrecLineStrict( &ulFlashOffset, ucSrecLine );
    if( iStatus != XST_SUCCESS )
    {
        return LD_SREC_START_ERROR;
    }

    for( ;; )
    {
        const uint8 ucParseStatus = decode_srec_line( ucSrecLine, &xSrecInfo );

        if( ucParseStatus != 0U )
        {
            return ucParseStatus;
        }

        switch( xSrecInfo.type )
        {
            case SREC_TYPE_0:
            case SREC_TYPE_5:
                break;

            case SREC_TYPE_1:
            case SREC_TYPE_2:
            case SREC_TYPE_3:
                iStatus = prvVerifyRecordData();
                if( iStatus != XST_SUCCESS )
                {
                    return iStatus;
                }
                break;

            case SREC_TYPE_7:
            case SREC_TYPE_8:
            case SREC_TYPE_9:
                pxEntryPoint = ( void ( * )( void ) ) xSrecInfo.addr;
                BL_PRINTF( "SREC image verify passed\r\n" );
                return ( pxEntryPoint != NULL ) ? XST_SUCCESS : SREC_PARSE_ERROR;

            default:
                return SREC_PARSE_ERROR;
        }

        iStatus = prvFlashGetSrecLine( &ulFlashOffset, ucSrecLine );
        if( iStatus != XST_SUCCESS )
        {
            return LD_SREC_LINE_ERROR;
        }
    }
}

static int prvProcessSrecLine( const uint8 *pucLine, void ( **ppxEntryPoint )( void ) )
{
    uint8 ucParseStatus;

    ucParseStatus = decode_srec_line( ( uint8 * ) pucLine, &xSrecInfo );
    if( ucParseStatus != 0U )
    {
        return ucParseStatus;
    }

    ulSrecProcessedCount++;

    prvPrintProgressIfNeeded();

    switch( xSrecInfo.type )
    {
        case SREC_TYPE_0:
        case SREC_TYPE_5:
            break;

        case SREC_TYPE_1:
        case SREC_TYPE_2:
        case SREC_TYPE_3:
            if( prvRangeTouchesBootloader( ( uintptr_t ) xSrecInfo.addr, xSrecInfo.dlen ) != 0 )
            {
                return LD_MEM_WRITE_ERROR;
            }
            memcpy( xSrecInfo.addr, xSrecInfo.sr_data, xSrecInfo.dlen );
            prvUpdateImageRange( ( uintptr_t ) xSrecInfo.addr, xSrecInfo.dlen );
            break;

        case SREC_TYPE_7:
        case SREC_TYPE_8:
        case SREC_TYPE_9:
            *ppxEntryPoint = ( void ( * )( void ) ) xSrecInfo.addr;
            return XST_SUCCESS;

        default:
            return SREC_PARSE_ERROR;
    }

    return BOOT_SREC_CONTINUE;
}

static int prvLoadSrecImage( void )
{
    uint32_t ulFlashOffset = BOOT_FLASH_IMAGE_OFFSET;
    uint8 ucBootStartBytes[ 16 ];
    void ( *pxEntryPoint )( void ) = NULL;
    int iStatus;

    xSrecInfo.sr_data = ucSrecData;
    uxImageStart = 0U;
    uxImageEnd = 0U;
    iImageRangeValid = 0;
    ulSrecProcessedCount = 0U;
    srec_line = 0;
    prvResetFlashReadBuffer();

    iStatus = prvFlashRead( ulFlashOffset, ucBootStartBytes, sizeof( ucBootStartBytes ) );
    if( iStatus != XST_SUCCESS )
    {
        return LD_SREC_LINE_ERROR;
    }

    iStatus = prvFlashGetSrecLineStrict( &ulFlashOffset, ucSrecLine );
    if( iStatus != XST_SUCCESS )
    {
        prvPrintFlashBytes( BOOT_FLASH_IMAGE_OFFSET, ucBootStartBytes, sizeof( ucBootStartBytes ) );
        BL_PRINTF( "No valid S-record found at boot image base 0x%08X\r\n", BOOT_FLASH_IMAGE_OFFSET );
        return LD_SREC_START_ERROR;
    }

    iStatus = prvProcessSrecLine( ucSrecLine, &pxEntryPoint );
    if( iStatus == XST_SUCCESS )
    {
        prvPrintFinalProgress();
        BL_PRINTF( "Starting SREC verification\r\n" );
        iStatus = prvVerifyLoadedImage();
        if( iStatus != XST_SUCCESS )
        {
            return iStatus;
        }
        prvPrintAndStartImage( pxEntryPoint );
        return XST_SUCCESS;
    }
    if( iStatus != BOOT_SREC_CONTINUE )
    {
        prvPrintFlashBytes( BOOT_FLASH_IMAGE_OFFSET, ucBootStartBytes, sizeof( ucBootStartBytes ) );
        BL_PRINTF( "Invalid S-record at boot image base 0x%08X\r\n", BOOT_FLASH_IMAGE_OFFSET );
        return LD_SREC_START_ERROR;
    }

    for( ;; )
    {
        iStatus = prvFlashGetSrecLine( &ulFlashOffset, ucSrecLine );
        if( iStatus != XST_SUCCESS )
        {
            return LD_SREC_LINE_ERROR;
        }

        iStatus = prvProcessSrecLine( ucSrecLine, &pxEntryPoint );
        if( iStatus == XST_SUCCESS )
        {
            prvPrintFinalProgress();
            BL_PRINTF( "Starting SREC verification\r\n" );
            iStatus = prvVerifyLoadedImage();
            if( iStatus != XST_SUCCESS )
            {
                return iStatus;
            }
            prvPrintAndStartImage( pxEntryPoint );
            return XST_SUCCESS;
        }
        if( iStatus != BOOT_SREC_CONTINUE )
        {
            return iStatus;
        }
    }
}

static int prvInitSpi( void )
{
    int iStatus;
    uint8 ucId[ 3 ];

    iStatus = XSpi_Initialize( &xSpiInstance, BOOT_SPI_DEVICE );
    if( iStatus != XST_SUCCESS )
    {
        return iStatus;
    }

    iStatus = XSpi_SetOptions( &xSpiInstance, XSP_MASTER_OPTION | XSP_MANUAL_SSELECT_OPTION );
    if( iStatus != XST_SUCCESS )
    {
        return iStatus;
    }

    iStatus = XSpi_SetSlaveSelect( &xSpiInstance, BOOT_SPI_SELECT_MASK );
    if( iStatus != XST_SUCCESS )
    {
        return iStatus;
    }

    XSpi_Start( &xSpiInstance );
    XSpi_IntrGlobalDisable( &xSpiInstance );

    iStatus = prvFlashReadId( ucId );
    if( iStatus != XST_SUCCESS )
    {
        return iStatus;
    }

    BL_PRINTF( "Flash ID: %02X %02X %02X\r\n", ucId[ 0 ], ucId[ 1 ], ucId[ 2 ] );

    return XST_SUCCESS;
}
#endif

int main( void )
{
    int iStatus = XST_FAILURE;
    const uintptr_t uxHyperBusBase = ( uintptr_t ) XPAR_HYPERBUS_CONTROLLER_0_BASEADDR;
    const uintptr_t uxPhaseCtrlBase = ( uintptr_t ) BOOT_HB_PHASE_CTRL_BASEADDR;
    uint16_t usPhaseMin = 0U;
    uint16_t usPhaseMax = 0U;
    uint16_t usPhaseMid = 0U;

    init_platform();
    prvInstallExceptionHandlers();
    prvCheckAndClearBootContinueFlag();

    prvPrintRawBreadcrumbHeader();

    if( hb_breadcrumb_signature_valid() != 0 )
    {
        prvPrintBreadcrumbSummary();
        prvWaitForBreadcrumbOverride();
    }

    BL_PRINTF( "\r\nQSPI SREC bootloader (HDIO)\r\n" );
    BL_PRINTF( "Build timestamp (UTC): %s UTC\r\n", BOOTLOADER_BUILD_TIMESTAMP );
    BL_PRINTF( "Flash image base: 0x%08X\r\n", BOOT_FLASH_IMAGE_OFFSET );
    BL_PRINTF( "Bootloader reserved BRAM: 0x%08X-0x%08X\r\n",
               BOOTLOADER_RESIDENT_START,
               BOOTLOADER_RESIDENT_END - 1U );
    BL_PRINTF( "Breadcrumb BRAM: 0x%08X-0x%08X\r\n",
               HB_BREADCRUMB_BASE,
               BOOT_BREADCRUMB_END - 1U );

    /* In EXT_CLK_PHASE_SHIFT mode (PHY_IO_STYLE=1), DELAY_RST_CTRL (0x0200) is
     * not a local AXI register — reads/writes to it become HyperBus transactions.
     * prvHyperRamExplicitReset() uses that register to toggle o_hb_reset_req, so
     * calling it here would fire spurious HyperBus writes that time out and trigger
     * automatic 220ns RESET_N pulses from the controller's timeout logic.  Instead,
     * the controller deasserts RESET_N on power-on (hb_reset_pulse_cnt=0), and
     * o_hb_reset_n = i_hb_rstn && (cnt==0) && !hb_reset_req stays high.  Wait the
     * HyperRAM's worst-case tVCS+tRH (150µs + 400µs) before the first access. */
    prvDelayMicroseconds( 550U );
    BL_PRINTF( "Waited 550 us (tVCS+tRH guard) before first HyperBus access\r\n" );

    iStatus = prvHyperRamPhaseSweepToMidpoint( uxHyperBusBase,
                                               uxPhaseCtrlBase,
                                               &usPhaseMin,
                                               &usPhaseMax,
                                               &usPhaseMid );
    if( iStatus != 0 )
    {
        BL_PRINTF( "prvHyperRamPhaseSweepToMidpoint failed: %d\r\n", iStatus );
        cleanup_platform();
        return iStatus;
    }

    BL_PRINTF( "PHASE calibration complete: min=%u mid=%u max=%u steps\r\n",
               ( unsigned ) usPhaseMin,
               ( unsigned ) usPhaseMid,
               ( unsigned ) usPhaseMax );

    ( void ) uxHyperBusBase;

#if BOOTLOADER_HAS_XSPI
    iStatus = prvInitSpi();
    if( iStatus != XST_SUCCESS )
    {
        BL_PRINTF( "SPI init failed: %d\r\n", iStatus );
        return iStatus;
    }

    /* prvWaitForSpacebar( "Press spacebar to begin reading the SREC image from flash..." ); */

    iStatus = prvLoadSrecImage();
    if( ( iStatus > 0 ) && ( iStatus < ( int ) ( sizeof( ppcErrorStrings ) / sizeof( ppcErrorStrings[ 0 ] ) ) ) )
    {
        BL_PRINTF( "Boot failed on S-record %d: %s\r\n", srec_line, ppcErrorStrings[ iStatus ] );
    }
    else
    {
        BL_PRINTF( "Boot failed with status %d\r\n", iStatus );
    }
#else
    BL_PRINTF( "No processor-visible SPI/QSPI controller is present in this platform.\r\n" );
    BL_PRINTF( "Add an AXI Quad SPI or equivalent processor-accessible flash path to use this bootloader.\r\n" );
#endif

    cleanup_platform();
    return iStatus;
}
