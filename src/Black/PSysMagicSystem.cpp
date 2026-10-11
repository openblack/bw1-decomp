#include "GameTimeConstants.h"
#include "PSysModifiers.h"
#include "PSysRules.h"

uint32_t UR_LightSheetOnObject::AtomData::GetSaveType()
{
	return GAME_THING_TYPE_UR_LIGHT_SHEET_ON_OBJECT_ATOM_DATA;
}

uint32_t UR_VolFXOnObject::AtomData::GetSaveType()
{
	return GAME_THING_TYPE_UR_VOL_FX_ON_OBJECT_ATOM_DATA;
}

char* UR_LightSheetOnObject::AtomData::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}

char* UR_VolFXOnObject::AtomData::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}
