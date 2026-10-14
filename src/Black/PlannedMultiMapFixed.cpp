#include "GameTimeConstants.h"
#include "PlannedMultiMapFixed.h"

#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "FootpathLink.h"
#include "MultiMapFixedInfo.h"

void PlannedMultiMapFixed::Draw() {}

bool32_t PlannedMultiMapFixed::Load(GameOSFile& file)
{
	if (GameThingWithPos::Load(file))
	{
		file.ReadIt(YAngle);
		file.ReadIt(scale);
		file.ReadIt(WasConstructed);
		file.ReadIt(field_0x34);
		file.ReadIt(CreationTurn);
		file.ReadPtr((GameThing**)&FootpathLink);
		file.ReadInfo((const GBaseInfo**)&info);
		return true;
	}
	return false;
}

bool32_t PlannedMultiMapFixed::Save(GameOSFile& file)
{
	if (GameThingWithPos::Save(file))
	{
		file.WriteIt(YAngle);
		file.WriteIt(scale);
		file.WriteIt(WasConstructed);
		file.WriteIt(field_0x34);
		file.WriteIt(CreationTurn);
		file.WritePtr(FootpathLink.Get());
		file.WriteInfo(info.Get());
		return true;
	}
	return false;
}
