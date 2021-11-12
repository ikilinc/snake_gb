#include <gb/gb.h>
#include <gb/cgb.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <gb/drawing.h>
#include <time.h>
#include <rand.h>
#include <gbdk/font.h>
#include "/opt/hugeDriver/include/hUGEDriver.h"
#include "../res/simple_snake_tiles.h"
#include "../res/snake_bg_tiles.h"
#include "../res/snake_bg.h"
#include "snake_logic.h"

#define SNAKE_H_SPRITE_INDEX 0u

#define APPLE_SPRITE_INDEX 1u

#define SNAKE_MOVEMENT_STEP 8

#define DISPLAY_MAX_TILE_X 19u
#define DISPLAY_MAX_TILE_Y 18u

#define OFF_SCREEN_OFFSET_X 8u
#define OFF_SCREEN_OFFSET_Y 16u

#define HORIZONTAL_FLIP 32u
#define VERTICAL_FLIP 64u

extern const hUGESong_t ingame_track;

static const uint16_t palette[] = {
    snake_bg_tilesCGBPal0c0, snake_bg_tilesCGBPal0c1, snake_bg_tilesCGBPal0c2, snake_bg_tilesCGBPal0c3};

static const uint16_t palette2[] = {
    snake_bg_tilesCGBPal1c0, snake_bg_tilesCGBPal1c1, snake_bg_tilesCGBPal1c2, snake_bg_tilesCGBPal1c3};

Point apple;
extern Snake snake;

static const UINT16 speed[] = {10u, 9u, 8u, 6u, 4u, 2U, 1U};
static UINT8 currentSpeed = 0;
static UINT8 appleEatCount = 0;
static uint8_t turnaraoundMap[25][25];

static UINT8 snakeHeadspriteProp = 0;
static UINT8 snakeHeadSpriteIndex = 1u;

void initSnake()
{
    snake.x = (9 * 8) + OFF_SCREEN_OFFSET_X;
    snake.y = ((DISPLAY_MAX_TILE_Y * 8) / 2) + OFF_SCREEN_OFFSET_Y;
    snake.lastUsedTailIndex = 1u;
    snake.direction[0] = -1 * SNAKE_MOVEMENT_STEP;
    snake.direction[1] = 0 * SNAKE_MOVEMENT_STEP;
    for (int i = 0; i <= snake.tailLength; i++)
    {
        hide_sprite(i + 6u);
        snake.tail[i].x = 99;
        snake.tail[i].y = 99;
    }
    snake.tailLength = 0;

    set_sprite_tile(SNAKE_H_SPRITE_INDEX, 1u); // 1 => position of snake sprite on vram
}

void initApple()
{
    set_sprite_tile(APPLE_SPRITE_INDEX, 3u); // 3 => position of apple sprite on vram
}

void placeApple()
{
    apple.x = ((abs(rand()) % (12u - 7u)) + 7u) * 8u;
    apple.y = ((abs(rand()) % (15u - 7u)) + 7u) * 8u;
    move_sprite(APPLE_SPRITE_INDEX, apple.x, apple.y);
}

void reset_snake_head()
{
    snakeHeadspriteProp = 0;
    snakeHeadSpriteIndex = 1u;
}

void enableSound()
{
    NR52_REG = 0x80;
    NR51_REG = 0xFF;
    NR50_REG = 0x77;
}

void startGame()
{
    initrand(clock());
    initSnake();
    reset_snake_head();
    initApple();
    placeApple();
    currentSpeed = 0;
    appleEatCount = 0;
    SHOW_BKG;
    SHOW_SPRITES;
}

BOOLEAN is_snake_moving_up()
{
    return snake.direction[1] == -1 * SNAKE_MOVEMENT_STEP;
}

BOOLEAN is_snake_moving_left()
{
    return snake.direction[0] == -1 * SNAKE_MOVEMENT_STEP;
}

