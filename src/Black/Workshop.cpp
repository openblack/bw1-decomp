#include "GameTimeConstants.h"
#include "Workshop.h"

bool32_t Workshop::CanActAsAContainer(Creature* param_1)
{
	return false;
}

bool32_t Workshop::IsStoragePit(Creature* param_1)
{
	return false;
}

uint32_t Workshop::GetSaveType()
{
	return GAME_THING_TYPE_WORKSHOP;
}

char* Workshop::GetDebugText()
{
	return "WorkShop:";
}

void Workshop::ResolveLoad()
{
	Object::ResolveLoad();
}
