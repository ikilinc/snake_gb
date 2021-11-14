M:snake_logic
S:Lsnake_logic.set_2bpp_palette$palette$1_0$25({2}SI:U),B,1,2
S:Lsnake_logic.set_1bpp_colors$fgcolor$1_0$28({1}SC:U),B,1,2
S:Lsnake_logic.set_1bpp_colors$bgcolor$1_0$28({1}SC:U),B,1,3
S:Lsnake_logic.move_bkg$x$1_0$38({1}SC:U),B,1,2
S:Lsnake_logic.move_bkg$y$1_0$38({1}SC:U),B,1,3
S:Lsnake_logic.scroll_bkg$x$1_0$40({1}SC:S),B,1,2
S:Lsnake_logic.scroll_bkg$y$1_0$40({1}SC:S),B,1,3
S:Lsnake_logic.move_win$x$1_0$51({1}SC:U),B,1,2
S:Lsnake_logic.move_win$y$1_0$51({1}SC:U),B,1,3
S:Lsnake_logic.scroll_win$x$1_0$53({1}SC:S),B,1,2
S:Lsnake_logic.scroll_win$y$1_0$53({1}SC:S),B,1,3
S:Lsnake_logic.SET_SHADOW_OAM_ADDRESS$address$1_0$58({2}DG,SV:S),B,1,2
S:Lsnake_logic.set_sprite_tile$nb$1_0$60({1}SC:U),B,1,2
S:Lsnake_logic.set_sprite_tile$tile$1_0$60({1}SC:U),B,1,3
S:Lsnake_logic.get_sprite_tile$nb$1_0$62({1}SC:U),B,1,2
S:Lsnake_logic.set_sprite_prop$nb$1_0$64({1}SC:U),B,1,2
S:Lsnake_logic.set_sprite_prop$prop$1_0$64({1}SC:U),B,1,3
S:Lsnake_logic.get_sprite_prop$nb$1_0$66({1}SC:U),B,1,2
S:Lsnake_logic.move_sprite$nb$1_0$68({1}SC:U),B,1,2
S:Lsnake_logic.move_sprite$x$1_0$68({1}SC:U),B,1,3
S:Lsnake_logic.move_sprite$y$1_0$68({1}SC:U),B,1,4
S:Lsnake_logic.move_sprite$itm$1_0$69({2}DG,STOAM_item_t:S),B,1,-2
S:Lsnake_logic.scroll_sprite$nb$1_0$70({1}SC:U),B,1,2
S:Lsnake_logic.scroll_sprite$x$1_0$70({1}SC:S),B,1,3
S:Lsnake_logic.scroll_sprite$y$1_0$70({1}SC:S),B,1,4
S:Lsnake_logic.scroll_sprite$itm$1_0$71({2}DG,STOAM_item_t:S),B,1,-2
S:Lsnake_logic.hide_sprite$nb$1_0$72({1}SC:U),B,1,2
S:Lsnake_logic.set_native_tile_data$first_tile$1_0$80({2}SI:U),B,1,2
S:Lsnake_logic.set_native_tile_data$nb_tiles$1_0$80({1}SC:U),B,1,4
S:Lsnake_logic.set_native_tile_data$data$1_0$80({2}DG,SC:U),B,1,5
F:G$init_snake$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lsnake_logic.init_snake$i$2_0$91({2}SI:S),R,0,0,[c,b]
S:Lsnake_logic.init_snake$__2621440006$4_0$93({1}SC:U),R,0,0,[e]
S:Lsnake_logic.init_snake$nb$5_0$94({1}SC:U),R,0,0,[]
S:Lsnake_logic.init_snake$__1310720008$2_0$96({1}SC:U),R,0,0,[]
S:Lsnake_logic.init_snake$__1310720009$2_0$96({1}SC:U),R,0,0,[]
S:Lsnake_logic.init_snake$nb$3_0$97({1}SC:U),R,0,0,[]
S:Lsnake_logic.init_snake$tile$3_0$97({1}SC:U),R,0,0,[]
F:G$reset_snake_head_props$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
F:G$enlarge_snake$0_0$0({2}DF,SV:S),Z,0,2,0,0,0
S:Lsnake_logic.enlarge_snake$__1310720011$2_0$103({1}SC:U),R,0,0,[b]
S:Lsnake_logic.enlarge_snake$__1310720012$2_0$103({1}SC:U),R,0,0,[c]
S:Lsnake_logic.enlarge_snake$nb$3_0$104({1}SC:U),R,0,0,[]
S:Lsnake_logic.enlarge_snake$tile$3_0$104({1}SC:U),R,0,0,[]
S:Lsnake_logic.enlarge_snake$point$1_1$102({2}STPoint:S),B,1,-2
F:G$get_bg_tile_index_front_of_snake$0_0$0({2}DF,SC:U),Z,0,0,0,0,0
S:Lsnake_logic.get_bg_tile_index_front_of_snake$sloc0$0_1$0({1}SC:S),B,1,-1
F:G$check_collision_with_wall$0_0$0({2}DF,SC:S),Z,0,-2,0,0,0
S:Lsnake_logic.check_collision_with_wall$nextTileIndex$1_0$107({1}SC:U),R,0,0,[e]
S:Lsnake_logic.check_collision_with_wall$sloc0$0_1$0({1}:S),B,1,-2
S:Lsnake_logic.check_collision_with_wall$sloc1$0_1$0({1}:S),B,1,-3
F:G$is_snake_moving_up$0_0$0({2}DF,SC:S),Z,0,0,0,0,0
F:G$is_snake_moving_left$0_0$0({2}DF,SC:S),Z,0,0,0,0,0
F:G$move_right$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lsnake_logic.move_right$turnaraoundMapValue$1_0$110({2}DG,SC:U),R,0,0,[c,b]
S:Lsnake_logic.move_right$sloc0$0_1$0({2}DD,DA25d,SC:U),B,1,-2
F:G$move_left$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lsnake_logic.move_left$turnaraoundMapValue$1_0$113({2}DG,SC:U),R,0,0,[c,b]
S:Lsnake_logic.move_left$sloc0$0_1$0({2}DD,DA25d,SC:U),B,1,-2
F:G$move_up$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lsnake_logic.move_up$turnaraoundMapValue$1_0$116({2}DG,SC:U),R,0,0,[c,b]
S:Lsnake_logic.move_up$sloc0$0_1$0({2}DD,DA25d,SC:U),B,1,-2
F:G$move_down$0_0$0({2}DF,SV:S),Z,0,0,0,0,0
S:Lsnake_logic.move_down$turnaraoundMapValue$1_0$119({2}DG,SC:U),R,0,0,[c,b]
S:Lsnake_logic.move_down$sloc0$0_1$0({2}DD,DA25d,SC:U),B,1,-2
F:G$move_snake$0_0$0({2}DF,SV:S),Z,0,-40,0,0,0
S:Lsnake_logic.move_snake$clockValue$1_0$122({2}SI:U),R,0,0,[e,d]
S:Lsnake_logic.move_snake$deltaTime$1_0$122({2}SI:U),R,0,0,[c,b]
S:Lsnake_logic.move_snake$prevX$2_1$124({1}SC:U),B,1,-3
S:Lsnake_logic.move_snake$prevY$2_1$124({1}SC:U),B,1,-7
S:Lsnake_logic.move_snake$__1966090014$3_1$133({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$__1966090015$3_1$133({1}SC:U),R,0,0,[c]
S:Lsnake_logic.move_snake$nb$4_1$134({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$tile$4_1$134({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$__1966090017$3_1$136({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$__1966090018$3_1$136({1}SC:U),R,0,0,[c]
S:Lsnake_logic.move_snake$nb$4_1$137({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$prop$4_1$137({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$__1966090020$3_1$139({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$__1966090021$3_1$139({1}SC:U),R,0,0,[c]
S:Lsnake_logic.move_snake$__1966090022$3_1$139({1}SC:U),R,0,0,[b]
S:Lsnake_logic.move_snake$nb$4_1$140({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$x$4_1$140({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$y$4_1$140({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$itm$5_1$141({2}DG,STOAM_item_t:S),R,0,0,[l,h]
S:Lsnake_logic.move_snake$i$3_1$125({2}SI:S),B,1,-2
S:Lsnake_logic.move_snake$currentX$4_1$126({1}SC:U),B,1,-11
S:Lsnake_logic.move_snake$currentY$4_1$126({1}SC:U),B,1,-10
S:Lsnake_logic.move_snake$tail_sprite_prop$4_2$128({1}SC:U),B,1,-9
S:Lsnake_logic.move_snake$spriteToUse$4_2$128({1}SC:U),B,1,-8
S:Lsnake_logic.move_snake$__3276820024$5_2$142({1}SC:U),R,0,0,[c]
S:Lsnake_logic.move_snake$__3276820025$5_2$142({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$nb$6_2$143({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$tile$6_2$143({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$__3276820027$5_2$145({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$__3276820028$5_2$145({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$nb$6_2$146({1}SC:U),R,0,0,[c]
S:Lsnake_logic.move_snake$prop$6_2$146({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$__3276820030$5_2$148({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$__3276820031$5_2$148({1}SC:U),B,1,-3
S:Lsnake_logic.move_snake$__3276820032$5_2$148({1}SC:U),B,1,-4
S:Lsnake_logic.move_snake$nb$6_2$149({1}SC:U),R,0,0,[c]
S:Lsnake_logic.move_snake$x$6_2$149({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$y$6_2$149({1}SC:U),R,0,0,[]
S:Lsnake_logic.move_snake$itm$7_2$150({2}DG,STOAM_item_t:S),B,1,-6
S:Lsnake_logic.move_snake$sloc0$0_1$0({1}SC:U),B,1,-3
S:Lsnake_logic.move_snake$sloc1$0_1$0({1}SC:U),B,1,-7
S:Lsnake_logic.move_snake$sloc2$0_1$0({2}DD,DA25d,SC:U),B,1,-5
S:Lsnake_logic.move_snake$sloc3$0_1$0({2}SI:S),B,1,-2
S:Lsnake_logic.move_snake$sloc4$0_1$0({2}SI:S),B,1,-2
S:Lsnake_logic.move_snake$sloc5$0_1$0({1}SC:U),B,1,-11
S:Lsnake_logic.move_snake$sloc6$0_1$0({2}DD,SC:U),B,1,-6
S:Lsnake_logic.move_snake$sloc7$0_1$0({1}SC:U),B,1,-10
S:Lsnake_logic.move_snake$sloc8$0_1$0({1}SC:U),B,1,-4
S:Lsnake_logic.move_snake$sloc9$0_1$0({1}SC:U),B,1,-4
S:Lsnake_logic.move_snake$sloc10$0_1$0({2}SI:S),B,1,-8
S:Lsnake_logic.move_snake$sloc11$0_1$0({2}SI:S),B,1,-7
S:Lsnake_logic.move_snake$sloc12$0_1$0({2}SI:S),B,1,-5
S:Lsnake_logic.move_snake$sloc13$0_1$0({1}SC:U),B,1,-9
S:Lsnake_logic.move_snake$sloc14$0_1$0({1}SC:U),B,1,-8
S:Lsnake_logic.move_snake$sloc15$0_1$0({1}SC:S),B,1,-7
S:Lsnake_logic.move_snake$sloc16$0_1$0({2}SI:S),B,1,-4
S:Lsnake_logic.move_snake$sloc17$0_1$0({2}SI:U),B,1,-4
S:Lsnake_logic.move_snake$sloc18$0_1$0({2}DD,STOAM_item_t:S),B,1,-6
S:Lsnake_logic.move_snake$sloc19$0_1$0({2}DD,SC:U),B,1,-4
S:Lsnake_logic.move_snake$sloc20$0_1$0({2}SI:S),B,1,-4
S:Lsnake_logic.move_snake$sloc21$0_1$0({2}SI:U),B,1,-4
S:Lsnake_logic.move_snake$sloc22$0_1$0({2}DD,STOAM_item_t:S),B,1,-6
S:Lsnake_logic.move_snake$sloc23$0_1$0({2}DD,SC:U),B,1,-4
S:Lsnake_logic.move_snake$sloc24$0_1$0({1}SC:U),B,1,-4
S:Lsnake_logic.move_snake$sloc25$0_1$0({1}SC:U),B,1,-3
S:Lsnake_logic.move_snake$sloc26$0_1$0({2}SI:S),B,1,-6
S:Lsnake_logic.move_snake$sloc27$0_1$0({2}SI:U),B,1,-8
S:Lsnake_logic.move_snake$sloc28$0_1$0({2}DD,STOAM_item_t:S),B,1,-6
S:Lsnake_logic.move_snake$sloc29$0_1$0({2}DG,STOAM_item_t:S),B,1,-6
S:Lsnake_logic.move_snake$sloc30$0_1$0({2}DG,SC:U),B,1,-8
T:Fsnake_logic$Point[({0}S:S$x$0_0$0({1}SC:U),Z,0,0)({1}S:S$y$0_0$0({1}SC:U),Z,0,0)]
T:Fsnake_logic$__00000000[({0}S:S$l$0_0$0({1}SC:U),Z,0,0)({1}S:S$h$0_0$0({1}SC:U),Z,0,0)]
T:Fsnake_logic$__00000001[({0}S:S$l$0_0$0({1}SC:U),Z,0,0)({1}S:S$h$0_0$0({1}SC:U),Z,0,0)]
T:Fsnake_logic$__00000002[({0}S:S$npads$0_0$0({1}SC:U),Z,0,0)({1}S:S$joy0$0_0$0({1}SC:U),Z,0,0)({2}S:S$joy1$0_0$0({1}SC:U),Z,0,0)({3}S:S$joy2$0_0$0({1}SC:U),Z,0,0)({4}S:S$joy3$0_0$0({1}SC:U),Z,0,0)({1}S:S$joypads$0_0$0({4}DA4d,SC:U),Z,0,0)]
T:Fsnake_logic$__00000003[({0}S:S$joy0$0_0$0({1}SC:U),Z,0,0)({1}S:S$joy1$0_0$0({1}SC:U),Z,0,0)({2}S:S$joy2$0_0$0({1}SC:U),Z,0,0)({3}S:S$joy3$0_0$0({1}SC:U),Z,0,0)({0}S:S$joypads$0_0$0({4}DA4d,SC:U),Z,0,0)]
T:Fsnake_logic$__00000004[({0}S:S$joy0$0_0$0({1}SC:U),Z,0,0)({1}S:S$joy1$0_0$0({1}SC:U),Z,0,0)({2}S:S$joy2$0_0$0({1}SC:U),Z,0,0)({3}S:S$joy3$0_0$0({1}SC:U),Z,0,0)]
T:Fsnake_logic$_fixed[({0}S:S$l$0_0$0({1}SC:U),Z,0,0)({1}S:S$h$0_0$0({1}SC:U),Z,0,0)({0}S:S$b$0_0$0({2}ST__00000001:S),Z,0,0)({0}S:S$w$0_0$0({2}SI:U),Z,0,0)]
T:Fsnake_logic$OAM_item_t[({0}S:S$y$0_0$0({1}SC:U),Z,0,0)({1}S:S$x$0_0$0({1}SC:U),Z,0,0)({2}S:S$tile$0_0$0({1}SC:U),Z,0,0)({3}S:S$prop$0_0$0({1}SC:U),Z,0,0)]
T:Fsnake_logic$Snake[({0}S:S$x$0_0$0({1}SC:U),Z,0,0)({1}S:S$y$0_0$0({1}SC:U),Z,0,0)({2}S:S$direction$0_0$0({2}DA2d,SC:S),Z,0,0)({4}S:S$tail$0_0$0({80}DA40d,STPoint:S),Z,0,0)({84}S:S$lastUsedTailIndex$0_0$0({1}SC:U),Z,0,0)({85}S:S$tailLength$0_0$0({1}SC:U),Z,0,0)({86}S:S$snakeHeadspriteProp$0_0$0({1}SC:U),Z,0,0)({87}S:S$snakeHeadSpriteIndex$0_0$0({1}SC:U),Z,0,0)({88}S:S$currentSpeed$0_0$0({1}SC:U),Z,0,0)]
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
S:G$snake$0_0$0({89}STSnake:S),E,0,0
S:G$turnaraoundMap$0_0$0({625}DA25d,DA25d,SC:U),E,0,0
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
S:G$clock$0_0$0({2}DF,SI:U),C,0,0
S:G$time$0_0$0({2}DF,SI:U),C,0,0
S:G$gameover$5_1$127({2}DF,SI:S),C,0,0
