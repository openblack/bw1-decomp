#include "PlayerMessage.h"

#include "ColourConstants.h" /* For White */
#include "CellSize.h"
// The BW1W110 build of this unit has no std::basic_string initializers.
#if !defined(VERSION_BW1W110)
#include <string> /* For the std::basic_string instantiations */
#endif

void PlayerMessage::ClickFunction(int param_1, int param_2, int param_3) {}
