#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStateCreature.h"

#include "ColourConstants.h" /* For White */
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

HandStateCreature::HandStateCreature(CHand* hand) : HandState(hand) {}
