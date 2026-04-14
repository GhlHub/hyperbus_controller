/******************************************************************************
* Copyright (C) 2004 - 2020 Xilinx, Inc.  All rights reserved.
* Copyright (C) 2024 Advanced Micro Devices, Inc.  All rights reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

#ifndef BL_SREC_H
#define BL_SREC_H

#ifdef __cplusplus
extern "C" {
#endif

#define SREC_MAX_BYTES        255
#define SREC_DATA_MAX_BYTES   123

#define SREC_TYPE_0  0
#define SREC_TYPE_1  1
#define SREC_TYPE_2  2
#define SREC_TYPE_3  3
#define SREC_TYPE_5  5
#define SREC_TYPE_7  7
#define SREC_TYPE_8  8
#define SREC_TYPE_9  9

typedef struct srec_info_s {
    int8 type;
    uint8 *addr;
    uint8 *sr_data;
    uint8 dlen;
} srec_info_t;

uint8 decode_srec_line( uint8 *sr_buf, srec_info_t *info );
uint8 grab_hex_byte( const uint8 *buf );

#ifdef __cplusplus
}
#endif

#endif
