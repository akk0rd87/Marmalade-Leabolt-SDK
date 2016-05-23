	.arch armv6
	.eabi_attribute 27, 3
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"AppTrackerAndroid_register.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.rodata
	.align	2
.LC0:
	.ascii	"APPTRACKERANDROID_VERBOSE\000"
	.align	2
.LC1:
	.ascii	"calling AppTrackerAndroid func on main thread: star"
	.ascii	"tSession\000"
	.section	.text._ZL17startSession_wrapPKc,"ax",%progbits
	.align	2
	.type	_ZL17startSession_wrapPKc, %function
_ZL17startSession_wrapPKc:
.LFB32:
	.file 1 "C:\\Marmalade\\7.7\\extensions\\AppTrackerAndroid\\source\\generic\\AppTrackerAndroid_register.cpp"
	.loc 1 28 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	ldr	r4, .L4
.LPIC3:
	add	r4, pc, r4
	.loc 1 29 0
	ldr	r3, .L4+4
.LPIC0:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L2
	.loc 1 29 0 is_stmt 0 discriminator 1
	ldr	r3, .L4+8
.LPIC1:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L4+12
.LPIC2:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L2:
	.loc 1 30 0 is_stmt 1
	ldr	r3, .L4+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #1
	ldr	r2, [sp, #4]
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 31 0
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.L5:
	.align	2
.L4:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+8)
	.word	.LC0-(.LPIC0+8)
	.word	.LC0-(.LPIC1+8)
	.word	.LC1-(.LPIC2+8)
	.word	startSession(GOT)
	.cfi_endproc
.LFE32:
	.size	_ZL17startSession_wrapPKc, .-_ZL17startSession_wrapPKc
	.section	.rodata
	.align	2
.LC2:
	.ascii	"calling AppTrackerAndroid func on main thread: clos"
	.ascii	"eSession\000"
	.section	.text._ZL17closeSession_wrapv,"ax",%progbits
	.align	2
	.type	_ZL17closeSession_wrapv, %function
_ZL17closeSession_wrapv:
.LFB33:
	.loc 1 34 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	ldr	r4, .L9
.LPIC7:
	add	r4, pc, r4
	.loc 1 35 0
	ldr	r3, .L9+4
.LPIC4:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L7
	.loc 1 35 0 is_stmt 0 discriminator 1
	ldr	r3, .L9+8
.LPIC5:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L9+12
.LPIC6:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L7:
	.loc 1 36 0 is_stmt 1
	ldr	r3, .L9+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 37 0
	mov	r0, r3
	ldmfd	sp!, {r4, pc}
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC7+8)
	.word	.LC0-(.LPIC4+8)
	.word	.LC0-(.LPIC5+8)
	.word	.LC2-(.LPIC6+8)
	.word	closeSession(GOT)
	.cfi_endproc
.LFE33:
	.size	_ZL17closeSession_wrapv, .-_ZL17closeSession_wrapv
	.section	.rodata
	.align	2
.LC3:
	.ascii	"calling AppTrackerAndroid func on main thread: paus"
	.ascii	"e\000"
	.section	.text._ZL10pause_wrapv,"ax",%progbits
	.align	2
	.type	_ZL10pause_wrapv, %function
_ZL10pause_wrapv:
.LFB34:
	.loc 1 40 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	ldr	r4, .L14
.LPIC11:
	add	r4, pc, r4
	.loc 1 41 0
	ldr	r3, .L14+4
.LPIC8:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L12
	.loc 1 41 0 is_stmt 0 discriminator 1
	ldr	r3, .L14+8
.LPIC9:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L14+12
.LPIC10:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L12:
	.loc 1 42 0 is_stmt 1
	ldr	r3, .L14+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 43 0
	mov	r0, r3
	ldmfd	sp!, {r4, pc}
.L15:
	.align	2
.L14:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+8)
	.word	.LC0-(.LPIC8+8)
	.word	.LC0-(.LPIC9+8)
	.word	.LC3-(.LPIC10+8)
	.word	pause(GOT)
	.cfi_endproc
.LFE34:
	.size	_ZL10pause_wrapv, .-_ZL10pause_wrapv
	.section	.rodata
	.align	2
