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
	.globl _gameover_if_collide_with_wall
	.globl _gameover
	.globl _check_input
	.globl _startGame
	.globl _enableSound
	.globl _placeApple
	.globl _initApple
	.globl _check_collision_with_wall
	.globl _move_down
	.globl _move_up
	.globl _move_left
	.globl _move_right
	.globl _move_snake
	.globl _enlarge_snake
	.globl _init_snake
	.globl _hUGE_dosound
	.globl _hUGE_init
	.globl _rand
	.globl _initrand
	.globl _clock
	.globl _abs
	.globl _set_sprite_palette
	.globl _set_bkg_palette
	.globl _set_sprite_data
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl _wait_vbl_done
	.globl _joypad
	.globl _add_VBL
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
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
Fmain$appleEatCount$0_0$0==.
_appleEatCount:
	.ds 1
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
	G$initApple$0$0	= .
	.globl	G$initApple$0$0
	C$main.c$28$0_0$132	= .
	.globl	C$main.c$28$0_0$132
;src/main.c:28: void initApple()
;	---------------------------------
; Function initApple
; ---------------------------------
_initApple::
;/opt/gbdk/include/gb/gb.h:1314: shadow_OAM[nb].tile=tile;
	ld	hl, #(_shadow_OAM + 6)
	ld	(hl), #0x03
	C$main.c$30$3_0$132	= .
	.globl	C$main.c$30$3_0$132
;src/main.c:30: set_sprite_tile(APPLE_VRAM_SPRITE_INDEX, 3u); // 3 => position of apple sprite on vram
	C$main.c$31$3_0$132	= .
	.globl	C$main.c$31$3_0$132
;src/main.c:31: }
	C$main.c$31$3_0$132	= .
	.globl	C$main.c$31$3_0$132
	XG$initApple$0$0	= .
	.globl	XG$initApple$0$0
	ret
Fmain$speed$0_0$0 == .
_speed:
	.ds 14
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
	G$placeApple$0$0	= .
	.globl	G$placeApple$0$0
	C$main.c$33$3_0$136	= .
	.globl	C$main.c$33$3_0$136
;src/main.c:33: void placeApple()
;	---------------------------------
; Function placeApple
; ---------------------------------
_placeApple::
	C$main.c$35$1_0$136	= .
	.globl	C$main.c$35$1_0$136
;src/main.c:35: apple.x = ((abs(rand()) % (12u - 7u)) + 7u) * 8u;
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
	C$main.c$36$1_0$136	= .
	.globl	C$main.c$36$1_0$136
;src/main.c:36: apple.y = ((abs(rand()) % (15u - 7u)) + 7u) * 8u;
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
;src/main.c:37: move_sprite(APPLE_VRAM_SPRITE_INDEX, apple.x, apple.y);
	ld	b, a
	ld	hl, #_apple
	ld	c, (hl)
;/opt/gbdk/include/gb/gb.h:1387: OAM_item_t * itm = &shadow_OAM[nb];
	ld	hl, #(_shadow_OAM + 4)
;/opt/gbdk/include/gb/gb.h:1388: itm->y=y, itm->x=x;
	ld	a, b
	ld	(hl+), a
	ld	(hl), c
	C$main.c$37$3_0$136	= .
	.globl	C$main.c$37$3_0$136
;src/main.c:37: move_sprite(APPLE_VRAM_SPRITE_INDEX, apple.x, apple.y);
	C$main.c$38$3_0$136	= .
	.globl	C$main.c$38$3_0$136
;src/main.c:38: }
	C$main.c$38$3_0$136	= .
	.globl	C$main.c$38$3_0$136
	XG$placeApple$0$0	= .
	.globl	XG$placeApple$0$0
	ret
	G$enableSound$0$0	= .
	.globl	G$enableSound$0$0
	C$main.c$40$3_0$140	= .
	.globl	C$main.c$40$3_0$140
;src/main.c:40: void enableSound()
;	---------------------------------
; Function enableSound
; ---------------------------------
_enableSound::
	C$main.c$42$1_0$140	= .
	.globl	C$main.c$42$1_0$140
