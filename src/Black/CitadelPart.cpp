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

bool32_t CitadelPart::Load(GameOSFile& file)
{
	if (!MultiMapFixed::Load(file))
	{
		return false;
	}

	file.ReadIt(Influence);
	file.ReadPtr((GameThing**)&citadel);
	file.ReadPtr((GameThing**)&GameThing0x88);

	return true;
}

uint32_t CitadelPart::GetSaveType()
{
	return GAME_THING_TYPE_CITADEL_PART;
}

bool32_t CitadelPart::CanBeDestroyedBySpell(Spell* spell)
{
	return false;
}

bool32_t CitadelPart::ShouldFootpathsGoRound()
{
	return true;
}

LH3DObject::ObjectType CitadelPart::Get3DType()
{
	return LH3DObject::MORPHABLE;
}

uint32_t CitadelPart::Process()
{
	return 1;
}

PlannedMultiMapFixed* CitadelPart::ConvertToPlanned()
{
	return NULL;
}

uint32_t CitadelPart::SaveObject(LHOSFile& param_1, const MapCoords* param_2)
{
	return 0;
}

uint32_t CitadelPart::DestroyedByEffect(GPlayer* param_1, float param_2)
{
	return 0;
}
