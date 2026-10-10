#include "GameTimeConstants.h"
#include "Creche.h"

uint32_t Creche::GetSaveType()
{
	return GAME_THING_TYPE_CRECHE;
}

bool32_t Creche::CanActAsAContainer(Creature* param_1)
{
	return false;
}

bool32_t Creche::IsStoragePit(Creature* param_1)
{
	return false;
}

LH3DObject::ObjectType Creche::Get3DType()
{
	return LH3DObject::MORPHABLE;
}
