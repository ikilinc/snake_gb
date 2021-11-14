;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12539 (Linux)
;--------------------------------------------------------
	.module snake_logic
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _clock
	.globl _set_sprite_data
	.globl _get_bkg_tile_xy
	.globl _timeCounter
	.globl _lastTime
	.globl _turnaraoundMap
	.globl _snake
	.globl _init_snake
	.globl _reset_snake_head_props
	.globl _enlarge_snake
	.globl _get_bg_tile_index_front_of_snake
	.globl _check_collision_with_wall
	.globl _is_snake_moving_up
	.globl _is_snake_moving_left
	.globl _move_right
	.globl _move_left
	.globl _move_up
	.globl _move_down
	.globl _move_snake
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$snake$0_0$0==.
_snake::
	.ds 89
G$turnaraoundMap$0_0$0==.
_turnaraoundMap::
	.ds 625
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
G$lastTime$0_0$0==.
_lastTime::
	.ds 2
G$timeCounter$0_0$0==.
_timeCounter::
	.ds 2
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
	G$init_snake$0$0	= .
	.globl	G$init_snake$0$0
	C$snake_logic.c$7$0_0$90	= .
	.globl	C$snake_logic.c$7$0_0$90
;src/snake_logic.c:7: void init_snake()
;	---------------------------------
; Function init_snake
; ---------------------------------
_init_snake::
	C$snake_logic.c$9$1_0$90	= .
	.globl	C$snake_logic.c$9$1_0$90
;src/snake_logic.c:9: snake.currentSpeed = 0;
	ld	hl, #(_snake + 88)
	ld	(hl), #0x00
	C$snake_logic.c$10$1_0$90	= .
	.globl	C$snake_logic.c$10$1_0$90
;src/snake_logic.c:10: snake.x = (9 * 8) + OFF_SCREEN_OFFSET_X;
	ld	hl, #_snake
	ld	(hl), #0x50
	C$snake_logic.c$11$1_0$90	= .
	.globl	C$snake_logic.c$11$1_0$90
;src/snake_logic.c:11: snake.y = ((DISPLAY_MAX_TILE_Y * 8) / 2) + OFF_SCREEN_OFFSET_Y;
	ld	hl, #(_snake + 1)
	ld	(hl), #0x58
	C$snake_logic.c$12$1_0$90	= .
	.globl	C$snake_logic.c$12$1_0$90
;src/snake_logic.c:12: snake.lastUsedTailIndex = 1u;
	ld	hl, #(_snake + 84)
	ld	(hl), #0x01
	C$snake_logic.c$13$1_0$90	= .
	.globl	C$snake_logic.c$13$1_0$90
;src/snake_logic.c:13: snake.direction[0] = -1 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 2)
	ld	(hl), #0xf8
	C$snake_logic.c$14$1_0$90	= .
	.globl	C$snake_logic.c$14$1_0$90
;src/snake_logic.c:14: snake.direction[1] = 0 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 3)
	C$snake_logic.c$15$3_0$92	= .
	.globl	C$snake_logic.c$15$3_0$92
;src/snake_logic.c:15: for (int i = 0; i <= snake.tailLength; i++)
	ld	bc, #0x0000
	ld	(hl), c
00105$:
	ld	a, (#(_snake + 85) + 0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, b
	ld	d, h
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	bit	7, e
	jr	Z, 00120$
	bit	7, d
	jr	NZ, 00121$
	cp	a, a
	jr	00121$
00120$:
	bit	7, d
	jr	Z, 00121$
	scf
00121$:
	jr	C, 00101$
;src/snake_logic.c:17: hide_sprite(i + 6u);
	ld	a, c
	add	a, #0x06
	ld	e, a
;/opt/gbdk/include/gb/gb.h:1413: shadow_OAM[nb].y = 0;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, e
	add	hl, hl
	add	hl, hl
	ld	de, #_shadow_OAM
	add	hl, de
	ld	(hl), #0x00
	C$snake_logic.c$18$3_0$92	= .
	.globl	C$snake_logic.c$18$3_0$92
;src/snake_logic.c:18: snake.tail[i].x = 99;
	ld	l, c
	ld	h, b
	add	hl, hl
	ld	de, #(_snake + 4)
	add	hl, de
	C$snake_logic.c$19$3_0$92	= .
	.globl	C$snake_logic.c$19$3_0$92
;src/snake_logic.c:19: snake.tail[i].y = 99;
	ld	a, #0x63
	ld	(hl+), a
	ld	(hl), #0x63
	C$snake_logic.c$15$2_0$91	= .
	.globl	C$snake_logic.c$15$2_0$91
;src/snake_logic.c:15: for (int i = 0; i <= snake.tailLength; i++)
	inc	bc
	jr	00105$
00101$:
	C$snake_logic.c$21$1_0$90	= .
	.globl	C$snake_logic.c$21$1_0$90
;src/snake_logic.c:21: snake.tailLength = 0;
	ld	hl, #(_snake + 85)
	ld	(hl), #0x00
	C$snake_logic.c$22$1_0$90	= .
	.globl	C$snake_logic.c$22$1_0$90
;src/snake_logic.c:22: snake.snakeHeadspriteProp = 0;
	ld	hl, #(_snake + 86)
	ld	(hl), #0x00
	C$snake_logic.c$23$1_0$90	= .
	.globl	C$snake_logic.c$23$1_0$90
;src/snake_logic.c:23: snake.snakeHeadSpriteIndex = 1u;
	ld	hl, #(_snake + 87)
	ld	(hl), #0x01
;/opt/gbdk/include/gb/gb.h:1314: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x01
	C$snake_logic.c$25$3_0$90	= .
	.globl	C$snake_logic.c$25$3_0$90
;src/snake_logic.c:25: set_sprite_tile(SNAKE_HEAD_VRAM_SPRITE_INDEX, 1u); // 1 => position of snake sprite on vram
	C$snake_logic.c$26$3_0$90	= .
	.globl	C$snake_logic.c$26$3_0$90
;src/snake_logic.c:26: }
	C$snake_logic.c$26$3_0$90	= .
	.globl	C$snake_logic.c$26$3_0$90
	XG$init_snake$0$0	= .
	.globl	XG$init_snake$0$0
	ret
