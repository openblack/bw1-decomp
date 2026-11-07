#include "MobileStatic.h"
#include "MobileStaticInfo.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Landscape.h"  /* For GLandscape */
#include "Player.h"

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

bool32_t MobileStatic::Load(GameOSFile& file)
{
	if (MultiMapFixed::Load(file))
	{
		file.ReadPtr((GameThing**)&Player);
		file.ReadIt(XAngle);
		file.ReadIt(ZAngle);
		return true;
	}
	return false;
}

bool32_t MobileStatic::Save(GameOSFile& file)
{
	if (MultiMapFixed::Save(file))
	{
		file.WritePtr(Player);
		file.WriteIt(XAngle);
		file.WriteIt(ZAngle);
		return true;
	}
	return false;
}

MobileStatic::~MobileStatic() {}

void MobileStatic::ToBeDeleted(bool32_t delete_now)
{
	MultiMapFixed::ToBeDeleted(delete_now);
}

void MobileStatic::GetWorldMatrix(LHMatrix* matrix)
{
	LHPoint pos;
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, pos);
	float scale = GetScale();
	if (scale != 1.0f)
	{
		matrix->SetYXZMatrixOnly(GetYAngle(), GetXAngle(), GetZAngle());
		matrix->PreScale(scale, scale, scale);
		matrix->SetTranslateOnly(pos);
		return;
	}
	matrix->SetYXZMatrixOnly(GetYAngle(), GetXAngle(), GetZAngle());
	matrix->SetTranslateOnly(pos);
}

bool32_t MobileStatic::CreatureMustAvoid(Creature* creature)
{
	return Object::CreatureMustAvoid(creature);
}

#ifdef VERSION_BW1WCI
GBaseOnly* GBaseOnly::Create(const MapCoords& coords, const GObjectInfo* info, float y_angle, float scale)
{
	GBaseOnly* base = new (__FILE__, 700) GBaseOnly(coords, info, y_angle, scale);
	base->CallVirtualFunctionsForCreation(coords);
	return base;
}
#else
GBaseOnly* GBaseOnly::Create(const MapCoords& coords, const GObjectInfo* info)
{
	GBaseOnly* base = new (__FILE__, 583) GBaseOnly(coords, info);
	base->CallVirtualFunctionsForCreation(coords);
	return base;
}
#endif

GBaseInfo* GMobileStaticInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = MOBILE_STATIC_INFO_LAST;
	return Infos;
}
