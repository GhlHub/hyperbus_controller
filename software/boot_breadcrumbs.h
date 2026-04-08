/******************************************************************************
* Copyright (C) 2026 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#ifndef HB_BOOT_BREADCRUMBS_H
#define HB_BOOT_BREADCRUMBS_H

#include <stddef.h>
#include <stdint.h>

#define HB_BREADCRUMB_BASE              0x0000FC00U
#define HB_BREADCRUMB_SIZE_BYTES        1024U
#define HB_BREADCRUMB_MAGIC             0x48424352U
#define HB_BREADCRUMB_VERSION           0x00000001U

#define HB_BREADCRUMB_STAGE_BOOT_ENTRY  0x00000100U
#define HB_BREADCRUMB_STAGE_STACK_READY 0x00000101U
#define HB_BREADCRUMB_STAGE_START_JUMP  0x00000102U
#define HB_BREADCRUMB_STAGE_MAIN_ENTRY  0x00000103U
#define HB_BREADCRUMB_STAGE_PREINIT     0x00000104U
#define HB_BREADCRUMB_STAGE_INIT_ARRAY  0x00000105U

typedef struct HbBreadcrumbEntry
{
    uint32_t ulTag;
    uint32_t ulValue;
} HbBreadcrumbEntry_t;

#define HB_BREADCRUMB_MAX_ENTRIES \
    ( ( HB_BREADCRUMB_SIZE_BYTES - ( 4U * sizeof( uint32_t ) ) ) / sizeof( HbBreadcrumbEntry_t ) )

typedef struct HbBreadcrumbArea
{
    uint32_t ulMagic;
    uint32_t ulVersion;
    uint32_t ulCount;
    uint32_t ulReserved;
    HbBreadcrumbEntry_t xEntries[ HB_BREADCRUMB_MAX_ENTRIES ];
} HbBreadcrumbArea_t;

static inline volatile HbBreadcrumbArea_t *hb_breadcrumb_get_area( void )
{
    return ( volatile HbBreadcrumbArea_t * ) ( uintptr_t ) HB_BREADCRUMB_BASE;
}

static inline int hb_breadcrumb_signature_valid( void )
{
    const volatile HbBreadcrumbArea_t *pxArea = hb_breadcrumb_get_area();

    return ( pxArea->ulMagic == HB_BREADCRUMB_MAGIC ) &&
           ( pxArea->ulVersion == HB_BREADCRUMB_VERSION ) &&
           ( pxArea->ulCount <= HB_BREADCRUMB_MAX_ENTRIES );
}

static inline void hb_breadcrumb_clear( void )
{
    volatile uint32_t *pulWords = ( volatile uint32_t * ) ( uintptr_t ) HB_BREADCRUMB_BASE;
    size_t xIndex;

    for( xIndex = 0; xIndex < ( HB_BREADCRUMB_SIZE_BYTES / sizeof( uint32_t ) ); xIndex++ )
    {
        pulWords[ xIndex ] = 0U;
    }
}

static inline void hb_breadcrumb_note( uint32_t ulTag, uint32_t ulValue )
{
    volatile HbBreadcrumbArea_t *pxArea = hb_breadcrumb_get_area();
    uint32_t ulIndex;

    if( ( pxArea->ulMagic != HB_BREADCRUMB_MAGIC ) ||
        ( pxArea->ulVersion != HB_BREADCRUMB_VERSION ) ||
        ( pxArea->ulCount > HB_BREADCRUMB_MAX_ENTRIES ) )
    {
        hb_breadcrumb_clear();
        pxArea->ulMagic = HB_BREADCRUMB_MAGIC;
        pxArea->ulVersion = HB_BREADCRUMB_VERSION;
    }

    ulIndex = pxArea->ulCount;
    if( ulIndex >= HB_BREADCRUMB_MAX_ENTRIES )
    {
        ulIndex = HB_BREADCRUMB_MAX_ENTRIES - 1U;
    }
    else
    {
        pxArea->ulCount = ulIndex + 1U;
    }

    pxArea->xEntries[ ulIndex ].ulTag = ulTag;
    pxArea->xEntries[ ulIndex ].ulValue = ulValue;
}

#endif /* HB_BOOT_BREADCRUMBS_H */
