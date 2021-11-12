;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.1.6 #12539 (Linux)
;--------------------------------------------------------
	.module main
	.optsdcc -mgbz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _eatAppleIfPossible
	.globl _adjustSnakeSpeed
	.globl _collideWIthApple
	.globl _moveSnake
	.globl _gameover
	.globl _controls_controller
	.globl _is_snake_moving_left
	.globl _is_snake_moving_up
	.globl _startGame
	.globl _enableSound
	.globl _reset_snake_head
	.globl _placeApple
	.globl _initApple
	.globl _initSnake
	.globl _enlargeSnake
	.globl _hUGE_dosound
	.globl _hUGE_init
	.globl _rand
	.globl _initrand
	.globl _clock
	.globl _abs
	.globl _set_sprite_palette
	.globl _set_bkg_palette
	.globl _set_sprite_data
	.globl _get_bkg_tile_xy
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _add_VBL
	.globl _timeCounter
	.globl _lastTime
	.globl _apple
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$apple$0_0$0==.
_apple::
	.ds 2
Fmain$turnaraoundMap$0_0$0==.
_turnaraoundMap:
	.ds 625
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
Fmain$currentSpeed$0_0$0==.
_currentSpeed:
	.ds 1
Fmain$appleEatCount$0_0$0==.
_appleEatCount:
	.ds 1
Fmain$snakeHeadspriteProp$0_0$0==.
_snakeHeadspriteProp:
	.ds 1
Fmain$snakeHeadSpriteIndex$0_0$0==.
_snakeHeadSpriteIndex:
	.ds 1
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
	G$initSnake$0$0	= .
	.globl	G$initSnake$0$0
	C$main.c$50$0_0$147	= .
	.globl	C$main.c$50$0_0$147
;src/main.c:50: void initSnake()
;	---------------------------------
; Function initSnake
; ---------------------------------
_initSnake::
	C$main.c$52$1_0$147	= .
	.globl	C$main.c$52$1_0$147
;src/main.c:52: snake.x = (9 * 8) + OFF_SCREEN_OFFSET_X;
	ld	hl, #_snake
	ld	(hl), #0x50
	C$main.c$53$1_0$147	= .
	.globl	C$main.c$53$1_0$147
;src/main.c:53: snake.y = ((DISPLAY_MAX_TILE_Y * 8) / 2) + OFF_SCREEN_OFFSET_Y;
	ld	hl, #(_snake + 1)
	ld	(hl), #0x58
	C$main.c$54$1_0$147	= .
	.globl	C$main.c$54$1_0$147
;src/main.c:54: snake.lastUsedTailIndex = 1u;
	ld	hl, #(_snake + 84)
	ld	(hl), #0x01
	C$main.c$55$1_0$147	= .
	.globl	C$main.c$55$1_0$147
;src/main.c:55: snake.direction[0] = -1 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 2)
	ld	(hl), #0xf8
	C$main.c$56$1_0$147	= .
	.globl	C$main.c$56$1_0$147
;src/main.c:56: snake.direction[1] = 0 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 3)
	C$main.c$57$3_0$149	= .
	.globl	C$main.c$57$3_0$149
;src/main.c:57: for (int i = 0; i <= snake.tailLength; i++)
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
;src/main.c:59: hide_sprite(i + 6u);
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
	C$main.c$60$3_0$149	= .
	.globl	C$main.c$60$3_0$149
;src/main.c:60: snake.tail[i].x = 99;
	ld	l, c
	ld	h, b
	add	hl, hl
	ld	de, #(_snake + 4)
	add	hl, de
	C$main.c$61$3_0$149	= .
	.globl	C$main.c$61$3_0$149
;src/main.c:61: snake.tail[i].y = 99;
	ld	a, #0x63
	ld	(hl+), a
	ld	(hl), #0x63
	C$main.c$57$2_0$148	= .
	.globl	C$main.c$57$2_0$148
;src/main.c:57: for (int i = 0; i <= snake.tailLength; i++)
	inc	bc
	jr	00105$
00101$:
	C$main.c$63$1_0$147	= .
	.globl	C$main.c$63$1_0$147
;src/main.c:63: snake.tailLength = 0;
	ld	hl, #(_snake + 85)
	ld	(hl), #0x00
;/opt/gbdk/include/gb/gb.h:1314: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), #0x01
	C$main.c$65$3_0$147	= .
	.globl	C$main.c$65$3_0$147
;src/main.c:65: set_sprite_tile(SNAKE_H_SPRITE_INDEX, 1u); // 1 => position of snake sprite on vram
	C$main.c$66$3_0$147	= .
	.globl	C$main.c$66$3_0$147
;src/main.c:66: }
	C$main.c$66$3_0$147	= .
	.globl	C$main.c$66$3_0$147
	XG$initSnake$0$0	= .
	.globl	XG$initSnake$0$0
	ret
Fmain$palette$0_0$0 == .
_palette:
	.dw #0x7fff
	.dw #0x0000
	.dw #0x0287
	.dw #0x031c
Fmain$palette2$0_0$0 == .
_palette2:
	.dw #0x17bc
	.dw #0x22e7
	.dw #0x19c4
	.dw #0x001d
Fmain$speed$0_0$0 == .
_speed:
	.dw #0x000a
	.dw #0x0009
	.dw #0x0008
	.dw #0x0006
	.dw #0x0004
	.dw #0x0002
	.dw #0x0001
	G$initApple$0$0	= .
	.globl	G$initApple$0$0
	C$main.c$68$3_0$156	= .
	.globl	C$main.c$68$3_0$156
;src/main.c:68: void initApple()
;	---------------------------------
; Function initApple
; ---------------------------------
_initApple::
;/opt/gbdk/include/gb/gb.h:1314: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 6)
	ld	(hl), #0x03
	C$main.c$70$3_0$156	= .
	.globl	C$main.c$70$3_0$156
