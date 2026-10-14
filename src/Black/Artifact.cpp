#include "GameTimeConstants.h"
#include "Artifact.h"

#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "Object.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Fixed.h"
#include "Town.h"
#include "Player.h"

uint32_t TownArtifact::GetSaveType()
{
	return GAME_THING_TYPE_TOWN_ARTIFACT;
}

GPlayer* TownArtifact::GetPlayer()
{
	return Player;
}

Town* TownArtifact::GetTown()
{
	return town;
}

bool32_t TownArtifact::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadPtr((GameThing**)&Artifact);
		file.ReadPtr((GameThing**)&town);
		file.ReadPtr((GameThing**)&Player);
		file.ReadIt(Value);
		file.ReadPtr((GameThing**)&field_0x2c);
		file.ReadPtr((GameThing**)&field_0x38);
		file.ReadIt(field_0x30);
		file.ReadIt(field_0x34);
		return true;
	}
	return false;
}

bool32_t TownArtifact::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		file.WritePtr(Artifact);
		file.WritePtr(town);
		file.WritePtr(Player);
		file.WriteIt(Value);
		file.WritePtr(field_0x2c);
		file.WritePtr(field_0x38);
		file.WriteIt(field_0x30);
		file.WriteIt(field_0x34);
		return true;
	}
	return false;
}

bool32_t Object::CanBeFrighteningToCreature(Creature* creature)
{
	return false;
}
