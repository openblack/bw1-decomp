#include "GameThing.h"

const float maxAlignmentChangePerGameTurn asm("?maxAlignmentChangePerGameTurn@GameThing@@2MB");
 // [0x1394] 0x008a9000 + 0x1394 = 0x008aa394
const float maxAlignmentChangePerGameTurn = 1.0f / (60 * 60 * 10);
