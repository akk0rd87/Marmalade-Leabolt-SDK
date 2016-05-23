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
	.file	"AppTrackerAndroid.cpp"
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text._Z21AppTrackerAndroidInitv,"ax",%progbits
	.align	2
	.global	_Z21AppTrackerAndroidInitv
	.hidden	_Z21AppTrackerAndroidInitv
	.type	_Z21AppTrackerAndroidInitv, %function
_Z21AppTrackerAndroidInitv:
.LFB0:
	.file 1 "C:\\Marmalade\\7.7\\extensions\\AppTrackerAndroid\\source\\generic\\AppTrackerAndroid.cpp"
	.loc 1 15 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 17 0
	bl	_Z30AppTrackerAndroidInit_platformv(PLT)
	mov	r3, r0
	.loc 1 18 0
	mov	r0, r3
	ldmfd	sp!, {r3, pc}
	.cfi_endproc
.LFE0:
	.size	_Z21AppTrackerAndroidInitv, .-_Z21AppTrackerAndroidInitv
	.section	.text._Z26AppTrackerAndroidTerminatev,"ax",%progbits
	.align	2
	.global	_Z26AppTrackerAndroidTerminatev
	.hidden	_Z26AppTrackerAndroidTerminatev
	.type	_Z26AppTrackerAndroidTerminatev, %function
_Z26AppTrackerAndroidTerminatev:
.LFB1:
	.loc 1 21 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 23 0
	bl	_Z35AppTrackerAndroidTerminate_platformv(PLT)
	.loc 1 24 0
	ldmfd	sp!, {r3, pc}
	.cfi_endproc
.LFE1:
	.size	_Z26AppTrackerAndroidTerminatev, .-_Z26AppTrackerAndroidTerminatev
	.section	.text.startSession,"ax",%progbits
	.align	2
	.global	startSession
	.hidden	startSession
	.type	startSession, %function
