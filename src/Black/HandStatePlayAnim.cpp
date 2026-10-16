#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStatePlayAnim.h"

#include "ColourConstants.h" /* For White */
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

HandStatePlayAnim::HandStatePlayAnim(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
}

void HandStatePlayAnim::Enter()
{
	AnimationTime = 0;
}
