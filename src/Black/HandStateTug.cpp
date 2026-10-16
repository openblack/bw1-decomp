#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStateTug.h"

#include "ColourConstants.h" /* For White */
#include "StdStringInitializers.h"

HandStateTug::HandStateTug(CHand* hand) : HandState(hand)
{
	TugPosition = 0;
}