;src/main.c:42: NR52_REG = 0x80;
	ld	a, #0x80
	ldh	(_NR52_REG + 0), a
	C$main.c$43$1_0$140	= .
	.globl	C$main.c$43$1_0$140
;src/main.c:43: NR51_REG = 0xFF;
	ld	a, #0xff
	ldh	(_NR51_REG + 0), a
	C$main.c$44$1_0$140	= .
	.globl	C$main.c$44$1_0$140
;src/main.c:44: NR50_REG = 0x77;
	ld	a, #0x77
	ldh	(_NR50_REG + 0), a
	C$main.c$45$1_0$140	= .
	.globl	C$main.c$45$1_0$140
;src/main.c:45: }
	C$main.c$45$1_0$140	= .
	.globl	C$main.c$45$1_0$140
	XG$enableSound$0$0	= .
	.globl	XG$enableSound$0$0
	ret
	G$startGame$0$0	= .
	.globl	G$startGame$0$0
	C$main.c$47$1_0$141	= .
	.globl	C$main.c$47$1_0$141
;src/main.c:47: void startGame()
;	---------------------------------
; Function startGame
; ---------------------------------
_startGame::
	C$main.c$49$1_0$141	= .
	.globl	C$main.c$49$1_0$141
;src/main.c:49: initrand(clock());
	call	_clock
	push	de
	call	_initrand
	pop	hl
	C$main.c$50$1_0$141	= .
	.globl	C$main.c$50$1_0$141
;src/main.c:50: init_snake();
	call	_init_snake
	C$main.c$51$1_0$141	= .
	.globl	C$main.c$51$1_0$141
;src/main.c:51: initApple();
	call	_initApple
	C$main.c$52$1_0$141	= .
	.globl	C$main.c$52$1_0$141
;src/main.c:52: placeApple();
	call	_placeApple
	C$main.c$53$1_0$141	= .
	.globl	C$main.c$53$1_0$141
;src/main.c:53: appleEatCount = 0;
	ld	hl, #_appleEatCount
	ld	(hl), #0x00
	C$main.c$54$1_0$141	= .
	.globl	C$main.c$54$1_0$141
;src/main.c:54: SHOW_BKG;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
	ldh	(_LCDC_REG + 0), a
	C$main.c$55$1_0$141	= .
	.globl	C$main.c$55$1_0$141
;src/main.c:55: SHOW_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
	ldh	(_LCDC_REG + 0), a
	C$main.c$56$1_0$141	= .
	.globl	C$main.c$56$1_0$141
;src/main.c:56: }
	C$main.c$56$1_0$141	= .
	.globl	C$main.c$56$1_0$141
	XG$startGame$0$0	= .
	.globl	XG$startGame$0$0
	ret
	G$check_input$0$0	= .
	.globl	G$check_input$0$0
	C$main.c$58$1_0$142	= .
	.globl	C$main.c$58$1_0$142
;src/main.c:58: void check_input()
;	---------------------------------
; Function check_input
; ---------------------------------
_check_input::
	C$main.c$60$1_0$142	= .
	.globl	C$main.c$60$1_0$142
;src/main.c:60: const uint8_t joypadState = joypad();
	call	_joypad
	ld	c, e
	C$main.c$62$1_0$142	= .
	.globl	C$main.c$62$1_0$142
