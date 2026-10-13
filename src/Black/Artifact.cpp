#include "GameTimeConstants.h"
#include "Artifact.h"

#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "Object.h"

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

bool32_t Object::CanBeFrighteningToCreature(Creature* creature)
{
	return false;
}
