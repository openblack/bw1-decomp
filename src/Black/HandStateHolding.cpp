#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStateHolding.h"

#include "ColourConstants.h" /* For White */
#include <string>            /* For the std::basic_string instantiations */

// Remaining time (ms) during which a held creature may still be given to a creature; counted down in Update
static int GiveToCreatureTimeLeft;

HandStateHolding::HandStateHolding(CHand* hand) : HandState(hand)
{
	GiveToCreatureTimeLeft = 0;
	AnimationTime = 0;
	UnusedClearedOnCreate = 0;
}
