#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStateCitadel.h"

#include "ColourConstants.h" /* For White */
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

HandStateCitadel::HandStateCitadel(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
}