;src/main.c:70: set_sprite_tile(APPLE_SPRITE_INDEX, 3u); // 3 => position of apple sprite on vram
	C$main.c$71$3_0$156	= .
	.globl	C$main.c$71$3_0$156
;src/main.c:71: }
	C$main.c$71$3_0$156	= .
	.globl	C$main.c$71$3_0$156
	XG$initApple$0$0	= .
	.globl	XG$initApple$0$0
	ret
	G$placeApple$0$0	= .
	.globl	G$placeApple$0$0
	C$main.c$73$3_0$160	= .
	.globl	C$main.c$73$3_0$160
;src/main.c:73: void placeApple()
;	---------------------------------
; Function placeApple
; ---------------------------------
_placeApple::
	C$main.c$75$1_0$160	= .
	.globl	C$main.c$75$1_0$160
;src/main.c:75: apple.x = ((abs(rand()) % (12u - 7u)) + 7u) * 8u;
	call	_rand
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
	push	de
	call	_abs
	pop	hl
	ld	bc, #0x0005
	push	bc
	push	de
	call	__moduint
	add	sp, #4
	ld	a, e
	add	a, #0x07
	add	a, a
	add	a, a
	add	a, a
	ld	(#_apple),a
	C$main.c$76$1_0$160	= .
	.globl	C$main.c$76$1_0$160
;src/main.c:76: apple.y = ((abs(rand()) % (15u - 7u)) + 7u) * 8u;
	call	_rand
	ld	a, e
	rlca
	sbc	a, a
	ld	d, a
	push	de
	call	_abs
	pop	hl
	ld	a, e
	and	a, #0x07
	add	a, #0x07
	add	a, a
	add	a, a
	add	a, a
	ld	(#(_apple + 1)),a
;src/main.c:77: move_sprite(APPLE_SPRITE_INDEX, apple.x, apple.y);
	ld	b, a
	ld	hl, #_apple
	ld	c, (hl)
;/opt/gbdk/include/gb/gb.h:1387: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 4)
;/opt/gbdk/include/gb/gb.h:1388: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
	C$main.c$77$3_0$160	= .
	.globl	C$main.c$77$3_0$160
;src/main.c:77: move_sprite(APPLE_SPRITE_INDEX, apple.x, apple.y);
	C$main.c$78$3_0$160	= .
	.globl	C$main.c$78$3_0$160
;src/main.c:78: }
	C$main.c$78$3_0$160	= .
	.globl	C$main.c$78$3_0$160
	XG$placeApple$0$0	= .
	.globl	XG$placeApple$0$0
	ret
	G$reset_snake_head$0$0	= .
	.globl	G$reset_snake_head$0$0
	C$main.c$80$3_0$164	= .
	.globl	C$main.c$80$3_0$164
;src/main.c:80: void reset_snake_head()
;	---------------------------------
; Function reset_snake_head
; ---------------------------------
_reset_snake_head::
	C$main.c$82$1_0$164	= .
	.globl	C$main.c$82$1_0$164
;src/main.c:82: snakeHeadspriteProp = 0;
	ld	hl, #_snakeHeadspriteProp
	ld	(hl), #0x00
	C$main.c$83$1_0$164	= .
	.globl	C$main.c$83$1_0$164
;src/main.c:83: snakeHeadSpriteIndex = 1u;
	ld	hl, #_snakeHeadSpriteIndex
	ld	(hl), #0x01
	C$main.c$84$1_0$164	= .
	.globl	C$main.c$84$1_0$164
;src/main.c:84: }
	C$main.c$84$1_0$164	= .
	.globl	C$main.c$84$1_0$164
	XG$reset_snake_head$0$0	= .
	.globl	XG$reset_snake_head$0$0
	ret
	G$enableSound$0$0	= .
	.globl	G$enableSound$0$0
	C$main.c$86$1_0$165	= .
	.globl	C$main.c$86$1_0$165
;src/main.c:86: void enableSound()
;	---------------------------------
; Function enableSound
; ---------------------------------
_enableSound::
	C$main.c$88$1_0$165	= .
	.globl	C$main.c$88$1_0$165
;src/main.c:88: NR52_REG = 0x80;
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
	C$main.c$89$1_0$165	= .
	.globl	C$main.c$89$1_0$165
;src/main.c:89: NR51_REG = 0xFF;
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
	C$main.c$90$1_0$165	= .
	.globl	C$main.c$90$1_0$165
;src/main.c:90: NR50_REG = 0x77;
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
	C$main.c$91$1_0$165	= .
	.globl	C$main.c$91$1_0$165
;src/main.c:91: }
	C$main.c$91$1_0$165	= .
	.globl	C$main.c$91$1_0$165
	XG$enableSound$0$0	= .
	.globl	XG$enableSound$0$0
	ret
	G$startGame$0$0	= .
	.globl	G$startGame$0$0
	C$main.c$93$1_0$166	= .
	.globl	C$main.c$93$1_0$166
;src/main.c:93: void startGame()
;	---------------------------------
; Function startGame
; ---------------------------------
_startGame::
	C$main.c$95$1_0$166	= .
	.globl	C$main.c$95$1_0$166
;src/main.c:95: initrand(clock());
	call	_clock
	push	de
	call	_initrand
	pop	hl
	C$main.c$96$1_0$166	= .
	.globl	C$main.c$96$1_0$166
;src/main.c:96: initSnake();
	call	_initSnake
	C$main.c$97$1_0$166	= .
	.globl	C$main.c$97$1_0$166
;src/main.c:97: reset_snake_head();
	call	_reset_snake_head
	C$main.c$98$1_0$166	= .
	.globl	C$main.c$98$1_0$166
;src/main.c:98: initApple();
	call	_initApple
	C$main.c$99$1_0$166	= .
	.globl	C$main.c$99$1_0$166
;src/main.c:99: placeApple();
	call	_placeApple
	C$main.c$100$1_0$166	= .
	.globl	C$main.c$100$1_0$166