Fsnake_logic$speed$0_0$0 == .
_speed:
	.dw #0x000a
	.dw #0x0009
	.dw #0x0008
	.dw #0x0006
	.dw #0x0004
	.dw #0x0002
	.dw #0x0001
	G$reset_snake_head_props$0$0	= .
	.globl	G$reset_snake_head_props$0$0
	C$snake_logic.c$28$3_0$99	= .
	.globl	C$snake_logic.c$28$3_0$99
;src/snake_logic.c:28: void reset_snake_head_props()
;	---------------------------------
; Function reset_snake_head_props
; ---------------------------------
_reset_snake_head_props::
	C$snake_logic.c$30$1_0$99	= .
	.globl	C$snake_logic.c$30$1_0$99
;src/snake_logic.c:30: snake.snakeHeadspriteProp = 0;
	ld	hl, #(_snake + 86)
	ld	(hl), #0x00
	C$snake_logic.c$31$1_0$99	= .
	.globl	C$snake_logic.c$31$1_0$99
;src/snake_logic.c:31: snake.snakeHeadSpriteIndex = 1u;
	ld	hl, #(_snake + 87)
	ld	(hl), #0x01
	C$snake_logic.c$32$1_0$99	= .
	.globl	C$snake_logic.c$32$1_0$99
;src/snake_logic.c:32: }
	C$snake_logic.c$32$1_0$99	= .
	.globl	C$snake_logic.c$32$1_0$99
	XG$reset_snake_head_props$0$0	= .
	.globl	XG$reset_snake_head_props$0$0
	ret
	G$enlarge_snake$0$0	= .
	.globl	G$enlarge_snake$0$0
	C$snake_logic.c$34$1_0$100	= .
	.globl	C$snake_logic.c$34$1_0$100
;src/snake_logic.c:34: void enlarge_snake()
;	---------------------------------
; Function enlarge_snake
; ---------------------------------
_enlarge_snake::
	dec	sp
	dec	sp
	C$snake_logic.c$37$1_0$100	= .
	.globl	C$snake_logic.c$37$1_0$100
;src/snake_logic.c:37: if (snake.tailLength == 30)
	ld	a, (#(_snake + 85) + 0)
	cp	a, #0x1e
	jr	Z, 00104$
	C$snake_logic.c$39$2_0$101	= .
	.globl	C$snake_logic.c$39$2_0$101
;src/snake_logic.c:39: return;
	jr	00102$
00102$:
	C$snake_logic.c$42$1_0$100	= .
	.globl	C$snake_logic.c$42$1_0$100
;src/snake_logic.c:42: snake.tailLength++;
	ld	c, a
	inc	c
	ld	hl, #(_snake + 85)
	ld	(hl), c
	C$snake_logic.c$44$1_0$100	= .
	.globl	C$snake_logic.c$44$1_0$100
;src/snake_logic.c:44: set_sprite_data(snake.tailLength + 6u, snake.lastUsedTailIndex, SimpleSnakeTiles);
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
;src/snake_logic.c:45: set_sprite_tile(snake.tailLength + 6u, snake.lastUsedTailIndex);
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
	C$snake_logic.c$48$1_1$102	= .
	.globl	C$snake_logic.c$48$1_1$102
;src/snake_logic.c:48: point.x = 99;
	C$snake_logic.c$49$1_1$102	= .
	.globl	C$snake_logic.c$49$1_1$102
;src/snake_logic.c:49: point.y = 99;
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
	C$snake_logic.c$50$1_1$102	= .
	.globl	C$snake_logic.c$50$1_1$102
;src/snake_logic.c:50: snake.tail[snake.tailLength] = point;
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
	C$snake_logic.c$51$1_1$100	= .
	.globl	C$snake_logic.c$51$1_1$100
;src/snake_logic.c:51: }
	inc	sp
	inc	sp
	C$snake_logic.c$51$1_1$100	= .
	.globl	C$snake_logic.c$51$1_1$100
	XG$enlarge_snake$0$0	= .
	.globl	XG$enlarge_snake$0$0
	ret
	G$get_bg_tile_index_front_of_snake$0$0	= .
	.globl	G$get_bg_tile_index_front_of_snake$0$0
	C$snake_logic.c$53$1_1$106	= .
	.globl	C$snake_logic.c$53$1_1$106
;src/snake_logic.c:53: uint8_t get_bg_tile_index_front_of_snake()
;	---------------------------------
; Function get_bg_tile_index_front_of_snake
; ---------------------------------
_get_bg_tile_index_front_of_snake::
	dec	sp
	C$snake_logic.c$55$1_0$106	= .
	.globl	C$snake_logic.c$55$1_0$106
