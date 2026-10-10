#include "GameTimeConstants.h"
#include "CitadelPart.h"

#include "Citadel.h"
#include "CitadelPartInfo.h"
#include "GameOSFile.h"

CitadelPart::CitadelPart(const MapCoords& coords, const GCitadelPartInfo* info, Citadel* parent_citadel, float y_angle,
                         float scale, float food, int wood)
	: MultiMapFixed(coords, info, y_angle, scale, food, wood)
{
	citadel.Set(parent_citadel);
	SetLife(info->life);
	Influence = info->influence;
	if (parent_citadel != NULL)
	{
		parent_citadel->PartList.AddToFirst(this);
	}
}

uint32_t CitadelPart::Load(GameOSFile& file)
{
	if (!MultiMapFixed::Load(file))
	{
		return 0;
	}

	file.ReadIt(Influence);
	file.ReadPtr((GameThing**)&citadel);
	file.ReadPtr((GameThing**)&GameThing0x88);

	return 1;
}

bool32_t CitadelPart::ShouldFootpathsGoRound()
{
	return true;
}
