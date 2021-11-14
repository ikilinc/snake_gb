#include "snake_logic.h"

Snake snake;
UINT8 turnaraoundMap[25][25];
static const UINT16 speed[] = {10u, 9u, 8u, 6u, 4u, 2U, 1U};

void init_snake()
{
    snake.currentSpeed = 0;
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
    snake.snakeHeadspriteProp = 0;
    snake.snakeHeadSpriteIndex = 1u;

    set_sprite_tile(SNAKE_HEAD_VRAM_SPRITE_INDEX, 1u); // 1 => position of snake sprite on vram
}

void reset_snake_head_props()
{
    snake.snakeHeadspriteProp = 0;
    snake.snakeHeadSpriteIndex = 1u;
}

void enlarge_snake()
{

    if (snake.tailLength == 30)
    {
        return;
    }

    snake.tailLength++;

    set_sprite_data(snake.tailLength + 6u, snake.lastUsedTailIndex, SimpleSnakeTiles);
    set_sprite_tile(snake.tailLength + 6u, snake.lastUsedTailIndex);

    Point point;
    point.x = 99;
    point.y = 99;
    snake.tail[snake.tailLength] = point;
}

uint8_t get_bg_tile_index_front_of_snake()
{
    return get_bkg_tile_xy((snake.x / SNAKE_MOVEMENT_STEP) - 1, (snake.y / SNAKE_MOVEMENT_STEP) - 2);
}

BOOLEAN check_collision_with_wall()
{
    uint8_t nextTileIndex = get_bg_tile_index_front_of_snake();
    return nextTileIndex >= 1u && nextTileIndex <= 9u;
}

BOOLEAN is_snake_moving_up()
{
    return snake.direction[1] == -1 * SNAKE_MOVEMENT_STEP;
}

BOOLEAN is_snake_moving_left()
{
    return snake.direction[0] == -1 * SNAKE_MOVEMENT_STEP;
}

void move_right()
{
    UINT8 *turnaraoundMapValue = &turnaraoundMap[snake.x / 8][snake.y / 8];
    reset_snake_head_props();
    snake.snakeHeadspriteProp += HORIZONTAL_FLIP;
    snake.snakeHeadSpriteIndex = 1u;
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
void move_left()
{
    UINT8 *turnaraoundMapValue = &turnaraoundMap[snake.x / 8][snake.y / 8];
    reset_snake_head_props();
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
void move_up()
{
    UINT8 *turnaraoundMapValue = &turnaraoundMap[snake.x / 8][snake.y / 8];
    reset_snake_head_props();
    snake.snakeHeadSpriteIndex = 5u;
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
}
void move_down()
{
    UINT8 *turnaraoundMapValue = &turnaraoundMap[snake.x / 8][snake.y / 8];
    reset_snake_head_props();
    snake.snakeHeadspriteProp += VERTICAL_FLIP;
    snake.snakeHeadSpriteIndex = 5u;
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

UINT16 lastTime = 0;
UINT16 timeCounter = 0;
void move_snake()
{
    time_t clockValue = clock();
    UINT16 deltaTime = clockValue - lastTime;
    lastTime = clockValue;
    timeCounter += deltaTime;

    if (timeCounter > speed[snake.currentSpeed])
    {
        timeCounter = 0;

        UINT8 prevX = snake.x;
        UINT8 prevY = snake.y;

        snake.x += snake.direction[0];
        snake.y += snake.direction[1];

        //remove turnaround-flag
        turnaraoundMap[snake.x / 8][snake.y / 8] = 0;

        set_sprite_tile(SNAKE_HEAD_VRAM_SPRITE_INDEX, snake.snakeHeadSpriteIndex);
        set_sprite_prop(SNAKE_HEAD_VRAM_SPRITE_INDEX, snake.snakeHeadspriteProp);

        move_sprite(SNAKE_HEAD_VRAM_SPRITE_INDEX, snake.x, snake.y);
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

            UINT8 tail_sprite_prop = turnaraoundMap[snake.tail[i].x / 8][snake.tail[i].y / 8];
            UINT8 spriteToUse = 2u;
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