#include "Camera.h"

#include "ColourConstants.h" /* For White */

uint32_t GCamera::GetSaveType()
{
	return GAME_THING_TYPE_GCAMERA;
}

void GCamera::SetScriptSlomoControl(int control)
{
	field_0x70 = control;
}
