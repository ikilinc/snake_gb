;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12539 (Linux)
;--------------------------------------------------------
	.module snake_logic
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _set_sprite_data
	.globl _snake
	.globl _enlargeSnake
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$snake$0_0$0==.
_snake::
	.ds 86
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	G$enlargeSnake$0$0	= .
	.globl	G$enlargeSnake$0$0
	C$snake_logic.c$6$0_0$89	= .
	.globl	C$snake_logic.c$6$0_0$89
;src/snake_logic.c:6: void enlargeSnake()
;	---------------------------------
; Function enlargeSnake
; ---------------------------------
_enlargeSnake::
	dec	sp
	dec	sp
	C$snake_logic.c$9$1_0$89	= .
	.globl	C$snake_logic.c$9$1_0$89
;src/snake_logic.c:9: if (snake.tailLength == 30)
	ld	a, (#(_snake + 85) + 0)
	cp	a, #0x1e
	jr	Z, 00104$
	C$snake_logic.c$11$2_0$90	= .
	.globl	C$snake_logic.c$11$2_0$90
;src/snake_logic.c:11: return;
	jr	00102$
00102$:
	C$snake_logic.c$14$1_0$89	= .
	.globl	C$snake_logic.c$14$1_0$89
;src/snake_logic.c:14: snake.tailLength++;
	ld	c, a
	inc	c
	ld	hl, #(_snake + 85)
	ld	(hl), c
	C$snake_logic.c$16$1_0$89	= .
	.globl	C$snake_logic.c$16$1_0$89
;src/snake_logic.c:16: set_sprite_data(snake.tailLength + 6u, snake.lastUsedTailIndex, SimpleSnakeTiles);
	ld	hl, #(_snake + 84)
	ld	b, (hl)
	ld	a, c
	add	a, #0x06
	ld	de, #_SimpleSnakeTiles
	push	de
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_set_sprite_data
	add	sp, #4
;src/snake_logic.c:17: set_sprite_tile(snake.tailLength + 6u, snake.lastUsedTailIndex);
	ld	hl, #(_snake + 84)
	ld	c, (hl)
	ld	a, (#(_snake + 85) + 0)
	add	a, #0x06
;/opt/gbdk/include/gb/gb.h:1314: shadow_OAM[nb].tile=tile;
	ld	l, a
	ld	de, #_shadow_OAM+0
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	inc	hl
	inc	hl
	ld	e, l
	ld	d, h
	ld	a, c
	ld	(de), a
	C$snake_logic.c$20$1_1$91	= .
	.globl	C$snake_logic.c$20$1_1$91
;src/snake_logic.c:20: point.x = 99;
	C$snake_logic.c$21$1_1$91	= .
	.globl	C$snake_logic.c$21$1_1$91
;src/snake_logic.c:21: point.y = 99;
	ldhl	sp,#0
	ld	(hl), #0x63
;	spillPairReg hl
;	spillPairReg hl
	ld	c,l
	ld	b,h
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	(hl), #0x63
	C$snake_logic.c$22$1_1$91	= .
	.globl	C$snake_logic.c$22$1_1$91
;src/snake_logic.c:22: snake.tail[snake.tailLength] = point;
	ld	a, (#(_snake + 85) + 0)
	add	a, a
	ld	e, a
	ld	hl, #(_snake + 4)
	ld	d, #0x00
	add	hl, de
	ld	de, #0x0002
	push	de
	push	bc
	push	hl
	call	___memcpy
	add	sp, #6
00104$:
	C$snake_logic.c$23$1_1$89	= .
	.globl	C$snake_logic.c$23$1_1$89
;src/snake_logic.c:23: }
	inc	sp
	inc	sp
	C$snake_logic.c$23$1_1$89	= .
	.globl	C$snake_logic.c$23$1_1$89
	XG$enlargeSnake$0$0	= .
	.globl	XG$enlargeSnake$0$0
	ret
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
