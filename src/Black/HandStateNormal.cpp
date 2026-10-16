#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStateNormal.h"

#include "ColourConstants.h" /* For White */
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

HandStateNormal::HandStateNormal(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
}
