#BEGIN Preamble
	REG	r0
	REG	r1
	REG	r2
	REG	r3
	REG	r4
	REG	r5
	REG	r6
	REG	r7
	REG	r8
	REG	r9
	REG	r10
	REG	r11
	REG	r12
	REG	r13
	REG	r14
	REG	r15
	REG	r16
	REG	r17
	REG	r18
	REG	r19
	REG	r20
	REG	r21
	REG	r22
	REG	r23
	REG	r24
	REG	r25
	REG	r26
	REG	r27
	REG	r28
	REG	r29
	REG	r30
	REG	r31
	LOADIMM	r0, 0
	ADDI	r1, r0, 8192
start:	brlid	r15, main
	NOP
	HALT
#END Preamble
#	.file	"rt.bc"
#	.text
#	.globl	main
#	.align	2
#	.type	main,@function
#	.ent	main                    # @main
main:
#	.frame	r1,512,r15
#	.mask	0xfff00000
	ADDI	r1,	r1,	-512
	SWI	r20,	r1,	44
	SWI	r21,	r1,	40
	SWI	r22,	r1,	36
	SWI	r23,	r1,	32
	SWI	r24,	r1,	28
	SWI	r25,	r1,	24
	SWI	r26,	r1,	20
	SWI	r27,	r1,	16
	SWI	r28,	r1,	12
	SWI	r29,	r1,	8
	SWI	r30,	r1,	4
	SWI	r31,	r1,	0
	ADD	r3,	r0,	r0
	LOAD	r4,	r3,	1
	SWI	r4,	r1,	508
	LOAD	r5,	r3,	4
	LOAD	r6,	r3,	7
	SWI	r6,	r1,	444
	LOAD	r6,	r3,	12
	LOAD	r7,	r6,	0
	SWI	r7,	r1,	448
	LOAD	r7,	r6,	1
	SWI	r7,	r1,	452
	LOAD	r6,	r6,	2
	SWI	r6,	r1,	456
	LOAD	r6,	r3,	10
	LOAD	r7,	r6,	0
	SWI	r7,	r1,	348
	LOAD	r7,	r6,	1
	SWI	r7,	r1,	352
	LOAD	r7,	r6,	2
	SWI	r7,	r1,	356
	ADDI	r7,	r6,	9
	LOAD	r8,	r7,	0
	LOAD	r8,	r7,	1
	ADDI	r8,	r6,	12
	LOAD	r7,	r7,	2
	LOAD	r7,	r8,	0
	SWI	r7,	r1,	460
	LOAD	r7,	r8,	1
	SWI	r7,	r1,	464
	LOAD	r7,	r8,	2
	SWI	r7,	r1,	468
	ADDI	r7,	r6,	15
	LOAD	r8,	r7,	0
	SWI	r8,	r1,	472
	LOAD	r8,	r7,	1
	SWI	r8,	r1,	476
	LOAD	r7,	r7,	2
	SWI	r7,	r1,	480
	ADDI	r6,	r6,	18
	LOAD	r7,	r6,	0
	SWI	r7,	r1,	484
	LOAD	r7,	r6,	1
	SWI	r7,	r1,	488
	LOAD	r6,	r6,	2
	SWI	r6,	r1,	492
	LOAD	r6,	r3,	28
	LOAD	r6,	r3,	29
	LOAD	r3,	r3,	8
	SWI	r3,	r1,	372
	FPCONV	r3,	r4
	SWI	r3,	r1,	436
	FPCONV	r3,	r5
	SWI	r3,	r1,	440
	ORI	r3,	r0,	-1073741824
	MUL	r4,	r5,	r4
	SWI	r4,	r1,	504
	ATOMIC_INC	r5,	0
	CMP	r4,	r5,	r4
	bleid	r4,	$0BB0_215
	NOP
	LWI	r4,	r1,	436
	FPDIV	r4,	r4,	r3
	SWI	r4,	r1,	496
	LWI	r4,	r1,	440
	FPDIV	r3,	r4,	r3
	SWI	r3,	r1,	500
$0BB0_2:
	LWI	r3,	r1,	508
	DIV	r4,	r3,	r5
	MUL	r3,	r4,	r3
	SWI	r3,	r1,	428
	RSUB	r5,	r3,	r5
	SWI	r5,	r1,	432
	FPCONV	r5,	r5
	FPCONV	r3,	r4
	LWI	r4,	r1,	496
	FPADD	r5,	r5,	r4
	ORI	r4,	r0,	1056964608
	LWI	r6,	r1,	500
	FPADD	r3,	r3,	r6
	FPADD	r5,	r5,	r4
	FPADD	r3,	r3,	r4
	FPADD	r5,	r5,	r5
	FPADD	r3,	r3,	r3
	LWI	r4,	r1,	440
	FPDIV	r3,	r3,	r4
	LWI	r4,	r1,	436
	FPDIV	r5,	r5,	r4
	LWI	r4,	r1,	484
	FPMUL	r4,	r4,	r3
	LWI	r6,	r1,	472
	FPMUL	r6,	r6,	r5
	LWI	r7,	r1,	488
	FPMUL	r7,	r7,	r3
	LWI	r8,	r1,	476
	FPMUL	r8,	r8,	r5
	FPADD	r4,	r4,	r6
	FPADD	r6,	r7,	r8
	LWI	r7,	r1,	480
	FPMUL	r5,	r7,	r5
	LWI	r7,	r1,	492
	FPMUL	r3,	r7,	r3
	LWI	r7,	r1,	460
	FPADD	r4,	r4,	r7
	LWI	r7,	r1,	464
	FPADD	r6,	r6,	r7
	FPADD	r5,	r5,	r3
	LWI	r3,	r1,	468
	FPADD	r5,	r3,	r5
	FPMUL	r3,	r4,	r4
	FPMUL	r7,	r6,	r6
	FPADD	r3,	r3,	r7
	FPMUL	r7,	r5,	r5
	FPADD	r3,	r3,	r7
	ORI	r7,	r0,	1065353216
	FPINVSQRT	r3,	r3
	FPDIV	r3,	r7,	r3
	ADD	r7,	r0,	r0
	SWI	r7,	r1,	380
	FPDIV	r5,	r5,	r3
	SWI	r5,	r1,	336
	FPDIV	r5,	r6,	r3
	SWI	r5,	r1,	340
	FPDIV	r5,	r4,	r3
	SWI	r5,	r1,	344
	ADDI	r5,	r0,	-1
	SWI	r5,	r1,	328
	ADDI	r5,	r0,	1343554297
	SWI	r5,	r1,	324
	SWI	r7,	r1,	364
	SWI	r7,	r1,	368
	SWI	r7,	r1,	376
	SWI	r7,	r1,	388
	SWI	r7,	r1,	384
	SWI	r7,	r1,	396
	SWI	r7,	r1,	392
	SWI	r7,	r1,	400
	SWI	r7,	r1,	408
	SWI	r7,	r1,	404
	SWI	r7,	r1,	412
