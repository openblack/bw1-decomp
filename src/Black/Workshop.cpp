#include "GameTimeConstants.h"
#include "Workshop.h"

LH3DObject::ObjectType Workshop::Get3DType()
{
	return LH3DObject::MORPHABLE;
}

bool32_t Workshop::IsWorkshop()
{
	return true;
}

bool32_t Workshop::IsWorkshop(Creature* creature)
{
	return true;
}

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

bool32_t Workshop::DeleteObjectAndTakeResource(Object* object, GInterfaceStatus* status)
{
	DoDeleteObjectAndTakeResource(object, status);
	return true;
}

void Workshop::ResolveLoad()
{
	Object::ResolveLoad();
}
