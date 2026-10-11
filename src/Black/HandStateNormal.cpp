#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStateNormal.h"

#include "ColourConstants.h" /* For White */

HandStateNormal::HandStateNormal(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
}