;src/snake_logic.c:55: return get_bkg_tile_xy((snake.x / SNAKE_MOVEMENT_STEP) - 1, (snake.y / SNAKE_MOVEMENT_STEP) - 2);
	ld	a, (#(_snake + 1) + 0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	bit	7, b
	jr	Z, 00103$
	ld	hl, #0x0007
	add	hl, bc
00103$:
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	a, l
	add	a, #0xfe
	ldhl	sp,	#0
	ld	(hl), a
	ld	a, (#_snake + 0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	bit	7, b
	jr	Z, 00104$
	ld	hl, #0x0007
	add	hl, bc
00104$:
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	a, l
	dec	a
	ldhl	sp,	#0
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
	push	af
	inc	sp
	call	_get_bkg_tile_xy
	pop	hl
	C$snake_logic.c$56$1_0$106	= .
	.globl	C$snake_logic.c$56$1_0$106
;src/snake_logic.c:56: }
	inc	sp
	C$snake_logic.c$56$1_0$106	= .
	.globl	C$snake_logic.c$56$1_0$106
	XG$get_bg_tile_index_front_of_snake$0$0	= .
	.globl	XG$get_bg_tile_index_front_of_snake$0$0
	ret
	G$check_collision_with_wall$0$0	= .
	.globl	G$check_collision_with_wall$0$0
	C$snake_logic.c$58$1_0$107	= .
	.globl	C$snake_logic.c$58$1_0$107
;src/snake_logic.c:58: BOOLEAN check_collision_with_wall()
;	---------------------------------
; Function check_collision_with_wall
; ---------------------------------
_check_collision_with_wall::
	C$snake_logic.c$60$1_0$107	= .
	.globl	C$snake_logic.c$60$1_0$107
;src/snake_logic.c:60: uint8_t nextTileIndex = get_bg_tile_index_front_of_snake();
	call	_get_bg_tile_index_front_of_snake
	C$snake_logic.c$61$1_0$107	= .
	.globl	C$snake_logic.c$61$1_0$107
;src/snake_logic.c:61: return nextTileIndex >= 1u && nextTileIndex <= 9u;
	ld	a, e
	sub	a, #0x01
	jr	C, 00103$
	ld	a, #0x09
	sub	a, e
	jr	NC, 00104$
00103$:
	ld	e, #0x00
	ret
00104$:
	ld	e, #0x01
	C$snake_logic.c$62$1_0$107	= .
	.globl	C$snake_logic.c$62$1_0$107
;src/snake_logic.c:62: }
	C$snake_logic.c$62$1_0$107	= .
	.globl	C$snake_logic.c$62$1_0$107
	XG$check_collision_with_wall$0$0	= .
	.globl	XG$check_collision_with_wall$0$0
	ret
	G$is_snake_moving_up$0$0	= .
	.globl	G$is_snake_moving_up$0$0
	C$snake_logic.c$64$1_0$108	= .
	.globl	C$snake_logic.c$64$1_0$108
;src/snake_logic.c:64: BOOLEAN is_snake_moving_up()
;	---------------------------------
; Function is_snake_moving_up
; ---------------------------------
_is_snake_moving_up::
	C$snake_logic.c$66$1_0$108	= .
	.globl	C$snake_logic.c$66$1_0$108
;src/snake_logic.c:66: return snake.direction[1] == -1 * SNAKE_MOVEMENT_STEP;
	ld	a, (#(_snake + 3) + 0)
	sub	a, #0xf8
	ld	a, #0x01
	jr	Z, 00104$
	xor	a, a
00104$:
	ld	e, a
	C$snake_logic.c$67$1_0$108	= .
	.globl	C$snake_logic.c$67$1_0$108
;src/snake_logic.c:67: }
	C$snake_logic.c$67$1_0$108	= .
	.globl	C$snake_logic.c$67$1_0$108
	XG$is_snake_moving_up$0$0	= .
	.globl	XG$is_snake_moving_up$0$0
	ret
	G$is_snake_moving_left$0$0	= .
	.globl	G$is_snake_moving_left$0$0
	C$snake_logic.c$69$1_0$109	= .
	.globl	C$snake_logic.c$69$1_0$109
;src/snake_logic.c:69: BOOLEAN is_snake_moving_left()
;	---------------------------------
; Function is_snake_moving_left
; ---------------------------------
_is_snake_moving_left::
	C$snake_logic.c$71$1_0$109	= .
	.globl	C$snake_logic.c$71$1_0$109
;src/snake_logic.c:71: return snake.direction[0] == -1 * SNAKE_MOVEMENT_STEP;
	ld	a, (#(_snake + 2) + 0)
	sub	a, #0xf8
	ld	a, #0x01
	jr	Z, 00104$
	xor	a, a
00104$:
	ld	e, a
	C$snake_logic.c$72$1_0$109	= .
	.globl	C$snake_logic.c$72$1_0$109
;src/snake_logic.c:72: }
	C$snake_logic.c$72$1_0$109	= .
	.globl	C$snake_logic.c$72$1_0$109
	XG$is_snake_moving_left$0$0	= .
	.globl	XG$is_snake_moving_left$0$0
	ret
	G$move_right$0$0	= .
	.globl	G$move_right$0$0
	C$snake_logic.c$74$1_0$110	= .
	.globl	C$snake_logic.c$74$1_0$110
;src/snake_logic.c:74: void move_right()
;	---------------------------------
; Function move_right
; ---------------------------------
_move_right::
	dec	sp
	dec	sp
	C$snake_logic.c$76$1_0$110	= .
	.globl	C$snake_logic.c$76$1_0$110