;src/main.c:100: currentSpeed = 0;
	ld	hl, #_currentSpeed
	ld	(hl), #0x00
	C$main.c$101$1_0$166	= .
	.globl	C$main.c$101$1_0$166
;src/main.c:101: appleEatCount = 0;
	ld	hl, #_appleEatCount
	ld	(hl), #0x00
	C$main.c$102$1_0$166	= .
	.globl	C$main.c$102$1_0$166
;src/main.c:102: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$103$1_0$166	= .
	.globl	C$main.c$103$1_0$166
;src/main.c:103: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$main.c$104$1_0$166	= .
	.globl	C$main.c$104$1_0$166
;src/main.c:104: }
	C$main.c$104$1_0$166	= .
	.globl	C$main.c$104$1_0$166
	XG$startGame$0$0	= .
	.globl	XG$startGame$0$0
	ret
	G$is_snake_moving_up$0$0	= .
	.globl	G$is_snake_moving_up$0$0
	C$main.c$106$1_0$167	= .
	.globl	C$main.c$106$1_0$167
;src/main.c:106: BOOLEAN is_snake_moving_up()
;	---------------------------------
; Function is_snake_moving_up
; ---------------------------------
_is_snake_moving_up::
	C$main.c$108$1_0$167	= .
	.globl	C$main.c$108$1_0$167
;src/main.c:108: return snake.direction[1] == -1 * SNAKE_MOVEMENT_STEP;
	ld	a, (#(_snake + 3) + 0)
	sub	a, #0xf8
	ld	a, #0x01
	jr	Z, 00104$
	xor	a, a
00104$:
	ld	e, a
	C$main.c$109$1_0$167	= .
	.globl	C$main.c$109$1_0$167
;src/main.c:109: }
	C$main.c$109$1_0$167	= .
	.globl	C$main.c$109$1_0$167
	XG$is_snake_moving_up$0$0	= .
	.globl	XG$is_snake_moving_up$0$0
	ret
	G$is_snake_moving_left$0$0	= .
	.globl	G$is_snake_moving_left$0$0
	C$main.c$111$1_0$168	= .
	.globl	C$main.c$111$1_0$168
;src/main.c:111: BOOLEAN is_snake_moving_left()
;	---------------------------------
; Function is_snake_moving_left
; ---------------------------------
_is_snake_moving_left::
	C$main.c$113$1_0$168	= .
	.globl	C$main.c$113$1_0$168
;src/main.c:113: return snake.direction[0] == -1 * SNAKE_MOVEMENT_STEP;
	ld	a, (#(_snake + 2) + 0)
	sub	a, #0xf8
	ld	a, #0x01
	jr	Z, 00104$
	xor	a, a
00104$:
	ld	e, a
	C$main.c$114$1_0$168	= .
	.globl	C$main.c$114$1_0$168
;src/main.c:114: }
	C$main.c$114$1_0$168	= .
	.globl	C$main.c$114$1_0$168
	XG$is_snake_moving_left$0$0	= .
	.globl	XG$is_snake_moving_left$0$0
	ret
	G$controls_controller$0$0	= .
	.globl	G$controls_controller$0$0
	C$main.c$116$1_0$169	= .
	.globl	C$main.c$116$1_0$169
;src/main.c:116: void controls_controller()
;	---------------------------------
; Function controls_controller
; ---------------------------------
_controls_controller::
	dec	sp
	dec	sp
	C$main.c$119$1_0$169	= .
	.globl	C$main.c$119$1_0$169
;src/main.c:119: uint8_t *turnaraoundMapValue = &turnaraoundMap[snake.x / 8][snake.y / 8];
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
	jr	Z, 00132$
	ld	hl, #0x0007
	add	hl, bc
00132$:
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
	jr	Z, 00133$
	ld	hl, #0x0007
	add	hl, bc
00133$:
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
	ld	c, l
	ld	b, h
	C$main.c$121$1_0$169	= .
	.globl	C$main.c$121$1_0$169
;src/main.c:121: const UINT8 joypadState = joypad();
	call	_joypad
	ldhl	sp,	#1
	ld	(hl), e
	C$main.c$123$1_0$169	= .
	.globl	C$main.c$123$1_0$169
;src/main.c:123: if ((joypadState == J_RIGHT) && (snake.direction[1] != 0))
	ld	a, (hl)
	dec	a
	jr	NZ, 00125$
	ld	a, (#(_snake + 3) + 0)
	or	a, a
	jr	Z, 00125$
	C$main.c$125$2_0$170	= .
	.globl	C$main.c$125$2_0$170
;src/main.c:125: reset_snake_head();
	push	bc
	call	_reset_snake_head
	pop	bc
	C$main.c$126$2_0$170	= .
	.globl	C$main.c$126$2_0$170
;src/main.c:126: snakeHeadspriteProp += HORIZONTAL_FLIP;
	ld	hl, #_snakeHeadspriteProp
	ld	a, (hl)
	add	a, #0x20
	ld	(hl), a
	C$main.c$127$2_0$170	= .
	.globl	C$main.c$127$2_0$170
;src/main.c:127: snakeHeadSpriteIndex = 1u;
	ld	hl, #_snakeHeadSpriteIndex
	ld	(hl), #0x01
	C$main.c$128$2_0$170	= .
	.globl	C$main.c$128$2_0$170
;src/main.c:128: if (is_snake_moving_up())
	push	bc
	call	_is_snake_moving_up
	ld	a, e
	pop	bc
	or	a, a
	jr	Z, 00102$
	C$main.c$130$3_0$171	= .
	.globl	C$main.c$130$3_0$171
;src/main.c:130: *turnaraoundMapValue = VERTICAL_FLIP;
	ld	a, #0x40
	ld	(bc), a
	jr	00103$
00102$:
	C$main.c$134$3_0$172	= .
	.globl	C$main.c$134$3_0$172
;src/main.c:134: *turnaraoundMapValue = 128;
	ld	a, #0x80
	ld	(bc), a
00103$:
	C$main.c$137$2_0$170	= .
	.globl	C$main.c$137$2_0$170
;src/main.c:137: snake.direction[0] = 1 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 2)
	ld	(hl), #0x08
	C$main.c$138$2_0$170	= .
	.globl	C$main.c$138$2_0$170
