#include "MobileStatic.h"
#include "MobileStaticInfo.h"

#if defined(VERSION_BW1W100)
#define MOBILE_STATIC_FILE "C:\\dev\\black\\MobileStatic.cpp"
#elif defined(VERSION_BW1W110)
#define MOBILE_STATIC_FILE "C:\\dev\\Black\\MobileStatic.cpp"
#else
#define MOBILE_STATIC_FILE "C:\\dev\\MP\\Black\\MobileStatic.cpp"
#endif

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

GBaseOnly* GBaseOnly::Create(const MapCoords& coords, const GObjectInfo* info)
{
	GBaseOnly* base = new (MOBILE_STATIC_FILE, 583) GBaseOnly(coords, info);
	base->CallVirtualFunctionsForCreation(coords);
	return base;
}

GBaseInfo* GMobileStaticInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = MOBILE_STATIC_INFO_LAST;
	return Infos;
}
