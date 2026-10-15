#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "HandStateTug.h"

#include "ColourConstants.h" /* For White */
#include <string>            /* For the std::basic_string instantiations */

HandStateTug::HandStateTug(CHand* hand) : HandState(hand)
{
	TugPosition = 0;
}