$0BB0_3:
	ADDI	r5,	r0,	3
	ANDI	r5,	r5,	31
	beqid	r5,	$0BB0_5
	ADDI	r7,	r7,	0
$0BB0_4:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_4
	ADDK	r7,	r7,	r7
$0BB0_5:
	LWI	r5,	r1,	372
	ADD	r5,	r7,	r5
	LOAD	r7,	r5,	2
	LOAD	r3,	r5,	1
	LOAD	r4,	r5,	0
	LOAD	r6,	r5,	5
	LOAD	r8,	r5,	4
	LOAD	r9,	r5,	3
	LWI	r10,	r1,	348
	FPRSUB	r4,	r10,	r4
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r1,	344
	FPDIV	r4,	r4,	r10
	FPDIV	r9,	r9,	r10
	FPGT	r10,	r4,	r9
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r10,	$0BB0_7
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_7:
	bneid	r20,	$0BB0_9
	ADD	r10,	r9,	r0
	ADD	r10,	r4,	r0
$0BB0_9:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_11
	NOP
	ADD	r4,	r9,	r0
$0BB0_11:
	ORI	r9,	r0,	1343554297
	FPGT	r20,	r10,	r21
	FPLT	r22,	r4,	r9
	bneid	r20,	$0BB0_13
	ADD	r23,	r11,	r0
	ADD	r23,	r12,	r0
$0BB0_13:
	bneid	r22,	$0BB0_15
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_15:
	bneid	r23,	$0BB0_17
	NOP
	ADD	r10,	r21,	r0
$0BB0_17:
	bneid	r20,	$0BB0_19
	NOP
	ADD	r4,	r9,	r0
$0BB0_19:
	FPGT	r9,	r10,	r4
	bneid	r9,	$0BB0_21
	NOP
	ADD	r11,	r12,	r0
$0BB0_21:
	bneid	r11,	$0BB0_93
	NOP
	ORI	r9,	r0,	0
	ADDI	r11,	r0,	1
	FPLT	r9,	r4,	r9
	bneid	r9,	$0BB0_24
	NOP
	ADDI	r11,	r0,	0
$0BB0_24:
	bneid	r11,	$0BB0_93
	NOP
	LWI	r9,	r1,	352
	FPRSUB	r3,	r9,	r3
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r1,	340
	FPDIV	r3,	r3,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r3,	r8
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_27
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_27:
	bneid	r20,	$0BB0_29
	ADD	r9,	r8,	r0
	ADD	r9,	r3,	r0
$0BB0_29:
	bneid	r20,	$0BB0_31
	NOP
	ADD	r3,	r8,	r0
$0BB0_31:
	FPGT	r8,	r9,	r10
	FPLT	r20,	r3,	r4
	bneid	r8,	$0BB0_33
	ADD	r21,	r11,	r0
	ADD	r21,	r12,	r0
$0BB0_33:
	bneid	r20,	$0BB0_35
	ADD	r8,	r11,	r0
	ADD	r8,	r12,	r0
$0BB0_35:
	bneid	r21,	$0BB0_37
	NOP
	ADD	r9,	r10,	r0
$0BB0_37:
	bneid	r8,	$0BB0_39
	NOP
	ADD	r3,	r4,	r0
$0BB0_39:
	FPGT	r4,	r9,	r3
	bneid	r4,	$0BB0_41
	NOP
	ADD	r11,	r12,	r0
$0BB0_41:
	bneid	r11,	$0BB0_93
	NOP
	ORI	r4,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r4,	r3,	r4
	bneid	r4,	$0BB0_44
	NOP
	ADDI	r8,	r0,	0
$0BB0_44:
	bneid	r8,	$0BB0_93
	NOP
	LWI	r4,	r1,	356
	FPRSUB	r7,	r4,	r7
	FPRSUB	r4,	r4,	r6
	LWI	r6,	r1,	336
	FPDIV	r7,	r7,	r6
	FPDIV	r4,	r4,	r6
	FPGT	r6,	r7,	r4
	ADDI	r8,	r0,	1
	ADDI	r10,	r0,	0
	bneid	r6,	$0BB0_47
	ADD	r11,	r8,	r0
	ADD	r11,	r10,	r0
$0BB0_47:
	bneid	r11,	$0BB0_49
	ADD	r6,	r4,	r0
	ADD	r6,	r7,	r0
$0BB0_49:
	bneid	r11,	$0BB0_51
	NOP
	ADD	r7,	r4,	r0
$0BB0_51:
	FPGT	r4,	r6,	r9
	FPLT	r11,	r7,	r3
	bneid	r4,	$0BB0_53
	ADD	r12,	r8,	r0
	ADD	r12,	r10,	r0
$0BB0_53:
	bneid	r11,	$0BB0_55
	ADD	r4,	r8,	r0
	ADD	r4,	r10,	r0
$0BB0_55:
	bneid	r4,	$0BB0_57
	NOP
	ADD	r7,	r3,	r0
$0BB0_57:
	bneid	r12,	$0BB0_59
	NOP
	ADD	r6,	r9,	r0
$0BB0_59:
	FPGT	r3,	r6,	r7
	bneid	r3,	$0BB0_61
	NOP
	ADD	r8,	r10,	r0
