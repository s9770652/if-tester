	.text
	.file	"task.c"
	.file	1 "/usr/bin/../share/upmem/include/stdlib" "stdint.h"
	.file	2 "/home/vboxuser/Dokumente/pim/if-tester" "dpu/task.c"
	.file	3 "/usr/bin/../share/upmem/include/syslib" "perfcounter.h"
	.section	.text.if_in_front,"ax",@progbits
	.globl	if_in_front                     // -- Begin function if_in_front
	.type	if_in_front,@function
if_in_front:                            // @if_in_front
.Lfunc_begin0:
	.loc	2 43 0                          // dpu/task.c:43:0
	.cfi_sections .debug_frame
	.cfi_startproc
// %bb.0:
	//DEBUG_VALUE: if_in_front:sr <- $r0
	//DEBUG_VALUE: if_in_front:buffers <- $r1
	.cfi_def_cfa_offset -80
	.cfi_offset 23, -8
	.cfi_offset 22, -4
	sd r22, 72, d22
	add r22, r22, 80
	.cfi_offset 15, -56
	.cfi_offset 14, -52
	sd r22, -56, d14
	.cfi_offset 17, -64
	.cfi_offset 16, -60
	sd r22, -64, d16
	.cfi_offset 19, -72
	.cfi_offset 18, -68
	sd r22, -72, d18
	.cfi_offset 21, -80
	.cfi_offset 20, -76
	sd r22, -80, d20
	sw r22, -20, r1
.Ltmp0:
	//DEBUG_VALUE: if_in_front:buffers <- [DW_OP_constu 20, DW_OP_minus] [$r22+0]
	move r15, r0
	//DEBUG_VALUE: run <- 64
.Ltmp1:
	//DEBUG_VALUE: if_in_front:sr <- $r15
	add r0, r15, 8
	sw r22, -16, r0
	move r18, 64, true, .LBB0_1
.Ltmp2:
.LBB0_7:                                //   in Loop: Header=BB0_1 Depth=1
	//DEBUG_VALUE: if_in_front:buffers <- [DW_OP_constu 20, DW_OP_minus] [$r22+0]
	//DEBUG_VALUE: if_in_front:sr <- $r15
	//DEBUG_VALUE: run <- [DW_OP_constu 32, DW_OP_minus] [$r22+0]
	.loc	2 44 5 prologue_end             // dpu/task.c:44:5
	lsr r0, r18, 20
	lw r18, r22, -32
.Ltmp3:
	//DEBUG_VALUE: run <- $r18
	jneq r0, 0, .LBB0_8
.Ltmp4:
.LBB0_1:                                // =>This Loop Header: Depth=1
                                        //     Child Loop BB0_2 Depth 2
                                        //       Child Loop BB0_3 Depth 3
	//DEBUG_VALUE: if_in_front:buffers <- [DW_OP_constu 20, DW_OP_minus] [$r22+0]
	//DEBUG_VALUE: if_in_front:sr <- $r15
	.loc	2 0 5 is_stmt 0                 // dpu/task.c:0:5
	move r21, 0
	lsl r0, r18, 1
	sw r22, -32, r0
	sw r22, -24, r21
.Ltmp5:
	sw r22, -28, r18
.Ltmp6:
	//DEBUG_VALUE: j <- 0
	//DEBUG_VALUE: run <- $r18
	jump .LBB0_2
.Ltmp7:
.LBB0_6:                                //   in Loop: Header=BB0_2 Depth=2
	//DEBUG_VALUE: if_in_front:buffers <- [DW_OP_constu 20, DW_OP_minus] [$r22+0]
	//DEBUG_VALUE: if_in_front:sr <- $r15
	//DEBUG_VALUE: j <- $r21
	.loc	2 45 9 is_stmt 1                // dpu/task.c:45:9
	lsr r0, r21, 21
	lw r18, r22, -28
	jneq r0, 0, .LBB0_7
.Ltmp8:
.LBB0_2:                                //   Parent Loop BB0_1 Depth=1
                                        // =>  This Loop Header: Depth=2
                                        //       Child Loop BB0_3 Depth 3
	//DEBUG_VALUE: if_in_front:buffers <- [DW_OP_constu 20, DW_OP_minus] [$r22+0]
	//DEBUG_VALUE: if_in_front:sr <- $r15
	//DEBUG_VALUE: j <- $r21
	.loc	2 0 9 is_stmt 0                 // dpu/task.c:0:9
	lw r14, r22, -20
.Ltmp9:
	.loc	2 47 30 is_stmt 1               // dpu/task.c:47:30
	lw r0, r14, 0
	.loc	2 47 43 is_stmt 0               // dpu/task.c:47:43
	move r16, input
	lsl_add r1, r16, r21, 2
	.loc	2 47 17                         // dpu/task.c:47:17
	move r2, r15
	call r23, seqread256_init
.Ltmp10:
	move r17, r0
	.loc	2 46 25 is_stmt 1               // dpu/task.c:46:25
	sw r22, -48, r17
	.loc	2 48 30                         // dpu/task.c:48:30
	lw r0, r14, 4
	.loc	2 48 51 is_stmt 0               // dpu/task.c:48:51
	add r1, r21, r18
	.loc	2 48 43                         // dpu/task.c:48:43
	lsl_add r18, r16, r1, 2
	.loc	2 48 17                         // dpu/task.c:48:17
	move r1, r18
	lw r2, r22, -16
	call r23, seqread256_init
.Ltmp11:
	.loc	2 46 25 is_stmt 1               // dpu/task.c:46:25
	sw r22, -44, r0
	.loc	2 50 43                         // dpu/task.c:50:43
	sw r22, -40, r18
	.loc	2 52 26                         // dpu/task.c:52:26
	lw r0, r22, -32
	add r21, r21, r0
