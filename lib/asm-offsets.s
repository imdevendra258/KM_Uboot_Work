	.arch armv7-a
	.fpu softvfp
	.eabi_attribute 20, 1	@ Tag_ABI_FP_denormal
	.eabi_attribute 21, 1	@ Tag_ABI_FP_exceptions
	.eabi_attribute 23, 3	@ Tag_ABI_FP_number_model
	.eabi_attribute 24, 1	@ Tag_ABI_align8_needed
	.eabi_attribute 25, 1	@ Tag_ABI_align8_preserved
	.eabi_attribute 26, 2	@ Tag_ABI_enum_size
	.eabi_attribute 30, 4	@ Tag_ABI_optimization_goals
	.eabi_attribute 34, 0	@ Tag_CPU_unaligned_access
	.eabi_attribute 18, 2	@ Tag_ABI_PCS_wchar_t
	.file	"asm-offsets.c"
@ GNU C11 (GCC) version 13.0.0 20221104 (experimental) [master revision a111cfba4816765b55f4d5c82bc2b034047db92c] (arm-linux-gnueabihf)
@	compiled by GNU C version 9.4.0, GMP version 6.1.2, MPFR version 3.1.5, MPC version 1.0.3, isl version none
@ GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
@ options passed: -mthumb -mthumb-interwork -mabi=aapcs-linux -mword-relocations -mno-unaligned-access -mfloat-abi=soft -mtune=generic-armv7-a -mfpu=vfpv3-d16 -mtls-dialect=gnu -march=armv7-a -g -Os -std=gnu11 -fno-builtin -ffreestanding -fshort-wchar -fno-strict-aliasing -fno-stack-protector -fno-delete-null-pointer-checks -fstack-usage -fno-pic -ffunction-sections -fdata-sections -fno-common -ffixed-r9
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.file 1 "lib/asm-offsets.c"
	.section	.text.startup.main,"ax",%progbits
	.align	1
	.global	main
	.syntax unified
	.thumb
	.thumb_func
	.type	main, %function
main:
.LFB217:
	.loc 1 19 1 view -0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	.loc 1 21 2 view .LVU1
	.syntax unified
@ 21 "lib/asm-offsets.c" 1
	
.ascii "->GENERATED_GBL_DATA_SIZE #224 (sizeof(struct global_data) + 15) & ~15"	@
@ 0 "" 2
	.loc 1 24 2 view .LVU2
@ 24 "lib/asm-offsets.c" 1
	
.ascii "->GENERATED_BD_INFO_SIZE #112 (sizeof(struct bd_info) + 15) & ~15"	@
@ 0 "" 2
	.loc 1 27 2 view .LVU3
@ 27 "lib/asm-offsets.c" 1
	
.ascii "->GD_SIZE #224 sizeof(struct global_data)"	@
@ 0 "" 2
	.loc 1 29 2 view .LVU4
@ 29 "lib/asm-offsets.c" 1
	
.ascii "->GD_BD #0 offsetof(struct global_data, bd)"	@
@ 0 "" 2
	.loc 1 31 2 view .LVU5
@ 31 "lib/asm-offsets.c" 1
	
.ascii "->GD_MALLOC_BASE #156 offsetof(struct global_data, malloc_base)"	@
@ 0 "" 2
	.loc 1 34 2 view .LVU6
@ 34 "lib/asm-offsets.c" 1
	
.ascii "->GD_RELOCADDR #56 offsetof(struct global_data, relocaddr)"	@
@ 0 "" 2
	.loc 1 36 2 view .LVU7
@ 36 "lib/asm-offsets.c" 1
	
.ascii "->GD_RELOC_OFF #76 offsetof(struct global_data, reloc_off)"	@
@ 0 "" 2
	.loc 1 38 2 view .LVU8
@ 38 "lib/asm-offsets.c" 1
	
.ascii "->GD_START_ADDR_SP #72 offsetof(struct global_data, start_addr_sp)"	@
@ 0 "" 2
	.loc 1 40 2 view .LVU9
@ 40 "lib/asm-offsets.c" 1
	