$0BB0_61:
	bneid	r8,	$0BB0_93
	NOP
	ORI	r3,	r0,	0
	ADDI	r4,	r0,	1
	FPLT	r7,	r7,	r3
	bneid	r7,	$0BB0_64
	NOP
	ADDI	r4,	r0,	0
$0BB0_64:
	bneid	r4,	$0BB0_93
	NOP
	LOAD	r7,	r5,	7
	LOAD	r5,	r5,	6
	SWI	r5,	r1,	332
	ADD	r3,	r0,	r0
	CMP	r5,	r3,	r5
	bltid	r5,	$0BB0_97
	NOP
	ADD	r5,	r0,	r0
	LWI	r3,	r1,	332
	CMP	r5,	r5,	r3
	bleid	r5,	$0BB0_93
	NOP
$0BB0_67:
	LOAD	r5,	r7,	2
	LOAD	r3,	r7,	1
	LOAD	r4,	r7,	0
	LOAD	r6,	r7,	5
	LOAD	r8,	r7,	4
	LOAD	r9,	r7,	3
	LOAD	r10,	r7,	8
	LOAD	r11,	r7,	7
	LOAD	r12,	r7,	6
	FPRSUB	r6,	r10,	r6
	SWI	r6,	r1,	360
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r1,	340
	FPMUL	r21,	r20,	r6
	LWI	r22,	r1,	336
	FPMUL	r23,	r8,	r22
	FPRSUB	r4,	r12,	r4
	LOAD	r24,	r7,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r1,	344
	FPMUL	r25,	r23,	r6
	FPRSUB	r5,	r10,	r5
	FPRSUB	r3,	r11,	r3
	LWI	r26,	r1,	348
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r4
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r7,	9
	LWI	r28,	r1,	352
	FPRSUB	r11,	r11,	r28
	FPMUL	r21,	r21,	r12
	FPRSUB	r20,	r20,	r23
	FPMUL	r23,	r22,	r3
	FPADD	r25,	r25,	r26
	FPMUL	r28,	r3,	r6
	FPMUL	r29,	r8,	r5
	FPMUL	r30,	r9,	r5
	FPMUL	r6,	r4,	r6
	MULI	r24,	r24,	25
	LOAD	r27,	r27,	9
	LWI	r31,	r1,	356
	FPRSUB	r10,	r10,	r31
	FPRSUB	r28,	r29,	r28
	FPRSUB	r6,	r6,	r30
	ADD	r24,	r27,	r24
	FPMUL	r22,	r22,	r11
	FPADD	r21,	r21,	r26
	FPMUL	r27,	r20,	r5
	FPADD	r23,	r23,	r25
	FPMUL	r25,	r8,	r4
	FPMUL	r29,	r9,	r3
	FPRSUB	r25,	r29,	r25
	LOAD	r29,	r24,	6
	FPMUL	r20,	r20,	r10
	FPADD	r21,	r22,	r21
	ORI	r22,	r0,	1065353216
	FPADD	r23,	r27,	r23
	FPMUL	r27,	r28,	r28
	FPMUL	r6,	r6,	r6
	FPDIV	r22,	r22,	r23
	FPADD	r20,	r20,	r21
	LOAD	r21,	r24,	5
	FPADD	r6,	r27,	r6
	FPMUL	r21,	r25,	r25
	FPMUL	r20,	r20,	r22
	FPADD	r6,	r6,	r21
	LOAD	r21,	r24,	4
	ADDI	r21,	r0,	1
	FPLT	r23,	r20,	r26
	FPINVSQRT	r6,	r6
	bneid	r23,	$0BB0_69
	NOP
	ADDI	r21,	r0,	0
$0BB0_69:
	bneid	r21,	$0BB0_92
	NOP
	ORI	r6,	r0,	1065353216
	ADDI	r21,	r0,	1
	FPGT	r6,	r20,	r6
	bneid	r6,	$0BB0_72
	NOP
	ADDI	r21,	r0,	0
$0BB0_72:
	bneid	r21,	$0BB0_92
	NOP
	FPMUL	r6,	r11,	r5
	FPMUL	r21,	r3,	r10
	FPRSUB	r6,	r21,	r6
	FPMUL	r10,	r4,	r10
	FPMUL	r5,	r12,	r5
	FPRSUB	r5,	r5,	r10
	FPMUL	r3,	r3,	r12
	FPMUL	r4,	r4,	r11
	LWI	r10,	r1,	344
	FPMUL	r10,	r6,	r10
	ORI	r11,	r0,	0
	FPRSUB	r3,	r4,	r3
	LWI	r4,	r1,	340
	FPMUL	r4,	r5,	r4
	FPADD	r10,	r10,	r11
	LWI	r12,	r1,	336
	FPMUL	r12,	r3,	r12
	FPADD	r4,	r4,	r10
	FPADD	r4,	r12,	r4
	FPMUL	r4,	r4,	r22
	ADDI	r10,	r0,	1
	FPLT	r11,	r4,	r11
	bneid	r11,	$0BB0_75
	NOP
	ADDI	r10,	r0,	0
$0BB0_75:
	bneid	r10,	$0BB0_92
	NOP
	FPADD	r4,	r4,	r20
	ORI	r10,	r0,	1065353216
	ADDI	r11,	r0,	1
	FPGT	r4,	r4,	r10
	bneid	r4,	$0BB0_78
	NOP
	ADDI	r11,	r0,	0
$0BB0_78:
	bneid	r11,	$0BB0_92
	NOP
	FPMUL	r4,	r6,	r9
	ORI	r6,	r0,	0
	FPMUL	r5,	r5,	r8
	FPADD	r4,	r4,	r6
	LWI	r8,	r1,	360
	FPMUL	r3,	r3,	r8
	FPADD	r5,	r5,	r4
	FPADD	r5,	r3,	r5
	FPMUL	r5,	r5,	r22
	FPUN	r3,	r5,	r6
	FPLE	r4,	r5,	r6
	BITOR	r3,	r3,	r4
	bneid	r3,	$0BB0_81
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_81:
	bneid	r6,	$0BB0_92
	NOP
	ORI	r3,	r0,	981668463
	ADDI	r4,	r0,	1
	FPLT	r3,	r5,	r3
	bneid	r3,	$0BB0_84
	NOP
	ADDI	r4,	r0,	0
