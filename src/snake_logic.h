#include <types.h>
#include <gb/gb.h>
#include <time.h>
#include "../res/simple_snake_tiles.h"

#ifndef __snake_logic_h__
#define __snake_logic_h__

#define SNAKE_MOVEMENT_STEP 8
#define SNAKE_HEAD_VRAM_SPRITE_INDEX 0u
#define OFF_SCREEN_OFFSET_X 8u
#define OFF_SCREEN_OFFSET_Y 16u
#define DISPLAY_MAX_TILE_X 19u
#define DISPLAY_MAX_TILE_Y 18u
#define HORIZONTAL_FLIP 32u
#define VERTICAL_FLIP 64u

typedef struct Point
{
    UINT8 x, y;
} Point;

typedef struct Snake
{
    UINT8 x, y;
    INT8 direction[2]; // [x , y];
    Point tail[40];
    UINT8 lastUsedTailIndex;
    UINT8 tailLength;
    UINT8 snakeHeadspriteProp;
    UINT8 snakeHeadSpriteIndex;
    UINT8 currentSpeed;
} Snake;

static const UINT16 speed[7];
extern Snake snake;
extern UINT8 turnaraoundMap[25][25];

void init_snake();
void enlarge_snake();
void move_snake();
void reset_snake_head_props();
void move_right();
void move_left();
void move_up();
void move_down();
UINT8 get_bg_tile_index_front_of_snake();
BOOLEAN check_collision_with_wall();
BOOLEAN is_snake_moving_up();
BOOLEAN is_snake_moving_left();

#endif