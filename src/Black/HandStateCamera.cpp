#include "HandStateCamera.h"

#include "ColourConstants.h" /* For White */
#include <string>            /* For the std::basic_string instantiations */

HandStateCamera::HandStateCamera(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
}