$0BB0_84:
	bneid	r4,	$0BB0_92
	NOP
	ORI	r3,	r0,	1343554297
	ADDI	r4,	r0,	1
	FPEQ	r3,	r5,	r3
	bneid	r3,	$0BB0_87
	NOP
	ADDI	r4,	r0,	0
$0BB0_87:
	bneid	r4,	$0BB0_92
	NOP
	LWI	r3,	r1,	324
	SWI	r3,	r1,	176
	LWI	r3,	r1,	176
	FPUN	r4,	r3,	r5
	FPLE	r3,	r3,	r5
	BITOR	r3,	r4,	r3
	bneid	r3,	$0BB0_90
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_90:
	bneid	r6,	$0BB0_92
	NOP
	LOAD	r3,	r7,	2
	LOAD	r4,	r7,	1
	LOAD	r6,	r7,	0
	LOAD	r8,	r7,	5
	LOAD	r9,	r7,	4
	LOAD	r10,	r7,	3
	LOAD	r11,	r7,	8
	LOAD	r12,	r7,	7
	LOAD	r20,	r7,	6
	LOAD	r21,	r7,	10
	LOAD	r22,	r7,	9
	SWI	r22,	r1,	424
	ADD	r22,	r0,	r0
	MULI	r21,	r21,	25
	LOAD	r22,	r22,	9
	ADD	r21,	r22,	r21
	LOAD	r22,	r21,	6
	LOAD	r23,	r21,	5
	LOAD	r21,	r21,	4
	SWI	r22,	r1,	220
	SWI	r23,	r1,	224
	SWI	r21,	r1,	228
	SWI	r11,	r1,	208
	SWI	r12,	r1,	212
	SWI	r20,	r1,	216
	SWI	r8,	r1,	196
	SWI	r9,	r1,	200
	SWI	r10,	r1,	204
	SWI	r3,	r1,	184
	SWI	r4,	r1,	188
	SWI	r6,	r1,	192
	SWI	r5,	r1,	180
	ADDI	r5,	r0,	1060320051
	SWI	r5,	r1,	416
	ADDI	r5,	r0,	1050253722
	SWI	r5,	r1,	420
	LWI	r5,	r1,	220
	SWI	r5,	r1,	380
	LWI	r11,	r1,	224
	SWI	r11,	r1,	364
	LWI	r11,	r1,	228
	SWI	r11,	r1,	368
	LWI	r10,	r1,	208
	SWI	r10,	r1,	376
	LWI	r10,	r1,	212
	SWI	r10,	r1,	388
	LWI	r10,	r1,	216
	SWI	r10,	r1,	384
	LWI	r10,	r1,	196
	SWI	r10,	r1,	396
	LWI	r10,	r1,	200
	SWI	r10,	r1,	392
	LWI	r10,	r1,	204
	SWI	r10,	r1,	400
	LWI	r10,	r1,	184
	SWI	r10,	r1,	408
	LWI	r10,	r1,	188
	SWI	r10,	r1,	404
	LWI	r10,	r1,	192
	SWI	r10,	r1,	412
	LWI	r5,	r1,	180
	SWI	r5,	r1,	324
$0BB0_92:
	LWI	r5,	r1,	332
	ADDI	r5,	r5,	-1
	SWI	r5,	r1,	332
	ADDI	r7,	r7,	11
	ADD	r3,	r0,	r0
	CMP	r5,	r3,	r5
	bneid	r5,	$0BB0_67
	NOP
$0BB0_93:
	ADD	r5,	r0,	r0
	LWI	r7,	r1,	328
	CMP	r5,	r5,	r7
	bltid	r5,	$0BB0_100
	NOP
	ADDI	r5,	r0,	2
	ANDI	r5,	r5,	31
	LWI	r7,	r1,	328
	beqid	r5,	$0BB0_96
	ADDI	r7,	r7,	0
$0BB0_95:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_95
	ADDK	r7,	r7,	r7
$0BB0_96:
	ADDI	r5,	r1,	48
	LW	r7,	r5,	r7
	LWI	r5,	r1,	328
	ADDI	r5,	r5,	-1
	brid	$0BB0_3
	SWI	r5,	r1,	328
$0BB0_97:
	ADDI	r5,	r0,	2
	ANDI	r5,	r5,	31
	LWI	r3,	r1,	328
	beqid	r5,	$0BB0_99
	ADDI	r3,	r3,	0
$0BB0_98:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_98
	ADDK	r3,	r3,	r3
$0BB0_99:
	ADDI	r5,	r1,	48
	LWI	r4,	r1,	328
	ADDI	r4,	r4,	1
	SWI	r4,	r1,	328
	ADDI	r4,	r7,	1
	ADD	r5,	r5,	r3
	brid	$0BB0_3
	SWI	r4,	r5,	4
