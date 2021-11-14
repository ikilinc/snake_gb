#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <rand.h>
#include <gbdk/font.h>
#include "../res/simple_snake_tiles.h"
#include "../res/snake_bg_tiles.h"
#include "../res/snake_bg.h"
#include "snake_logic.h"
#include "game_music.h"

#define APPLE_VRAM_SPRITE_INDEX 1u

static const uint16_t palette[] = {
    snake_bg_tilesCGBPal0c0, snake_bg_tilesCGBPal0c1, snake_bg_tilesCGBPal0c2, snake_bg_tilesCGBPal0c3};

static const uint16_t palette2[] = {
    snake_bg_tilesCGBPal1c0, snake_bg_tilesCGBPal1c1, snake_bg_tilesCGBPal1c2, snake_bg_tilesCGBPal1c3};

Point apple;
static uint8_t appleEatCount = 0;

void initApple()
{
    set_sprite_tile(APPLE_VRAM_SPRITE_INDEX, 3u); // 3 => position of apple sprite on vram
}

void placeApple()
{
    apple.x = ((abs(rand()) % (12u - 7u)) + 7u) * 8u;
    apple.y = ((abs(rand()) % (15u - 7u)) + 7u) * 8u;
    move_sprite(APPLE_VRAM_SPRITE_INDEX, apple.x, apple.y);
}

void startGame()
{
    initrand(clock());
    init_snake();
    initApple();
    placeApple();
    appleEatCount = 0;
    SHOW_BKG;
    SHOW_SPRITES;
}

void check_input()
{
    const uint8_t joypadState = joypad();

    if ((joypadState == J_RIGHT) && (snake.direction[1] != 0))
    {
        move_right();
    }
    else if (joypadState == J_DOWN && (snake.direction[0] != 0))
    {
        move_down();
    }
    else if (joypadState == J_LEFT && (snake.direction[1] != 0))
    {
        move_left();
    }
    else if (joypadState == J_UP && (snake.direction[0] != 0))
    {
        move_up();
    };
    if (joypadState & J_START)
    {
        startGame();
    };
}

void gameover()
{
    // printf("GAME OVER");
    stopPlayingMusic();
    HIDE_SPRITES;
}

void gameover_if_collide_with_wall()
{
    if (check_collision_with_wall())
    {
        gameover();
    }
}

uint8_t collideWIthApple()
{
    return (snake.x == apple.x && snake.y == apple.y);
}

void adjustSnakeSpeed()
{
    if (appleEatCount >= 5)
    {
        if (snake.currentSpeed <= 4)
        {
            snake.currentSpeed++;
        }
        appleEatCount = 0;
    }
}

void eatAppleIfPossible()
{

    if (collideWIthApple() == 1)
    {
        enlarge_snake();
        placeApple();
        appleEatCount++;
        adjustSnakeSpeed();
    };
}

void main(void)
{
    playLevel1Music();
    enableSound();

    set_sprite_data(0, 7u, SimpleSnakeTiles);
    // Load Background tiles and then map
    set_bkg_palette(0, 1u, &palette[0]);
    set_sprite_palette(0, 1u, &palette2[0]);

    set_bkg_data(0, 9u, snake_bg_tiles);
    set_bkg_tiles(0, 0, 20u, 20u, snake_bg_map);

    startGame();

    // Loop forever
    while (1)
    {
        check_input();

        eatAppleIfPossible();
        move_snake();
        gameover_if_collide_with_wall();

        wait_vbl_done();
    }
}
