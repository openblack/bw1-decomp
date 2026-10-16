#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStateHolding.h"

#include "ColourConstants.h" /* For White */
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

// Remaining time (ms) during which a held creature may still be given to a creature; counted down in Update
static int GiveToCreatureTimeLeft;

HandStateHolding::HandStateHolding(CHand* hand) : HandState(hand)
{
	GiveToCreatureTimeLeft = 0;
	AnimationTime = 0;
	UnusedClearedOnCreate = 0;
}
