#include "game_music.h"

extern const hUGESong_t ingame_track;

void enableSound()
{
    NR52_REG = 0x80;
    NR51_REG = 0xFF;
    NR50_REG = 0x77;
}

void playLevel1Music()
{
    hUGE_init(&ingame_track);
    add_VBL(hUGE_dosound);
}

void stopPlayingMusic()
{
    // hUGE_reset_wave();
    // remove_VBL(hUGE_dosound);
}