.Ltmp12:
	.loc	2 52 18 is_stmt 0               // dpu/task.c:52:18
	lsl_add r0, r16, r21, 2
	.loc	2 50 43 is_stmt 1               // dpu/task.c:50:43
	sw r22, -36, r0
.Ltmp13:
	//DEBUG_VALUE: i <- 0
	//DEBUG_VALUE: active <- 0
	.loc	2 0 43 is_stmt 0                // dpu/task.c:0:43
	lw r16, r22, -24
	move r0, r16, true, .LBB0_3
.Ltmp14:
.LBB0_11:                               //   in Loop: Header=BB0_3 Depth=3
	//DEBUG_VALUE: if_in_front:buffers <- [DW_OP_constu 20, DW_OP_minus] [$r22+0]
	//DEBUG_VALUE: if_in_front:sr <- $r15
	//DEBUG_VALUE: i <- $r0
	//DEBUG_VALUE: i <- $r16
	move r0, r19
.Ltmp15:
.LBB0_3:                                //   Parent Loop BB0_1 Depth=1
                                        //     Parent Loop BB0_2 Depth=2
                                        // =>    This Inner Loop Header: Depth=3
	//DEBUG_VALUE: if_in_front:buffers <- [DW_OP_constu 20, DW_OP_minus] [$r22+0]
	//DEBUG_VALUE: if_in_front:sr <- $r15
	//DEBUG_VALUE: active <- undef
	//DEBUG_VALUE: i <- $r16
	.loc	2 57 26 is_stmt 1               // dpu/task.c:57:26
	xor r19, r0, 1
	and r2, r19, 1
	add r1, r22, -48
	.loc	2 57 22 is_stmt 0               // dpu/task.c:57:22
	lsl_add r2, r1, r2, 2
	lw r2, r2, 0
	.loc	2 57 21                         // dpu/task.c:57:21
	lw r2, r2, 0
	.loc	2 57 37                         // dpu/task.c:57:37
	lw r3, r17, 0
	jltu r2, r3, .LBB0_5
.Ltmp16:
// %bb.4:                               //   in Loop: Header=BB0_3 Depth=3
	//DEBUG_VALUE: if_in_front:buffers <- [DW_OP_constu 20, DW_OP_minus] [$r22+0]
	//DEBUG_VALUE: i <- $r16
	//DEBUG_VALUE: if_in_front:sr <- $r15
	.loc	2 57 21                         // dpu/task.c:57:21
	move r19, r0
.Ltmp17:
.LBB0_5:                                //   in Loop: Header=BB0_3 Depth=3
	//DEBUG_VALUE: if_in_front:buffers <- [DW_OP_constu 20, DW_OP_minus] [$r22+0]
	//DEBUG_VALUE: i <- $r16
	//DEBUG_VALUE: if_in_front:sr <- $r15
	//DEBUG_VALUE: active <- undef
	.loc	2 60 31 is_stmt 1               // dpu/task.c:60:31
	and r14, r19, 1
	lsl_add r20, r1, r14, 2
	lw r0, r20, 0
	.loc	2 60 30 is_stmt 0               // dpu/task.c:60:30
	lw r1, r0, 0
.Ltmp18:
	//DEBUG_VALUE: i <- undef
	.loc	2 60 17                         // dpu/task.c:60:17
	lsl r2, r16, 2
	.loc	2 60 28                         // dpu/task.c:60:28
	sw r2, cache, r1
	.loc	2 61 68 is_stmt 1               // dpu/task.c:61:68
	lsl_add r18, r15, r14, 3
	move r1, 4
	.loc	2 61 31 is_stmt 0               // dpu/task.c:61:31
	move r2, r18
	call r23, seqread256_get
.Ltmp19:
	move r17, r0
	.loc	2 61 29                         // dpu/task.c:61:29
	sw r20, 0, r17
.Ltmp20:
	.loc	2 62 21 is_stmt 1               // dpu/task.c:62:21
	move r1, r18
	call r23, seqread256_tell
.Ltmp21:
	.loc	2 0 21 is_stmt 0                // dpu/task.c:0:21
	add r1, r22, -40
	.loc	2 62 63                         // dpu/task.c:62:63
	lsl_add r1, r1, r14, 2
	lw r1, r1, 0
	jeq r0, r1, .LBB0_6
.Ltmp22:
// %bb.9:                               //   in Loop: Header=BB0_3 Depth=3
	//DEBUG_VALUE: if_in_front:buffers <- [DW_OP_constu 20, DW_OP_minus] [$r22+0]
	//DEBUG_VALUE: if_in_front:sr <- $r15
	.loc	2 0 63                          // dpu/task.c:0:63
	add r0, r16, 1
.Ltmp23:
	//DEBUG_VALUE: i <- $r0
	move r16, 0
	.loc	2 70 21 is_stmt 1               // dpu/task.c:70:21
	jeq r0, 64, .LBB0_11
.Ltmp24:
// %bb.10:                              //   in Loop: Header=BB0_3 Depth=3
	//DEBUG_VALUE: if_in_front:buffers <- [DW_OP_constu 20, DW_OP_minus] [$r22+0]
	//DEBUG_VALUE: if_in_front:sr <- $r15
	//DEBUG_VALUE: i <- $r0
	move r16, r0, true, .LBB0_11
.Ltmp25:
.LBB0_8:
	//DEBUG_VALUE: if_in_front:buffers <- [DW_OP_constu 20, DW_OP_minus] [$r22+0]
	//DEBUG_VALUE: if_in_front:sr <- $r15
	.loc	2 76 1                          // dpu/task.c:76:1
	ld d20, r22, -80
	ld d18, r22, -72
	ld d16, r22, -64
	ld d14, r22, -56