;src/snake_logic.c:76: uint8_t *turnaraoundMapValue = &turnaraoundMap[snake.x / 8][snake.y / 8];
	ld	a, (#_snake + 0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	bit	7, b
	jr	Z, 00106$
	ld	hl, #0x0007
	add	hl, bc
00106$:
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_turnaraoundMap
	add	hl,bc
	inc	sp
	inc	sp
	push	hl
	ld	a, (#(_snake + 1) + 0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	bit	7, b
	jr	Z, 00107$
	ld	hl, #0x0007
	add	hl, bc
00107$:
	ld	c, l
	ld	b, h
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	pop	hl
	push	hl
	add	hl, bc
	C$snake_logic.c$77$1_0$110	= .
	.globl	C$snake_logic.c$77$1_0$110
;src/snake_logic.c:77: reset_snake_head_props();
	push	hl
	call	_reset_snake_head_props
	pop	bc
	C$snake_logic.c$78$1_0$110	= .
	.globl	C$snake_logic.c$78$1_0$110
;src/snake_logic.c:78: snake.snakeHeadspriteProp += HORIZONTAL_FLIP;
	ld	de, #_snake + 86
	ld	a, (de)
	add	a, #0x20
	ld	(de), a
	C$snake_logic.c$79$1_0$110	= .
	.globl	C$snake_logic.c$79$1_0$110
;src/snake_logic.c:79: snake.snakeHeadSpriteIndex = 1u;
	ld	hl, #(_snake + 87)
	ld	(hl), #0x01
	C$snake_logic.c$80$1_0$110	= .
	.globl	C$snake_logic.c$80$1_0$110
;src/snake_logic.c:80: if (is_snake_moving_up())
	push	bc
	call	_is_snake_moving_up
	ld	a, e
	pop	bc
	or	a, a
	jr	Z, 00102$
	C$snake_logic.c$82$2_0$111	= .
	.globl	C$snake_logic.c$82$2_0$111
;src/snake_logic.c:82: *turnaraoundMapValue = VERTICAL_FLIP;
	ld	a, #0x40
	ld	(bc), a
	jr	00103$
00102$:
	C$snake_logic.c$86$2_0$112	= .
	.globl	C$snake_logic.c$86$2_0$112
;src/snake_logic.c:86: *turnaraoundMapValue = 128;
	ld	a, #0x80
	ld	(bc), a
00103$:
	C$snake_logic.c$89$1_0$110	= .
	.globl	C$snake_logic.c$89$1_0$110
;src/snake_logic.c:89: snake.direction[0] = 1 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 2)
	ld	(hl), #0x08
	C$snake_logic.c$90$1_0$110	= .
	.globl	C$snake_logic.c$90$1_0$110
;src/snake_logic.c:90: snake.direction[1] = 0 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 3)
	ld	(hl), #0x00
	C$snake_logic.c$91$1_0$110	= .
	.globl	C$snake_logic.c$91$1_0$110
;src/snake_logic.c:91: }
	inc	sp
	inc	sp
	C$snake_logic.c$91$1_0$110	= .
	.globl	C$snake_logic.c$91$1_0$110
	XG$move_right$0$0	= .
	.globl	XG$move_right$0$0
	ret
	G$move_left$0$0	= .
	.globl	G$move_left$0$0
	C$snake_logic.c$92$1_0$113	= .
	.globl	C$snake_logic.c$92$1_0$113
;src/snake_logic.c:92: void move_left()
;	---------------------------------
; Function move_left
; ---------------------------------
_move_left::
	dec	sp
	dec	sp
	C$snake_logic.c$94$1_0$113	= .
	.globl	C$snake_logic.c$94$1_0$113
;src/snake_logic.c:94: uint8_t *turnaraoundMapValue = &turnaraoundMap[snake.x / 8][snake.y / 8];
	ld	a, (#_snake + 0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	bit	7, b
	jr	Z, 00106$
	ld	hl, #0x0007
	add	hl, bc
00106$:
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_turnaraoundMap
	add	hl,bc
	inc	sp
	inc	sp
	push	hl
	ld	a, (#(_snake + 1) + 0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	bit	7, b
	jr	Z, 00107$
	ld	hl, #0x0007
	add	hl, bc
00107$:
	ld	c, l
	ld	b, h
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	pop	hl
	push	hl
	add	hl, bc
	C$snake_logic.c$95$1_0$113	= .
	.globl	C$snake_logic.c$95$1_0$113
;src/snake_logic.c:95: reset_snake_head_props();
	push	hl
	call	_reset_snake_head_props
	call	_is_snake_moving_up
	ld	a, e
	pop	bc
	or	a, a
	jr	Z, 00102$
	C$snake_logic.c$98$2_0$114	= .
	.globl	C$snake_logic.c$98$2_0$114
;src/snake_logic.c:98: *turnaraoundMapValue = VERTICAL_FLIP + HORIZONTAL_FLIP;
	ld	a, #0x60
	ld	(bc), a
	jr	00103$
00102$:
	C$snake_logic.c$102$2_0$115	= .
	.globl	C$snake_logic.c$102$2_0$115
;src/snake_logic.c:102: *turnaraoundMapValue = HORIZONTAL_FLIP;
	ld	a, #0x20
	ld	(bc), a
00103$:
	C$snake_logic.c$105$1_0$113	= .
	.globl	C$snake_logic.c$105$1_0$113
;src/snake_logic.c:105: snake.direction[0] = -1 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 2)
	ld	(hl), #0xf8
	C$snake_logic.c$106$1_0$113	= .
	.globl	C$snake_logic.c$106$1_0$113
;src/snake_logic.c:106: snake.direction[1] = 0 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 3)
	ld	(hl), #0x00
	C$snake_logic.c$107$1_0$113	= .
	.globl	C$snake_logic.c$107$1_0$113
;src/snake_logic.c:107: }
	inc	sp
	inc	sp
	C$snake_logic.c$107$1_0$113	= .
	.globl	C$snake_logic.c$107$1_0$113
	XG$move_left$0$0	= .
	.globl	XG$move_left$0$0
	ret
	G$move_up$0$0	= .
	.globl	G$move_up$0$0
	C$snake_logic.c$108$1_0$116	= .
	.globl	C$snake_logic.c$108$1_0$116
