#include "LH3DTech.h"
#include "SuperVillager.h"
#include "Black/Water.h"

// TODO: These render-system globals still have oversized extracted split owners.
// Dedicated SuperVillager/Water implementation TUs have not yet been separated.
SuperVillager* SuperVillager::g_first;
LH3DSprite*    GWater::g_sprite_circle;

uint32_t LH3DTech::g_game_time_inc;

// TODO: The original BSS still belongs to a different extracted unit in splits.txt.
LHPoint LH3DTech::g_ambient_wind_direction;
