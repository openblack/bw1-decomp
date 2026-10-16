#include "CreatureRoomCamera.h"

#include "ColourConstants.h" /* For White */
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

void CreatureRoomCamera::Close()
{
	InnerCamera::Close();
}