;src/snake_logic.c:108: void move_up()
;	---------------------------------
; Function move_up
; ---------------------------------
_move_up::
	dec	sp
	dec	sp
	C$snake_logic.c$110$1_0$116	= .
	.globl	C$snake_logic.c$110$1_0$116
;src/snake_logic.c:110: uint8_t *turnaraoundMapValue = &turnaraoundMap[snake.x / 8][snake.y / 8];
	ld	a, (#_snake + 0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	bit	7, b
	jr	Z, 00106$
	ld	hl, #0x0007
	add	hl, bc
00106$:
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_turnaraoundMap
	add	hl,bc
	inc	sp
	inc	sp
	push	hl
	ld	a, (#(_snake + 1) + 0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	bit	7, b
	jr	Z, 00107$
	ld	hl, #0x0007
	add	hl, bc
00107$:
	ld	c, l
	ld	b, h
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	pop	hl
	push	hl
	add	hl, bc
	C$snake_logic.c$111$1_0$116	= .
	.globl	C$snake_logic.c$111$1_0$116
;src/snake_logic.c:111: reset_snake_head_props();
	push	hl
	call	_reset_snake_head_props
	pop	bc
	C$snake_logic.c$112$1_0$116	= .
	.globl	C$snake_logic.c$112$1_0$116
;src/snake_logic.c:112: snake.snakeHeadSpriteIndex = 5u;
	ld	hl, #(_snake + 87)
	ld	(hl), #0x05
	C$snake_logic.c$113$1_0$116	= .
	.globl	C$snake_logic.c$113$1_0$116
;src/snake_logic.c:113: if (is_snake_moving_left())
	push	bc
	call	_is_snake_moving_left
	ld	a, e
	pop	bc
	or	a, a
	jr	Z, 00102$
	C$snake_logic.c$115$2_0$117	= .
	.globl	C$snake_logic.c$115$2_0$117
;src/snake_logic.c:115: *turnaraoundMapValue = 128;
	ld	a, #0x80
	ld	(bc), a
	jr	00103$
00102$:
	C$snake_logic.c$119$2_0$118	= .
	.globl	C$snake_logic.c$119$2_0$118
;src/snake_logic.c:119: *turnaraoundMapValue = HORIZONTAL_FLIP;
	ld	a, #0x20
	ld	(bc), a
00103$:
	C$snake_logic.c$122$1_0$116	= .
	.globl	C$snake_logic.c$122$1_0$116
;src/snake_logic.c:122: snake.direction[0] = 0 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 2)
	ld	(hl), #0x00
	C$snake_logic.c$123$1_0$116	= .
	.globl	C$snake_logic.c$123$1_0$116
;src/snake_logic.c:123: snake.direction[1] = -1 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 3)
	ld	(hl), #0xf8
	C$snake_logic.c$124$1_0$116	= .
	.globl	C$snake_logic.c$124$1_0$116
;src/snake_logic.c:124: }
	inc	sp
	inc	sp
	C$snake_logic.c$124$1_0$116	= .
	.globl	C$snake_logic.c$124$1_0$116
	XG$move_up$0$0	= .
	.globl	XG$move_up$0$0
	ret
	G$move_down$0$0	= .
	.globl	G$move_down$0$0
	C$snake_logic.c$125$1_0$119	= .
	.globl	C$snake_logic.c$125$1_0$119
;src/snake_logic.c:125: void move_down()
;	---------------------------------
; Function move_down
; ---------------------------------
_move_down::
	dec	sp
	dec	sp
	C$snake_logic.c$127$1_0$119	= .
	.globl	C$snake_logic.c$127$1_0$119
;src/snake_logic.c:127: uint8_t *turnaraoundMapValue = &turnaraoundMap[snake.x / 8][snake.y / 8];
	ld	a, (#_snake + 0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	bit	7, b
	jr	Z, 00106$
	ld	hl, #0x0007
	add	hl, bc
00106$:
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_turnaraoundMap
	add	hl,bc
	inc	sp
	inc	sp
	push	hl
	ld	a, (#(_snake + 1) + 0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	bit	7, b
	jr	Z, 00107$
	ld	hl, #0x0007
	add	hl, bc
00107$:
	ld	c, l
	ld	b, h
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	pop	hl
	push	hl
	add	hl, bc
	C$snake_logic.c$128$1_0$119	= .
	.globl	C$snake_logic.c$128$1_0$119
;src/snake_logic.c:128: reset_snake_head_props();
	push	hl
	call	_reset_snake_head_props
	pop	bc
	C$snake_logic.c$129$1_0$119	= .
	.globl	C$snake_logic.c$129$1_0$119
;src/snake_logic.c:129: snake.snakeHeadspriteProp += VERTICAL_FLIP;
	ld	de, #_snake + 86
	ld	a, (de)
	add	a, #0x40
	ld	(de), a
	C$snake_logic.c$130$1_0$119	= .
	.globl	C$snake_logic.c$130$1_0$119
;src/snake_logic.c:130: snake.snakeHeadSpriteIndex = 5u;
	ld	hl, #(_snake + 87)
	ld	(hl), #0x05
	C$snake_logic.c$131$1_0$119	= .
	.globl	C$snake_logic.c$131$1_0$119
;src/snake_logic.c:131: if (is_snake_moving_left())
	push	bc
	call	_is_snake_moving_left
	ld	a, e
	pop	bc
	or	a, a
	jr	Z, 00102$
	C$snake_logic.c$133$2_0$120	= .
	.globl	C$snake_logic.c$133$2_0$120
;src/snake_logic.c:133: *turnaraoundMapValue = VERTICAL_FLIP;
	ld	a, #0x40
	ld	(bc), a
	jr	00103$
00102$:
	C$snake_logic.c$137$2_0$121	= .
	.globl	C$snake_logic.c$137$2_0$121
;src/snake_logic.c:137: *turnaraoundMapValue = VERTICAL_FLIP + HORIZONTAL_FLIP;
	ld	a, #0x60
	ld	(bc), a
00103$:
	C$snake_logic.c$140$1_0$119	= .
	.globl	C$snake_logic.c$140$1_0$119
;src/snake_logic.c:140: snake.direction[0] = 0 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 2)
	ld	(hl), #0x00
	C$snake_logic.c$141$1_0$119	= .
	.globl	C$snake_logic.c$141$1_0$119
;src/snake_logic.c:141: snake.direction[1] = 1 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 3)
	ld	(hl), #0x08
	C$snake_logic.c$142$1_0$119	= .
	.globl	C$snake_logic.c$142$1_0$119