;src/main.c:138: snake.direction[1] = 0 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 3)
	ld	(hl), #0x00
	jp	00126$
00125$:
	C$main.c$140$1_0$169	= .
	.globl	C$main.c$140$1_0$169
;src/main.c:140: else if (joypadState == J_DOWN && (snake.direction[0] != 0))
	ldhl	sp,	#1
	ld	a, (hl)
	sub	a, #0x08
	jr	NZ, 00121$
	ld	a, (#(_snake + 2) + 0)
	or	a, a
	jr	Z, 00121$
	C$main.c$142$2_0$173	= .
	.globl	C$main.c$142$2_0$173
;src/main.c:142: reset_snake_head();
	push	bc
	call	_reset_snake_head
	pop	bc
	C$main.c$143$2_0$173	= .
	.globl	C$main.c$143$2_0$173
;src/main.c:143: snakeHeadspriteProp += VERTICAL_FLIP;
	ld	hl, #_snakeHeadspriteProp
	ld	a, (hl)
	add	a, #0x40
	ld	(hl), a
	C$main.c$144$2_0$173	= .
	.globl	C$main.c$144$2_0$173
;src/main.c:144: snakeHeadSpriteIndex = 5u;
	ld	hl, #_snakeHeadSpriteIndex
	ld	(hl), #0x05
	C$main.c$145$2_0$173	= .
	.globl	C$main.c$145$2_0$173
;src/main.c:145: if (is_snake_moving_left())
	push	bc
	call	_is_snake_moving_left
	ld	a, e
	pop	bc
	or	a, a
	jr	Z, 00105$
	C$main.c$147$3_0$174	= .
	.globl	C$main.c$147$3_0$174
;src/main.c:147: *turnaraoundMapValue = VERTICAL_FLIP;
	ld	a, #0x40
	ld	(bc), a
	jr	00106$
00105$:
	C$main.c$151$3_0$175	= .
	.globl	C$main.c$151$3_0$175
;src/main.c:151: *turnaraoundMapValue = VERTICAL_FLIP + HORIZONTAL_FLIP;
	ld	a, #0x60
	ld	(bc), a
00106$:
	C$main.c$154$2_0$173	= .
	.globl	C$main.c$154$2_0$173
;src/main.c:154: snake.direction[0] = 0 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 2)
	ld	(hl), #0x00
	C$main.c$155$2_0$173	= .
	.globl	C$main.c$155$2_0$173
;src/main.c:155: snake.direction[1] = 1 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 3)
	ld	(hl), #0x08
	jr	00126$
00121$:
	C$main.c$157$1_0$169	= .
	.globl	C$main.c$157$1_0$169
;src/main.c:157: else if (joypadState == J_LEFT && (snake.direction[1] != 0))
	ldhl	sp,	#1
	ld	a, (hl)
	sub	a, #0x02
	jr	NZ, 00117$
	ld	a, (#(_snake + 3) + 0)
	or	a, a
	jr	Z, 00117$
	C$main.c$159$2_0$176	= .
	.globl	C$main.c$159$2_0$176
;src/main.c:159: reset_snake_head();
	push	bc
	call	_reset_snake_head
	call	_is_snake_moving_up
	ld	a, e
	pop	bc
	or	a, a
	jr	Z, 00108$
	C$main.c$162$3_0$177	= .
	.globl	C$main.c$162$3_0$177
;src/main.c:162: *turnaraoundMapValue = VERTICAL_FLIP + HORIZONTAL_FLIP;
	ld	a, #0x60
	ld	(bc), a
	jr	00109$
00108$:
	C$main.c$166$3_0$178	= .
	.globl	C$main.c$166$3_0$178
;src/main.c:166: *turnaraoundMapValue = HORIZONTAL_FLIP;
	ld	a, #0x20
	ld	(bc), a
00109$:
	C$main.c$169$2_0$176	= .
	.globl	C$main.c$169$2_0$176
;src/main.c:169: snake.direction[0] = -1 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 2)
	ld	(hl), #0xf8
	C$main.c$170$2_0$176	= .
	.globl	C$main.c$170$2_0$176
;src/main.c:170: snake.direction[1] = 0 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 3)
	ld	(hl), #0x00
	jr	00126$
00117$:
	C$main.c$172$1_0$169	= .
	.globl	C$main.c$172$1_0$169
;src/main.c:172: else if (joypadState == J_UP && (snake.direction[0] != 0))
	ldhl	sp,	#1
	ld	a, (hl)
	sub	a, #0x04
	jr	NZ, 00126$
	ld	a, (#(_snake + 2) + 0)
	or	a, a
	jr	Z, 00126$
	C$main.c$174$2_0$179	= .
	.globl	C$main.c$174$2_0$179
;src/main.c:174: reset_snake_head();
	push	bc
	call	_reset_snake_head
	pop	bc
	C$main.c$175$2_0$179	= .
	.globl	C$main.c$175$2_0$179
;src/main.c:175: snakeHeadSpriteIndex = 5u;
	ld	hl, #_snakeHeadSpriteIndex
	ld	(hl), #0x05
	C$main.c$176$2_0$179	= .
	.globl	C$main.c$176$2_0$179
;src/main.c:176: if (is_snake_moving_left())
	push	bc
	call	_is_snake_moving_left
	ld	a, e
	pop	bc
	or	a, a
	jr	Z, 00111$
	C$main.c$178$3_0$180	= .
	.globl	C$main.c$178$3_0$180
;src/main.c:178: *turnaraoundMapValue = 128;
	ld	a, #0x80
	ld	(bc), a
	jr	00112$
00111$:
	C$main.c$182$3_0$181	= .
	.globl	C$main.c$182$3_0$181
;src/main.c:182: *turnaraoundMapValue = HORIZONTAL_FLIP;
	ld	a, #0x20
	ld	(bc), a
00112$:
	C$main.c$185$2_0$179	= .
	.globl	C$main.c$185$2_0$179
;src/main.c:185: snake.direction[0] = 0 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 2)
	ld	(hl), #0x00
	C$main.c$186$2_0$179	= .
	.globl	C$main.c$186$2_0$179
