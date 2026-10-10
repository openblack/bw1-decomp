#include "GameTimeConstants.h"
#include "WorshipSpellIcon.h"

uint32_t WorshipSpellIcon::GetSaveType()
{
	return GAME_THING_TYPE_WORSHIP_SPELL_ICON;
}

uint32_t WorshipSpellIcon::SaveObject(LHOSFile& param_1, const MapCoords* param_2)
{
	return 0;
}

unsigned long WorshipSpellIcon::GetTurnChargingStarted()
{
	return field_0x138;
}
