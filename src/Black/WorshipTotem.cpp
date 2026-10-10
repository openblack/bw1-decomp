#include "GameTimeConstants.h"
#include "WorshipTotem.h"

#include "ColourConstants.h" /* For White */

uint32_t WorshipTotem::GetSaveType()
{
	return GAME_THING_TYPE_WORSHIP_TOTEM;
}


void WorshipTotem::SetSpecularColor(unsigned long param_1)
{
	field_0x8c = param_1;
}