;src/main.c:186: snake.direction[1] = -1 * SNAKE_MOVEMENT_STEP;
	ld	hl, #(_snake + 3)
	ld	(hl), #0xf8
00126$:
	C$main.c$188$1_0$169	= .
	.globl	C$main.c$188$1_0$169
;src/main.c:188: if (joypadState & J_START)
	push	hl
	ldhl	sp,	#3
	bit	7, (hl)
	pop	hl
	jr	Z, 00130$
	C$main.c$190$2_0$182	= .
	.globl	C$main.c$190$2_0$182
;src/main.c:190: startGame();
	inc	sp
	inc	sp
	jp	_startGame
00130$:
	C$main.c$192$1_0$169	= .
	.globl	C$main.c$192$1_0$169
;src/main.c:192: }
	inc	sp
	inc	sp
	C$main.c$192$1_0$169	= .
	.globl	C$main.c$192$1_0$169
	XG$controls_controller$0$0	= .
	.globl	XG$controls_controller$0$0
	ret
	G$gameover$0$0	= .
	.globl	G$gameover$0$0
	C$main.c$194$1_0$183	= .
	.globl	C$main.c$194$1_0$183
;src/main.c:194: void gameover()
;	---------------------------------
; Function gameover
; ---------------------------------
_gameover::
	C$main.c$197$1_0$183	= .
	.globl	C$main.c$197$1_0$183
;src/main.c:197: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
	C$main.c$198$1_0$183	= .
	.globl	C$main.c$198$1_0$183
;src/main.c:198: }
	C$main.c$198$1_0$183	= .
	.globl	C$main.c$198$1_0$183
	XG$gameover$0$0	= .
	.globl	XG$gameover$0$0
	ret
	G$moveSnake$0$0	= .
	.globl	G$moveSnake$0$0
	C$main.c$202$1_0$184	= .
	.globl	C$main.c$202$1_0$184
;src/main.c:202: void moveSnake()
;	---------------------------------
; Function moveSnake
; ---------------------------------
_moveSnake::
	add	sp, #-11
	C$main.c$204$1_0$184	= .
	.globl	C$main.c$204$1_0$184
;src/main.c:204: time_t clockValue = clock();
	call	_clock
	C$main.c$205$1_0$184	= .
	.globl	C$main.c$205$1_0$184
;src/main.c:205: UINT16 deltaTime = clockValue - lastTime;
	ld	a, e
	ld	hl, #_lastTime
	sub	a, (hl)
	inc	hl
	ld	c, a
	ld	a, d
	sbc	a, (hl)
	C$main.c$206$1_0$184	= .
	.globl	C$main.c$206$1_0$184
;src/main.c:206: lastTime = clockValue;
	dec	hl
	ld	b, a
	ld	a, e
	ld	(hl+), a
	ld	(hl), d
	C$main.c$207$1_0$184	= .
	.globl	C$main.c$207$1_0$184
;src/main.c:207: timeCounter += deltaTime;
	ld	hl, #_timeCounter
	ld	a, (hl)
	add	a, c
	ld	(hl+), a
	ld	a, (hl)
	adc	a, b
	ld	(hl), a
	C$main.c$209$1_0$184	= .
	.globl	C$main.c$209$1_0$184
;src/main.c:209: if (timeCounter > speed[currentSpeed])
	ld	bc, #_speed+0
	ld	hl, #_currentSpeed
	ld	l, (hl)
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
	jp	NC, 00129$
	C$main.c$211$2_0$185	= .
	.globl	C$main.c$211$2_0$185
;src/main.c:211: timeCounter = 0;
	xor	a, a
	ld	hl, #_timeCounter
	ld	(hl+), a
	ld	(hl), a
	C$main.c$213$2_1$186	= .
	.globl	C$main.c$213$2_1$186