.Ltmp26:
	ld d22, r22, -8
.Ltmp27:
	jump r23
.Ltmp28:
.Lfunc_end0:
	.size	if_in_front, .Lfunc_end0-if_in_front
	.cfi_endproc
	.section	.stack_sizes,"o",@progbits,.text.if_in_front
	.long	.Lfunc_begin0
	.byte	80
	.section	.text.if_in_front,"ax",@progbits
                                        // -- End function
	.section	.text.main,"ax",@progbits
	.globl	main                            // -- Begin function main
	.type	main,@function
main:                                   // @main
.Lfunc_begin1:
	.loc	2 78 0                          // dpu/task.c:78:0
	.cfi_startproc
// %bb.0:
	.cfi_def_cfa_offset -48
	.cfi_offset 23, -8
	.cfi_offset 22, -4
	sd r22, 40, d22
	add r22, r22, 48
	.cfi_offset 15, -48
	.cfi_offset 14, -44
	sd r22, -48, d14
	move r0, 1
.Ltmp29:
	.loc	2 79 5 prologue_end             // dpu/task.c:79:5
	move r1, r0
	call r23, perfcounter_config
.Ltmp30:
	.loc	2 82 39                         // dpu/task.c:82:39
	call r23, seqread256_alloc
.Ltmp31:
	.loc	2 82 37 is_stmt 0               // dpu/task.c:82:37
	sw r22, -40, r0
	.loc	2 82 56                         // dpu/task.c:82:56
	call r23, seqread256_alloc
.Ltmp32:
	.loc	2 82 37                         // dpu/task.c:82:37
	sw r22, -36, r0
	.loc	2 90 14 is_stmt 1               // dpu/task.c:90:14
	call r23, perfcounter_get
.Ltmp33:
	movd d14, d0
.Ltmp34:
	//DEBUG_VALUE: main:cycles <- $d14
	.loc	2 0 14 is_stmt 0                // dpu/task.c:0:14
	add r0, r22, -32
	add r1, r22, -40
	.loc	2 91 5 is_stmt 1                // dpu/task.c:91:5
	call r23, if_in_front
.Ltmp35:
	.loc	2 92 14                         // dpu/task.c:92:14
	call r23, perfcounter_get
.Ltmp36:
	.loc	2 92 32 is_stmt 0               // dpu/task.c:92:32
	sub r1, r1, r15
	subc r0, r0, r14
.Ltmp37:
	//DEBUG_VALUE: main:cycles <- $d0
	.loc	2 93 43 is_stmt 1               // dpu/task.c:93:43
	call r23, __floatundidf
.Ltmp38:
	.loc	2 93 60 is_stmt 0               // dpu/task.c:93:60
	lw r2, zero, CLOCKS_PER_SEC
	.loc	2 93 43                         // dpu/task.c:93:43
	movd d14, d0
	.loc	2 93 60                         // dpu/task.c:93:60
	move r0, r2
.Ltmp39:
	call r23, __floatunsidf
.Ltmp40:
	movd d2, d0
	.loc	2 93 58                         // dpu/task.c:93:58
	movd d0, d14
	call r23, __divdf3
.Ltmp41:
	.loc	2 0 58                          // dpu/task.c:0:58
	move r3, 0
	move r2, 1083129856
	.loc	2 93 75                         // dpu/task.c:93:75
	call r23, __muldf3
.Ltmp42:
	.loc	2 93 5                          // dpu/task.c:93:5
	move r2, .L.str
	sd r22, -16, d0
	move r0, r2
	call r23, printf
.Ltmp43:
	.loc	2 0 5                           // dpu/task.c:0:5
	move r0, 0
	.loc	2 94 1 is_stmt 1                // dpu/task.c:94:1
	ld d14, r22, -48
	ld d22, r22, -8
	jump r23
.Ltmp44:
.Lfunc_end1:
	.size	main, .Lfunc_end1-main
	.cfi_endproc
	.section	.stack_sizes,"o",@progbits,.text.main
	.long	.Lfunc_begin1
	.byte	48
	.section	.text.main,"ax",@progbits
                                        // -- End function
	.type	input,@object                   // @input
	.section	.mram.noinit,"aw",@progbits
	.globl	input
	.p2align	3
input:
	.zero	8388608
	.size	input, 8388608

	.type	cache,@object                   // @cache
	.section	.bss.cache,"aw",@nobits
	.globl	cache
	.p2align	3
cache:
	.zero	256
	.size	cache, 256

	.type	.L.str,@object                  // @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"TIME (in back):  %9.2f ms\n"
	.size	.L.str, 27

	.type	output,@object                  // @output
	.section	.mram.noinit,"aw",@progbits
	.globl	output
	.p2align	3
output:
	.zero	8388608
	.size	output, 8388608

	.file	4 "/usr/bin/../share/upmem/include/syslib" "seqread.h"
	.file	5 "/usr/bin/../share/upmem/include/stdlib" "stddef.h"
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.long	-1
	.long	.Lfunc_begin0                   //   base address
	.long	.Lfunc_begin0-.Lfunc_begin0
	.long	.Ltmp1-.Lfunc_begin0
	.short	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.long	.Ltmp1-.Lfunc_begin0
	.long	.Ltmp26-.Lfunc_begin0
	.short	1                               // Loc expr size
	.byte	95                              // DW_OP_reg15
	.long	0
	.long	0