$0BB0_100:
	LWI	r10,	r1,	408
	SWI	r10,	r1,	272
	LWI	r10,	r1,	396
	SWI	r10,	r1,	260
	LWI	r10,	r1,	376
	SWI	r10,	r1,	248
	LWI	r10,	r1,	388
	SWI	r10,	r1,	252
	LWI	r10,	r1,	412
	SWI	r10,	r1,	280
	LWI	r10,	r1,	400
	SWI	r10,	r1,	268
	LWI	r10,	r1,	384
	SWI	r10,	r1,	256
	LWI	r10,	r1,	404
	SWI	r10,	r1,	276
	LWI	r10,	r1,	392
	SWI	r10,	r1,	264
	LWI	r5,	r1,	272
	LWI	r3,	r1,	260
	LWI	r4,	r1,	248
	LWI	r6,	r1,	252
	LWI	r7,	r1,	264
	LWI	r8,	r1,	276
	LWI	r9,	r1,	280
	LWI	r10,	r1,	268
	LWI	r11,	r1,	256
	FPRSUB	r5,	r3,	r5
	FPRSUB	r6,	r6,	r7
	FPRSUB	r9,	r10,	r9
	FPRSUB	r3,	r4,	r3
	FPRSUB	r4,	r11,	r10
	FPRSUB	r7,	r7,	r8
	FPMUL	r8,	r7,	r3
	FPMUL	r10,	r6,	r5
	FPMUL	r5,	r4,	r5
	FPMUL	r3,	r9,	r3
	FPRSUB	r8,	r10,	r8
	FPRSUB	r5,	r3,	r5
	FPMUL	r3,	r6,	r9
	FPMUL	r4,	r4,	r7
	FPRSUB	r3,	r4,	r3
	FPMUL	r4,	r8,	r8
	FPMUL	r6,	r5,	r5
	LWI	r7,	r1,	344
	FPMUL	r9,	r7,	r7
	LWI	r10,	r1,	340
	FPMUL	r11,	r10,	r10
	FPADD	r4,	r4,	r6
	FPMUL	r6,	r3,	r3
	FPADD	r4,	r4,	r6
	FPADD	r6,	r9,	r11
	LWI	r9,	r1,	336
	FPMUL	r11,	r9,	r9
	FPADD	r6,	r6,	r11
	FPINVSQRT	r4,	r4
	ORI	r11,	r0,	1065353216
	FPINVSQRT	r6,	r6
	FPDIV	r6,	r11,	r6
	FPDIV	r4,	r11,	r4
	FPDIV	r8,	r8,	r4
	FPDIV	r7,	r7,	r6
	FPDIV	r5,	r5,	r4
	FPDIV	r10,	r10,	r6
	FPMUL	r7,	r7,	r8
	ORI	r11,	r0,	0
	LWI	r12,	r1,	324
	SWI	r12,	r1,	284
	FPDIV	r3,	r3,	r4
	FPDIV	r4,	r9,	r6
	FPMUL	r6,	r10,	r5
	FPADD	r7,	r7,	r11
	LWI	r9,	r1,	284
	FPMUL	r4,	r4,	r3
	FPADD	r6,	r6,	r7
	FPADD	r4,	r4,	r6
	LWI	r6,	r1,	368
	SWI	r6,	r1,	244
	LWI	r6,	r1,	364
	SWI	r6,	r1,	240
	LWI	r6,	r1,	420
	SWI	r6,	r1,	236
	LWI	r6,	r1,	416
	SWI	r6,	r1,	232
	LWI	r6,	r1,	244
	SWI	r6,	r1,	392
	LWI	r6,	r1,	240
	SWI	r6,	r1,	388
	LWI	r6,	r1,	236
	LWI	r7,	r1,	232
	SWI	r7,	r1,	396
	FPUN	r7,	r4,	r11
	FPLE	r4,	r4,	r11
	BITOR	r4,	r7,	r4
	bneid	r4,	$0BB0_102
	ADDI	r10,	r0,	1
	ADDI	r10,	r0,	0
$0BB0_102:
	bneid	r10,	$0BB0_104
	NOP
	FPNEG	r8,	r8
	FPNEG	r5,	r5
	FPNEG	r3,	r3
$0BB0_104:
	LWI	r4,	r1,	344
	FPMUL	r4,	r4,	r9
	LWI	r7,	r1,	340
	FPMUL	r7,	r7,	r9
	LWI	r10,	r1,	336
	FPMUL	r9,	r10,	r9
	LWI	r10,	r1,	348
	FPADD	r4,	r4,	r10
	SWI	r4,	r1,	360
	LWI	r10,	r1,	352
	FPADD	r7,	r7,	r10
	SWI	r7,	r1,	364
	LWI	r10,	r1,	356
	FPADD	r9,	r10,	r9
	SWI	r9,	r1,	368
	LWI	r10,	r1,	448
	FPRSUB	r4,	r4,	r10
	LWI	r10,	r1,	452
	FPRSUB	r7,	r7,	r10
	LWI	r10,	r1,	456
	FPRSUB	r9,	r9,	r10
	FPMUL	r10,	r4,	r4
	FPMUL	r11,	r7,	r7
	FPADD	r10,	r10,	r11
	FPMUL	r11,	r9,	r9
	FPADD	r10,	r10,	r11
	ORI	r11,	r0,	1065353216
	FPINVSQRT	r12,	r10
	FPDIV	r11,	r11,	r12
	FPDIV	r4,	r4,	r11
	SWI	r4,	r1,	336
	FPDIV	r7,	r7,	r11
	SWI	r7,	r1,	340
	FPMUL	r4,	r4,	r8
	ORI	r8,	r0,	0
	FPDIV	r9,	r9,	r11
	SWI	r9,	r1,	344
	FPMUL	r5,	r7,	r5
	FPADD	r4,	r4,	r8
	FPMUL	r3,	r9,	r3
	FPADD	r5,	r5,	r4
	FPADD	r5,	r3,	r5
	SWI	r5,	r1,	404
	ORI	r3,	r0,	1053609165
	FPUN	r4,	r5,	r8
	FPLE	r5,	r5,	r8
	BITOR	r5,	r4,	r5
	bneid	r5,	$0BB0_106
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_106:
	FPMUL	r5,	r6,	r3
	beqid	r7,	$0BB0_108
	SWI	r5,	r1,	384
	brid	$0BB0_214
	LWI	r5,	r1,	384
$0BB0_108:
	ADD	r5,	r0,	r0
	ADDI	r3,	r0,	-1
	SWI	r3,	r1,	328
	FPINVSQRT	r3,	r10
	SWI	r3,	r1,	400
$0BB0_109:
	ADDI	r3,	r0,	3
	ANDI	r3,	r3,	31
	beqid	r3,	$0BB0_111
	ADDI	r5,	r5,	0
$0BB0_110:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_110
	ADDK	r5,	r5,	r5
$0BB0_111:
	LWI	r3,	r1,	372
	ADD	r3,	r5,	r3
	LOAD	r5,	r3,	2
	LOAD	r4,	r3,	1
	LOAD	r6,	r3,	0
	LOAD	r7,	r3,	5
	LOAD	r8,	r3,	4
	LOAD	r9,	r3,	3
	LWI	r10,	r1,	360
	FPRSUB	r6,	r10,	r6
	FPRSUB	r9,	r10,	r9
	LWI	r10,	r1,	336
	FPDIV	r6,	r6,	r10
	FPDIV	r9,	r9,	r10
	FPGT	r10,	r6,	r9
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r10,	$0BB0_113
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_113:
	bneid	r20,	$0BB0_115
	ADD	r10,	r9,	r0
	ADD	r10,	r6,	r0
