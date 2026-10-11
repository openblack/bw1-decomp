#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStateHolding.h"

#include "ColourConstants.h" /* For White */

HandStateHolding::HandStateHolding(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
	field_0x10 = 0;
}