;src/main.c:62: if ((joypadState == J_RIGHT) && (snake.direction[1] != 0))
	ld	a, c
	dec	a
	jr	NZ, 00113$
	ld	a, (#(_snake + 3) + 0)
	or	a, a
	jr	Z, 00113$
	C$main.c$64$2_0$143	= .
	.globl	C$main.c$64$2_0$143
;src/main.c:64: move_right();
	push	bc
	call	_move_right
	pop	bc
	jr	00114$
00113$:
	C$main.c$66$1_0$142	= .
	.globl	C$main.c$66$1_0$142
;src/main.c:66: else if (joypadState == J_DOWN && (snake.direction[0] != 0))
	ld	a, c
	sub	a, #0x08
	jr	NZ, 00109$
	ld	a, (#(_snake + 2) + 0)
	or	a, a
	jr	Z, 00109$
	C$main.c$68$2_0$144	= .
	.globl	C$main.c$68$2_0$144
;src/main.c:68: move_down();
	push	bc
	call	_move_down
	pop	bc
	jr	00114$
00109$:
	C$main.c$70$1_0$142	= .
	.globl	C$main.c$70$1_0$142
;src/main.c:70: else if (joypadState == J_LEFT && (snake.direction[1] != 0))
	ld	a, c
	sub	a, #0x02
	jr	NZ, 00105$
	ld	a, (#(_snake + 3) + 0)
	or	a, a
	jr	Z, 00105$
	C$main.c$72$2_0$145	= .
	.globl	C$main.c$72$2_0$145
;src/main.c:72: move_left();
	push	bc
	call	_move_left
	pop	bc
	jr	00114$
00105$:
	C$main.c$74$1_0$142	= .
	.globl	C$main.c$74$1_0$142
;src/main.c:74: else if (joypadState == J_UP && (snake.direction[0] != 0))
	ld	a, c
	sub	a, #0x04
	jr	NZ, 00114$
	ld	a, (#(_snake + 2) + 0)
	or	a, a
	jr	Z, 00114$
	C$main.c$76$2_0$146	= .
	.globl	C$main.c$76$2_0$146
;src/main.c:76: move_up();
	push	bc
	call	_move_up
	pop	bc
00114$:
	C$main.c$78$1_0$142	= .
	.globl	C$main.c$78$1_0$142
;src/main.c:78: if (joypadState & J_START)
	bit	7, c
	C$main.c$80$2_0$147	= .
	.globl	C$main.c$80$2_0$147
;src/main.c:80: startGame();
	jp	NZ,_startGame
	C$main.c$82$1_0$142	= .
	.globl	C$main.c$82$1_0$142
;src/main.c:82: }
	C$main.c$82$1_0$142	= .
	.globl	C$main.c$82$1_0$142
	XG$check_input$0$0	= .
	.globl	XG$check_input$0$0
	ret
	G$gameover$0$0	= .
	.globl	G$gameover$0$0
	C$main.c$84$1_0$148	= .
	.globl	C$main.c$84$1_0$148
;src/main.c:84: void gameover()
;	---------------------------------
; Function gameover
; ---------------------------------
_gameover::
	C$main.c$87$1_0$148	= .
	.globl	C$main.c$87$1_0$148
;src/main.c:87: HIDE_SPRITES;
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
	ldh	(_LCDC_REG + 0), a
	C$main.c$88$1_0$148	= .
	.globl	C$main.c$88$1_0$148
;src/main.c:88: }
	C$main.c$88$1_0$148	= .
	.globl	C$main.c$88$1_0$148
	XG$gameover$0$0	= .
	.globl	XG$gameover$0$0
	ret
	G$gameover_if_collide_with_wall$0$0	= .
	.globl	G$gameover_if_collide_with_wall$0$0
	C$main.c$90$1_0$149	= .
	.globl	C$main.c$90$1_0$149
;src/main.c:90: void gameover_if_collide_with_wall()
;	---------------------------------
; Function gameover_if_collide_with_wall
; ---------------------------------
_gameover_if_collide_with_wall::
	C$main.c$92$1_0$149	= .
	.globl	C$main.c$92$1_0$149
;src/main.c:92: if (check_collision_with_wall())
	call	_check_collision_with_wall
	ld	a, e
	or	a, a
	C$main.c$94$2_0$150	= .
	.globl	C$main.c$94$2_0$150
;src/main.c:94: gameover();
	jp	NZ,_gameover
	C$main.c$96$1_0$149	= .
	.globl	C$main.c$96$1_0$149
;src/main.c:96: }
	C$main.c$96$1_0$149	= .
	.globl	C$main.c$96$1_0$149
	XG$gameover_if_collide_with_wall$0$0	= .
	.globl	XG$gameover_if_collide_with_wall$0$0
	ret
	G$collideWIthApple$0$0	= .
	.globl	G$collideWIthApple$0$0
	C$main.c$98$1_0$151	= .
	.globl	C$main.c$98$1_0$151
;src/main.c:98: uint8_t collideWIthApple()
;	---------------------------------
; Function collideWIthApple
; ---------------------------------
_collideWIthApple::
	C$main.c$100$1_0$151	= .
	.globl	C$main.c$100$1_0$151
;src/main.c:100: return (snake.x == apple.x && snake.y == apple.y);
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
	C$main.c$101$1_0$151	= .
	.globl	C$main.c$101$1_0$151
;src/main.c:101: }
	C$main.c$101$1_0$151	= .
	.globl	C$main.c$101$1_0$151
	XG$collideWIthApple$0$0	= .
	.globl	XG$collideWIthApple$0$0
	ret
	G$adjustSnakeSpeed$0$0	= .
	.globl	G$adjustSnakeSpeed$0$0
	C$main.c$103$1_0$152	= .
	.globl	C$main.c$103$1_0$152