;src/main.c:213: UINT8 prevX = snake.x;
	ld	a, (#_snake + 0)
	ldhl	sp,	#8
	ld	(hl), a
	C$main.c$214$2_1$186	= .
	.globl	C$main.c$214$2_1$186
;src/main.c:214: UINT8 prevY = snake.y;
	ld	a, (#(_snake + 1) + 0)
	ldhl	sp,	#4
	ld	(hl), a
	C$main.c$216$2_1$186	= .
	.globl	C$main.c$216$2_1$186
;src/main.c:216: snake.x += snake.direction[0];
	ld	hl, #_snake
	ld	c, (hl)
	ld	a, (#(_snake + 2) + 0)
	add	a, c
	ld	(#_snake),a
	C$main.c$217$2_1$186	= .
	.globl	C$main.c$217$2_1$186
;src/main.c:217: snake.y += snake.direction[1];
	ld	hl, #(_snake + 1)
	ld	c, (hl)
	ld	a, (#(_snake + 3) + 0)
	add	a, c
	ld	(#(_snake + 1)),a
	C$main.c$220$2_1$186	= .
	.globl	C$main.c$220$2_1$186
;src/main.c:220: turnaraoundMap[snake.x / 8][snake.y / 8] = 0;
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
	jr	Z, 00131$
	ld	hl, #0x0007
	add	hl, bc
00131$:
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
	jr	Z, 00132$
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
00132$:
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
	C$main.c$222$2_2$187	= .
	.globl	C$main.c$222$2_2$187
;src/main.c:222: uint8_t nextTileIndex = get_bkg_tile_xy((snake.x / 8) - 1, (snake.y / 8) - 2);
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
	jr	Z, 00133$
	ld	hl, #0x0007
	add	hl, bc
00133$:
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	ld	a, l
	add	a, #0xfe
	ldhl	sp,	#7
	ld	(hl+), a
	inc	hl
	ld	a, (#_snake + 0)
	ld	c, a
	ld	b, #0x00
	ld	a, c
	ld	(hl+), a
	ld	(hl), b
	bit	7, b
	jr	Z, 00134$
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
00134$:
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	b, a
	ld	c, (hl)
	sra	c
	rr	b
	sra	c
	rr	b
	sra	c
	rr	b
	dec	b
	ldhl	sp,	#7
	ld	a, (hl)
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_get_bkg_tile_xy
	pop	hl
	C$main.c$225$2_2$187	= .
	.globl	C$main.c$225$2_2$187
;src/main.c:225: if (nextTileIndex >= 1u && nextTileIndex <= 9u)
	ld	a, e
	sub	a, #0x01
	jr	C, 00102$
	ld	a, #0x09
	sub	a, e
	jr	C, 00102$
	C$main.c$227$3_2$188	= .
	.globl	C$main.c$227$3_2$188
;src/main.c:227: gameover();
	call	_gameover
00102$:
;src/main.c:230: set_sprite_tile(SNAKE_H_SPRITE_INDEX, snakeHeadSpriteIndex);
	ld	hl, #_snakeHeadSpriteIndex
	ld	c, (hl)
;/opt/gbdk/include/gb/gb.h:1314: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 2)
	ld	(hl), c
;src/main.c:231: set_sprite_prop(SNAKE_H_SPRITE_INDEX, snakeHeadspriteProp);
	ld	hl, #_snakeHeadspriteProp
	ld	c, (hl)
;/opt/gbdk/include/gb/gb.h:1360: shadow_OAM[nb].prop=prop;
	ld	hl, #(_shadow_OAM + 3)
	ld	(hl), c
;src/main.c:233: move_sprite(SNAKE_H_SPRITE_INDEX, snake.x, snake.y);
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
	C$main.c$235$4_2$190	= .
	.globl	C$main.c$235$4_2$190
;src/main.c:235: for (int i = 0; i < snake.tailLength; i++)
	xor	a, a
	ldhl	sp,	#9
	ld	(hl+), a
	ld	(hl), a
00127$:
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
	jr	Z, 00223$
	bit	7, d
	jr	NZ, 00224$
	cp	a, a
	jr	00224$
00223$:
	bit	7, d
	jr	Z, 00224$
	scf
00224$:
	jp	NC, 00129$
	C$main.c$237$1_0$184	= .
	.globl	C$main.c$237$1_0$184
;src/main.c:237: UINT8 currentX = snake.tail[i].x;
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
	C$main.c$238$1_0$184	= .
	.globl	C$main.c$238$1_0$184
;src/main.c:238: UINT8 currentY = snake.tail[i].y;
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
	C$main.c$240$4_2$190	= .
	.globl	C$main.c$240$4_2$190
;src/main.c:240: if (currentX == snake.x && currentY == snake.y)
	ld	a, (#_snake + 0)
	ldhl	sp,	#7
	ld	(hl), a
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#7
	sub	a, (hl)
	jr	NZ, 00105$
	ld	a, (#(_snake + 1) + 0)
	ldhl	sp,	#7
	ld	(hl), a
	ldhl	sp,	#1
	ld	a, (hl)
	ldhl	sp,	#7
	sub	a, (hl)
	jr	NZ, 00105$
	C$main.c$242$5_2$191	= .
	.globl	C$main.c$242$5_2$191
;src/main.c:242: gameover();
	push	bc
	call	_gameover
	pop	bc
00105$:
	C$main.c$245$4_2$190	= .
	.globl	C$main.c$245$4_2$190
;src/main.c:245: snake.tail[i].x = prevX;
	ldhl	sp,	#8
	C$main.c$246$4_2$190	= .
	.globl	C$main.c$246$4_2$190
;src/main.c:246: snake.tail[i].y = prevY;
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
	C$main.c$248$4_3$192	= .
	.globl	C$main.c$248$4_3$192
;src/main.c:248: uint8_t tail_sprite_prop = turnaraoundMap[snake.tail[i].x / 8][snake.tail[i].y / 8];
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
	jr	Z, 00135$
	dec	hl
	ld	a, (hl+)
	ld	e, a
	ld	d, (hl)
	ld	hl, #0x0007
	add	hl, de
	ld	c, l
	ld	b, h
00135$:
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
	jr	Z, 00136$
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
00136$:
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
	C$main.c$249$4_3$192	= .
	.globl	C$main.c$249$4_3$192
;src/main.c:249: uint8_t spriteToUse = 2u;
	ldhl	sp,	#3
	C$main.c$250$4_3$192	= .
	.globl	C$main.c$250$4_3$192
;src/main.c:250: if (tail_sprite_prop != 0)
	ld	a, #0x02
	ld	(hl-), a
	ld	a, (hl)
	or	a, a
	jr	Z, 00113$
	C$main.c$252$5_3$193	= .
	.globl	C$main.c$252$5_3$193
;src/main.c:252: spriteToUse = 4u;
	inc	hl
	ld	(hl), #0x04
	jr	00114$
00113$:
	C$main.c$254$4_3$192	= .
	.globl	C$main.c$254$4_3$192
;src/main.c:254: else if (currentX == prevX)
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#8
	sub	a, (hl)
	jr	NZ, 00110$
	C$main.c$256$5_3$194	= .
	.globl	C$main.c$256$5_3$194
;src/main.c:256: spriteToUse = 6u;
	ldhl	sp,	#3
	ld	(hl), #0x06
	jr	00114$
00110$:
	C$main.c$258$4_3$192	= .
	.globl	C$main.c$258$4_3$192
;src/main.c:258: else if (currentX == 99)
	ldhl	sp,	#0
	ld	a, (hl)
	sub	a, #0x63
	jr	NZ, 00114$
	C$main.c$260$5_3$195	= .
	.globl	C$main.c$260$5_3$195
;src/main.c:260: spriteToUse = snake.lastUsedTailIndex;
	ld	a, (#(_snake + 84) + 0)
	ldhl	sp,	#3
	ld	(hl), a
00114$:
	C$main.c$263$4_3$192	= .
	.globl	C$main.c$263$4_3$192
;src/main.c:263: if (i == snake.tailLength - 1)
	ld	a, (#(_snake + 85) + 0)
	ld	b, #0x00
	ld	c, a
	dec	bc
	ldhl	sp,	#9
	ld	a, (hl)
	sub	a, c
	jr	NZ, 00116$
	inc	hl
	ld	a, (hl)
	sub	a, b
	jr	NZ, 00116$
	C$main.c$265$5_3$196	= .
	.globl	C$main.c$265$5_3$196
;src/main.c:265: snake.lastUsedTailIndex = spriteToUse;
	ld	de, #(_snake + 84)
	ldhl	sp,	#3
	ld	a, (hl)
	ld	(de), a
00116$:
;src/main.c:268: set_sprite_tile(i + 7u, spriteToUse);
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
00236$:
	ldhl	sp,	#7
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00236$
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
;src/main.c:269: set_sprite_prop(i + 7u, tail_sprite_prop);
	ld	a, (hl+)
	ld	(de), a
	ld	c, (hl)
;/opt/gbdk/include/gb/gb.h:1360: shadow_OAM[nb].prop=prop;
	ldhl	sp,	#7
	ld	a, c
	ld	(hl+), a
	ld	(hl), #0x00
	ld	a, #0x02
00237$:
	ldhl	sp,	#7
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00237$
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
;src/main.c:270: move_sprite(i + 7u, snake.tail[i].x, snake.tail[i].y);
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
00239$:
	ldhl	sp,	#3
	sla	(hl)
	inc	hl
	rl	(hl)
	dec	a
	jr	NZ, 00239$
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
	C$main.c$272$4_3$192	= .
	.globl	C$main.c$272$4_3$192
;src/main.c:272: prevX = currentX;
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#8
	ld	(hl), a
	C$main.c$273$4_3$192	= .
	.globl	C$main.c$273$4_3$192
;src/main.c:273: prevY = currentY;
	ldhl	sp,	#1
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
	C$main.c$235$3_2$189	= .
	.globl	C$main.c$235$3_2$189
;src/main.c:235: for (int i = 0; i < snake.tailLength; i++)
	ldhl	sp,	#9
	inc	(hl)
	jp	NZ,00127$
	inc	hl
	inc	(hl)
	jp	00127$
00129$:
	C$main.c$276$1_0$184	= .
	.globl	C$main.c$276$1_0$184
;src/main.c:276: }
	add	sp, #11
	C$main.c$276$1_0$184	= .
	.globl	C$main.c$276$1_0$184
	XG$moveSnake$0$0	= .
	.globl	XG$moveSnake$0$0
	ret
	G$collideWIthApple$0$0	= .
	.globl	G$collideWIthApple$0$0
	C$main.c$278$1_0$215	= .
	.globl	C$main.c$278$1_0$215
;src/main.c:278: UINT8 collideWIthApple()
;	---------------------------------
; Function collideWIthApple
; ---------------------------------
_collideWIthApple::
	C$main.c$280$1_0$215	= .
	.globl	C$main.c$280$1_0$215
;src/main.c:280: return (snake.x == apple.x && snake.y == apple.y);
	ld	hl, #_snake
	ld	c, (hl)
	ld	hl, #_apple
	ld	b, (hl)
	ld	a, c
	sub	a, b
	jr	NZ, 00103$
	ld	hl, #(_snake + 1)
	ld	c, (hl)
	ld	hl, #(_apple + 1)
	ld	b, (hl)
	ld	a, c
	sub	a, b
	jr	Z, 00104$
00103$:
	ld	e, #0x00
	ret
00104$:
	ld	e, #0x01
	C$main.c$281$1_0$215	= .
	.globl	C$main.c$281$1_0$215
;src/main.c:281: }
	C$main.c$281$1_0$215	= .
	.globl	C$main.c$281$1_0$215
	XG$collideWIthApple$0$0	= .
	.globl	XG$collideWIthApple$0$0
	ret
	G$adjustSnakeSpeed$0$0	= .
	.globl	G$adjustSnakeSpeed$0$0
	C$main.c$283$1_0$216	= .
	.globl	C$main.c$283$1_0$216
;src/main.c:283: void adjustSnakeSpeed()
;	---------------------------------
; Function adjustSnakeSpeed
; ---------------------------------
_adjustSnakeSpeed::
	C$main.c$285$1_0$216	= .
	.globl	C$main.c$285$1_0$216
;src/main.c:285: if (appleEatCount >= 5)
	ld	a, (#_appleEatCount)
	sub	a, #0x05
	ret	C
	C$main.c$287$2_0$217	= .
	.globl	C$main.c$287$2_0$217
;src/main.c:287: if (currentSpeed <= 4)
	ld	a, #0x04
	ld	hl, #_currentSpeed
	sub	a, (hl)
	jr	C, 00102$
	C$main.c$289$3_0$218	= .
	.globl	C$main.c$289$3_0$218
;src/main.c:289: currentSpeed++;
	inc	(hl)
00102$:
	C$main.c$291$2_0$217	= .
	.globl	C$main.c$291$2_0$217
;src/main.c:291: appleEatCount = 0;
	ld	hl, #_appleEatCount
	ld	(hl), #0x00
	C$main.c$293$1_0$216	= .
	.globl	C$main.c$293$1_0$216
;src/main.c:293: }
	C$main.c$293$1_0$216	= .
	.globl	C$main.c$293$1_0$216
	XG$adjustSnakeSpeed$0$0	= .
	.globl	XG$adjustSnakeSpeed$0$0
	ret
	G$eatAppleIfPossible$0$0	= .
	.globl	G$eatAppleIfPossible$0$0
	C$main.c$295$1_0$219	= .
	.globl	C$main.c$295$1_0$219
;src/main.c:295: void eatAppleIfPossible()
;	---------------------------------
; Function eatAppleIfPossible
; ---------------------------------
_eatAppleIfPossible::
	C$main.c$298$1_0$219	= .
	.globl	C$main.c$298$1_0$219
;src/main.c:298: if (collideWIthApple() == 1)
	call	_collideWIthApple
	dec	e
	ret	NZ
	C$main.c$300$2_0$220	= .
	.globl	C$main.c$300$2_0$220
;src/main.c:300: enlargeSnake();
	call	_enlargeSnake
	C$main.c$301$2_0$220	= .
	.globl	C$main.c$301$2_0$220
;src/main.c:301: placeApple();
	call	_placeApple
	C$main.c$302$2_0$220	= .
	.globl	C$main.c$302$2_0$220
;src/main.c:302: appleEatCount++;
	ld	hl, #_appleEatCount
	inc	(hl)
	C$main.c$303$2_0$220	= .
	.globl	C$main.c$303$2_0$220
;src/main.c:303: adjustSnakeSpeed();
	C$main.c$305$1_0$219	= .
	.globl	C$main.c$305$1_0$219
;src/main.c:305: }
	C$main.c$305$1_0$219	= .
	.globl	C$main.c$305$1_0$219
	XG$eatAppleIfPossible$0$0	= .
	.globl	XG$eatAppleIfPossible$0$0
	jp	_adjustSnakeSpeed
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$307$1_0$222	= .
	.globl	C$main.c$307$1_0$222
;src/main.c:307: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$314$1_0$222	= .
	.globl	C$main.c$314$1_0$222
;src/main.c:314: }
	di
	C$main.c$311$2_0$223	= .
	.globl	C$main.c$311$2_0$223
;src/main.c:311: hUGE_init(&ingame_track);
	ld	de, #_ingame_track
	push	de
	call	_hUGE_init
	pop	hl
	C$main.c$312$2_0$223	= .
	.globl	C$main.c$312$2_0$223
;src/main.c:312: add_VBL(hUGE_dosound);
	ld	de, #_hUGE_dosound
	push	de
	call	_add_VBL
	pop	hl
	C$main.c$313$2_0$223	= .
	.globl	C$main.c$313$2_0$223
;src/main.c:313: enableSound();
	call	_enableSound
	ei
	C$main.c$316$1_0$222	= .
	.globl	C$main.c$316$1_0$222
;src/main.c:316: set_sprite_data(0, 7u, SimpleSnakeTiles);
	ld	de, #_SimpleSnakeTiles
	push	de
	ld	hl, #0x700
	push	hl
	call	_set_sprite_data
	add	sp, #4
	C$main.c$318$1_0$222	= .
	.globl	C$main.c$318$1_0$222
;src/main.c:318: set_bkg_palette(0, 1u, &palette[0]);
	ld	de, #_palette
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_bkg_palette
	add	sp, #4
	C$main.c$319$1_0$222	= .
	.globl	C$main.c$319$1_0$222
;src/main.c:319: set_sprite_palette(0, 1u, &palette2[0]);
	ld	de, #_palette2
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_sprite_palette
	add	sp, #4
	C$main.c$321$1_0$222	= .
	.globl	C$main.c$321$1_0$222
;src/main.c:321: set_bkg_data(0, 9u, snake_bg_tiles);
	ld	de, #_snake_bg_tiles
	push	de
	ld	hl, #0x900
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$322$1_0$222	= .
	.globl	C$main.c$322$1_0$222
;src/main.c:322: set_bkg_tiles(0, 0, 20u, 20u, snake_bg_map);
	ld	de, #_snake_bg_map
	push	de
	ld	hl, #0x1414
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$324$1_0$222	= .
	.globl	C$main.c$324$1_0$222
;src/main.c:324: startGame();
	call	_startGame
	C$main.c$327$1_0$222	= .
	.globl	C$main.c$327$1_0$222
;src/main.c:327: while (1)
00102$:
	C$main.c$329$2_0$224	= .
	.globl	C$main.c$329$2_0$224
;src/main.c:329: controls_controller();
	call	_controls_controller
	C$main.c$331$2_0$224	= .
	.globl	C$main.c$331$2_0$224
;src/main.c:331: eatAppleIfPossible();
	call	_eatAppleIfPossible
	C$main.c$332$2_0$224	= .
	.globl	C$main.c$332$2_0$224
;src/main.c:332: moveSnake();
	call	_moveSnake
	C$main.c$334$2_0$224	= .
	.globl	C$main.c$334$2_0$224
;src/main.c:334: wait_vbl_done();
	call	_wait_vbl_done
	C$main.c$336$1_0$222	= .
	.globl	C$main.c$336$1_0$222
;src/main.c:336: }
	C$main.c$336$1_0$222	= .
	.globl	C$main.c$336$1_0$222
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00102$
	.area _CODE
	.area _INITIALIZER
Fmain$__xinit_currentSpeed$0_0$0 == .
__xinit__currentSpeed:
	.db #0x00	; 0
Fmain$__xinit_appleEatCount$0_0$0 == .
__xinit__appleEatCount:
	.db #0x00	; 0
Fmain$__xinit_snakeHeadspriteProp$0_0$0 == .
__xinit__snakeHeadspriteProp:
	.db #0x00	; 0
Fmain$__xinit_snakeHeadSpriteIndex$0_0$0 == .
__xinit__snakeHeadSpriteIndex:
	.db #0x01	; 1
Fmain$__xinit_lastTime$0_0$0 == .
__xinit__lastTime:
	.dw #0x0000
Fmain$__xinit_timeCounter$0_0$0 == .
__xinit__timeCounter:
	.dw #0x0000
	.area _CABS (ABS)
