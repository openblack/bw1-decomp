#include "PlayerMessage.h"

#include "ColourConstants.h" /* For White */
#include "CellSize.h"
/* Creature Isle's build of this unit has no <string> initializers. */
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110) && !defined(VERSION_BW1WCI)
#include <string>
#endif

void PlayerMessage::ClickFunction(int param_1, int param_2, int param_3) {}
