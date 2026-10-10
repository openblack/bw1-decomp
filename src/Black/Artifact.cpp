#include "GameTimeConstants.h"
#include "Artifact.h"

#include "LandscapeConstants.h" /* For LandscapeExtent */

uint32_t TownArtifact::GetSaveType()
{
	return GAME_THING_TYPE_TOWN_ARTIFACT;
}
