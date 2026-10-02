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

uint32_t Mobile::Save(GameOSFile& file)
{
	if (Object::Save(file))
	{
		WRITE_SAFE(file, field_0x54);
		return 1;
	}
	return 0;
}

uint32_t Mobile::Load(GameOSFile& file)
{
	if (Object::Load(file))
	{
		file.ReadSafe(field_0x54);
		return 1;
	}
	return 0;
}

bool32_t Mobile::BlocksTownClearArea() const
{
	return false;
}