.LC4:
	.ascii	"calling AppTrackerAndroid func on main thread: resu"
	.ascii	"me\000"
	.section	.text._ZL11resume_wrapv,"ax",%progbits
	.align	2
	.type	_ZL11resume_wrapv, %function
_ZL11resume_wrapv:
.LFB35:
	.loc 1 46 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	ldr	r4, .L19
.LPIC15:
	add	r4, pc, r4
	.loc 1 47 0
	ldr	r3, .L19+4
.LPIC12:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L17
	.loc 1 47 0 is_stmt 0 discriminator 1
	ldr	r3, .L19+8
.LPIC13:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L19+12
.LPIC14:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L17:
	.loc 1 48 0 is_stmt 1
	ldr	r3, .L19+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 49 0
	mov	r0, r3
	ldmfd	sp!, {r4, pc}
.L20:
	.align	2
.L19:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC15+8)
	.word	.LC0-(.LPIC12+8)
	.word	.LC0-(.LPIC13+8)
	.word	.LC4-(.LPIC14+8)
	.word	resume(GOT)
	.cfi_endproc
.LFE35:
	.size	_ZL11resume_wrapv, .-_ZL11resume_wrapv
	.section	.rodata
	.align	2
.LC5:
	.ascii	"calling AppTrackerAndroid func on main thread: even"
	.ascii	"t\000"
	.section	.text._ZL10event_wrapPKc,"ax",%progbits
	.align	2
	.type	_ZL10event_wrapPKc, %function
_ZL10event_wrapPKc:
.LFB36:
	.loc 1 52 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	ldr	r4, .L24
.LPIC19:
	add	r4, pc, r4
	.loc 1 53 0
	ldr	r3, .L24+4
.LPIC16:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L22
	.loc 1 53 0 is_stmt 0 discriminator 1
	ldr	r3, .L24+8
.LPIC17:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L24+12
.LPIC18:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L22:
	.loc 1 54 0 is_stmt 1
	ldr	r3, .L24+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #1
	ldr	r2, [sp, #4]
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 55 0
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.L25:
	.align	2
.L24:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC19+8)
	.word	.LC0-(.LPIC16+8)
	.word	.LC0-(.LPIC17+8)
	.word	.LC5-(.LPIC18+8)
	.word	event(GOT)
	.cfi_endproc
.LFE36:
	.size	_ZL10event_wrapPKc, .-_ZL10event_wrapPKc
	.section	.rodata
	.align	2
.LC6:
	.ascii	"calling AppTrackerAndroid func on main thread: even"
	.ascii	"tWithValue\000"
	.section	.text._ZL19eventWithValue_wrapPKci,"ax",%progbits
	.align	2
	.type	_ZL19eventWithValue_wrapPKci, %function
_ZL19eventWithValue_wrapPKci:
.LFB37:
	.loc 1 58 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r4, .L29
.LPIC23:
	add	r4, pc, r4
	.loc 1 59 0
	ldr	r3, .L29+4
.LPIC20:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L27
	.loc 1 59 0 is_stmt 0 discriminator 1
	ldr	r3, .L29+8
.LPIC21:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L29+12
.LPIC22:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L27:
	.loc 1 60 0 is_stmt 1
	ldr	r3, .L29+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #2
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 61 0
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.L30:
	.align	2
.L29:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC23+8)
	.word	.LC0-(.LPIC20+8)
	.word	.LC0-(.LPIC21+8)
	.word	.LC6-(.LPIC22+8)
	.word	eventWithValue(GOT)
	.cfi_endproc
.LFE37:
	.size	_ZL19eventWithValue_wrapPKci, .-_ZL19eventWithValue_wrapPKci
	.section	.rodata
	.align	2
.LC7:
	.ascii	"calling AppTrackerAndroid func on main thread: load"
	.ascii	"Module\000"
	.section	.text._ZL15loadModule_wrapPKcS0_,"ax",%progbits
	.align	2
	.type	_ZL15loadModule_wrapPKcS0_, %function
_ZL15loadModule_wrapPKcS0_:
.LFB38:
	.loc 1 64 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r4, .L34
.LPIC27:
	add	r4, pc, r4
	.loc 1 65 0
	ldr	r3, .L34+4
.LPIC24:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L32
	.loc 1 65 0 is_stmt 0 discriminator 1
	ldr	r3, .L34+8
