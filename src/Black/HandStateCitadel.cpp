#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStateCitadel.h"

#include "ColourConstants.h" /* For White */
#include "StdStringInitializers.h"

HandStateCitadel::HandStateCitadel(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
}
