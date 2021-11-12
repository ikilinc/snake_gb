#include "snake_logic.h"
#include <gb/gb.h>

Snake snake;

void enlargeSnake()
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