.LPIC25:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L34+12
.LPIC26:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L32:
	.loc 1 66 0 is_stmt 1
	ldr	r3, .L34+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #2
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 67 0
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.L35:
	.align	2
.L34:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC27+8)
	.word	.LC0-(.LPIC24+8)
	.word	.LC0-(.LPIC25+8)
	.word	.LC7-(.LPIC26+8)
	.word	loadModule(GOT)
	.cfi_endproc
.LFE38:
	.size	_ZL15loadModule_wrapPKcS0_, .-_ZL15loadModule_wrapPKcS0_
	.section	.rodata
	.align	2
.LC8:
	.ascii	"calling AppTrackerAndroid func on main thread: load"
	.ascii	"ModuleToCache\000"
	.section	.text._ZL22loadModuleToCache_wrapPKcS0_,"ax",%progbits
	.align	2
	.type	_ZL22loadModuleToCache_wrapPKcS0_, %function
_ZL22loadModuleToCache_wrapPKcS0_:
.LFB39:
	.loc 1 70 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp]
	ldr	r4, .L39
.LPIC31:
	add	r4, pc, r4
	.loc 1 71 0
	ldr	r3, .L39+4
.LPIC28:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L37
	.loc 1 71 0 is_stmt 0 discriminator 1
	ldr	r3, .L39+8
.LPIC29:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L39+12
.LPIC30:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L37:
	.loc 1 72 0 is_stmt 1
	ldr	r3, .L39+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #2
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 73 0
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.L40:
	.align	2
.L39:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC31+8)
	.word	.LC0-(.LPIC28+8)
	.word	.LC0-(.LPIC29+8)
	.word	.LC8-(.LPIC30+8)
	.word	loadModuleToCache(GOT)
	.cfi_endproc
.LFE39:
	.size	_ZL22loadModuleToCache_wrapPKcS0_, .-_ZL22loadModuleToCache_wrapPKcS0_
	.section	.rodata
	.align	2
.LC9:
	.ascii	"calling AppTrackerAndroid func on main thread: dest"
	.ascii	"royModule\000"
	.section	.text._ZL18destroyModule_wrapv,"ax",%progbits
	.align	2
	.type	_ZL18destroyModule_wrapv, %function
_ZL18destroyModule_wrapv:
.LFB40:
	.loc 1 76 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	ldr	r4, .L44
.LPIC35:
	add	r4, pc, r4
	.loc 1 77 0
	ldr	r3, .L44+4
.LPIC32:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L42
	.loc 1 77 0 is_stmt 0 discriminator 1
	ldr	r3, .L44+8
.LPIC33:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L44+12
.LPIC34:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L42:
	.loc 1 78 0 is_stmt 1
	ldr	r3, .L44+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #0
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 79 0
	mov	r0, r3
	ldmfd	sp!, {r4, pc}
.L45:
	.align	2
.L44:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC35+8)
	.word	.LC0-(.LPIC32+8)
	.word	.LC0-(.LPIC33+8)
	.word	.LC9-(.LPIC34+8)
	.word	destroyModule(GOT)
	.cfi_endproc
.LFE40:
	.size	_ZL18destroyModule_wrapv, .-_ZL18destroyModule_wrapv
	.section	.rodata
	.align	2
.LC10:
	.ascii	"calling AppTrackerAndroid func on main thread: fixA"
	.ascii	"dOrientation\000"
	.section	.text._ZL21fixAdOrientation_wrapi,"ax",%progbits
	.align	2
	.type	_ZL21fixAdOrientation_wrapi, %function
_ZL21fixAdOrientation_wrapi:
.LFB41:
	.loc 1 82 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 4, -8
	.cfi_offset 14, -4
	sub	sp, sp, #8
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	ldr	r4, .L49
.LPIC39:
	add	r4, pc, r4
	.loc 1 83 0
	ldr	r3, .L49+4
.LPIC36:
	add	r3, pc, r3
	mov	r0, r3
	mov	r1, #1
	bl	IwDebugTraceIsChannelOn(PLT)
	mov	r3, r0
	cmp	r3, #0
	moveq	r3, #0
	movne	r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L47
	.loc 1 83 0 is_stmt 0 discriminator 1
	ldr	r3, .L49+8