$0BB0_115:
	ORI	r21,	r0,	-803929351
	bneid	r20,	$0BB0_117
	NOP
	ADD	r6,	r9,	r0
$0BB0_117:
	ORI	r9,	r0,	1343554297
	FPGT	r20,	r10,	r21
	FPLT	r22,	r6,	r9
	bneid	r20,	$0BB0_119
	ADD	r23,	r11,	r0
	ADD	r23,	r12,	r0
$0BB0_119:
	bneid	r22,	$0BB0_121
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_121:
	bneid	r23,	$0BB0_123
	NOP
	ADD	r10,	r21,	r0
$0BB0_123:
	bneid	r20,	$0BB0_125
	NOP
	ADD	r6,	r9,	r0
$0BB0_125:
	FPGT	r9,	r10,	r6
	bneid	r9,	$0BB0_127
	NOP
	ADD	r11,	r12,	r0
$0BB0_127:
	bneid	r11,	$0BB0_199
	NOP
	ORI	r9,	r0,	0
	ADDI	r11,	r0,	1
	FPLT	r9,	r6,	r9
	bneid	r9,	$0BB0_130
	NOP
	ADDI	r11,	r0,	0
$0BB0_130:
	bneid	r11,	$0BB0_199
	NOP
	LWI	r9,	r1,	364
	FPRSUB	r4,	r9,	r4
	FPRSUB	r8,	r9,	r8
	LWI	r9,	r1,	340
	FPDIV	r4,	r4,	r9
	FPDIV	r8,	r8,	r9
	FPGT	r9,	r4,	r8
	ADDI	r11,	r0,	1
	ADDI	r12,	r0,	0
	bneid	r9,	$0BB0_133
	ADD	r20,	r11,	r0
	ADD	r20,	r12,	r0
$0BB0_133:
	bneid	r20,	$0BB0_135
	ADD	r9,	r8,	r0
	ADD	r9,	r4,	r0
$0BB0_135:
	bneid	r20,	$0BB0_137
	NOP
	ADD	r4,	r8,	r0
$0BB0_137:
	FPGT	r8,	r9,	r10
	FPLT	r20,	r4,	r6
	bneid	r8,	$0BB0_139
	ADD	r21,	r11,	r0
	ADD	r21,	r12,	r0
$0BB0_139:
	bneid	r20,	$0BB0_141
	ADD	r8,	r11,	r0
	ADD	r8,	r12,	r0
$0BB0_141:
	bneid	r21,	$0BB0_143
	NOP
	ADD	r9,	r10,	r0
$0BB0_143:
	bneid	r8,	$0BB0_145
	NOP
	ADD	r4,	r6,	r0
$0BB0_145:
	FPGT	r6,	r9,	r4
	bneid	r6,	$0BB0_147
	NOP
	ADD	r11,	r12,	r0
$0BB0_147:
	bneid	r11,	$0BB0_199
	NOP
	ORI	r6,	r0,	0
	ADDI	r8,	r0,	1
	FPLT	r6,	r4,	r6
	bneid	r6,	$0BB0_150
	NOP
	ADDI	r8,	r0,	0
$0BB0_150:
	bneid	r8,	$0BB0_199
	NOP
	LWI	r6,	r1,	368
	FPRSUB	r5,	r6,	r5
	FPRSUB	r6,	r6,	r7
	LWI	r7,	r1,	344
	FPDIV	r5,	r5,	r7
	FPDIV	r6,	r6,	r7
	FPGT	r7,	r5,	r6
	ADDI	r8,	r0,	1
	ADDI	r10,	r0,	0
	bneid	r7,	$0BB0_153
	ADD	r11,	r8,	r0
	ADD	r11,	r10,	r0
$0BB0_153:
	bneid	r11,	$0BB0_155
	ADD	r7,	r6,	r0
	ADD	r7,	r5,	r0
$0BB0_155:
	bneid	r11,	$0BB0_157
	NOP
	ADD	r5,	r6,	r0
$0BB0_157:
	FPGT	r6,	r7,	r9
	FPLT	r11,	r5,	r4
	bneid	r6,	$0BB0_159
	ADD	r12,	r8,	r0
	ADD	r12,	r10,	r0
$0BB0_159:
	bneid	r11,	$0BB0_161
	ADD	r6,	r8,	r0
	ADD	r6,	r10,	r0
$0BB0_161:
	bneid	r6,	$0BB0_163
	NOP
	ADD	r5,	r4,	r0
$0BB0_163:
	bneid	r12,	$0BB0_165
	NOP
	ADD	r7,	r9,	r0
$0BB0_165:
	FPGT	r4,	r7,	r5
	bneid	r4,	$0BB0_167
	NOP
	ADD	r8,	r10,	r0
$0BB0_167:
	bneid	r8,	$0BB0_199
	NOP
	ORI	r4,	r0,	0
	ADDI	r6,	r0,	1
	FPLT	r5,	r5,	r4
	bneid	r5,	$0BB0_170
	NOP
	ADDI	r6,	r0,	0
$0BB0_170:
	bneid	r6,	$0BB0_199
	NOP
	LOAD	r5,	r3,	7
	LOAD	r3,	r3,	6
	SWI	r3,	r1,	332
	ADD	r4,	r0,	r0
	CMP	r3,	r4,	r3
	bltid	r3,	$0BB0_203
	NOP
	ADD	r3,	r0,	r0
	LWI	r4,	r1,	332
	CMP	r3,	r3,	r4
	bleid	r3,	$0BB0_199
	NOP
