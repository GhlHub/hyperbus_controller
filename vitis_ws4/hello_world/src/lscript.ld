/******************************************************************************
* Copyright (C) 2023 - 2025 Advanced Micro Devices, Inc. All Rights Reserved.
* SPDX-License-Identifier: MIT
******************************************************************************/

_STACK_SIZE = DEFINED(_STACK_SIZE) ? _STACK_SIZE : 0x400;
_HEAP_SIZE = DEFINED(_HEAP_SIZE) ? _HEAP_SIZE : 0x800;

MEMORY
{
	hyperram : ORIGIN = 0x80000050, LENGTH = 0x007fffb0
 }

/* Specify the default entry point to the program */

ENTRY(_start)

/* Define the sections, and where they are mapped in memory */

SECTIONS
{
.vectors.reset 0x80000000 : {
   KEEP (*(.vectors.reset))
}

.vectors.sw_exception 0x80000008 : {
   KEEP (*(.vectors.sw_exception))
}

.vectors.interrupt 0x80000010 : {
   KEEP (*(.vectors.interrupt))
}

.vectors.hw_exception 0x80000020 : {
   KEEP (*(.vectors.hw_exception))
}

.text : {
   *(.text)
   *(.text.*)
   *(.gnu.linkonce.t.*)
   *(.note.gnu.build-id)
} > hyperram

.note.gnu.build-id : {
   KEEP (*(.note.gnu.build-id))
} > hyperram

.init : {
   KEEP (*(.init))
} > hyperram

.fini : {
   KEEP (*(.fini))
} > hyperram

.ctors : {
   __CTOR_LIST__ = .;
   ___CTORS_LIST___ = .;
   KEEP (*crtbegin.o(.ctors))
   KEEP (*(EXCLUDE_FILE(*crtend.o) .ctors))
   KEEP (*(SORT(.ctors.*)))
   KEEP (*(.ctors))
   __CTOR_END__ = .;
   ___CTORS_END___ = .;
} > hyperram

.dtors : {
   __DTOR_LIST__ = .;
   ___DTORS_LIST___ = .;
   KEEP (*crtend.o(.dtors))
   KEEP (*(EXCLUDE_FILE(*crtbegin.o) .dtors))
   KEEP (*(SORT(.dtors.*)))
   KEEP (*(.dtors))
   PROVIDE(__DTOR_END__ = .);
   PROVIDE(___DTORS_END___ = .);
} > hyperram

.drvcfg_sec : {
    . = ALIGN(8);
     __drvcfgsecdata_start = .;
    KEEP (*(.drvcfg_sec))
    __drvcfgsecdata_end = .;
    __drvcfgsecdata_size = __drvcfgsecdata_end - __drvcfgsecdata_start;
} > hyperram

.rodata : {
   __rodata_start = .;
   *(.rodata)
   *(.rodata.*)
   *(.gnu.linkonce.r.*)
   __rodata_end = .;
} > hyperram

.sdata2 : {
   . = ALIGN(8);
   __sdata2_start = .;
   *(.sdata2)
   *(.sdata2.*)
   *(.gnu.linkonce.s2.*)
   . = ALIGN(8);
   __sdata2_end = .;
} > hyperram

.sbss2 : {
   __sbss2_start = .;
   *(.sbss2)
   *(.sbss2.*)
   *(.gnu.linkonce.sb2.*)
   __sbss2_end = .;
} > hyperram

.data : {
   . = ALIGN(4);
   __data_start = .;
   *(.data)
   *(.data.*)
   *(.gnu.linkonce.d.*)
   __data_end = .;
} > hyperram

.got : {
   *(.got)
} > hyperram

.got1 : {
   *(.got1)
} > hyperram

.got2 : {
   *(.got2)
} > hyperram

.eh_frame : {
   *(.eh_frame)
} > hyperram

.jcr : {
   *(.jcr)
} > hyperram

.gcc_except_table : {
   *(.gcc_except_table)
} > hyperram

.sdata : {
   . = ALIGN(8);
   __sdata_start = .;
   *(.sdata)
   *(.sdata.*)
   *(.gnu.linkonce.s.*)
   __sdata_end = .;
} > hyperram

.sbss (NOLOAD) : {
   . = ALIGN(4);
   __sbss_start = .;
   *(.sbss)
   *(.sbss.*)
   *(.gnu.linkonce.sb.*)
   . = ALIGN(8);
   __sbss_end = .;
} > hyperram

.tdata : {
   __tdata_start = .;
   *(.tdata)
   *(.tdata.*)
   *(.gnu.linkonce.td.*)
   __tdata_end = .;
} > hyperram

.tbss : {
   __tbss_start = .;
   *(.tbss)
   *(.tbss.*)
   *(.gnu.linkonce.tb.*)
   __tbss_end = .;
} > hyperram

.bss (NOLOAD) : {
   . = ALIGN(4);
   __bss_start = .;
   *(.bss)
   *(.bss.*)
   *(.gnu.linkonce.b.*)
   *(COMMON)
   . = ALIGN(4);
   __bss_end = .;
} > hyperram

_SDA_BASE_ = __sdata_start + ((__sbss_end - __sdata_start) / 2 );

_SDA2_BASE_ = __sdata2_start + ((__sbss2_end - __sdata2_start) / 2 );

/* Generate Stack and Heap definitions */

.heap (NOLOAD) : {
   . = ALIGN(8);
   _heap = .;
   _heap_start = .;
   . += _HEAP_SIZE;
   _heap_end = .;
} > hyperram

.stack (NOLOAD) : {
   _stack_end = .;
   . += _STACK_SIZE;
   . = ALIGN(8);
   _stack = .;
   __stack = _stack;
} > hyperram

_end = .;
}