.LPIC37:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceSetTraceChannel(PLT)
	ldr	r3, .L49+12
.LPIC38:
	add	r3, pc, r3
	mov	r0, r3
	bl	IwDebugTraceLinePrintf(PLT)
.L47:
	.loc 1 84 0 is_stmt 1
	ldr	r3, .L49+16
	ldr	r3, [r4, r3]
	mov	r0, r3
	mov	r1, #1
	ldr	r2, [sp, #4]
	bl	s3eEdkThreadRunOnOS(PLT)
	mov	r3, r0
	.loc 1 85 0
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	ldmfd	sp!, {r4, pc}
.L50:
	.align	2
.L49:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC39+8)
	.word	.LC0-(.LPIC36+8)
	.word	.LC0-(.LPIC37+8)
	.word	.LC10-(.LPIC38+8)
	.word	fixAdOrientation(GOT)
	.cfi_endproc
.LFE41:
	.size	_ZL21fixAdOrientation_wrapi, .-_ZL21fixAdOrientation_wrapi
	.section	.text.AppTrackerAndroidRegister,"ax",%progbits
	.align	2
	.global	AppTrackerAndroidRegister
	.hidden	AppTrackerAndroidRegister
	.type	AppTrackerAndroidRegister, %function
AppTrackerAndroidRegister:
.LFB42:
	.loc 1 101 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #28
	.cfi_def_cfa_offset 32
	str	r0, [sp, #20]
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	.loc 1 102 0
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #12]
	str	r2, [sp]
	mov	r2, #0
	str	r2, [sp, #4]
	ldr	r0, .L53
	mov	r1, #6
	mov	r2, r3
	ldr	r3, [sp, #16]
	bl	s3eEdkCallbacksRegister(PLT)
	mov	r3, r0
	.loc 1 103 0
	mov	r0, r3
	add	sp, sp, #28
	@ sp needed
	ldr	pc, [sp], #4
.L54:
	.align	2
.L53:
	.word	1079372691
	.cfi_endproc
.LFE42:
	.size	AppTrackerAndroidRegister, .-AppTrackerAndroidRegister
	.section	.text.AppTrackerAndroidUnRegister,"ax",%progbits
	.align	2
	.global	AppTrackerAndroidUnRegister
	.hidden	AppTrackerAndroidUnRegister
	.type	AppTrackerAndroidUnRegister, %function
AppTrackerAndroidUnRegister:
.LFB43:
	.loc 1 106 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #20
	.cfi_def_cfa_offset 24
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	.loc 1 107 0
	ldr	r3, [sp, #12]
	mov	r2, #0
	str	r2, [sp]
	ldr	r0, .L57
	mov	r1, #6
	mov	r2, r3
	ldr	r3, [sp, #8]
	bl	s3eEdkCallbacksUnRegister(PLT)
	mov	r3, r0
	.loc 1 108 0
	mov	r0, r3
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
.L58:
	.align	2
.L57:
	.word	1079372691
	.cfi_endproc
.LFE43:
	.size	AppTrackerAndroidUnRegister, .-AppTrackerAndroidUnRegister
	.section	.rodata
	.align	2
.LC11:
	.ascii	"AppTrackerAndroid\000"
	.section	.text._Z28AppTrackerAndroidRegisterExtv,"ax",%progbits
	.align	2
	.global	_Z28AppTrackerAndroidRegisterExtv
	.hidden	_Z28AppTrackerAndroidRegisterExtv
	.type	_Z28AppTrackerAndroidRegisterExtv, %function
_Z28AppTrackerAndroidRegisterExtv:
.LFB44:
	.loc 1 111 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #116
	.cfi_def_cfa_offset 120
	ldr	r2, .L60
.LPIC52:
	add	r2, pc, r2
.LBB2:
	.loc 1 114 0
	ldr	r3, .L60+4
.LPIC40:
	add	r3, pc, r3
	str	r3, [sp, #16]
	.loc 1 115 0
	ldr	r3, .L60+8
.LPIC41:
	add	r3, pc, r3
	str	r3, [sp, #20]
	.loc 1 116 0
	ldr	r3, .L60+12
.LPIC42:
	add	r3, pc, r3
	str	r3, [sp, #24]
	.loc 1 117 0
	ldr	r3, .L60+16
.LPIC43:
	add	r3, pc, r3
	str	r3, [sp, #28]
	.loc 1 118 0
	ldr	r3, .L60+20
.LPIC44:
	add	r3, pc, r3
	str	r3, [sp, #32]
	.loc 1 119 0
	ldr	r3, .L60+24
.LPIC45:
	add	r3, pc, r3
	str	r3, [sp, #36]
	.loc 1 120 0
	ldr	r3, .L60+28
.LPIC46:
	add	r3, pc, r3
	str	r3, [sp, #40]
	.loc 1 121 0
	ldr	r3, .L60+32
.LPIC47:
	add	r3, pc, r3
	str	r3, [sp, #44]
	.loc 1 122 0
	ldr	r3, .L60+36
.LPIC48:
	add	r3, pc, r3
	str	r3, [sp, #48]
	.loc 1 123 0
	ldr	r3, .L60+40
.LPIC49:
	add	r3, pc, r3
	str	r3, [sp, #52]
	.loc 1 124 0
	ldr	r3, .L60+44
.LPIC50:
	add	r3, pc, r3
	str	r3, [sp, #56]
	.loc 1 125 0
	ldr	r3, .L60+48
.LPIC51:
	add	r3, pc, r3
	str	r3, [sp, #60]
	.loc 1 130 0
	add	r3, sp, #64
	mov	r1, #0
	str	r1, [r3]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3]
	add	r3, r3, #4
	mov	r1, #0
	str	r1, [r3]
	add	r3, r3, #4
	.loc 1 135 0
	add	r1, sp, #16
	add	r3, sp, #64
	ldr	r0, .L60+52
	ldr	r0, [r2, r0]
	str	r0, [sp]
	ldr	r0, .L60+56
	ldr	r2, [r2, r0]
	str	r2, [sp, #4]
	mov	r2, #0
	str	r2, [sp, #8]
	ldr	r2, .L60+60
.LPIC53:
	add	r2, pc, r2
	mov	r0, r2
	mov	r2, #48
	bl	s3eEdkRegister(PLT)
.LBE2:
	.loc 1 136 0
	add	sp, sp, #116
	@ sp needed
	ldr	pc, [sp], #4
.L61:
	.align	2
.L60:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC52+8)
	.word	AppTrackerAndroidRegister-(.LPIC40+8)
	.word	AppTrackerAndroidUnRegister-(.LPIC41+8)
	.word	_ZL17startSession_wrapPKc-(.LPIC42+8)
	.word	_ZL17closeSession_wrapv-(.LPIC43+8)
	.word	_ZL10pause_wrapv-(.LPIC44+8)
	.word	_ZL11resume_wrapv-(.LPIC45+8)
	.word	_ZL10event_wrapPKc-(.LPIC46+8)
	.word	_ZL19eventWithValue_wrapPKci-(.LPIC47+8)
	.word	_ZL15loadModule_wrapPKcS0_-(.LPIC48+8)
	.word	_ZL22loadModuleToCache_wrapPKcS0_-(.LPIC49+8)
	.word	_ZL18destroyModule_wrapv-(.LPIC50+8)
	.word	_ZL21fixAdOrientation_wrapi-(.LPIC51+8)
	.word	_Z21AppTrackerAndroidInitv(GOT)
	.word	_Z26AppTrackerAndroidTerminatev(GOT)
	.word	.LC11-(.LPIC53+8)
	.cfi_endproc
.LFE44:
	.size	_Z28AppTrackerAndroidRegisterExtv, .-_Z28AppTrackerAndroidRegisterExtv
	.section	.text.RegisterExt,"ax",%progbits
	.align	2
	.global	RegisterExt
	.type	RegisterExt, %function
RegisterExt:
.LFB45:
	.loc 1 155 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 156 0
	bl	_Z28AppTrackerAndroidRegisterExtv(PLT)
	.loc 1 157 0
	ldmfd	sp!, {r3, pc}
	.cfi_endproc
.LFE45:
	.size	RegisterExt, .-RegisterExt
	.text
.Letext0:
	.file 2 "../../../s3e/h/s3eTypes.h"
	.file 3 "../../../s3e/edk/h/s3eEdk.h"
	.file 4 "../h/AppTrackerAndroid.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x38b
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF49
	.byte	0x4
	.4byte	.LASF50
	.4byte	.LASF51
	.4byte	.Ldebug_ranges0+0
	.4byte	0
	.4byte	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.4byte	.LASF0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF1
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.4byte	.LASF2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.4byte	.LASF3
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF4
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii	"int\000"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.4byte	.LASF5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.4byte	.LASF6
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.4byte	.LASF8
	.uleb128 0x4
	.4byte	.LASF9
	.byte	0x2
	.byte	0x6b
	.4byte	0x48
	.uleb128 0x4
	.4byte	.LASF10
	.byte	0x2
	.byte	0xad
	.4byte	0x48
	.uleb128 0x5
	.4byte	.LASF13
	.byte	0x4
	.byte	0x2
	.2byte	0x10a
	.4byte	0x9b
	.uleb128 0x6
	.4byte	.LASF11
	.sleb128 0
	.uleb128 0x6
	.4byte	.LASF12
	.sleb128 1
	.byte	0
	.uleb128 0x7
	.4byte	.LASF13
	.byte	0x2
	.2byte	0x10e
	.4byte	0x81
	.uleb128 0x7
	.4byte	.LASF14
	.byte	0x2
	.2byte	0x128
	.4byte	0xb3
	.uleb128 0x8
	.byte	0x4
	.4byte	0xb9
	.uleb128 0x9
	.4byte	0x76
	.4byte	0xcd
	.uleb128 0xa
	.4byte	0xcd
	.uleb128 0xa
	.4byte	0xcd
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.4byte	.LASF15
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF16
	.uleb128 0x8
	.byte	0x4
	.4byte	0xe3
	.uleb128 0xc
	.4byte	0xd6
	.uleb128 0x7
	.4byte	.LASF17
	.byte	0x3
	.2byte	0x2b2
	.4byte	0xf4
	.uleb128 0x8
	.byte	0x4
	.4byte	0xfa
	.uleb128 0xd
	.4byte	0xcd
	.uleb128 0xe
	.4byte	.LASF18
	.byte	0x4
	.byte	0x4
	.byte	0x15
	.4byte	0x136
	.uleb128 0x6
	.4byte	.LASF19
	.sleb128 0
	.uleb128 0x6
	.4byte	.LASF20
	.sleb128 1
	.uleb128 0x6
	.4byte	.LASF21
	.sleb128 2
	.uleb128 0x6
	.4byte	.LASF22
	.sleb128 3
	.uleb128 0x6
	.4byte	.LASF23
	.sleb128 4
	.uleb128 0x6
	.4byte	.LASF24
	.sleb128 5
	.uleb128 0x6
	.4byte	.LASF25
	.sleb128 6
	.byte	0
	.uleb128 0xf
	.4byte	.LASF29
	.byte	0x1
	.byte	0x1b
	.4byte	0x9b
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x15e
	.uleb128 0x10
	.4byte	.LASF31
	.byte	0x1
	.byte	0x1b
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x11
	.4byte	.LASF26
	.byte	0x1
	.byte	0x21
	.4byte	0x9b
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF27
	.byte	0x1
	.byte	0x27
	.4byte	0x9b
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x11
	.4byte	.LASF28
	.byte	0x1
	.byte	0x2d
	.4byte	0x9b
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF30
	.byte	0x1
	.byte	0x33
	.4byte	0x9b
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1c5
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x33
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xf
	.4byte	.LASF33
	.byte	0x1
	.byte	0x39
	.4byte	0x9b
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1fb
	.uleb128 0x10
	.4byte	.LASF32
	.byte	0x1
	.byte	0x39
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.4byte	.LASF34
	.byte	0x1
	.byte	0x39
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xf
	.4byte	.LASF35
	.byte	0x1
	.byte	0x3f
	.4byte	0x9b
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x231
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x3f
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0x3f
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xf
	.4byte	.LASF38
	.byte	0x1
	.byte	0x45
	.4byte	0x9b
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x267
	.uleb128 0x10
	.4byte	.LASF36
	.byte	0x1
	.byte	0x45
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x10
	.4byte	.LASF37
	.byte	0x1
	.byte	0x45
	.4byte	0xdd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x11
	.4byte	.LASF39
	.byte	0x1
	.byte	0x4b
	.4byte	0x9b
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xf
	.4byte	.LASF40
	.byte	0x1
	.byte	0x51
	.4byte	0x9b
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2a4
	.uleb128 0x10
	.4byte	.LASF41
	.byte	0x1
	.byte	0x51
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x12
	.4byte	.LASF44
	.byte	0x1
	.byte	0x64
	.4byte	0x9b
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x2e7
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0x64
	.4byte	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.ascii	"fn\000"
	.byte	0x1
	.byte	0x64
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.uleb128 0x10
	.4byte	.LASF43
	.byte	0x1
	.byte	0x64
	.4byte	0xcd
	.uleb128 0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.uleb128 0x12
	.4byte	.LASF45
	.byte	0x1
	.byte	0x69
	.4byte	0x9b
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x31c
	.uleb128 0x10
	.4byte	.LASF42
	.byte	0x1
	.byte	0x69
	.4byte	0xff
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x13
	.ascii	"fn\000"
	.byte	0x1
	.byte	0x69
	.4byte	0xa7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x14
	.4byte	.LASF46
	.byte	0x1
	.byte	0x6e
	.4byte	.LASF52
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x35d
	.uleb128 0x15
	.4byte	.LBB2
	.4byte	.LBE2-.LBB2
	.uleb128 0x16
	.4byte	.LASF47
	.byte	0x1
	.byte	0x71
	.4byte	0x35d
	.uleb128 0x3
	.byte	0x91
	.sleb128 -104
	.uleb128 0x16
	.4byte	.LASF48
	.byte	0x1
	.byte	0x82
	.4byte	0x36d
	.uleb128 0x2
	.byte	0x91
	.sleb128 -56
	.byte	0
	.byte	0
	.uleb128 0x17
	.4byte	0xcd
	.4byte	0x36d
	.uleb128 0x18
	.4byte	0xcf
	.byte	0xb
	.byte	0
	.uleb128 0x17
	.4byte	0x48
	.4byte	0x37d
	.uleb128 0x18
	.4byte	0xcf
	.byte	0xb
	.byte	0
	.uleb128 0x19
	.4byte	.LASF53
	.byte	0x1
	.byte	0x9a
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",%progbits
.Ldebug_abbrev0:
	.uleb128 0x1
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
	.uleb128 0x2
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
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x84
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB32
	.4byte	.LFE32-.LFB32
	.4byte	.LFB33
	.4byte	.LFE33-.LFB33
	.4byte	.LFB34
	.4byte	.LFE34-.LFB34
	.4byte	.LFB35
	.4byte	.LFE35-.LFB35
	.4byte	.LFB36
	.4byte	.LFE36-.LFB36
	.4byte	.LFB37
	.4byte	.LFE37-.LFB37
	.4byte	.LFB38
	.4byte	.LFE38-.LFB38
	.4byte	.LFB39
	.4byte	.LFE39-.LFB39
	.4byte	.LFB40
	.4byte	.LFE40-.LFB40
	.4byte	.LFB41
	.4byte	.LFE41-.LFB41
	.4byte	.LFB42
	.4byte	.LFE42-.LFB42
	.4byte	.LFB43
	.4byte	.LFE43-.LFB43
	.4byte	.LFB44
	.4byte	.LFE44-.LFB44
	.4byte	.LFB45
	.4byte	.LFE45-.LFB45
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB32
	.4byte	.LFE32
	.4byte	.LFB33
	.4byte	.LFE33
	.4byte	.LFB34
	.4byte	.LFE34
	.4byte	.LFB35
	.4byte	.LFE35
	.4byte	.LFB36
	.4byte	.LFE36
	.4byte	.LFB37
	.4byte	.LFE37
	.4byte	.LFB38
	.4byte	.LFE38
	.4byte	.LFB39
	.4byte	.LFE39
	.4byte	.LFB40
	.4byte	.LFE40
	.4byte	.LFB41
	.4byte	.LFE41
	.4byte	.LFB42
	.4byte	.LFE42
	.4byte	.LFB43
	.4byte	.LFE43
	.4byte	.LFB44
	.4byte	.LFE44
	.4byte	.LFB45
	.4byte	.LFE45
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF40:
	.ascii	"fixAdOrientation_wrap\000"
.LASF24:
	.ascii	"APPTRACKERANDROID_MEDIAFINISHED\000"
.LASF32:
	.ascii	"event_name\000"
.LASF22:
	.ascii	"APPTRACKERANDROID_MODULECACHED\000"
.LASF20:
	.ascii	"APPTRACKERANDROID_MODULEFAILED\000"
.LASF28:
	.ascii	"resume_wrap\000"
.LASF46:
	.ascii	"AppTrackerAndroidRegisterExt\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF3:
	.ascii	"short int\000"
.LASF43:
	.ascii	"pData\000"
.LASF18:
	.ascii	"AppTrackerAndroidCallback\000"
.LASF41:
	.ascii	"landscape_portrait_or_auto\000"
.LASF31:
	.ascii	"api_key\000"
.LASF11:
	.ascii	"S3E_RESULT_SUCCESS\000"
.LASF38:
	.ascii	"loadModuleToCache_wrap\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF37:
	.ascii	"userData\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF30:
	.ascii	"event_wrap\000"
.LASF10:
	.ascii	"int32\000"
.LASF47:
	.ascii	"funcPtrs\000"
.LASF25:
	.ascii	"APPTRACKERANDROID_CALLBACK_MAX\000"
.LASF35:
	.ascii	"loadModule_wrap\000"
.LASF27:
	.ascii	"pause_wrap\000"
.LASF21:
	.ascii	"APPTRACKERANDROID_MODULECLOSED\000"
.LASF9:
	.ascii	"intptr_t\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF48:
	.ascii	"flags\000"
.LASF34:
	.ascii	"event_value\000"
.LASF5:
	.ascii	"long long unsigned int\000"
.LASF29:
	.ascii	"startSession_wrap\000"
.LASF26:
	.ascii	"closeSession_wrap\000"
.LASF42:
	.ascii	"cbid\000"
.LASF12:
	.ascii	"S3E_RESULT_ERROR\000"
.LASF33:
	.ascii	"eventWithValue_wrap\000"
.LASF23:
	.ascii	"APPTRACKERANDROID_MODULECLICKED\000"
.LASF53:
	.ascii	"RegisterExt\000"
.LASF52:
	.ascii	"_Z28AppTrackerAndroidRegisterExtv\000"
.LASF15:
	.ascii	"sizetype\000"
.LASF6:
	.ascii	"long long int\000"
.LASF16:
	.ascii	"char\000"
.LASF49:
	.ascii	"GNU C++ 4.8 -fpreprocessed -mbionic -mstructure-siz"
	.ascii	"e-boundary=8 -march=armv6 -mfpu=vfp -mfloat-abi=sof"
	.ascii	"tfp -mthumb-interwork -mtls-dialect=gnu -g -O0 -fno"
	.ascii	"-exceptions -fsigned-char -fno-strict-aliasing -fvi"
	.ascii	"sibility=hidden -fno-short-enums -fomit-frame-point"
	.ascii	"er -fmessage-length=0 -ffunction-sections -fPIC -fr"
	.ascii	"tti\000"
.LASF14:
	.ascii	"s3eCallback\000"
.LASF39:
	.ascii	"destroyModule_wrap\000"
.LASF44:
	.ascii	"AppTrackerAndroidRegister\000"
.LASF36:
	.ascii	"location_code\000"
.LASF50:
	.ascii	"C:\\Marmalade\\7.7\\extensions\\AppTrackerAndroid\\"
	.ascii	"source\\generic\\AppTrackerAndroid_register.cpp\000"
.LASF8:
	.ascii	"long int\000"
.LASF1:
	.ascii	"signed char\000"
.LASF19:
	.ascii	"APPTRACKERANDROID_MODULELOADED\000"
.LASF13:
	.ascii	"s3eResult\000"
.LASF17:
	.ascii	"s3eEdkThreadFunc\000"
.LASF51:
	.ascii	"c:\\\\Marmalade\\\\7.7\\\\extensions\\\\AppTrackerA"
	.ascii	"ndroid\\\\build_apptrackerandroid_android_linux_sco"
	.ascii	"ns_arm\000"
.LASF45:
	.ascii	"AppTrackerAndroidUnRegister\000"
	.ident	"GCC: (GNU) 4.8"
	.section	.note.GNU-stack,"",%progbits