.Ldebug_loc1:
	.long	-1
	.long	.Lfunc_begin0                   //   base address
	.long	.Lfunc_begin0-.Lfunc_begin0
	.long	.Ltmp0-.Lfunc_begin0
	.short	1                               // Loc expr size
	.byte	81                              // DW_OP_reg1
	.long	.Ltmp0-.Lfunc_begin0
	.long	.Ltmp27-.Lfunc_begin0
	.short	2                               // Loc expr size
	.byte	134                             // DW_OP_breg22
	.byte	108                             // -20
	.long	0
	.long	0
.Ldebug_loc2:
	.long	-1
	.long	.Lfunc_begin0                   //   base address
	.long	.Ltmp2-.Lfunc_begin0
	.long	.Ltmp3-.Lfunc_begin0
	.short	2                               // Loc expr size
	.byte	134                             // DW_OP_breg22
	.byte	96                              // -32
	.long	.Ltmp3-.Lfunc_begin0
	.long	.Ltmp4-.Lfunc_begin0
	.short	1                               // Loc expr size
	.byte	98                              // DW_OP_reg18
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.short	1                               // Loc expr size
	.byte	98                              // DW_OP_reg18
	.long	0
	.long	0
.Ldebug_loc3:
	.long	-1
	.long	.Lfunc_begin0                   //   base address
	.long	.Ltmp6-.Lfunc_begin0
	.long	.Ltmp7-.Lfunc_begin0
	.short	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.long	.Ltmp7-.Lfunc_begin0
	.long	.Ltmp12-.Lfunc_begin0
	.short	1                               // Loc expr size
	.byte	101                             // DW_OP_reg21
	.long	0
	.long	0
.Ldebug_loc4:
	.long	-1
	.long	.Lfunc_begin0                   //   base address
	.long	.Ltmp13-.Lfunc_begin0
	.long	.Ltmp14-.Lfunc_begin0
	.short	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.long	.Ltmp14-.Lfunc_begin0
	.long	.Ltmp18-.Lfunc_begin0
	.short	1                               // Loc expr size
	.byte	96                              // DW_OP_reg16
	.long	.Ltmp23-.Lfunc_begin0
	.long	.Ltmp25-.Lfunc_begin0
	.short	1                               // Loc expr size
	.byte	80                              // DW_OP_reg0
	.long	0
	.long	0
.Ldebug_loc5:
	.long	-1
	.long	.Lfunc_begin0                   //   base address
	.long	.Ltmp13-.Lfunc_begin0
	.long	.Ltmp14-.Lfunc_begin0
	.short	2                               // Loc expr size
	.byte	48                              // DW_OP_lit0
	.byte	159                             // DW_OP_stack_value
	.long	0
	.long	0
.Ldebug_loc6:
	.long	-1
	.long	.Lfunc_begin1                   //   base address
	.long	.Ltmp34-.Lfunc_begin1
	.long	.Ltmp37-.Lfunc_begin1
	.short	6                               // Loc expr size
	.byte	95                              // sub-register DW_OP_reg15
	.byte	147                             // DW_OP_piece
	.byte	4                               // 4
	.byte	94                              // sub-register DW_OP_reg14
	.byte	147                             // DW_OP_piece
	.byte	4                               // 4
	.long	.Ltmp37-.Lfunc_begin1
	.long	.Ltmp39-.Lfunc_begin1
	.short	6                               // Loc expr size
	.byte	81                              // sub-register DW_OP_reg1
	.byte	147                             // DW_OP_piece
	.byte	4                               // 4
	.byte	80                              // sub-register DW_OP_reg0
	.byte	147                             // DW_OP_piece
	.byte	4                               // 4
	.long	0
	.long	0
	.section	.debug_abbrev,"",@progbits
	.byte	1                               // Abbreviation Code
	.byte	17                              // DW_TAG_compile_unit
	.byte	1                               // DW_CHILDREN_yes
	.byte	37                              // DW_AT_producer
	.byte	14                              // DW_FORM_strp
	.byte	19                              // DW_AT_language
	.byte	5                               // DW_FORM_data2
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	16                              // DW_AT_stmt_list
	.byte	23                              // DW_FORM_sec_offset
	.byte	27                              // DW_AT_comp_dir
	.byte	14                              // DW_FORM_strp
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	85                              // DW_AT_ranges
	.byte	23                              // DW_FORM_sec_offset
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	2                               // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.ascii	"\210\001"                      // DW_AT_alignment
	.byte	15                              // DW_FORM_udata
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	3                               // Abbreviation Code
	.byte	1                               // DW_TAG_array_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	4                               // Abbreviation Code
	.byte	33                              // DW_TAG_subrange_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	55                              // DW_AT_count
	.byte	6                               // DW_FORM_data4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	5                               // Abbreviation Code
	.byte	22                              // DW_TAG_typedef
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	6                               // Abbreviation Code
	.byte	36                              // DW_TAG_base_type
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	62                              // DW_AT_encoding
	.byte	11                              // DW_FORM_data1
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	7                               // Abbreviation Code
	.byte	36                              // DW_TAG_base_type
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	62                              // DW_AT_encoding
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	8                               // Abbreviation Code
	.byte	33                              // DW_TAG_subrange_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	55                              // DW_AT_count
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	9                               // Abbreviation Code
	.byte	4                               // DW_TAG_enumeration_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	10                              // Abbreviation Code
	.byte	40                              // DW_TAG_enumerator
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	28                              // DW_AT_const_value
	.byte	15                              // DW_FORM_udata
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	11                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	64                              // DW_AT_frame_base
	.byte	24                              // DW_FORM_exprloc
	.ascii	"\227B"                         // DW_AT_GNU_all_call_sites
	.byte	25                              // DW_FORM_flag_present
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	39                              // DW_AT_prototyped
	.byte	25                              // DW_FORM_flag_present
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	12                              // Abbreviation Code
	.byte	5                               // DW_TAG_formal_parameter
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	23                              // DW_FORM_sec_offset
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	13                              // Abbreviation Code
	.byte	11                              // DW_TAG_lexical_block
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	14                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	23                              // DW_FORM_sec_offset
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	15                              // Abbreviation Code
	.byte	52                              // DW_TAG_variable
	.byte	0                               // DW_CHILDREN_no
	.byte	2                               // DW_AT_location
	.byte	24                              // DW_FORM_exprloc
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	16                              // Abbreviation Code
	.ascii	"\211\202\001"                  // DW_TAG_GNU_call_site
	.byte	0                               // DW_CHILDREN_no
	.ascii	"\223B"                         // DW_AT_GNU_call_site_target
	.byte	24                              // DW_FORM_exprloc
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	17                              // Abbreviation Code
	.byte	46                              // DW_TAG_subprogram
	.byte	1                               // DW_CHILDREN_yes
	.byte	17                              // DW_AT_low_pc
	.byte	1                               // DW_FORM_addr
	.byte	18                              // DW_AT_high_pc
	.byte	6                               // DW_FORM_data4
	.byte	64                              // DW_AT_frame_base
	.byte	24                              // DW_FORM_exprloc
	.ascii	"\227B"                         // DW_AT_GNU_all_call_sites
	.byte	25                              // DW_FORM_flag_present
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	63                              // DW_AT_external
	.byte	25                              // DW_FORM_flag_present
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	18                              // Abbreviation Code
	.byte	15                              // DW_TAG_pointer_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	19                              // Abbreviation Code
	.byte	38                              // DW_TAG_const_type
	.byte	0                               // DW_CHILDREN_no
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	20                              // Abbreviation Code
	.byte	19                              // DW_TAG_structure_type
	.byte	1                               // DW_CHILDREN_yes
	.byte	11                              // DW_AT_byte_size
	.byte	11                              // DW_FORM_data1
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	21                              // Abbreviation Code
	.byte	13                              // DW_TAG_member
	.byte	0                               // DW_CHILDREN_no
	.byte	3                               // DW_AT_name
	.byte	14                              // DW_FORM_strp
	.byte	73                              // DW_AT_type
	.byte	19                              // DW_FORM_ref4
	.byte	58                              // DW_AT_decl_file
	.byte	11                              // DW_FORM_data1
	.byte	59                              // DW_AT_decl_line
	.byte	11                              // DW_FORM_data1
	.byte	56                              // DW_AT_data_member_location
	.byte	11                              // DW_FORM_data1
	.byte	0                               // EOM(1)
	.byte	0                               // EOM(2)
	.byte	0                               // EOM(3)
	.section	.debug_info,"",@progbits