.ascii "->GD_NEW_GD #80 offsetof(struct global_data, new_gd)"	@
@ 0 "" 2
	.loc 1 42 2 view .LVU10
@ lib/asm-offsets.c:43: }
	.loc 1 43 1 is_stmt 0 view .LVU11
	.thumb
	.syntax unified
	movs	r0, #0	@,
	bx	lr	@
	.cfi_endproc
.LFE217:
	.size	main, .-main
	.text
.Letext0:
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x94
	.2byte	0x5
	.byte	0x1
	.byte	0x4
	.4byte	.Ldebug_abbrev0
	.uleb128 0x2
	.4byte	.LASF12
	.byte	0x1d
	.4byte	.LASF13
	.4byte	.LASF14
	.4byte	.LLRL0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF1
	.uleb128 0x1
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x1
	.byte	0x4
	.byte	0x7
	.4byte	.LASF3
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x1
	.byte	0x1
	.byte	0x6
	.4byte	.LASF4
	.uleb128 0x1
	.byte	0x2
	.byte	0x5
	.4byte	.LASF5
	.uleb128 0x1
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x1
	.byte	0x8
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x1
	.byte	0x1
	.byte	0x8
	.4byte	.LASF8
	.uleb128 0x1
	.byte	0x4
	.byte	0x5
	.4byte	.LASF9
	.uleb128 0x1
	.byte	0x1
	.byte	0x2
	.4byte	.LASF10
	.uleb128 0x1
	.byte	0x8
	.byte	0x4
	.4byte	.LASF11
	.uleb128 0x4
	.4byte	.LASF15
	.byte	0x1
	.byte	0x12
	.byte	0x5
	.4byte	0x42
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x7a
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x1c
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB217
	.4byte	.LFE217-.LFB217
	.4byte	0
	.4byte	0
	.section	.debug_rnglists,"",%progbits
.Ldebug_ranges0:
	.4byte	.Ldebug_ranges3-.Ldebug_ranges2
.Ldebug_ranges2:
	.2byte	0x5
	.byte	0x4
	.byte	0
	.4byte	0
.LLRL0:
	.byte	0x7
	.4byte	.LFB217
	.uleb128 .LFE217-.LFB217
	.byte	0
.Ldebug_ranges3:
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF6:
	.ascii	"long long int\000"
.LASF3:
	.ascii	"unsigned int\000"
.LASF14:
	.ascii	"/home/devendra/Documents/Kernel_Masters/beagleboneb"
	.ascii	"lack-uboot\000"
.LASF1:
	.ascii	"long unsigned int\000"
.LASF7:
	.ascii	"long long unsigned int\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF13:
	.ascii	"lib/asm-offsets.c\000"
.LASF15:
	.ascii	"main\000"
.LASF9:
	.ascii	"long int\000"
.LASF10:
	.ascii	"_Bool\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF4:
	.ascii	"signed char\000"
.LASF12:
	.ascii	"GNU C11 13.0.0 20221104 (experimental) [master revi"
	.ascii	"sion a111cfba4816765b55f4d5c82bc2b034047db92c] -mth"
	.ascii	"umb -mthumb-interwork -mabi=aapcs-linux -mword-relo"
	.ascii	"cations -mno-unaligned-access -mfloat-abi=soft -mtu"
	.ascii	"ne=generic-armv7-a -mfpu=vfpv3-d16 -mtls-dialect=gn"
	.ascii	"u -march=armv7-a -g -Os -std=gnu11 -fno-builtin -ff"
	.ascii	"reestanding -fshort-wchar -fno-strict-aliasing -fno"
	.ascii	"-stack-protector -fno-delete-null-pointer-checks -f"
	.ascii	"stack-usage -fno-pic -ffunction-sections -fdata-sec"
	.ascii	"tions -fno-common -ffixed-r9\000"
.LASF11:
	.ascii	"long double\000"
.LASF5:
	.ascii	"short int\000"
.LASF8:
	.ascii	"char\000"
	.ident	"GCC: (GNU) 13.0.0 20221104 (experimental) [master revision a111cfba4816765b55f4d5c82bc2b034047db92c]"
	.section	.note.GNU-stack,"",%progbits
