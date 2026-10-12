#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStatePlayAnim.h"

#include "ColourConstants.h" /* For White */

HandStatePlayAnim::HandStatePlayAnim(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
}

void HandStatePlayAnim::Enter()
{
	AnimationTime = 0;
}
