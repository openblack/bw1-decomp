#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStateTug.h"

#include "ColourConstants.h" /* For White */
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

HandStateTug::HandStateTug(CHand* hand) : HandState(hand)
{
	TugPosition = 0;
}