.Lcu_begin0:
	.long	.Ldebug_info_end0-.Ldebug_info_start0 // Length of Unit
.Ldebug_info_start0:
	.short	4                               // DWARF version number
	.long	.debug_abbrev                   // Offset Into Abbrev. Section
	.byte	4                               // Address Size (in bytes)
	.byte	1                               // Abbrev [1] 0xb:0x2bf DW_TAG_compile_unit
	.long	.Linfo_string0                  // DW_AT_producer
	.short	12                              // DW_AT_language
	.long	.Linfo_string1                  // DW_AT_name
	.long	.Lline_table_start0             // DW_AT_stmt_list
	.long	.Linfo_string2                  // DW_AT_comp_dir
	.long	0                               // DW_AT_low_pc
	.long	.Ldebug_ranges0                 // DW_AT_ranges
	.byte	2                               // Abbrev [2] 0x26:0x12 DW_TAG_variable
	.long	.Linfo_string3                  // DW_AT_name
	.long	56                              // DW_AT_type
                                        // DW_AT_external
	.byte	2                               // DW_AT_decl_file
	.byte	9                               // DW_AT_decl_line
	.byte	8                               // DW_AT_alignment
	.byte	5                               // DW_AT_location
	.byte	3
	.long	input
	.byte	3                               // Abbrev [3] 0x38:0xf DW_TAG_array_type
	.long	71                              // DW_AT_type
	.byte	4                               // Abbrev [4] 0x3d:0x9 DW_TAG_subrange_type
	.long	89                              // DW_AT_type
	.long	2097152                         // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	5                               // Abbrev [5] 0x47:0xb DW_TAG_typedef
	.long	82                              // DW_AT_type
	.long	.Linfo_string5                  // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	48                              // DW_AT_decl_line
	.byte	6                               // Abbrev [6] 0x52:0x7 DW_TAG_base_type
	.long	.Linfo_string4                  // DW_AT_name
	.byte	7                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	7                               // Abbrev [7] 0x59:0x7 DW_TAG_base_type
	.long	.Linfo_string6                  // DW_AT_name
	.byte	8                               // DW_AT_byte_size
	.byte	7                               // DW_AT_encoding
	.byte	2                               // Abbrev [2] 0x60:0x12 DW_TAG_variable
	.long	.Linfo_string7                  // DW_AT_name
	.long	56                              // DW_AT_type
                                        // DW_AT_external
	.byte	2                               // DW_AT_decl_file
	.byte	10                              // DW_AT_decl_line
	.byte	8                               // DW_AT_alignment
	.byte	5                               // DW_AT_location
	.byte	3
	.long	output
	.byte	2                               // Abbrev [2] 0x72:0x12 DW_TAG_variable
	.long	.Linfo_string8                  // DW_AT_name
	.long	132                             // DW_AT_type
                                        // DW_AT_external
	.byte	2                               // DW_AT_decl_file
	.byte	11                              // DW_AT_decl_line
	.byte	8                               // DW_AT_alignment
	.byte	5                               // DW_AT_location
	.byte	3
	.long	cache
	.byte	3                               // Abbrev [3] 0x84:0xc DW_TAG_array_type
	.long	71                              // DW_AT_type
	.byte	8                               // Abbrev [8] 0x89:0x6 DW_TAG_subrange_type
	.long	89                              // DW_AT_type
	.byte	64                              // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	9                               // Abbrev [9] 0x90:0x25 DW_TAG_enumeration_type
	.long	82                              // DW_AT_type
	.long	.Linfo_string13                 // DW_AT_name
	.byte	4                               // DW_AT_byte_size
	.byte	3                               // DW_AT_decl_file
	.byte	33                              // DW_AT_decl_line
	.byte	10                              // Abbrev [10] 0x9c:0x6 DW_TAG_enumerator
	.long	.Linfo_string9                  // DW_AT_name
	.byte	0                               // DW_AT_const_value
	.byte	10                              // Abbrev [10] 0xa2:0x6 DW_TAG_enumerator
	.long	.Linfo_string10                 // DW_AT_name
	.byte	1                               // DW_AT_const_value
	.byte	10                              // Abbrev [10] 0xa8:0x6 DW_TAG_enumerator
	.long	.Linfo_string11                 // DW_AT_name
	.byte	2                               // DW_AT_const_value
	.byte	10                              // Abbrev [10] 0xae:0x6 DW_TAG_enumerator
	.long	.Linfo_string12                 // DW_AT_name
	.byte	3                               // DW_AT_const_value
	.byte	0                               // End Of Children Mark
	.byte	6                               // Abbrev [6] 0xb5:0x7 DW_TAG_base_type
	.long	.Linfo_string14                 // DW_AT_name
	.byte	4                               // DW_AT_encoding
	.byte	8                               // DW_AT_byte_size
	.byte	11                              // Abbrev [11] 0xbc:0xc2 DW_TAG_subprogram
	.long	.Lfunc_begin0                   // DW_AT_low_pc
	.long	.Lfunc_end0-.Lfunc_begin0       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	102
                                        // DW_AT_GNU_all_call_sites
	.long	.Linfo_string15                 // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	43                              // DW_AT_decl_line
                                        // DW_AT_prototyped
                                        // DW_AT_external
	.byte	12                              // Abbrev [12] 0xcd:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc0                    // DW_AT_location
	.long	.Linfo_string20                 // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	43                              // DW_AT_decl_line
	.long	570                             // DW_AT_type
	.byte	12                              // Abbrev [12] 0xdc:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc1                    // DW_AT_location
	.long	.Linfo_string26                 // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	43                              // DW_AT_decl_line
	.long	637                             // DW_AT_type
	.byte	13                              // Abbrev [13] 0xeb:0x76 DW_TAG_lexical_block
	.long	.Ltmp2                          // DW_AT_low_pc
	.long	.Ltmp25-.Ltmp2                  // DW_AT_high_pc
	.byte	14                              // Abbrev [14] 0xf4:0xf DW_TAG_variable
	.long	.Ldebug_loc2                    // DW_AT_location
	.long	.Linfo_string27                 // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	44                              // DW_AT_decl_line
	.long	642                             // DW_AT_type
	.byte	13                              // Abbrev [13] 0x103:0x5d DW_TAG_lexical_block
	.long	.Ltmp5                          // DW_AT_low_pc
	.long	.Ltmp25-.Ltmp5                  // DW_AT_high_pc
	.byte	14                              // Abbrev [14] 0x10c:0xf DW_TAG_variable
	.long	.Ldebug_loc3                    // DW_AT_location
	.long	.Linfo_string29                 // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	45                              // DW_AT_decl_line
	.long	642                             // DW_AT_type
	.byte	13                              // Abbrev [13] 0x11b:0x44 DW_TAG_lexical_block
	.long	.Ltmp9                          // DW_AT_low_pc
	.long	.Ltmp25-.Ltmp9                  // DW_AT_high_pc
	.byte	15                              // Abbrev [15] 0x124:0xe DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	80
	.long	.Linfo_string18                 // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	46                              // DW_AT_decl_line
	.long	531                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x132:0xe DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string19                 // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	50                              // DW_AT_decl_line
	.long	548                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x140:0xf DW_TAG_variable
	.long	.Ldebug_loc4                    // DW_AT_location
	.long	.Linfo_string30                 // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	55                              // DW_AT_decl_line
	.long	642                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x14f:0xf DW_TAG_variable
	.long	.Ldebug_loc5                    // DW_AT_location
	.long	.Linfo_string31                 // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	54                              // DW_AT_decl_line
	.long	653                             // DW_AT_type
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	0                               // End Of Children Mark
	.byte	16                              // Abbrev [16] 0x161:0x7 DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	103
	.long	.Ltmp10                         // DW_AT_low_pc
	.byte	16                              // Abbrev [16] 0x168:0x7 DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	103
	.long	.Ltmp11                         // DW_AT_low_pc
	.byte	16                              // Abbrev [16] 0x16f:0x7 DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	103
	.long	.Ltmp19                         // DW_AT_low_pc
	.byte	16                              // Abbrev [16] 0x176:0x7 DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	103
	.long	.Ltmp21                         // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	17                              // Abbrev [17] 0x17e:0x8e DW_TAG_subprogram
	.long	.Lfunc_begin1                   // DW_AT_low_pc
	.long	.Lfunc_end1-.Lfunc_begin1       // DW_AT_high_pc
	.byte	1                               // DW_AT_frame_base
	.byte	102
                                        // DW_AT_GNU_all_call_sites
	.long	.Linfo_string16                 // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	78                              // DW_AT_decl_line
	.long	524                             // DW_AT_type
                                        // DW_AT_external
	.byte	15                              // Abbrev [15] 0x193:0xe DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	88
	.long	.Linfo_string26                 // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	82                              // DW_AT_decl_line
	.long	660                             // DW_AT_type
	.byte	15                              // Abbrev [15] 0x1a1:0xe DW_TAG_variable
	.byte	2                               // DW_AT_location
	.byte	145
	.byte	96
	.long	.Linfo_string20                 // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	83                              // DW_AT_decl_line
	.long	672                             // DW_AT_type
	.byte	14                              // Abbrev [14] 0x1af:0xf DW_TAG_variable
	.long	.Ldebug_loc6                    // DW_AT_location
	.long	.Linfo_string33                 // DW_AT_name
	.byte	2                               // DW_AT_decl_file
	.byte	80                              // DW_AT_decl_line
	.long	684                             // DW_AT_type
	.byte	16                              // Abbrev [16] 0x1be:0x7 DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	103
	.long	.Ltmp30                         // DW_AT_low_pc
	.byte	16                              // Abbrev [16] 0x1c5:0x7 DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	103
	.long	.Ltmp31                         // DW_AT_low_pc
	.byte	16                              // Abbrev [16] 0x1cc:0x7 DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	103
	.long	.Ltmp32                         // DW_AT_low_pc
	.byte	16                              // Abbrev [16] 0x1d3:0x7 DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	103
	.long	.Ltmp33                         // DW_AT_low_pc
	.byte	16                              // Abbrev [16] 0x1da:0x7 DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	103
	.long	.Ltmp35                         // DW_AT_low_pc
	.byte	16                              // Abbrev [16] 0x1e1:0x7 DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	103
	.long	.Ltmp36                         // DW_AT_low_pc
	.byte	16                              // Abbrev [16] 0x1e8:0x7 DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	103
	.long	.Ltmp38                         // DW_AT_low_pc
	.byte	16                              // Abbrev [16] 0x1ef:0x7 DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	103
	.long	.Ltmp40                         // DW_AT_low_pc
	.byte	16                              // Abbrev [16] 0x1f6:0x7 DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	103
	.long	.Ltmp41                         // DW_AT_low_pc
	.byte	16                              // Abbrev [16] 0x1fd:0x7 DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	103
	.long	.Ltmp42                         // DW_AT_low_pc
	.byte	16                              // Abbrev [16] 0x204:0x7 DW_TAG_GNU_call_site
	.byte	1                               // DW_AT_GNU_call_site_target
	.byte	103
	.long	.Ltmp43                         // DW_AT_low_pc
	.byte	0                               // End Of Children Mark
	.byte	6                               // Abbrev [6] 0x20c:0x7 DW_TAG_base_type
	.long	.Linfo_string17                 // DW_AT_name
	.byte	5                               // DW_AT_encoding
	.byte	4                               // DW_AT_byte_size
	.byte	3                               // Abbrev [3] 0x213:0xc DW_TAG_array_type
	.long	543                             // DW_AT_type
	.byte	8                               // Abbrev [8] 0x218:0x6 DW_TAG_subrange_type
	.long	89                              // DW_AT_type
	.byte	2                               // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	18                              // Abbrev [18] 0x21f:0x5 DW_TAG_pointer_type
	.long	71                              // DW_AT_type
	.byte	3                               // Abbrev [3] 0x224:0xc DW_TAG_array_type
	.long	560                             // DW_AT_type
	.byte	8                               // Abbrev [8] 0x229:0x6 DW_TAG_subrange_type
	.long	89                              // DW_AT_type
	.byte	2                               // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	18                              // Abbrev [18] 0x230:0x5 DW_TAG_pointer_type
	.long	565                             // DW_AT_type
	.byte	19                              // Abbrev [19] 0x235:0x5 DW_TAG_const_type
	.long	71                              // DW_AT_type
	.byte	18                              // Abbrev [18] 0x23a:0x5 DW_TAG_pointer_type
	.long	575                             // DW_AT_type
	.byte	5                               // Abbrev [5] 0x23f:0xb DW_TAG_typedef
	.long	586                             // DW_AT_type
	.long	.Linfo_string25                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	66                              // DW_AT_decl_line
	.byte	20                              // Abbrev [20] 0x24a:0x1d DW_TAG_structure_type
	.byte	8                               // DW_AT_byte_size
	.byte	4                               // DW_AT_decl_file
	.byte	63                              // DW_AT_decl_line
	.byte	21                              // Abbrev [21] 0x24e:0xc DW_TAG_member
	.long	.Linfo_string21                 // DW_AT_name
	.long	615                             // DW_AT_type
	.byte	4                               // DW_AT_decl_file
	.byte	64                              // DW_AT_decl_line
	.byte	0                               // DW_AT_data_member_location
	.byte	21                              // Abbrev [21] 0x25a:0xc DW_TAG_member
	.long	.Linfo_string24                 // DW_AT_name
	.long	626                             // DW_AT_type
	.byte	4                               // DW_AT_decl_file
	.byte	65                              // DW_AT_decl_line
	.byte	4                               // DW_AT_data_member_location
	.byte	0                               // End Of Children Mark
	.byte	5                               // Abbrev [5] 0x267:0xb DW_TAG_typedef
	.long	626                             // DW_AT_type
	.long	.Linfo_string23                 // DW_AT_name
	.byte	4                               // DW_AT_decl_file
	.byte	57                              // DW_AT_decl_line
	.byte	5                               // Abbrev [5] 0x272:0xb DW_TAG_typedef
	.long	82                              // DW_AT_type
	.long	.Linfo_string22                 // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	144                             // DW_AT_decl_line
	.byte	18                              // Abbrev [18] 0x27d:0x5 DW_TAG_pointer_type
	.long	615                             // DW_AT_type
	.byte	5                               // Abbrev [5] 0x282:0xb DW_TAG_typedef
	.long	82                              // DW_AT_type
	.long	.Linfo_string28                 // DW_AT_name
	.byte	5                               // DW_AT_decl_file
	.byte	26                              // DW_AT_decl_line
	.byte	6                               // Abbrev [6] 0x28d:0x7 DW_TAG_base_type
	.long	.Linfo_string32                 // DW_AT_name
	.byte	2                               // DW_AT_encoding
	.byte	1                               // DW_AT_byte_size
	.byte	3                               // Abbrev [3] 0x294:0xc DW_TAG_array_type
	.long	615                             // DW_AT_type
	.byte	8                               // Abbrev [8] 0x299:0x6 DW_TAG_subrange_type
	.long	89                              // DW_AT_type
	.byte	2                               // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	3                               // Abbrev [3] 0x2a0:0xc DW_TAG_array_type
	.long	575                             // DW_AT_type
	.byte	8                               // Abbrev [8] 0x2a5:0x6 DW_TAG_subrange_type
	.long	89                              // DW_AT_type
	.byte	2                               // DW_AT_count
	.byte	0                               // End Of Children Mark
	.byte	5                               // Abbrev [5] 0x2ac:0xb DW_TAG_typedef
	.long	695                             // DW_AT_type
	.long	.Linfo_string36                 // DW_AT_name
	.byte	3                               // DW_AT_decl_file
	.byte	22                              // DW_AT_decl_line
	.byte	5                               // Abbrev [5] 0x2b7:0xb DW_TAG_typedef
	.long	706                             // DW_AT_type
	.long	.Linfo_string35                 // DW_AT_name
	.byte	1                               // DW_AT_decl_file
	.byte	53                              // DW_AT_decl_line
	.byte	6                               // Abbrev [6] 0x2c2:0x7 DW_TAG_base_type
	.long	.Linfo_string34                 // DW_AT_name
	.byte	7                               // DW_AT_encoding
	.byte	8                               // DW_AT_byte_size
	.byte	0                               // End Of Children Mark