$0BB0_173:
	LOAD	r3,	r5,	2
	LOAD	r4,	r5,	1
	LOAD	r6,	r5,	0
	LOAD	r7,	r5,	5
	LOAD	r8,	r5,	4
	LOAD	r9,	r5,	3
	LOAD	r10,	r5,	8
	LOAD	r11,	r5,	7
	LOAD	r12,	r5,	6
	FPRSUB	r7,	r10,	r7
	SWI	r7,	r1,	376
	FPRSUB	r8,	r11,	r8
	FPRSUB	r9,	r12,	r9
	LWI	r20,	r1,	340
	FPMUL	r21,	r20,	r7
	LWI	r22,	r1,	344
	FPMUL	r23,	r8,	r22
	FPRSUB	r6,	r12,	r6
	LOAD	r24,	r5,	10
	FPRSUB	r21,	r23,	r21
	FPMUL	r22,	r9,	r22
	LWI	r23,	r1,	336
	FPMUL	r25,	r23,	r7
	FPRSUB	r3,	r10,	r3
	FPRSUB	r4,	r11,	r4
	LWI	r26,	r1,	360
	FPRSUB	r12,	r12,	r26
	FPRSUB	r22,	r25,	r22
	FPMUL	r23,	r8,	r23
	FPMUL	r20,	r9,	r20
	FPMUL	r25,	r21,	r6
	ORI	r26,	r0,	0
	ADD	r27,	r0,	r0
	LOAD	r28,	r5,	9
	LWI	r28,	r1,	364
	FPRSUB	r11,	r11,	r28
	FPMUL	r21,	r21,	r12
	FPRSUB	r20,	r20,	r23
	FPMUL	r23,	r22,	r4
	FPADD	r25,	r25,	r26
	FPMUL	r28,	r4,	r7
	FPMUL	r29,	r8,	r3
	FPMUL	r30,	r9,	r3
	FPMUL	r7,	r6,	r7
	MULI	r24,	r24,	25
	LOAD	r27,	r27,	9
	LWI	r31,	r1,	368
	FPRSUB	r10,	r10,	r31
	FPRSUB	r28,	r29,	r28
	FPRSUB	r7,	r7,	r30
	ADD	r24,	r27,	r24
	FPMUL	r22,	r22,	r11
	FPADD	r21,	r21,	r26
	FPMUL	r27,	r20,	r3
	FPADD	r23,	r23,	r25
	FPMUL	r25,	r8,	r6
	FPMUL	r29,	r9,	r4
	FPRSUB	r25,	r29,	r25
	LOAD	r29,	r24,	6
	FPMUL	r20,	r20,	r10
	FPADD	r21,	r22,	r21
	ORI	r22,	r0,	1065353216
	FPADD	r23,	r27,	r23
	FPMUL	r27,	r28,	r28
	FPMUL	r7,	r7,	r7
	FPDIV	r22,	r22,	r23
	FPADD	r20,	r20,	r21
	LOAD	r21,	r24,	5
	FPADD	r7,	r27,	r7
	FPMUL	r21,	r25,	r25
	FPMUL	r20,	r20,	r22
	FPADD	r7,	r7,	r21
	LOAD	r21,	r24,	4
	ADDI	r21,	r0,	1
	FPLT	r23,	r20,	r26
	FPINVSQRT	r7,	r7
	bneid	r23,	$0BB0_175
	NOP
	ADDI	r21,	r0,	0
$0BB0_175:
	bneid	r21,	$0BB0_198
	NOP
	ORI	r7,	r0,	1065353216
	ADDI	r21,	r0,	1
	FPGT	r7,	r20,	r7
	bneid	r7,	$0BB0_178
	NOP
	ADDI	r21,	r0,	0
$0BB0_178:
	bneid	r21,	$0BB0_198
	NOP
	FPMUL	r7,	r11,	r3
	FPMUL	r21,	r4,	r10
	FPRSUB	r7,	r21,	r7
	FPMUL	r10,	r6,	r10
	FPMUL	r3,	r12,	r3
	FPRSUB	r3,	r3,	r10
	FPMUL	r4,	r4,	r12
	FPMUL	r6,	r6,	r11
	LWI	r10,	r1,	336
	FPMUL	r10,	r7,	r10
	ORI	r11,	r0,	0
	FPRSUB	r4,	r6,	r4
	LWI	r6,	r1,	340
	FPMUL	r6,	r3,	r6
	FPADD	r10,	r10,	r11
	LWI	r12,	r1,	344
	FPMUL	r12,	r4,	r12
	FPADD	r6,	r6,	r10
	FPADD	r6,	r12,	r6
	FPMUL	r6,	r6,	r22
	ADDI	r10,	r0,	1
	FPLT	r11,	r6,	r11
	bneid	r11,	$0BB0_181
	NOP
	ADDI	r10,	r0,	0
$0BB0_181:
	bneid	r10,	$0BB0_198
	NOP
	FPADD	r6,	r6,	r20
	ORI	r10,	r0,	1065353216
	ADDI	r11,	r0,	1
	FPGT	r6,	r6,	r10
	bneid	r6,	$0BB0_184
	NOP
	ADDI	r11,	r0,	0
$0BB0_184:
	bneid	r11,	$0BB0_198
	NOP
	FPMUL	r6,	r7,	r9
	ORI	r7,	r0,	0
	FPMUL	r3,	r3,	r8
	FPADD	r6,	r6,	r7
	LWI	r8,	r1,	376
	FPMUL	r4,	r4,	r8
	FPADD	r3,	r3,	r6
	FPADD	r3,	r4,	r3
	FPMUL	r3,	r3,	r22
	FPUN	r4,	r3,	r7
	FPLE	r6,	r3,	r7
	BITOR	r4,	r4,	r6
	bneid	r4,	$0BB0_187
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_187:
	bneid	r7,	$0BB0_198
	NOP
	ORI	r4,	r0,	981668463
	ADDI	r6,	r0,	1
	FPLT	r4,	r3,	r4
	bneid	r4,	$0BB0_190
	NOP
	ADDI	r6,	r0,	0
$0BB0_190:
	bneid	r6,	$0BB0_198
	NOP
	ORI	r4,	r0,	1343554297
	ADDI	r6,	r0,	1
	FPEQ	r4,	r3,	r4
	bneid	r4,	$0BB0_193
	NOP
	ADDI	r6,	r0,	0