startSession:
.LFB2:
	.loc 1 27 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 1 28 0
	ldr	r0, [sp, #4]
	bl	_Z21startSession_platformPKc(PLT)
	mov	r3, r0
	.loc 1 29 0
	mov	r0, r3
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE2:
	.size	startSession, .-startSession
	.section	.text.closeSession,"ax",%progbits
	.align	2
	.global	closeSession
	.hidden	closeSession
	.type	closeSession, %function
closeSession:
.LFB3:
	.loc 1 32 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 33 0
	bl	_Z21closeSession_platformv(PLT)
	mov	r3, r0
	.loc 1 34 0
	mov	r0, r3
	ldmfd	sp!, {r3, pc}
	.cfi_endproc
.LFE3:
	.size	closeSession, .-closeSession
	.section	.text.pause,"ax",%progbits
	.align	2
	.global	pause
	.hidden	pause
	.type	pause, %function
pause:
.LFB4:
	.loc 1 37 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 38 0
	bl	_Z14pause_platformv(PLT)
	mov	r3, r0
	.loc 1 39 0
	mov	r0, r3
	ldmfd	sp!, {r3, pc}
	.cfi_endproc
.LFE4:
	.size	pause, .-pause
	.section	.text.resume,"ax",%progbits
	.align	2
	.global	resume
	.hidden	resume
	.type	resume, %function
resume:
.LFB5:
	.loc 1 42 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 43 0
	bl	_Z15resume_platformv(PLT)
	mov	r3, r0
	.loc 1 44 0
	mov	r0, r3
	ldmfd	sp!, {r3, pc}
	.cfi_endproc
.LFE5:
	.size	resume, .-resume
	.section	.text.event,"ax",%progbits
	.align	2
	.global	event
	.hidden	event
	.type	event, %function
event:
.LFB6:
	.loc 1 47 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 1 48 0
	ldr	r0, [sp, #4]
	bl	_Z14event_platformPKc(PLT)
	mov	r3, r0
	.loc 1 49 0
	mov	r0, r3
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE6:
	.size	event, .-event
	.section	.text.eventWithValue,"ax",%progbits
	.align	2
	.global	eventWithValue
	.hidden	eventWithValue
	.type	eventWithValue, %function
eventWithValue:
.LFB7:
	.loc 1 52 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 53 0
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	bl	_Z23eventWithValue_platformPKci(PLT)
	mov	r3, r0
	.loc 1 54 0
	mov	r0, r3
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE7:
	.size	eventWithValue, .-eventWithValue
	.section	.text.loadModule,"ax",%progbits
	.align	2
	.global	loadModule
	.hidden	loadModule
	.type	loadModule, %function
loadModule:
.LFB8:
	.loc 1 57 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 58 0
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	bl	_Z19loadModule_platformPKcS0_(PLT)
	mov	r3, r0
	.loc 1 59 0
	mov	r0, r3
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE8:
	.size	loadModule, .-loadModule
	.section	.text.loadModuleToCache,"ax",%progbits
	.align	2
	.global	loadModuleToCache
	.hidden	loadModuleToCache
	.type	loadModuleToCache, %function
loadModuleToCache:
.LFB9:
	.loc 1 62 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	str	r1, [sp]
	.loc 1 63 0
	ldr	r0, [sp, #4]
	ldr	r1, [sp]
	bl	_Z26loadModuleToCache_platformPKcS0_(PLT)
	mov	r3, r0
	.loc 1 64 0
	mov	r0, r3
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE9:
	.size	loadModuleToCache, .-loadModuleToCache
	.section	.text.destroyModule,"ax",%progbits
	.align	2
	.global	destroyModule
	.hidden	destroyModule
	.type	destroyModule, %function
destroyModule:
.LFB10:
	.loc 1 67 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	.cfi_offset 14, -4
	.loc 1 68 0
	bl	_Z22destroyModule_platformv(PLT)
	mov	r3, r0
	.loc 1 69 0
	mov	r0, r3
	ldmfd	sp!, {r3, pc}
	.cfi_endproc
.LFE10:
	.size	destroyModule, .-destroyModule
	.section	.text.fixAdOrientation,"ax",%progbits
	.align	2
	.global	fixAdOrientation
	.hidden	fixAdOrientation
	.type	fixAdOrientation, %function
fixAdOrientation:
.LFB11:
	.loc 1 72 0
	.cfi_startproc
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	.cfi_def_cfa_offset 4
	.cfi_offset 14, -4
	sub	sp, sp, #12
	.cfi_def_cfa_offset 16
	str	r0, [sp, #4]
	.loc 1 73 0
	ldr	r0, [sp, #4]
	bl	_Z25fixAdOrientation_platformi(PLT)
	mov	r3, r0
	.loc 1 74 0
	mov	r0, r3
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.cfi_endproc
.LFE11:
	.size	fixAdOrientation, .-fixAdOrientation
	.text
.Letext0:
	.file 2 "../../../s3e/h/s3eTypes.h"
	.section	.debug_info,"",%progbits
.Ldebug_info0:
	.4byte	0x238
	.2byte	0x4
	.4byte	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	.LASF28
	.byte	0x4
	.4byte	.LASF29
	.4byte	.LASF30
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
	.4byte	.LASF31
	.byte	0x4
	.byte	0x2
	.2byte	0x10a
	.4byte	0x85
	.uleb128 0x5
	.4byte	.LASF9
	.sleb128 0
	.uleb128 0x5
	.4byte	.LASF10
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.4byte	.LASF31
	.byte	0x2
	.2byte	0x10e
	.4byte	0x6b
	.uleb128 0x7
	.4byte	.LASF32
	.byte	0x1
	.byte	0xe
	.4byte	.LASF33
	.4byte	0x85
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x8
	.4byte	.LASF12
	.byte	0x1
	.byte	0x14
	.4byte	.LASF34
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF16
	.byte	0x1
	.byte	0x1a
	.4byte	0x85
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.uleb128 0x1
	.byte	0x9c
	.4byte	0xe7
	.uleb128 0xa
	.4byte	.LASF18
	.byte	0x1
	.byte	0x1a
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.4byte	0xed
	.uleb128 0xc
	.4byte	0xf2
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.4byte	.LASF11
	.uleb128 0xd
	.4byte	.LASF13
	.byte	0x1
	.byte	0x1f
	.4byte	0x85
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF14
	.byte	0x1
	.byte	0x24
	.4byte	0x85
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xd
	.4byte	.LASF15
	.byte	0x1
	.byte	0x29
	.4byte	0x85
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x9
	.4byte	.LASF17
	.byte	0x1
	.byte	0x2e
	.4byte	0x85
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x160
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x2e
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x9
	.4byte	.LASF20
	.byte	0x1
	.byte	0x33
	.4byte	0x85
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x196
	.uleb128 0xa
	.4byte	.LASF19
	.byte	0x1
	.byte	0x33
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF21
	.byte	0x1
	.byte	0x33
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.4byte	.LASF22
	.byte	0x1
	.byte	0x38
	.4byte	0x85
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x1cc
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x38
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x38
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0x9
	.4byte	.LASF25
	.byte	0x1
	.byte	0x3d
	.4byte	0x85
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.uleb128 0x1
	.byte	0x9c
	.4byte	0x202
	.uleb128 0xa
	.4byte	.LASF23
	.byte	0x1
	.byte	0x3d
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0xa
	.4byte	.LASF24
	.byte	0x1
	.byte	0x3d
	.4byte	0xe7
	.uleb128 0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.uleb128 0xd
	.4byte	.LASF26
	.byte	0x1
	.byte	0x42
	.4byte	0x85
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xe
	.4byte	.LASF35
	.byte	0x1
	.byte	0x47
	.4byte	0x85
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0xa
	.4byte	.LASF27
	.byte	0x1
	.byte	0x47
	.4byte	0x48
	.uleb128 0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x6e
	.uleb128 0xe
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
	.uleb128 0x8
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
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",%progbits
	.4byte	0x74
	.2byte	0x2
	.4byte	.Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	.LFB0
	.4byte	.LFE0-.LFB0
	.4byte	.LFB1
	.4byte	.LFE1-.LFB1
	.4byte	.LFB2
	.4byte	.LFE2-.LFB2
	.4byte	.LFB3
	.4byte	.LFE3-.LFB3
	.4byte	.LFB4
	.4byte	.LFE4-.LFB4
	.4byte	.LFB5
	.4byte	.LFE5-.LFB5
	.4byte	.LFB6
	.4byte	.LFE6-.LFB6
	.4byte	.LFB7
	.4byte	.LFE7-.LFB7
	.4byte	.LFB8
	.4byte	.LFE8-.LFB8
	.4byte	.LFB9
	.4byte	.LFE9-.LFB9
	.4byte	.LFB10
	.4byte	.LFE10-.LFB10
	.4byte	.LFB11
	.4byte	.LFE11-.LFB11
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",%progbits
.Ldebug_ranges0:
	.4byte	.LFB0
	.4byte	.LFE0
	.4byte	.LFB1
	.4byte	.LFE1
	.4byte	.LFB2
	.4byte	.LFE2
	.4byte	.LFB3
	.4byte	.LFE3
	.4byte	.LFB4
	.4byte	.LFE4
	.4byte	.LFB5
	.4byte	.LFE5
	.4byte	.LFB6
	.4byte	.LFE6
	.4byte	.LFB7
	.4byte	.LFE7
	.4byte	.LFB8
	.4byte	.LFE8
	.4byte	.LFB9
	.4byte	.LFE9
	.4byte	.LFB10
	.4byte	.LFE10
	.4byte	.LFB11
	.4byte	.LFE11
	.4byte	0
	.4byte	0
	.section	.debug_line,"",%progbits
.Ldebug_line0:
	.section	.debug_str,"MS",%progbits,1
.LASF15:
	.ascii	"resume\000"
.LASF33:
	.ascii	"_Z21AppTrackerAndroidInitv\000"
.LASF19:
	.ascii	"event_name\000"
.LASF32:
	.ascii	"AppTrackerAndroidInit\000"
.LASF34:
	.ascii	"_Z26AppTrackerAndroidTerminatev\000"
.LASF25:
	.ascii	"loadModuleToCache\000"
.LASF27:
	.ascii	"landscape_portrait_or_auto\000"
.LASF18:
	.ascii	"api_key\000"
.LASF9:
	.ascii	"S3E_RESULT_SUCCESS\000"
.LASF17:
	.ascii	"event\000"
.LASF0:
	.ascii	"unsigned char\000"
.LASF24:
	.ascii	"userData\000"
.LASF7:
	.ascii	"long unsigned int\000"
.LASF26:
	.ascii	"destroyModule\000"
.LASF2:
	.ascii	"short unsigned int\000"
.LASF13:
	.ascii	"closeSession\000"
.LASF20:
	.ascii	"eventWithValue\000"
.LASF29:
	.ascii	"C:\\Marmalade\\7.7\\extensions\\AppTrackerAndroid\\"
	.ascii	"source\\generic\\AppTrackerAndroid.cpp\000"
.LASF12:
	.ascii	"AppTrackerAndroidTerminate\000"
.LASF4:
	.ascii	"unsigned int\000"
.LASF5:
	.ascii	"long long unsigned int\000"
.LASF21:
	.ascii	"event_value\000"
.LASF10:
	.ascii	"S3E_RESULT_ERROR\000"
.LASF6:
	.ascii	"long long int\000"
.LASF11:
	.ascii	"char\000"
.LASF28:
	.ascii	"GNU C++ 4.8 -fpreprocessed -mbionic -mstructure-siz"
	.ascii	"e-boundary=8 -march=armv6 -mfpu=vfp -mfloat-abi=sof"
	.ascii	"tfp -mthumb-interwork -mtls-dialect=gnu -g -O0 -fno"
	.ascii	"-exceptions -fsigned-char -fno-strict-aliasing -fvi"
	.ascii	"sibility=hidden -fno-short-enums -fomit-frame-point"
	.ascii	"er -fmessage-length=0 -ffunction-sections -fPIC -fr"
	.ascii	"tti\000"
.LASF16:
	.ascii	"startSession\000"
.LASF3:
	.ascii	"short int\000"
.LASF14:
	.ascii	"pause\000"
.LASF23:
	.ascii	"location_code\000"
.LASF8:
	.ascii	"long int\000"
.LASF35:
	.ascii	"fixAdOrientation\000"
.LASF1:
	.ascii	"signed char\000"
.LASF31:
	.ascii	"s3eResult\000"
.LASF22:
	.ascii	"loadModule\000"
.LASF30:
	.ascii	"c:\\\\Marmalade\\\\7.7\\\\extensions\\\\AppTrackerA"
	.ascii	"ndroid\\\\build_apptrackerandroid_android_linux_sco"
	.ascii	"ns_arm\000"
	.ident	"GCC: (GNU) 4.8"
	.section	.note.GNU-stack,"",%progbits