.Ldebug_info_end0:
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.long	0
	.long	0
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
	.asciz	"clang version 12.0.0 (https://github.com/upmem/llvm-project.git 846fdda8285dcc9b20ee5d2fec9e54dfea6a8928)" // string offset=0
.Linfo_string1:
	.asciz	"dpu/task.c"                    // string offset=106
.Linfo_string2:
	.asciz	"/home/vboxuser/Dokumente/pim/if-tester" // string offset=117
.Linfo_string3:
	.asciz	"input"                         // string offset=156
.Linfo_string4:
	.asciz	"unsigned int"                  // string offset=162
.Linfo_string5:
	.asciz	"uint32_t"                      // string offset=175
.Linfo_string6:
	.asciz	"__ARRAY_SIZE_TYPE__"           // string offset=184
.Linfo_string7:
	.asciz	"output"                        // string offset=204
.Linfo_string8:
	.asciz	"cache"                         // string offset=211
.Linfo_string9:
	.asciz	"COUNT_SAME"                    // string offset=217
.Linfo_string10:
	.asciz	"COUNT_CYCLES"                  // string offset=228
.Linfo_string11:
	.asciz	"COUNT_INSTRUCTIONS"            // string offset=241
.Linfo_string12:
	.asciz	"COUNT_NOTHING"                 // string offset=260
