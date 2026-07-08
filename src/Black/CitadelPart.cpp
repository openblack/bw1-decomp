#include "CitadelPart.h"

#include "Citadel.h"
#include "CitadelPartInfo.h"
#include "GameOSFile.h"

CitadelPart::CitadelPart() : MultiMapFixed(), citadel(NULL), next(NULL), game_thing_0x88(NULL), field_0x7c(0.0f) {}

CitadelPart::CitadelPart(const MapCoords& coords, const GCitadelPartInfo* info, Citadel* citadel, float y_angle,
                         float scale, float param_6, int param_7)
	: MultiMapFixed(coords, info, y_angle, scale, param_6, param_7), citadel(citadel), next(NULL), game_thing_0x88(NULL)
{
	SetLife(info->life);
	field_0x7c = info->influence;
	if (citadel != NULL)
	{
		citadel->part_list.AddToFirst(this);
	}
}

uint32_t CitadelPart::Load(GameOSFile& file)
{
	if (!MultiMapFixed::Load(file))
	{
		return 0;
	}

	file.ReadIt(field_0x7c);
	file.ReadPtr((GameThing**)&citadel);
	file.ReadPtr(&game_thing_0x88);

	return 1;
}
