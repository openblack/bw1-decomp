#include "Abode.h"
#include "Creature.h"
#include "Object.h"
#include "Villager.h"
#include "CreatureMorph.h"                              /* For LH3DCreature */
#include "CreaturePhysical.h"                           /* For CreaturePhysical */
#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For LH3DMapCoords */
#include "Landscape.h"
#include "GameInfo.h"               /* For GGameInfo */
#include "VillagerStateTableInfo.h" /* For GVillagerStateTableInfo */

#include "ColourConstants.h" // rogue include needed for matching sinit & bss

static const float CellSize = 10.0f;

void Object::CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos)
{
	MapCoords coords = Pos;
	float     height = GetHeight() * 0.5f;
	coords.altitude = height;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, *outPos);
}

void Abode::CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos)
{
	MapCoords coords;
	coords = Pos;
	float height = GetHeight() * 0.5f;
	coords.altitude = height;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, *outPos);
}

void Villager::CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos)
{
	MapCoords coords = Pos;
	float     height = GetHeight() * 0.5f;
	coords.altitude = height;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, *outPos);
	if (!GVillagerStateTableInfo::Infos[action.states[LIVING_ACTION_INDEX_TOP]].isFinalState)
	{
		float stepX = step.x * CellSize / (float)0x10000;
		float stepZ = step.z * CellSize / (float)0x10000;
		outPos->x += stepX * (uint32_t)(seconds * GGameInfo::Info.NumGameTicksPerSecond());
		outPos->z += stepZ * (uint32_t)(seconds * GGameInfo::Info.NumGameTicksPerSecond());
	}
}

void Creature::CalculateWhereIWillBeAfterNSeconds(float seconds, LHPoint* outPos)
{
	float distance = physical->Creature3d->WalkSpeed;
	distance *= seconds;
	float heading = physical->Creature3d->GetHeading();
	outPos->x = (float)sin(heading) * distance;
	outPos->y = 0.0f;
	outPos->z = -(float)cos(heading) * distance;
	LHPoint& pos = physical->Creature3d->GetPos();
	outPos->x += pos.x;
	outPos->y += pos.y;
	outPos->z += pos.z;
	float heightOffset = physical->Creature3d->Size1 * 15.0f;
	outPos->y = LH3DIsland::GetAltitude(LH3DMapCoords(outPos->x, outPos->z)) + heightOffset;
}