;src/main.c:103: void adjustSnakeSpeed()
;	---------------------------------
; Function adjustSnakeSpeed
; ---------------------------------
_adjustSnakeSpeed::
	C$main.c$105$1_0$152	= .
	.globl	C$main.c$105$1_0$152
;src/main.c:105: if (appleEatCount >= 5)
	ld	a, (#_appleEatCount)
	sub	a, #0x05
	ret	C
	C$main.c$107$2_0$153	= .
	.globl	C$main.c$107$2_0$153
;src/main.c:107: if (snake.currentSpeed <= 4)
	ld	bc, #_snake+88
	ld	a, (bc)
	ld	e, a
	ld	a, #0x04
	sub	a, e
	jr	C, 00102$
	C$main.c$109$3_0$154	= .
	.globl	C$main.c$109$3_0$154
;src/main.c:109: snake.currentSpeed++;
	ld	a, e
	inc	a
	ld	(bc), a
00102$:
	C$main.c$111$2_0$153	= .
	.globl	C$main.c$111$2_0$153
;src/main.c:111: appleEatCount = 0;
	ld	hl, #_appleEatCount
	ld	(hl), #0x00
	C$main.c$113$1_0$152	= .
	.globl	C$main.c$113$1_0$152
;src/main.c:113: }
	C$main.c$113$1_0$152	= .
	.globl	C$main.c$113$1_0$152
	XG$adjustSnakeSpeed$0$0	= .
	.globl	XG$adjustSnakeSpeed$0$0
	ret
	G$eatAppleIfPossible$0$0	= .
	.globl	G$eatAppleIfPossible$0$0
	C$main.c$115$1_0$155	= .
	.globl	C$main.c$115$1_0$155
;src/main.c:115: void eatAppleIfPossible()
;	---------------------------------
; Function eatAppleIfPossible
; ---------------------------------
_eatAppleIfPossible::
	C$main.c$118$1_0$155	= .
	.globl	C$main.c$118$1_0$155
;src/main.c:118: if (collideWIthApple() == 1)
	call	_collideWIthApple
	dec	e
	ret	NZ
	C$main.c$120$2_0$156	= .
	.globl	C$main.c$120$2_0$156
;src/main.c:120: enlarge_snake();
	call	_enlarge_snake
	C$main.c$121$2_0$156	= .
	.globl	C$main.c$121$2_0$156
;src/main.c:121: placeApple();
	call	_placeApple
	C$main.c$122$2_0$156	= .
	.globl	C$main.c$122$2_0$156
;src/main.c:122: appleEatCount++;
	ld	hl, #_appleEatCount
	inc	(hl)
	C$main.c$123$2_0$156	= .
	.globl	C$main.c$123$2_0$156
;src/main.c:123: adjustSnakeSpeed();
	C$main.c$125$1_0$155	= .
	.globl	C$main.c$125$1_0$155
;src/main.c:125: }
	C$main.c$125$1_0$155	= .
	.globl	C$main.c$125$1_0$155
	XG$eatAppleIfPossible$0$0	= .
	.globl	XG$eatAppleIfPossible$0$0
	jp	_adjustSnakeSpeed
	G$main$0$0	= .
	.globl	G$main$0$0
	C$main.c$127$1_0$158	= .
	.globl	C$main.c$127$1_0$158
;src/main.c:127: void main(void)
;	---------------------------------
; Function main
; ---------------------------------
_main::
	C$main.c$134$1_0$158	= .
	.globl	C$main.c$134$1_0$158
;src/main.c:134: }
	di
	C$main.c$131$2_0$159	= .
	.globl	C$main.c$131$2_0$159
;src/main.c:131: hUGE_init(&ingame_track);
	ld	de, #_ingame_track
	push	de
	call	_hUGE_init
	pop	hl
	C$main.c$132$2_0$159	= .
	.globl	C$main.c$132$2_0$159
;src/main.c:132: add_VBL(hUGE_dosound);
	ld	de, #_hUGE_dosound
	push	de
	call	_add_VBL
	pop	hl
	C$main.c$133$2_0$159	= .
	.globl	C$main.c$133$2_0$159
;src/main.c:133: enableSound();
	call	_enableSound
	ei
	C$main.c$136$1_0$158	= .
	.globl	C$main.c$136$1_0$158
;src/main.c:136: set_sprite_data(0, 7u, SimpleSnakeTiles);
	ld	de, #_SimpleSnakeTiles
	push	de
	ld	hl, #0x700
	push	hl
	call	_set_sprite_data
	add	sp, #4
	C$main.c$138$1_0$158	= .
	.globl	C$main.c$138$1_0$158
;src/main.c:138: set_bkg_palette(0, 1u, &palette[0]);
	ld	de, #_palette
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_bkg_palette
	add	sp, #4
	C$main.c$139$1_0$158	= .
	.globl	C$main.c$139$1_0$158
;src/main.c:139: set_sprite_palette(0, 1u, &palette2[0]);
	ld	de, #_palette2
	push	de
	xor	a, a
	inc	a
	push	af
	call	_set_sprite_palette
	add	sp, #4
	C$main.c$141$1_0$158	= .
	.globl	C$main.c$141$1_0$158
;src/main.c:141: set_bkg_data(0, 9u, snake_bg_tiles);
	ld	de, #_snake_bg_tiles
	push	de
	ld	hl, #0x900
	push	hl
	call	_set_bkg_data
	add	sp, #4
	C$main.c$142$1_0$158	= .
	.globl	C$main.c$142$1_0$158
;src/main.c:142: set_bkg_tiles(0, 0, 20u, 20u, snake_bg_map);
	ld	de, #_snake_bg_map
	push	de
	ld	hl, #0x1414
	push	hl
	xor	a, a
	rrca
	push	af
	call	_set_bkg_tiles
	add	sp, #6
	C$main.c$144$1_0$158	= .
	.globl	C$main.c$144$1_0$158
;src/main.c:144: startGame();
	call	_startGame
	C$main.c$147$1_0$158	= .
	.globl	C$main.c$147$1_0$158
;src/main.c:147: while (1)
00102$:
	C$main.c$149$2_0$160	= .
	.globl	C$main.c$149$2_0$160
;src/main.c:149: check_input();
	call	_check_input
	C$main.c$151$2_0$160	= .
	.globl	C$main.c$151$2_0$160
;src/main.c:151: eatAppleIfPossible();
	call	_eatAppleIfPossible
	C$main.c$152$2_0$160	= .
	.globl	C$main.c$152$2_0$160
;src/main.c:152: move_snake();
	call	_move_snake
	C$main.c$153$2_0$160	= .
	.globl	C$main.c$153$2_0$160
;src/main.c:153: gameover_if_collide_with_wall();
	call	_gameover_if_collide_with_wall
	C$main.c$155$2_0$160	= .
	.globl	C$main.c$155$2_0$160
;src/main.c:155: wait_vbl_done();
	call	_wait_vbl_done
	C$main.c$157$1_0$158	= .
	.globl	C$main.c$157$1_0$158
;src/main.c:157: }
	C$main.c$157$1_0$158	= .
	.globl	C$main.c$157$1_0$158
	XG$main$0$0	= .
	.globl	XG$main$0$0
	jr	00102$
	.area _CODE
	.area _INITIALIZER
Fmain$__xinit_appleEatCount$0_0$0 == .
__xinit__appleEatCount:
	.db #0x00	; 0
	.area _CABS (ABS)
