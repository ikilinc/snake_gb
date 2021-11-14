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
    uint8_t x, y;
} Point;

typedef struct Snake
{
    uint8_t x, y;
    int8_t direction[2]; // [x , y];
    Point tail[40];
    uint8_t lastUsedTailIndex;
    uint8_t tailLength;
    uint8_t snakeHeadspriteProp;
    uint8_t snakeHeadSpriteIndex;
    uint8_t currentSpeed;
} Snake;

static const uint16_t speed[7];
extern Snake snake;
extern uint8_t turnaraoundMap[25][25];

void init_snake();
void enlarge_snake();
void move_snake();
void reset_snake_head_props();
void move_right();
void move_left();
void move_up();
void move_down();
uint8_t get_bg_tile_index_front_of_snake();
BOOLEAN check_collision_with_wall();
BOOLEAN is_snake_moving_up();
BOOLEAN is_snake_moving_left();

#endif