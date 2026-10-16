#include "HandStateCamera.h"

#include "ColourConstants.h" /* For White */
#include "StdStringInitializers.h"

HandStateCamera::HandStateCamera(CHand* hand) : HandState(hand)
{
	AnimationTime = 0;
}