;src/snake_logic.c:142: }
	inc	sp
	inc	sp
	C$snake_logic.c$142$1_0$119	= .
	.globl	C$snake_logic.c$142$1_0$119
	XG$move_down$0$0	= .
	.globl	XG$move_down$0$0
	ret
	G$move_snake$0$0	= .
	.globl	G$move_snake$0$0
	C$snake_logic.c$146$1_0$122	= .
	.globl	C$snake_logic.c$146$1_0$122
;src/snake_logic.c:146: void move_snake()
;	---------------------------------
; Function move_snake
; ---------------------------------
_move_snake::
	add	sp, #-11
	C$snake_logic.c$148$1_0$122	= .
	.globl	C$snake_logic.c$148$1_0$122
;src/snake_logic.c:148: time_t clockValue = clock();
	call	_clock
	C$snake_logic.c$149$1_0$122	= .
	.globl	C$snake_logic.c$149$1_0$122
;src/snake_logic.c:149: uint16_t deltaTime = clockValue - lastTime;
	ld	a, e
	ld	hl, #_lastTime
	sub	a, (hl)
	inc	hl
	ld	c, a
	ld	a, d
	sbc	a, (hl)
	C$snake_logic.c$150$1_0$122	= .
	.globl	C$snake_logic.c$150$1_0$122
;src/snake_logic.c:150: lastTime = clockValue;
	dec	hl
	ld	b, a
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$snake_logic.c$151$1_0$122	= .
	.globl	C$snake_logic.c$151$1_0$122
;src/snake_logic.c:151: timeCounter += deltaTime;
	ld	hl, #_timeCounter
	ld	a, (hl)
	add	a, c
	ld	(hl+), a
	ld	a, (hl)
	adc	a, b
	ld	(hl), a
	C$snake_logic.c$153$1_0$122	= .
	.globl	C$snake_logic.c$153$1_0$122