$0BB0_193:
	bneid	r6,	$0BB0_198
	NOP
	LWI	r4,	r1,	324
	SWI	r4,	r1,	288
	LWI	r4,	r1,	288
	FPUN	r6,	r4,	r3
	FPLE	r4,	r4,	r3
	BITOR	r4,	r6,	r4
	bneid	r4,	$0BB0_196
	ADDI	r7,	r0,	1
	ADDI	r7,	r0,	0
$0BB0_196:
	bneid	r7,	$0BB0_198
	NOP
	LOAD	r4,	r5,	2
	LOAD	r4,	r5,	1
	LOAD	r4,	r5,	0
	LOAD	r4,	r5,	5
	LOAD	r4,	r5,	4
	LOAD	r4,	r5,	3
	LOAD	r4,	r5,	8
	LOAD	r4,	r5,	7
	LOAD	r4,	r5,	6
	LOAD	r4,	r5,	10
	ADD	r6,	r0,	r0
	LOAD	r7,	r5,	9
	MULI	r4,	r4,	25
	LOAD	r6,	r6,	9
	ADD	r4,	r6,	r4
	SWI	r3,	r1,	292
	LOAD	r3,	r4,	6
	LWI	r3,	r1,	292
	SWI	r3,	r1,	324
	LOAD	r3,	r4,	5
	LOAD	r3,	r4,	4
$0BB0_198:
	LWI	r3,	r1,	332
	ADDI	r3,	r3,	-1
	SWI	r3,	r1,	332
	ADDI	r5,	r5,	11
	ADD	r4,	r0,	r0
	CMP	r3,	r4,	r3
	bneid	r3,	$0BB0_173
	NOP
$0BB0_199:
	ADD	r5,	r0,	r0
	LWI	r3,	r1,	328
	CMP	r5,	r5,	r3
	bltid	r5,	$0BB0_206
	NOP
	ADDI	r5,	r0,	2
	ANDI	r5,	r5,	31
	LWI	r3,	r1,	328
	beqid	r5,	$0BB0_202
	ADDI	r3,	r3,	0
$0BB0_201:
	ADDI	r5,	r5,	-1
	bneid	r5,	$0BB0_201
	ADDK	r3,	r3,	r3
$0BB0_202:
	ADDI	r5,	r1,	48
	LW	r5,	r5,	r3
	LWI	r3,	r1,	328
	ADDI	r3,	r3,	-1
	brid	$0BB0_109
	SWI	r3,	r1,	328
$0BB0_203:
	ADDI	r3,	r0,	2
	ANDI	r3,	r3,	31
	LWI	r4,	r1,	328
	beqid	r3,	$0BB0_205
	ADDI	r4,	r4,	0
$0BB0_204:
	ADDI	r3,	r3,	-1
	bneid	r3,	$0BB0_204
	ADDK	r4,	r4,	r4
$0BB0_205:
	ADDI	r3,	r1,	48
	LWI	r6,	r1,	328
	ADDI	r6,	r6,	1
	SWI	r6,	r1,	328
	ADDI	r6,	r5,	1
	ADD	r3,	r3,	r4
	brid	$0BB0_109
	SWI	r6,	r3,	4
$0BB0_206:
	LWI	r5,	r1,	324
	SWI	r5,	r1,	296
	ORI	r5,	r0,	1065353216
	LWI	r3,	r1,	296
	LWI	r4,	r1,	400
	FPDIV	r5,	r5,	r4
	FPUN	r4,	r3,	r5
	FPGE	r5,	r3,	r5
	BITOR	r5,	r4,	r5
	bneid	r5,	$0BB0_208
	ADDI	r6,	r0,	1
	ADDI	r6,	r0,	0
$0BB0_208:
	bneid	r6,	$0BB0_213
	NOP
	ORI	r5,	r0,	1008981770
	ADDI	r4,	r0,	1
	FPGT	r5,	r3,	r5
	bneid	r5,	$0BB0_211
	NOP
	ADDI	r4,	r0,	0
$0BB0_211:
	beqid	r4,	$0BB0_213
	NOP
	brid	$0BB0_214
	LWI	r5,	r1,	384
$0BB0_213:
	LWI	r3,	r1,	404
	LWI	r5,	r1,	396
	FPMUL	r5,	r5,	r3
	LWI	r3,	r1,	384
	FPADD	r3,	r5,	r3
	SWI	r3,	r1,	384
	SWI	r5,	r1,	300
	SWI	r3,	r1,	304
	ADD	r5,	r3,	r0
$0BB0_214:
	LWI	r4,	r1,	432
	LWI	r3,	r1,	428
	ADD	r3,	r3,	r4
	MULI	r3,	r3,	3
	LWI	r4,	r1,	380
	SWI	r4,	r1,	316
	LWI	r6,	r1,	384
	LWI	r4,	r1,	392
	FPMUL	r4,	r4,	r6
	LWI	r7,	r1,	444
	ADD	r3,	r3,	r7
	LWI	r7,	r1,	388
	FPMUL	r6,	r7,	r6
	STORE	r3,	r4,	0
	LWI	r7,	r1,	316
	FPMUL	r5,	r7,	r5
	STORE	r3,	r6,	1
	STORE	r3,	r5,	2
	SWI	r5,	r1,	320
	SWI	r6,	r1,	312
	SWI	r4,	r1,	308
	ATOMIC_INC	r5,	0
	LWI	r3,	r1,	504
	CMP	r3,	r5,	r3
	bgtid	r3,	$0BB0_2
	NOP
$0BB0_215:
	ADD	r3,	r0,	r0
	LWI	r31,	r1,	0
	LWI	r30,	r1,	4
	LWI	r29,	r1,	8
	LWI	r28,	r1,	12
	LWI	r27,	r1,	16
	LWI	r26,	r1,	20
	LWI	r25,	r1,	24
	LWI	r24,	r1,	28
	LWI	r23,	r1,	32
	LWI	r22,	r1,	36
	LWI	r21,	r1,	40
	LWI	r20,	r1,	44
	rtsd	r15,	8
	ADDI	r1,	r1,	512
#	.end	main
$0tmp0:
#	.size	main, ($tmp0)-main


