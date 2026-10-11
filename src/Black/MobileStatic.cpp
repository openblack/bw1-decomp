#include "MobileStatic.h"
#include "MobileStaticInfo.h"

GMobileStaticInfo GMobileStaticInfo::Infos[MOBILE_STATIC_INFO_LAST];

bool32_t MobileStatic::CanBecomeAPhysicsObject()
{
	return true;
}

bool32_t MobileStatic::BlocksTownClearArea() const
{
	return false;
}

SCRIPT_OBJECT_TYPE MobileStatic::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_MOBILE_STATIC;
}

bool MobileStatic::ChecksVerticesVObjects()
{
	return true;
}