;src/snake_logic.c:153: if (timeCounter > speed[snake.currentSpeed])
	ld	bc, #_speed+0
	ld	a, (#(_snake + 88) + 0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, bc
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	hl, #_timeCounter
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	jp	NC, 00126$
	C$snake_logic.c$155$2_0$123	= .
	.globl	C$snake_logic.c$155$2_0$123
;src/snake_logic.c:155: timeCounter = 0;
	xor	a, a
	ld	hl, #_timeCounter
	ld	(hl+), a
	ld	(hl), a
	C$snake_logic.c$157$2_1$124	= .
	.globl	C$snake_logic.c$157$2_1$124
;src/snake_logic.c:157: uint8_t prevX = snake.x;
	ld	hl, #_snake
	ld	c, (hl)
	ldhl	sp,	#8
	ld	(hl), c
	C$snake_logic.c$158$2_1$124	= .
	.globl	C$snake_logic.c$158$2_1$124
;src/snake_logic.c:158: uint8_t prevY = snake.y;
	ld	a, (#(_snake + 1) + 0)
	ldhl	sp,	#4
	ld	(hl), a
	C$snake_logic.c$160$2_1$124	= .
	.globl	C$snake_logic.c$160$2_1$124
;src/snake_logic.c:160: snake.x += snake.direction[0];
	ld	a, (#(_snake + 2) + 0)
	add	a, c
	ld	(#_snake),a
	C$snake_logic.c$161$2_1$124	= .
	.globl	C$snake_logic.c$161$2_1$124
;src/snake_logic.c:161: snake.y += snake.direction[1];
	ld	hl, #(_snake + 1)
	ld	c, (hl)
	ld	a, (#(_snake + 3) + 0)
	add	a, c
	ld	(#(_snake + 1)),a
	C$snake_logic.c$164$2_1$124	= .
	.globl	C$snake_logic.c$164$2_1$124
;src/snake_logic.c:164: turnaraoundMap[snake.x / 8][snake.y / 8] = 0;
	ld	a, (#_snake + 0)
	ld	c, a
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	bit	7, b
	jr	Z, 00128$
	ld	hl, #0x0007
	add	hl, bc
00128$:
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_turnaraoundMap
	add	hl,bc
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl+), a
	inc	hl
	ld	a, (#(_snake + 1) + 0)
	ld	c, a
	ld	b, #0x00
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	bit	7, b
	jr	Z, 00129$
	ld	hl, #0x0007
	add	hl, bc
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl), a
00129$:
	ldhl	sp,#9
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ldhl	sp,	#6
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
	ld	c, l
	ld	b, h
	xor	a, a
	ld	(bc), a
;src/snake_logic.c:166: set_sprite_tile(SNAKE_HEAD_VRAM_SPRITE_INDEX, snake.snakeHeadSpriteIndex);
	ld	hl, #_snake + 87
	ld	c, (hl)
;/opt/gbdk/include/gb/gb.h:1314: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), c
;src/snake_logic.c:167: set_sprite_prop(SNAKE_HEAD_VRAM_SPRITE_INDEX, snake.snakeHeadspriteProp);
	ld	hl, #_snake + 86
	ld	c, (hl)
;/opt/gbdk/include/gb/gb.h:1360: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), c
;src/snake_logic.c:169: move_sprite(SNAKE_HEAD_VRAM_SPRITE_INDEX, snake.x, snake.y);
	ld	hl, #(_snake + 1)
	ld	b, (hl)
	ld	hl, #_snake
	ld	c, (hl)
;/opt/gbdk/include/gb/gb.h:1387: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #_shadow_OAM
;/opt/gbdk/include/gb/gb.h:1388: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
	C$snake_logic.c$171$4_1$126	= .
	.globl	C$snake_logic.c$171$4_1$126
;src/snake_logic.c:171: for (int i = 0; i < snake.tailLength; i++)
	xor	a, a
	ldhl	sp,	#9
	ld	(hl+), a
	ld	(hl), a
00124$:
	ld	a, (#(_snake + 85) + 0)
	ld	c, a
	ld	b, #0x00
	ldhl	sp,	#9
	ld	a, (hl+)
	sub	a, c
	ld	a, (hl)
	sbc	a, b
	ld	d, (hl)
	ld	a, b
	bit	7,a
	jr	Z, 00198$
	bit	7, d
	jr	NZ, 00199$
	cp	a, a
	jr	00199$
00198$:
	bit	7, d
	jr	Z, 00199$
	scf
00199$:
	jp	NC, 00126$
	C$snake_logic.c$173$1_0$122	= .
	.globl	C$snake_logic.c$173$1_0$122
;src/snake_logic.c:173: uint8_t currentX = snake.tail[i].x;
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	b, (hl)
	add	a, a
	rl	b
	add	a, #<((_snake + 4))
	ld	c, a
	ld	a, b
	adc	a, #>((_snake + 4))
	ld	b, a
	ld	a, (bc)
	ldhl	sp,	#0
	ld	(hl), a
	C$snake_logic.c$174$1_0$122	= .
	.globl	C$snake_logic.c$174$1_0$122
;src/snake_logic.c:174: uint8_t currentY = snake.tail[i].y;
	ld	l, c
	ld	h, b
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#1
	ld	(hl), a
	C$snake_logic.c$176$4_1$126	= .
	.globl	C$snake_logic.c$176$4_1$126
;src/snake_logic.c:176: if (currentX == snake.x && currentY == snake.y)
	ld	a, (#_snake + 0)
	ldhl	sp,	#7
	ld	(hl), a
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#7
	sub	a, (hl)
	jr	NZ, 00102$
	ld	a, (#(_snake + 1) + 0)
	ldhl	sp,	#7
	ld	(hl), a
	ldhl	sp,	#1
	ld	a, (hl)
	ldhl	sp,	#7
	sub	a, (hl)
	jr	NZ, 00102$
	C$snake_logic.c$178$5_1$127	= .
	.globl	C$snake_logic.c$178$5_1$127
;src/snake_logic.c:178: gameover();
	push	bc
	call	_gameover
	pop	bc
00102$:
	C$snake_logic.c$181$4_1$126	= .
	.globl	C$snake_logic.c$181$4_1$126
;src/snake_logic.c:181: snake.tail[i].x = prevX;
	ldhl	sp,	#8
	C$snake_logic.c$182$4_1$126	= .
	.globl	C$snake_logic.c$182$4_1$126
;src/snake_logic.c:182: snake.tail[i].y = prevY;
	ld	a, (hl-)
	dec	hl
	dec	hl
	ld	(bc), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	dec	hl
	ld	d, a
	ld	a, (hl)
	ld	(de), a
	C$snake_logic.c$184$4_2$128	= .
	.globl	C$snake_logic.c$184$4_2$128
;src/snake_logic.c:184: uint8_t tail_sprite_prop = turnaraoundMap[snake.tail[i].x / 8][snake.tail[i].y / 8];
	ldhl	sp,	#8
	ld	a, (hl)
	ldhl	sp,	#3
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	bit	7, (hl)
	jr	Z, 00130$
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	ld	c, l
	ld	b, h
00130$:
	sra	b
	rr	c
	sra	b
	rr	c
	sra	b
	rr	c
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc,#_turnaraoundMap
	add	hl,bc
	ld	c, l
	ld	b, h
	ldhl	sp,#5
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl-)
	dec	hl
	ld	d, a
	ld	a, (de)
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	ld	a, (hl+)
	inc	hl
	ld	(hl-), a
	dec	hl
	bit	7, (hl)
	jr	Z, 00131$
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
00131$:
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	sra	d
	rr	e
	sra	d
	rr	e
	sra	d
	rr	e
	ld	l, e
	ld	h, d
	add	hl, bc
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	C$snake_logic.c$185$4_2$128	= .
	.globl	C$snake_logic.c$185$4_2$128
;src/snake_logic.c:185: uint8_t spriteToUse = 2u;
	ldhl	sp,	#3
	C$snake_logic.c$186$4_2$128	= .
	.globl	C$snake_logic.c$186$4_2$128
;src/snake_logic.c:186: if (tail_sprite_prop != 0)
	ld	a, #0x02
	ld	(hl-), a
	ld	a, (hl)
	or	a, a
	jr	Z, 00110$
	C$snake_logic.c$188$5_2$129	= .
	.globl	C$snake_logic.c$188$5_2$129
;src/snake_logic.c:188: spriteToUse = 4u;
	inc	hl
	ld	(hl), #0x04
	jr	00111$
00110$:
	C$snake_logic.c$190$4_2$128	= .
	.globl	C$snake_logic.c$190$4_2$128
;src/snake_logic.c:190: else if (currentX == prevX)
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#8
	sub	a, (hl)
	jr	NZ, 00107$
	C$snake_logic.c$192$5_2$130	= .
	.globl	C$snake_logic.c$192$5_2$130
;src/snake_logic.c:192: spriteToUse = 6u;
	ldhl	sp,	#3
	ld	(hl), #0x06
	jr	00111$
00107$:
	C$snake_logic.c$194$4_2$128	= .
	.globl	C$snake_logic.c$194$4_2$128
;src/snake_logic.c:194: else if (currentX == 99)
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x63
	jr	NZ, 00111$
	C$snake_logic.c$196$5_2$131	= .
	.globl	C$snake_logic.c$196$5_2$131
;src/snake_logic.c:196: spriteToUse = snake.lastUsedTailIndex;
	ld	a, (#(_snake + 84) + 0)
	ldhl	sp,	#3
	ld	(hl), a
00111$:
	C$snake_logic.c$199$4_2$128	= .
	.globl	C$snake_logic.c$199$4_2$128
;src/snake_logic.c:199: if (i == snake.tailLength - 1)
	ld	a, (#(_snake + 85) + 0)
	ld	b, #0x00
	ld	c, a
	dec	bc
	ldhl	sp,	#9
	ld	a, (hl)
	sub	a, c
	jr	NZ, 00113$
	inc	hl
	ld	a, (hl)
	sub	a, b
	jr	NZ, 00113$
	C$snake_logic.c$201$5_2$132	= .
	.globl	C$snake_logic.c$201$5_2$132
;src/snake_logic.c:201: snake.lastUsedTailIndex = spriteToUse;
	ld	de, #(_snake + 84)
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(de), a
00113$:
;src/snake_logic.c:204: set_sprite_tile(i + 7u, spriteToUse);
	ldhl	sp,	#9
	ld	a, (hl)
	add	a, #0x07
	ldhl	sp,	#4
	ld	(hl), a
	ld	c, (hl)
;/opt/gbdk/include/gb/gb.h:1314: shadow_OAM[nb].tile=tile;
	ldhl	sp,	#7
	ld	a, c
	ld	(hl+), a
	ld	(hl), #0x00
	ld	a, #0x02
00211$:
	ldhl	sp,	#7
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00211$
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0002
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#3
;src/snake_logic.c:205: set_sprite_prop(i + 7u, tail_sprite_prop);
	ld	a, (hl+)
	ld	(de), a
	ld	c, (hl)
;/opt/gbdk/include/gb/gb.h:1360: shadow_OAM[nb].prop=prop;
	ldhl	sp,	#7
	ld	a, c
	ld	(hl+), a
	ld	(hl), #0x00
	ld	a, #0x02
00212$:
	ldhl	sp,	#7
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00212$
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0003
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(de), a
;src/snake_logic.c:206: move_sprite(i + 7u, snake.tail[i].x, snake.tail[i].y);
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	c, (hl)
	add	a, a
	rl	c
	add	a, #<((_snake + 4))
	ld	e, a
	ld	a, c
	adc	a, #>((_snake + 4))
	ld	d, a
	ld	c, e
	ld	b, d
	inc	bc
	ld	a, (bc)
	ldhl	sp,	#7
	ld	(hl+), a
	ld	a, (de)
	ld	(hl), a
	ldhl	sp,	#4
;/opt/gbdk/include/gb/gb.h:1387: OAM_item_t * itm = &shadow_OAM[nb];
	ld	a, (hl+)
	ld	(hl+), a
	xor	a, a
	ld	(hl-), a
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ldhl	sp,	#6
	ld	a, (hl-)
	dec	hl
	ld	(hl), a
	ld	a, #0x02
00214$:
	ldhl	sp,	#3
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00214$
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #_shadow_OAM
	add	hl, de
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
;/opt/gbdk/include/gb/gb.h:1388: itm->y=y, itm->x=x;
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	a, (hl+)
	ld	d, a
	ld	a, (hl-)
	dec	hl
	ld	(de), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	l, e
	ld	h, d
	inc	hl
	push	hl
	ld	a, l
	ldhl	sp,	#5
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#4
	ld	(hl-), a
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ldhl	sp,	#8
	ld	a, (hl)
	ld	(de), a
	C$snake_logic.c$208$4_2$128	= .
	.globl	C$snake_logic.c$208$4_2$128
;src/snake_logic.c:208: prevX = currentX;
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#8
	ld	(hl), a
	C$snake_logic.c$209$4_2$128	= .
	.globl	C$snake_logic.c$209$4_2$128
;src/snake_logic.c:209: prevY = currentY;
	ldhl	sp,	#1
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
	C$snake_logic.c$171$3_1$125	= .
	.globl	C$snake_logic.c$171$3_1$125
;src/snake_logic.c:171: for (int i = 0; i < snake.tailLength; i++)
	ldhl	sp,	#9
	inc	(hl)
	jp	NZ,00124$
	inc	hl
	inc	(hl)
	jp	00124$
00126$:
	C$snake_logic.c$212$1_0$122	= .
	.globl	C$snake_logic.c$212$1_0$122
;src/snake_logic.c:212: }
	add	sp, #11
	C$snake_logic.c$212$1_0$122	= .
	.globl	C$snake_logic.c$212$1_0$122
	XG$move_snake$0$0	= .
	.globl	XG$move_snake$0$0
	ret
	.area _CODE
	.area _INITIALIZER
Fsnake_logic$__xinit_lastTime$0_0$0 == .
__xinit__lastTime:
	.dw #0x0000
Fsnake_logic$__xinit_timeCounter$0_0$0 == .
__xinit__timeCounter:
	.dw #0x0000
	.area _CABS (ABS)