.Linfo_string13:
	.asciz	"_perfcounter_config_t"         // string offset=274
.Linfo_string14:
	.asciz	"double"                        // string offset=296
.Linfo_string15:
	.asciz	"if_in_front"                   // string offset=303
.Linfo_string16:
	.asciz	"main"                          // string offset=314
.Linfo_string17:
	.asciz	"int"                           // string offset=319
.Linfo_string18:
	.asciz	"ptr"                           // string offset=323
.Linfo_string19:
	.asciz	"ends"                          // string offset=327
.Linfo_string20:
	.asciz	"sr"                            // string offset=332
.Linfo_string21:
	.asciz	"wram_cache"                    // string offset=335
.Linfo_string22:
	.asciz	"uintptr_t"                     // string offset=346
.Linfo_string23:
	.asciz	"seqreader_buffer_t"            // string offset=356
.Linfo_string24:
	.asciz	"mram_addr"                     // string offset=375
.Linfo_string25:
	.asciz	"seqreader_t"                   // string offset=385
.Linfo_string26:
	.asciz	"buffers"                       // string offset=397
.Linfo_string27:
	.asciz	"run"                           // string offset=405
.Linfo_string28:
	.asciz	"size_t"                        // string offset=409
.Linfo_string29:
	.asciz	"j"                             // string offset=416
.Linfo_string30:
	.asciz	"i"                             // string offset=418
.Linfo_string31:
	.asciz	"active"                        // string offset=420
.Linfo_string32:
	.asciz	"_Bool"                         // string offset=427
.Linfo_string33:
	.asciz	"cycles"                        // string offset=433
.Linfo_string34:
	.asciz	"long unsigned int"             // string offset=440
.Linfo_string35:
	.asciz	"uint64_t"                      // string offset=458
.Linfo_string36:
	.asciz	"perfcounter_t"                 // string offset=467
	.addrsig
	.addrsig_sym input
	.addrsig_sym CLOCKS_PER_SEC
	.addrsig_sym output
	.section	.debug_line,"",@progbits
.Lline_table_start0:
