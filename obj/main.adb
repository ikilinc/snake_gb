M:main
S:Lmain.set_2bpp_palette$palette$1_0$25({2}SI:U),B,1,2
S:Lmain.set_1bpp_colors$fgcolor$1_0$28({1}SC:U),B,1,2
S:Lmain.set_1bpp_colors$bgcolor$1_0$28({1}SC:U),B,1,3
S:Lmain.move_bkg$x$1_0$38({1}SC:U),B,1,2
S:Lmain.move_bkg$y$1_0$38({1}SC:U),B,1,3
S:Lmain.scroll_bkg$x$1_0$40({1}SC:S),B,1,2
S:Lmain.scroll_bkg$y$1_0$40({1}SC:S),B,1,3
S:Lmain.move_win$x$1_0$51({1}SC:U),B,1,2
S:Lmain.move_win$y$1_0$51({1}SC:U),B,1,3
S:Lmain.scroll_win$x$1_0$53({1}SC:S),B,1,2
S:Lmain.scroll_win$y$1_0$53({1}SC:S),B,1,3
S:Lmain.SET_SHADOW_OAM_ADDRESS$address$1_0$58({2}DG,SV:S),B,1,2
S:Lmain.set_sprite_tile$nb$1_0$60({1}SC:U),B,1,2
S:Lmain.set_sprite_tile$tile$1_0$60({1}SC:U),B,1,3
S:Lmain.get_sprite_tile$nb$1_0$62({1}SC:U),B,1,2
S:Lmain.set_sprite_prop$nb$1_0$64({1}SC:U),B,1,2
S:Lmain.set_sprite_prop$prop$1_0$64({1}SC:U),B,1,3
S:Lmain.get_sprite_prop$nb$1_0$66({1}SC:U),B,1,2
S:Lmain.move_sprite$nb$1_0$68({1}SC:U),B,1,2
S:Lmain.move_sprite$x$1_0$68({1}SC:U),B,1,3
S:Lmain.move_sprite$y$1_0$68({1}SC:U),B,1,4
S:Lmain.move_sprite$itm$1_0$69({2}DG,STOAM_item_t:S),B,1,-2
S:Lmain.scroll_sprite$nb$1_0$70({1}SC:U),B,1,2
S:Lmain.scroll_sprite$x$1_0$70({1}SC:S),B,1,3
S:Lmain.scroll_sprite$y$1_0$70({1}SC:S),B,1,4
S:Lmain.scroll_sprite$itm$1_0$71({2}DG,STOAM_item_t:S),B,1,-2
S:Lmain.hide_sprite$nb$1_0$72({1}SC:U),B,1,2
S:Lmain.set_native_tile_data$first_tile$1_0$80({2}SI:U),B,1,2
S:Lmain.set_native_tile_data$nb_tiles$1_0$80({1}SC:U),B,1,4
S:Lmain.set_native_tile_data$data$1_0$80({2}DG,SC:U),B,1,5
S:Lmain.aligned_alloc$alignment$1_0$110({2}SI:S),B,1,2
S:Lmain.aligned_alloc$size$1_0$110({2}SI:S),B,1,4
F:G$initSnake$0_0$0({2}DF,SV:S),C,0,0,0,0,0
S:Lmain.initSnake$i$2_0$148({2}SI:S),R,0,0,[c,b]
S:Lmain.initSnake$__2621440006$4_0$150({1}SC:U),R,0,0,[e]
S:Lmain.initSnake$nb$5_0$151({1}SC:U),R,0,0,[]
S:Lmain.initSnake$__1310720008$2_0$153({1}SC:U),R,0,0,[]
S:Lmain.initSnake$__1310720009$2_0$153({1}SC:U),R,0,0,[]
S:Lmain.initSnake$nb$3_0$154({1}SC:U),R,0,0,[]
S:Lmain.initSnake$tile$3_0$154({1}SC:U),R,0,0,[]
F:G$initApple$0_0$0({2}DF,SV:S),C,0,0,0,0,0
S:Lmain.initApple$__1310720011$2_0$157({1}SC:U),R,0,0,[]
S:Lmain.initApple$__1310720012$2_0$157({1}SC:U),R,0,0,[]
S:Lmain.initApple$nb$3_0$158({1}SC:U),R,0,0,[]
S:Lmain.initApple$tile$3_0$158({1}SC:U),R,0,0,[]
F:G$placeApple$0_0$0({2}DF,SV:S),C,0,0,0,0,0
S:Lmain.placeApple$__1310720014$2_0$161({1}SC:U),R,0,0,[]
S:Lmain.placeApple$__1310720015$2_0$161({1}SC:U),R,0,0,[c]
S:Lmain.placeApple$__1310720016$2_0$161({1}SC:U),R,0,0,[b]
S:Lmain.placeApple$nb$3_0$162({1}SC:U),R,0,0,[]
S:Lmain.placeApple$x$3_0$162({1}SC:U),R,0,0,[]
S:Lmain.placeApple$y$3_0$162({1}SC:U),R,0,0,[]
S:Lmain.placeApple$itm$4_0$163({2}DG,STOAM_item_t:S),R,0,0,[l,h]
F:G$reset_snake_head$0_0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$enableSound$0_0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$startGame$0_0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$is_snake_moving_up$0_0$0({2}DF,SC:S),C,0,0,0,0,0
F:G$is_snake_moving_left$0_0$0({2}DF,SC:S),C,0,0,0,0,0
F:G$controls_controller$0_0$0({2}DF,SV:S),C,0,-1,0,0,0
S:Lmain.controls_controller$turnaraoundMapValue$1_0$169({2}DG,SC:U),R,0,0,[c,b]
S:Lmain.controls_controller$joypadState$1_0$169({1}SC:U),B,1,-1
S:Lmain.controls_controller$sloc0$0_1$0({2}DD,DA25d,SC:U),B,1,-2
S:Lmain.controls_controller$sloc1$0_1$0({1}SC:U),B,1,-1
F:G$gameover$0_0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$moveSnake$0_0$0({2}DF,SV:S),C,0,-43,0,0,0
S:Lmain.moveSnake$clockValue$1_0$184({2}SI:U),R,0,0,[e,d]
S:Lmain.moveSnake$deltaTime$1_0$184({2}SI:U),R,0,0,[c,b]
S:Lmain.moveSnake$prevX$2_1$186({1}SC:U),B,1,-3
S:Lmain.moveSnake$prevY$2_1$186({1}SC:U),B,1,-7
S:Lmain.moveSnake$nextTileIndex$2_2$187({1}SC:U),R,0,0,[e]
S:Lmain.moveSnake$__1966100018$3_2$197({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$__1966100019$3_2$197({1}SC:U),R,0,0,[c]
S:Lmain.moveSnake$nb$4_2$198({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$tile$4_2$198({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$__1966100021$3_2$200({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$__1966100022$3_2$200({1}SC:U),R,0,0,[c]
S:Lmain.moveSnake$nb$4_2$201({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$prop$4_2$201({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$__1966100024$3_2$203({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$__1966100025$3_2$203({1}SC:U),R,0,0,[c]
S:Lmain.moveSnake$__1966100026$3_2$203({1}SC:U),R,0,0,[b]
S:Lmain.moveSnake$nb$4_2$204({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$x$4_2$204({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$y$4_2$204({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$itm$5_2$205({2}DG,STOAM_item_t:S),R,0,0,[l,h]
S:Lmain.moveSnake$i$3_2$189({2}SI:S),B,1,-2
S:Lmain.moveSnake$currentX$4_2$190({1}SC:U),B,1,-11
S:Lmain.moveSnake$currentY$4_2$190({1}SC:U),B,1,-10
S:Lmain.moveSnake$tail_sprite_prop$4_3$192({1}SC:U),B,1,-9
S:Lmain.moveSnake$spriteToUse$4_3$192({1}SC:U),B,1,-8
S:Lmain.moveSnake$__3276830028$5_3$206({1}SC:U),R,0,0,[c]
S:Lmain.moveSnake$__3276830029$5_3$206({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$nb$6_3$207({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$tile$6_3$207({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$__3276830031$5_3$209({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$__3276830032$5_3$209({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$nb$6_3$210({1}SC:U),R,0,0,[c]
S:Lmain.moveSnake$prop$6_3$210({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$__3276830034$5_3$212({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$__3276830035$5_3$212({1}SC:U),B,1,-3
S:Lmain.moveSnake$__3276830036$5_3$212({1}SC:U),B,1,-4
S:Lmain.moveSnake$nb$6_3$213({1}SC:U),R,0,0,[c]
S:Lmain.moveSnake$x$6_3$213({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$y$6_3$213({1}SC:U),R,0,0,[]
S:Lmain.moveSnake$itm$7_3$214({2}DG,STOAM_item_t:S),B,1,-6
S:Lmain.moveSnake$sloc0$0_1$0({1}SC:U),B,1,-3
S:Lmain.moveSnake$sloc1$0_1$0({1}SC:U),B,1,-7
S:Lmain.moveSnake$sloc2$0_1$0({2}DD,DA25d,SC:U),B,1,-5
S:Lmain.moveSnake$sloc3$0_1$0({2}SI:S),B,1,-2
S:Lmain.moveSnake$sloc4$0_1$0({1}SC:S),B,1,-4
S:Lmain.moveSnake$sloc5$0_1$0({2}SI:S),B,1,-2
S:Lmain.moveSnake$sloc6$0_1$0({2}SI:S),B,1,-2
S:Lmain.moveSnake$sloc7$0_1$0({1}SC:U),B,1,-11
S:Lmain.moveSnake$sloc8$0_1$0({2}DD,SC:U),B,1,-6
S:Lmain.moveSnake$sloc9$0_1$0({1}SC:U),B,1,-10
S:Lmain.moveSnake$sloc10$0_1$0({1}SC:U),B,1,-4
S:Lmain.moveSnake$sloc11$0_1$0({1}SC:U),B,1,-4
S:Lmain.moveSnake$sloc12$0_1$0({2}SI:S),B,1,-8
S:Lmain.moveSnake$sloc13$0_1$0({2}SI:S),B,1,-7
S:Lmain.moveSnake$sloc14$0_1$0({2}SI:S),B,1,-5
S:Lmain.moveSnake$sloc15$0_1$0({1}SC:U),B,1,-9
S:Lmain.moveSnake$sloc16$0_1$0({1}SC:U),B,1,-8
S:Lmain.moveSnake$sloc17$0_1$0({1}SC:S),B,1,-7
S:Lmain.moveSnake$sloc18$0_1$0({2}SI:S),B,1,-4
S:Lmain.moveSnake$sloc19$0_1$0({2}SI:U),B,1,-4
S:Lmain.moveSnake$sloc20$0_1$0({2}DD,STOAM_item_t:S),B,1,-6
S:Lmain.moveSnake$sloc21$0_1$0({2}DD,SC:U),B,1,-4
S:Lmain.moveSnake$sloc22$0_1$0({2}SI:S),B,1,-4
S:Lmain.moveSnake$sloc23$0_1$0({2}SI:U),B,1,-4
S:Lmain.moveSnake$sloc24$0_1$0({2}DD,STOAM_item_t:S),B,1,-6
S:Lmain.moveSnake$sloc25$0_1$0({2}DD,SC:U),B,1,-4
S:Lmain.moveSnake$sloc26$0_1$0({1}SC:U),B,1,-4
S:Lmain.moveSnake$sloc27$0_1$0({1}SC:U),B,1,-3
S:Lmain.moveSnake$sloc28$0_1$0({2}SI:S),B,1,-6
S:Lmain.moveSnake$sloc29$0_1$0({2}SI:U),B,1,-8
S:Lmain.moveSnake$sloc30$0_1$0({2}DD,STOAM_item_t:S),B,1,-6
S:Lmain.moveSnake$sloc31$0_1$0({2}DG,STOAM_item_t:S),B,1,-6
S:Lmain.moveSnake$sloc32$0_1$0({2}DG,SC:U),B,1,-8
F:G$collideWIthApple$0_0$0({2}DF,SC:U),C,0,0,0,0,0
F:G$adjustSnakeSpeed$0_0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$eatAppleIfPossible$0_0$0({2}DF,SV:S),C,0,0,0,0,0
F:G$main$0_0$0({2}DF,SV:S),C,0,0,0,0,0
T:Fmain$Point[({0}S:S$x$0_0$0({1}SC:U),Z,0,0)({1}S:S$y$0_0$0({1}SC:U),Z,0,0)]
T:Fmain$__00000000[({0}S:S$l$0_0$0({1}SC:U),Z,0,0)({1}S:S$h$0_0$0({1}SC:U),Z,0,0)]
T:Fmain$__00000001[({0}S:S$l$0_0$0({1}SC:U),Z,0,0)({1}S:S$h$0_0$0({1}SC:U),Z,0,0)]
T:Fmain$__00000002[({0}S:S$npads$0_0$0({1}SC:U),Z,0,0)({1}S:S$joy0$0_0$0({1}SC:U),Z,0,0)({2}S:S$joy1$0_0$0({1}SC:U),Z,0,0)({3}S:S$joy2$0_0$0({1}SC:U),Z,0,0)({4}S:S$joy3$0_0$0({1}SC:U),Z,0,0)({1}S:S$joypads$0_0$0({4}DA4d,SC:U),Z,0,0)]
T:Fmain$__00000003[({0}S:S$joy0$0_0$0({1}SC:U),Z,0,0)({1}S:S$joy1$0_0$0({1}SC:U),Z,0,0)({2}S:S$joy2$0_0$0({1}SC:U),Z,0,0)({3}S:S$joy3$0_0$0({1}SC:U),Z,0,0)({0}S:S$joypads$0_0$0({4}DA4d,SC:U),Z,0,0)]
T:Fmain$__00000004[({0}S:S$joy0$0_0$0({1}SC:U),Z,0,0)({1}S:S$joy1$0_0$0({1}SC:U),Z,0,0)({2}S:S$joy2$0_0$0({1}SC:U),Z,0,0)({3}S:S$joy3$0_0$0({1}SC:U),Z,0,0)]
T:Fmain$_fixed[({0}S:S$l$0_0$0({1}SC:U),Z,0,0)({1}S:S$h$0_0$0({1}SC:U),Z,0,0)({0}S:S$b$0_0$0({2}ST__00000001:S),Z,0,0)({0}S:S$w$0_0$0({2}SI:U),Z,0,0)]
T:Fmain$hUGESong_t[({0}S:S$tempo$0_0$0({1}SC:U),Z,0,0)({1}S:S$order_cnt$0_0$0({2}DG,SC:U),Z,0,0)({3}S:S$order1$0_0$0({2}DG,DG,SC:U),Z,0,0)({5}S:S$order2$0_0$0({2}DG,DG,SC:U),Z,0,0)({7}S:S$order3$0_0$0({2}DG,DG,SC:U),Z,0,0)({9}S:S$order4$0_0$0({2}DG,DG,SC:U),Z,0,0)({11}S:S$duty_instruments$0_0$0({2}DG,SC:U),Z,0,0)({13}S:S$wave_instruments$0_0$0({2}DG,SC:U),Z,0,0)({15}S:S$noise_instruments$0_0$0({2}DG,SC:U),Z,0,0)({17}S:S$routines$0_0$0({2}DG,DG,DC,DF,SV:S),Z,0,0)({19}S:S$waves$0_0$0({2}DG,SC:U),Z,0,0)]
T:Fmain$OAM_item_t[({0}S:S$y$0_0$0({1}SC:U),Z,0,0)({1}S:S$x$0_0$0({1}SC:U),Z,0,0)({2}S:S$tile$0_0$0({1}SC:U),Z,0,0)({3}S:S$prop$0_0$0({1}SC:U),Z,0,0)]
T:Fmain$Snake[({0}S:S$x$0_0$0({1}SC:U),Z,0,0)({1}S:S$y$0_0$0({1}SC:U),Z,0,0)({2}S:S$direction$0_0$0({2}DA2d,SC:S),Z,0,0)({4}S:S$tail$0_0$0({80}DA40d,STPoint:S),Z,0,0)({84}S:S$lastUsedTailIndex$0_0$0({1}SC:U),Z,0,0)({85}S:S$tailLength$0_0$0({1}SC:U),Z,0,0)]
T:Fmain$sfont_handle[({0}S:S$first_tile$0_0$0({1}SC:U),Z,0,0)({1}S:S$font$0_0$0({2}DG,SV:S),Z,0,0)]
S:Fmain$currentSpeed$0_0$0({1}SC:U),E,0,0
S:Fmain$appleEatCount$0_0$0({1}SC:U),E,0,0
S:Fmain$snakeHeadspriteProp$0_0$0({1}SC:U),E,0,0
S:Fmain$snakeHeadSpriteIndex$0_0$0({1}SC:U),E,0,0
S:G$lastTime$0_0$0({2}SI:U),E,0,0
S:G$timeCounter$0_0$0({2}SI:U),E,0,0
S:G$_VRAM$0_0$0({0}DA0d,SC:U),E,0,0
S:G$_VRAM8000$0_0$0({0}DA0d,SC:U),E,0,0
S:G$_VRAM8800$0_0$0({0}DA0d,SC:U),E,0,0
S:G$_VRAM9000$0_0$0({0}DA0d,SC:U),E,0,0
S:G$_SCRN0$0_0$0({0}DA0d,SC:U),E,0,0
S:G$_SCRN1$0_0$0({0}DA0d,SC:U),E,0,0
S:G$_SRAM$0_0$0({0}DA0d,SC:U),E,0,0
S:G$_RAM$0_0$0({0}DA0d,SC:U),E,0,0
S:G$_RAMBANK$0_0$0({0}DA0d,SC:U),E,0,0
S:G$_OAMRAM$0_0$0({0}DA0d,SC:U),E,0,0
S:G$_IO$0_0$0({0}DA0d,SC:U),E,0,0
S:G$_AUD3WAVERAM$0_0$0({0}DA0d,SC:U),E,0,0
S:G$_HRAM$0_0$0({0}DA0d,SC:U),E,0,0
S:G$rRAMG$0_0$0({1}SC:U),E,0,0
S:G$rROMB0$0_0$0({1}SC:U),E,0,0
S:G$rROMB1$0_0$0({1}SC:U),E,0,0
S:G$rRAMB$0_0$0({1}SC:U),E,0,0
S:G$AUD3WAVE$0_0$0({16}DA16d,SC:U),E,0,0
S:G$_cpu$0_0$0({1}SC:U),E,0,0
S:G$_is_GBA$0_0$0({1}SC:U),E,0,0
S:G$sys_time$0_0$0({2}SI:U),E,0,0
S:G$_io_status$0_0$0({1}SC:U),E,0,0
S:G$_io_in$0_0$0({1}SC:U),E,0,0
S:G$_io_out$0_0$0({1}SC:U),E,0,0
S:G$_current_1bpp_colors$0_0$0({2}SI:U),E,0,0
S:G$shadow_OAM$0_0$0({0}DA0d,STOAM_item_t:S),E,0,0
S:G$font_spect$0_0$0({0}DA0d,SC:U),E,0,0
S:G$font_italic$0_0$0({0}DA0d,SC:U),E,0,0
S:G$font_ibm$0_0$0({0}DA0d,SC:U),E,0,0
S:G$font_min$0_0$0({0}DA0d,SC:U),E,0,0
S:G$font_ibm_fixed$0_0$0({0}DA0d,SC:U),E,0,0
S:G$hUGE_current_wave$0_0$0({1}SC:U),E,0,0
S:G$apple$0_0$0({2}STPoint:S),E,0,0
S:G$snake$0_0$0({86}STSnake:S),E,0,0
S:Fmain$turnaraoundMap$0_0$0({625}DA25d,DA25d,SC:U),E,0,0
S:G$P1_REG$0_0$0({1}SC:U),I,0,0
S:G$SB_REG$0_0$0({1}SC:U),I,0,0
S:G$SC_REG$0_0$0({1}SC:U),I,0,0
S:G$DIV_REG$0_0$0({1}SC:U),I,0,0
S:G$TIMA_REG$0_0$0({1}SC:U),I,0,0
S:G$TMA_REG$0_0$0({1}SC:U),I,0,0
S:G$TAC_REG$0_0$0({1}SC:U),I,0,0
S:G$IF_REG$0_0$0({1}SC:U),I,0,0
S:G$NR10_REG$0_0$0({1}SC:U),I,0,0
S:G$NR11_REG$0_0$0({1}SC:U),I,0,0
S:G$NR12_REG$0_0$0({1}SC:U),I,0,0
S:G$NR13_REG$0_0$0({1}SC:U),I,0,0
S:G$NR14_REG$0_0$0({1}SC:U),I,0,0
S:G$NR21_REG$0_0$0({1}SC:U),I,0,0
S:G$NR22_REG$0_0$0({1}SC:U),I,0,0
S:G$NR23_REG$0_0$0({1}SC:U),I,0,0
S:G$NR24_REG$0_0$0({1}SC:U),I,0,0
S:G$NR30_REG$0_0$0({1}SC:U),I,0,0
S:G$NR31_REG$0_0$0({1}SC:U),I,0,0
S:G$NR32_REG$0_0$0({1}SC:U),I,0,0
S:G$NR33_REG$0_0$0({1}SC:U),I,0,0
S:G$NR34_REG$0_0$0({1}SC:U),I,0,0
S:G$NR41_REG$0_0$0({1}SC:U),I,0,0
S:G$NR42_REG$0_0$0({1}SC:U),I,0,0
S:G$NR43_REG$0_0$0({1}SC:U),I,0,0
S:G$NR44_REG$0_0$0({1}SC:U),I,0,0
S:G$NR50_REG$0_0$0({1}SC:U),I,0,0
S:G$NR51_REG$0_0$0({1}SC:U),I,0,0
S:G$NR52_REG$0_0$0({1}SC:U),I,0,0
S:G$LCDC_REG$0_0$0({1}SC:U),I,0,0
S:G$STAT_REG$0_0$0({1}SC:U),I,0,0
S:G$SCY_REG$0_0$0({1}SC:U),I,0,0
S:G$SCX_REG$0_0$0({1}SC:U),I,0,0
S:G$LY_REG$0_0$0({1}SC:U),I,0,0
S:G$LYC_REG$0_0$0({1}SC:U),I,0,0
S:G$DMA_REG$0_0$0({1}SC:U),I,0,0
S:G$BGP_REG$0_0$0({1}SC:U),I,0,0
S:G$OBP0_REG$0_0$0({1}SC:U),I,0,0
S:G$OBP1_REG$0_0$0({1}SC:U),I,0,0
S:G$WY_REG$0_0$0({1}SC:U),I,0,0
S:G$WX_REG$0_0$0({1}SC:U),I,0,0
S:G$KEY1_REG$0_0$0({1}SC:U),I,0,0
S:G$VBK_REG$0_0$0({1}SC:U),I,0,0
S:G$HDMA1_REG$0_0$0({1}SC:U),I,0,0
S:G$HDMA2_REG$0_0$0({1}SC:U),I,0,0
S:G$HDMA3_REG$0_0$0({1}SC:U),I,0,0
S:G$HDMA4_REG$0_0$0({1}SC:U),I,0,0
S:G$HDMA5_REG$0_0$0({1}SC:U),I,0,0
S:G$RP_REG$0_0$0({1}SC:U),I,0,0
S:G$BCPS_REG$0_0$0({1}SC:U),I,0,0
S:G$BCPD_REG$0_0$0({1}SC:U),I,0,0
S:G$OCPS_REG$0_0$0({1}SC:U),I,0,0
S:G$OCPD_REG$0_0$0({1}SC:U),I,0,0
S:G$SVBK_REG$0_0$0({1}SC:U),I,0,0
S:G$PCM12_REG$0_0$0({1}SC:U),I,0,0
S:G$PCM34_REG$0_0$0({1}SC:U),I,0,0
S:G$IE_REG$0_0$0({1}SC:U),I,0,0
S:G$_current_bank$0_0$0({1}SC:U),I,0,0
S:G$_shadow_OAM_base$0_0$0({1}SC:U),I,0,0
S:G$remove_VBL$0_0$0({2}DF,SV:S),C,0,0
S:G$remove_LCD$0_0$0({2}DF,SV:S),C,0,0
S:G$remove_TIM$0_0$0({2}DF,SV:S),C,0,0
S:G$remove_SIO$0_0$0({2}DF,SV:S),C,0,0
S:G$remove_JOY$0_0$0({2}DF,SV:S),C,0,0
S:G$add_VBL$0_0$0({2}DF,SV:S),C,0,0
S:G$add_LCD$0_0$0({2}DF,SV:S),C,0,0
S:G$add_TIM$0_0$0({2}DF,SV:S),C,0,0
S:G$add_SIO$0_0$0({2}DF,SV:S),C,0,0
S:G$add_JOY$0_0$0({2}DF,SV:S),C,0,0
S:G$nowait_int_handler$0_0$0({2}DF,SV:S),C,0,0
S:G$wait_int_handler$0_0$0({2}DF,SV:S),C,0,0
S:G$cancel_pending_interrupts$0_0$0({2}DF,SC:U),C,0,0
S:G$mode$0_0$0({2}DF,SV:S),C,0,0
S:G$get_mode$0_0$0({2}DF,SC:U),C,0,0
S:G$send_byte$0_0$0({2}DF,SV:S),C,0,0
S:G$receive_byte$0_0$0({2}DF,SV:S),C,0,0
S:G$delay$0_0$0({2}DF,SV:S),C,0,0
S:G$joypad$0_0$0({2}DF,SC:U),C,0,0
S:G$waitpad$0_0$0({2}DF,SC:U),C,0,0
S:G$waitpadup$0_0$0({2}DF,SV:S),C,0,0
S:G$joypad_init$0_0$0({2}DF,SC:U),C,0,0
S:G$joypad_ex$0_0$0({2}DF,SV:S),C,0,0
S:G$enable_interrupts$0_0$0({2}DF,SV:S),C,0,0
S:G$disable_interrupts$0_0$0({2}DF,SV:S),C,0,0
S:G$set_interrupts$0_0$0({2}DF,SV:S),C,0,0
S:G$reset$0_0$0({2}DF,SV:S),C,0,0
S:G$wait_vbl_done$0_0$0({2}DF,SV:S),C,0,0
S:G$display_off$0_0$0({2}DF,SV:S),C,0,0
S:G$refresh_OAM$0_0$0({2}DF,SV:S),C,0,0
S:G$hiramcpy$0_0$0({2}DF,SV:S),C,0,0
S:G$set_vram_byte$0_0$0({2}DF,SV:S),C,0,0
S:G$get_vram_byte$0_0$0({2}DF,SC:U),C,0,0
S:G$get_bkg_xy_addr$0_0$0({2}DF,DG,SC:U),C,0,0
S:G$set_2bpp_palette$0_0$0({2}DF,SV:S),C,0,0
S:G$set_1bpp_colors_ex$0_0$0({2}DF,SV:S),C,0,0
S:G$set_1bpp_colors$0_0$0({2}DF,SV:S),C,0,0
S:G$set_bkg_data$0_0$0({2}DF,SV:S),C,0,0
S:G$set_bkg_1bpp_data$0_0$0({2}DF,SV:S),C,0,0
S:G$get_bkg_data$0_0$0({2}DF,SV:S),C,0,0
S:G$set_bkg_tiles$0_0$0({2}DF,SV:S),C,0,0
S:G$set_bkg_submap$0_0$0({2}DF,SV:S),C,0,0
S:G$get_bkg_tiles$0_0$0({2}DF,SV:S),C,0,0
S:G$set_bkg_tile_xy$0_0$0({2}DF,DG,SC:U),C,0,0
S:G$get_bkg_tile_xy$0_0$0({2}DF,SC:U),C,0,0
S:G$move_bkg$0_0$0({2}DF,SV:S),C,0,0
S:G$scroll_bkg$0_0$0({2}DF,SV:S),C,0,0
S:G$get_win_xy_addr$0_0$0({2}DF,DG,SC:U),C,0,0
S:G$set_win_data$0_0$0({2}DF,SV:S),C,0,0
S:G$set_win_1bpp_data$0_0$0({2}DF,SV:S),C,0,0
S:G$get_win_data$0_0$0({2}DF,SV:S),C,0,0
S:G$set_win_tiles$0_0$0({2}DF,SV:S),C,0,0
S:G$set_win_submap$0_0$0({2}DF,SV:S),C,0,0
S:G$get_win_tiles$0_0$0({2}DF,SV:S),C,0,0
S:G$set_win_tile_xy$0_0$0({2}DF,DG,SC:U),C,0,0
S:G$get_win_tile_xy$0_0$0({2}DF,SC:U),C,0,0
S:G$move_win$0_0$0({2}DF,SV:S),C,0,0
S:G$scroll_win$0_0$0({2}DF,SV:S),C,0,0
S:G$set_sprite_data$0_0$0({2}DF,SV:S),C,0,0
S:G$set_sprite_1bpp_data$0_0$0({2}DF,SV:S),C,0,0
S:G$get_sprite_data$0_0$0({2}DF,SV:S),C,0,0
S:G$SET_SHADOW_OAM_ADDRESS$0_0$0({2}DF,SV:S),C,0,0
S:G$set_sprite_tile$0_0$0({2}DF,SV:S),C,0,0
S:G$get_sprite_tile$0_0$0({2}DF,SC:U),C,0,0
S:G$set_sprite_prop$0_0$0({2}DF,SV:S),C,0,0
S:G$get_sprite_prop$0_0$0({2}DF,SC:U),C,0,0
S:G$move_sprite$0_0$0({2}DF,SV:S),C,0,2
S:G$scroll_sprite$0_0$0({2}DF,SV:S),C,0,2
S:G$hide_sprite$0_0$0({2}DF,SV:S),C,0,0
S:G$set_data$0_0$0({2}DF,SV:S),C,0,0
S:G$get_data$0_0$0({2}DF,SV:S),C,0,0
S:G$vmemcpy$0_0$0({2}DF,SV:S),C,0,0
S:G$set_tiles$0_0$0({2}DF,SV:S),C,0,0
S:G$set_tile_data$0_0$0({2}DF,SV:S),C,0,0
S:G$get_tiles$0_0$0({2}DF,SV:S),C,0,0
S:G$set_native_tile_data$0_0$0({2}DF,SV:S),C,0,0
S:G$init_win$0_0$0({2}DF,SV:S),C,0,0
S:G$init_bkg$0_0$0({2}DF,SV:S),C,0,0
S:G$vmemset$0_0$0({2}DF,SV:S),C,0,0
S:G$fill_bkg_rect$0_0$0({2}DF,SV:S),C,0,0
S:G$fill_win_rect$0_0$0({2}DF,SV:S),C,0,0
S:G$set_bkg_palette$0_0$0({2}DF,SV:S),C,0,0
S:G$set_sprite_palette$0_0$0({2}DF,SV:S),C,0,0
S:G$set_bkg_palette_entry$0_0$0({2}DF,SV:S),C,0,0
S:G$set_sprite_palette_entry$0_0$0({2}DF,SV:S),C,0,0
S:G$cpu_slow$0_0$0({2}DF,SV:S),C,0,0
S:G$cpu_fast$0_0$0({2}DF,SV:S),C,0,0
S:G$set_default_palette$0_0$0({2}DF,SV:S),C,0,0
S:G$cgb_compatibility$0_0$0({2}DF,SV:S),C,0,0
S:G$putchar$0_0$0({2}DF,SV:S),C,0,0
S:G$printf$0_0$0({2}DF,SV:S),C,0,0
S:G$sprintf$0_0$0({2}DF,SV:S),C,0,0
S:G$puts$0_0$0({2}DF,SV:S),C,0,0
S:G$gets$0_0$0({2}DF,DG,SC:S),C,0,0
S:G$getchar$0_0$0({2}DF,SC:S),C,0,0
S:G$exit$0_0$0({2}DF,SV:S),C,0,0
S:G$abs$0_0$0({2}DF,SI:S),C,0,0
S:G$labs$0_0$0({2}DF,SL:S),C,0,0
S:G$atoi$0_0$0({2}DF,SI:S),C,0,0
S:G$atol$0_0$0({2}DF,SL:S),C,0,0
S:G$itoa$0_0$0({2}DF,DG,SC:S),C,0,0
S:G$uitoa$0_0$0({2}DF,DG,SC:S),C,0,0
S:G$ltoa$0_0$0({2}DF,DG,SC:S),C,0,0
S:G$ultoa$0_0$0({2}DF,DG,SC:S),C,0,0
S:G$calloc$0_0$0({2}DF,DG,SV:S),C,0,0
S:G$malloc$0_0$0({2}DF,DG,SV:S),C,0,0
S:G$realloc$0_0$0({2}DF,DG,SV:S),C,0,0
S:G$aligned_alloc$0_0$0({2}DF,DG,SV:S),C,0,0
S:G$free$0_0$0({2}DF,SV:S),C,0,0
S:G$bsearch$0_0$0({2}DF,DG,SV:S),C,0,0
S:G$qsort$0_0$0({2}DF,SV:S),C,0,0
S:G$gprint$0_0$0({2}DF,SV:S),C,0,0
S:G$gprintln$0_0$0({2}DF,SV:S),C,0,0
S:G$gprintn$0_0$0({2}DF,SV:S),C,0,0
S:G$gprintf$0_0$0({2}DF,SC:S),C,0,0
S:G$plot$0_0$0({2}DF,SV:S),C,0,0
S:G$plot_point$0_0$0({2}DF,SV:S),C,0,0
S:G$switch_data$0_0$0({2}DF,SV:S),C,0,0
S:G$draw_image$0_0$0({2}DF,SV:S),C,0,0
S:G$line$0_0$0({2}DF,SV:S),C,0,0
S:G$box$0_0$0({2}DF,SV:S),C,0,0
S:G$circle$0_0$0({2}DF,SV:S),C,0,0
S:G$getpix$0_0$0({2}DF,SC:U),C,0,0
S:G$wrtchr$0_0$0({2}DF,SV:S),C,0,0
S:G$gotogxy$0_0$0({2}DF,SV:S),C,0,0
S:G$color$0_0$0({2}DF,SV:S),C,0,0
S:G$clock$0_0$0({2}DF,SI:U),C,0,0
S:G$time$0_0$0({2}DF,SI:U),C,0,0
S:G$initrand$0_0$0({2}DF,SV:S),C,0,0
S:G$rand$0_0$0({2}DF,SC:S),C,0,0
S:G$randw$0_0$0({2}DF,SI:U),C,0,0
S:G$initarand$0_0$0({2}DF,SV:S),C,0,0
S:G$arand$0_0$0({2}DF,SC:S),C,0,0
S:G$font_init$0_0$0({2}DF,SV:S),C,0,0
S:G$font_load$0_0$0({2}DF,SI:U),C,0,0
S:G$font_set$0_0$0({2}DF,SI:U),C,0,0
S:G$font_color$0_0$0({2}DF,SV:S),C,0,0
S:G$hUGE_init$0_0$0({2}DF,SV:S),C,0,0
S:G$hUGE_init_banked$0_0$0({2}DF,SV:S),C,0,0
S:G$hUGE_dosound$0_0$0({2}DF,SV:S),C,0,0
S:G$hUGE_dosound_banked$0_0$0({2}DF,SV:S),C,0,0
S:G$hUGE_mute_channel$0_0$0({2}DF,SV:S),C,0,0
S:G$hUGE_mute_channel_banked$0_0$0({2}DF,SV:S),C,0,0
S:G$hUGE_set_position$0_0$0({2}DF,SV:S),C,0,0
S:G$hUGE_set_position_banked$0_0$0({2}DF,SV:S),C,0,0
S:G$hUGE_reset_wave$0_0$0({2}DF,SV:S),C,0,0
S:G$hUGE_reset_wave_banked$0_0$0({2}DF,SV:S),C,0,0
S:G$enlargeSnake$0_0$0({2}DF,SV:S),C,0,0
S:G$initSnake$0_0$0({2}DF,SV:S),C,0,0
S:G$initApple$0_0$0({2}DF,SV:S),C,0,0
S:G$placeApple$0_0$0({2}DF,SV:S),C,0,0
S:G$reset_snake_head$0_0$0({2}DF,SV:S),C,0,0
S:G$enableSound$0_0$0({2}DF,SV:S),C,0,0
S:G$startGame$0_0$0({2}DF,SV:S),C,0,0
S:G$is_snake_moving_up$0_0$0({2}DF,SC:S),C,0,0
S:G$is_snake_moving_left$0_0$0({2}DF,SC:S),C,0,0
S:G$controls_controller$0_0$0({2}DF,SV:S),C,0,-1
S:G$gameover$0_0$0({2}DF,SV:S),C,0,0
S:G$moveSnake$0_0$0({2}DF,SV:S),C,0,-43
S:G$collideWIthApple$0_0$0({2}DF,SC:U),C,0,0
S:G$adjustSnakeSpeed$0_0$0({2}DF,SV:S),C,0,0
S:G$eatAppleIfPossible$0_0$0({2}DF,SV:S),C,0,0
S:G$main$0_0$0({2}DF,SV:S),C,0,0
