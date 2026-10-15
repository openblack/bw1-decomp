#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStatePlayAnim.h"

#include "ColourConstants.h" /* For White */
#include <string>            /* For the std::basic_string instantiations */

HandStatePlayAnim::HandStatePlayAnim(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
}

void HandStatePlayAnim::Enter()
{
	AnimationTime = 0;
}
