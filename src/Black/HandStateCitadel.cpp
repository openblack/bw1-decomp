#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStateCitadel.h"

#include "ColourConstants.h" /* For White */
#include <string>            /* For the std::basic_string instantiations */

HandStateCitadel::HandStateCitadel(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
}
