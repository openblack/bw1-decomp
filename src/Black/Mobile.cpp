#include "Mobile.h"

#include "GameOSFile.h"
#include "SpeedThreshold.h"

GSpeedThreshold GSpeedThreshold::InfoList[SPEED_THRESHOLD_LAST];

uint32_t Mobile::ApplyThisToMapCoord(GInterfaceStatus* status, const MapCoords& coords,
                                     GestureSystemPacketData* param_3)
{
	ThrowObjectFromHand(status, false);
	return 0x16;
}

bool32_t Mobile::Save(GameOSFile& file)
{
	if (Object::Save(file))
	{
		WRITE_SAFE(file, field_0x54);
		return true;
	}
	return false;
}

bool32_t Mobile::Load(GameOSFile& file)
{
	if (Object::Load(file))
	{
		file.ReadSafe(field_0x54);
		return true;
	}
	return false;
}

bool32_t Mobile::BlocksTownClearArea() const
{
	return false;
}

#ifdef VERSION_BW1WCI
bool32_t Mobile::AreWeThere(const MapCoords& coords, float extra_distance)
{
	float dx = (float)(Pos.WholeX() - coords.WholeX());
	float dz = (float)(Pos.WholeZ() - coords.WholeZ());
	float r = (float)GetSpeed() + extra_distance;
	return dx * dx + dz * dz < r * r;
}
#endif
