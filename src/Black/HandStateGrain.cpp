#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStateGrain.h"

#include "ColourConstants.h" /* For White */
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

HandStateGrain::HandStateGrain(CHand* hand) : HandStateHolding(hand) {}
