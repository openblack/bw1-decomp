#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStateGrain.h"

#include "ColourConstants.h" /* For White */
#include <string>            /* For the std::basic_string instantiations */

HandStateGrain::HandStateGrain(CHand* hand) : HandStateHolding(hand) {}
