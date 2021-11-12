#include <types.h>
#include "../res/simple_snake_tiles.h"

#ifndef __snake_logic_h__
#define __snake_logic_h__

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
} Snake;

void enlargeSnake();

#endif