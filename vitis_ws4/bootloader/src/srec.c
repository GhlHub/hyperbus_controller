/******************************************************************************
* Copyright (C) 2004 - 2020 Xilinx, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#include <stdint.h>

#include "errors.h"
#include "portab.h"
#include "srec.h"

int srec_line = 0;

static uint8 nybble_to_val( char x )
{
    if( ( x >= '0' ) && ( x <= '9' ) )
    {
        return ( uint8 ) ( x - '0' );
    }

    return ( uint8 ) ( ( x - 'A' ) + 10 );
}

uint8 grab_hex_byte( const uint8 *buf )
{
    return ( uint8 ) ( ( nybble_to_val( ( char ) buf[ 0 ] ) << 4 ) +
                       nybble_to_val( ( char ) buf[ 1 ] ) );
}

static uint16 grab_hex_word( const uint8 *buf )
{
    return ( uint16 ) ( ( ( uint16 ) grab_hex_byte( buf ) << 8 ) +
                        grab_hex_byte( buf + 2 ) );
}

static uint32 grab_hex_word24( const uint8 *buf )
{
    return ( uint32 ) ( ( ( uint32 ) grab_hex_byte( buf ) << 16 ) +
                        grab_hex_word( buf + 2 ) );
}

static uint32 grab_hex_dword( const uint8 *buf )
{
    return ( uint32 ) ( ( ( uint32 ) grab_hex_word( buf ) << 16 ) +
                        grab_hex_word( buf + 4 ) );
}

static uint8 decode_srec_data( const uint8 *bufs, uint8 *bufd, uint8 count, uint8 skip )
{
    uint8 cksum = 0U;
    uint8 cbyte;
    int i;

    for( i = 0; i < count; i++ )
    {
        cbyte = grab_hex_byte( bufs );
        if( ( i >= ( int ) skip - 1 ) && ( i != ( int ) count - 1 ) )
        {
            *bufd++ = cbyte;
        }
        bufs += 2;
        cksum = ( uint8 ) ( cksum + cbyte );
    }

    return cksum;
}

static uint8 eatup_srec_line( const uint8 *bufs, uint8 count )
{
    int i;
    uint8 cksum = 0U;

    for( i = 0; i < count; i++ )
    {
        cksum = ( uint8 ) ( cksum + grab_hex_byte( bufs ) );
        bufs += 2;
    }

    return cksum;
}

uint8 decode_srec_line( uint8 *sr_buf, srec_info_t *info )
{
    uint8 count;
    uint8 *bufs;
    uint8 cksum = 0U;
    uint8 skip = 0U;
    int type;

    bufs = sr_buf;
    srec_line++;

    if( *bufs != 'S' )
    {
        return SREC_PARSE_ERROR;
    }

    type = *++bufs - '0';
    count = grab_hex_byte( ++bufs );
    bufs += 2;
    cksum = count;

    switch( type )
    {
        case 0:
            info->type = SREC_TYPE_0;
            info->dlen = count;
            cksum = ( uint8 ) ( cksum + eatup_srec_line( bufs, count ) );
            break;

        case 1:
            info->type = SREC_TYPE_1;
            skip = 3;
            info->addr = ( uint8 * ) ( uintptr_t ) grab_hex_word( bufs );
            info->dlen = ( uint8 ) ( count - skip );
            cksum = ( uint8 ) ( cksum + decode_srec_data( bufs, info->sr_data, count, skip ) );
            break;

        case 2:
            info->type = SREC_TYPE_2;
            skip = 4;
            info->addr = ( uint8 * ) ( uintptr_t ) grab_hex_word24( bufs );
            info->dlen = ( uint8 ) ( count - skip );
            cksum = ( uint8 ) ( cksum + decode_srec_data( bufs, info->sr_data, count, skip ) );
            break;

        case 3:
            info->type = SREC_TYPE_3;
            skip = 5;
            info->addr = ( uint8 * ) ( uintptr_t ) grab_hex_dword( bufs );
            info->dlen = ( uint8 ) ( count - skip );
            cksum = ( uint8 ) ( cksum + decode_srec_data( bufs, info->sr_data, count, skip ) );
            break;

        case 5:
            info->type = SREC_TYPE_5;
            info->addr = ( uint8 * ) ( uintptr_t ) grab_hex_word( bufs );
            cksum = ( uint8 ) ( cksum + eatup_srec_line( bufs, count ) );
            break;

        case 7:
            info->type = SREC_TYPE_7;
            info->addr = ( uint8 * ) ( uintptr_t ) grab_hex_dword( bufs );
            cksum = ( uint8 ) ( cksum + eatup_srec_line( bufs, count ) );
            break;

        case 8:
            info->type = SREC_TYPE_8;
            info->addr = ( uint8 * ) ( uintptr_t ) grab_hex_word24( bufs );
            cksum = ( uint8 ) ( cksum + eatup_srec_line( bufs, count ) );
            break;

        case 9:
            info->type = SREC_TYPE_9;
            info->addr = ( uint8 * ) ( uintptr_t ) grab_hex_word( bufs );
            cksum = ( uint8 ) ( cksum + eatup_srec_line( bufs, count ) );
            break;

        default:
            return SREC_PARSE_ERROR;
    }

    if( ++cksum != 0U )
    {
        return SREC_CKSUM_ERROR;
    }

    return 0U;
}