void controls_controller()
{

    uint8_t *turnaraoundMapValue = &turnaraoundMap[snake.x / 8][snake.y / 8];

    const UINT8 joypadState = joypad();

    if ((joypadState == J_RIGHT) && (snake.direction[1] != 0))
    {
        reset_snake_head();
        snakeHeadspriteProp += HORIZONTAL_FLIP;
        snakeHeadSpriteIndex = 1u;
        if (is_snake_moving_up())
        {
            *turnaraoundMapValue = VERTICAL_FLIP;
        }
        else
        {
            *turnaraoundMapValue = 128;
        }

        snake.direction[0] = 1 * SNAKE_MOVEMENT_STEP;
        snake.direction[1] = 0 * SNAKE_MOVEMENT_STEP;
    }
    else if (joypadState == J_DOWN && (snake.direction[0] != 0))
    {
        reset_snake_head();
        snakeHeadspriteProp += VERTICAL_FLIP;
        snakeHeadSpriteIndex = 5u;
        if (is_snake_moving_left())
        {
            *turnaraoundMapValue = VERTICAL_FLIP;
        }
        else
        {
            *turnaraoundMapValue = VERTICAL_FLIP + HORIZONTAL_FLIP;
        }

        snake.direction[0] = 0 * SNAKE_MOVEMENT_STEP;
        snake.direction[1] = 1 * SNAKE_MOVEMENT_STEP;
    }
    else if (joypadState == J_LEFT && (snake.direction[1] != 0))
    {
        reset_snake_head();
        if (is_snake_moving_up())
        {
            *turnaraoundMapValue = VERTICAL_FLIP + HORIZONTAL_FLIP;
        }
        else
        {
            *turnaraoundMapValue = HORIZONTAL_FLIP;
        }

        snake.direction[0] = -1 * SNAKE_MOVEMENT_STEP;
        snake.direction[1] = 0 * SNAKE_MOVEMENT_STEP;
    }
    else if (joypadState == J_UP && (snake.direction[0] != 0))
    {
        reset_snake_head();
        snakeHeadSpriteIndex = 5u;
        if (is_snake_moving_left())
        {
            *turnaraoundMapValue = 128;
        }
        else
        {
            *turnaraoundMapValue = HORIZONTAL_FLIP;
        }

        snake.direction[0] = 0 * SNAKE_MOVEMENT_STEP;
        snake.direction[1] = -1 * SNAKE_MOVEMENT_STEP;
    };
    if (joypadState & J_START)
    {
        startGame();
    };
}

void gameover()
{
    // printf("GAME OVER");
    HIDE_SPRITES;
}

UINT16 lastTime = 0;
UINT16 timeCounter = 0;
void moveSnake()
{
    time_t clockValue = clock();
    UINT16 deltaTime = clockValue - lastTime;
    lastTime = clockValue;
    timeCounter += deltaTime;

    if (timeCounter > speed[currentSpeed])
    {
        timeCounter = 0;

        UINT8 prevX = snake.x;
        UINT8 prevY = snake.y;

        snake.x += snake.direction[0];
        snake.y += snake.direction[1];

        //remove turnaround-flag
        turnaraoundMap[snake.x / 8][snake.y / 8] = 0;

        uint8_t nextTileIndex = get_bkg_tile_xy((snake.x / 8) - 1, (snake.y / 8) - 2);

        //colide with wall
        if (nextTileIndex >= 1u && nextTileIndex <= 9u)
        {
            gameover();
        }

        set_sprite_tile(SNAKE_H_SPRITE_INDEX, snakeHeadSpriteIndex);
        set_sprite_prop(SNAKE_H_SPRITE_INDEX, snakeHeadspriteProp);

        move_sprite(SNAKE_H_SPRITE_INDEX, snake.x, snake.y);
        // this have to optimized
        for (int i = 0; i < snake.tailLength; i++)
        {
            UINT8 currentX = snake.tail[i].x;
            UINT8 currentY = snake.tail[i].y;

            if (currentX == snake.x && currentY == snake.y)
            {
                gameover();
            }

            snake.tail[i].x = prevX;
            snake.tail[i].y = prevY;

            uint8_t tail_sprite_prop = turnaraoundMap[snake.tail[i].x / 8][snake.tail[i].y / 8];
            uint8_t spriteToUse = 2u;
            if (tail_sprite_prop != 0)
            {
                spriteToUse = 4u;
            }
            else if (currentX == prevX)
            {
                spriteToUse = 6u;
            }
            else if (currentX == 99)
            {
                spriteToUse = snake.lastUsedTailIndex;
            }

            if (i == snake.tailLength - 1)
            {
                snake.lastUsedTailIndex = spriteToUse;
            }

            set_sprite_tile(i + 7u, spriteToUse);
            set_sprite_prop(i + 7u, tail_sprite_prop);
            move_sprite(i + 7u, snake.tail[i].x, snake.tail[i].y);

            prevX = currentX;
            prevY = currentY;
        }
    }
}

UINT8 collideWIthApple()
{
    return (snake.x == apple.x && snake.y == apple.y);
}

void adjustSnakeSpeed()
{
    if (appleEatCount >= 5)
    {
        if (currentSpeed <= 4)
        {
            currentSpeed++;
        }
        appleEatCount = 0;
    }
}

void eatAppleIfPossible()
{

    if (collideWIthApple() == 1)
    {
        enlargeSnake();
        placeApple();
        appleEatCount++;
        adjustSnakeSpeed();
    };
}

void main(void)
{
    __critical
    {
        hUGE_init(&ingame_track);
        add_VBL(hUGE_dosound);
        enableSound();
    }

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
        controls_controller();

        eatAppleIfPossible();
        moveSnake();

        wait_vbl_done();
    }
}
