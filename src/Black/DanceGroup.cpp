#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "DanceGroup.h"
#include "GroupBehaviour.h"

int DanceGroup::NextUntitledNumber = 1;

#include "ColourConstants.h" /* For White */

#include <math.h>  /* For atan, sqrt */
#include <stdio.h> /* For sprintf */

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For LHSinTable, PI_F, HALF_PI_F, TWO_PI */

#include "Living.h"       /* For class Living */
#include "Utils.h"        /* For class GUtils */
#include "VillagerInfo.h" /* For class GVillagerInfo */

float GroupBehaviour::GetAngle()
{
	return GroupAngle;
}

DanceEditState::DanceEditState() {}

DanceEditState::~DanceEditState() {}

void DanceEditState::ToBeDeleted(int delete_now) {}

void DanceEditState::UpdateEveryRender() {}

void DanceEditState::UpdateEveryGameTurn() {}

DanceGroup::~DanceGroup() {}

uint32_t DanceGroup::GetSaveType()
{
	return GAME_THING_TYPE_DANCE_GROUP;
}

char* DanceGroup::GetDebugText()
{
	return "DanceGroup:";
}

void DanceGroup::Initialise()
{
	Hidden = true;
	IsPath = false;
	Shape = 0;
	Size = DANCE_GROUP_DEFAULT_SIZE;
	Angle = 0.0f;
	if (Parent != NULL)
	{
		Parent->ChildGroups.Remove(Index);
		Parent = NULL;
	}
	DancerAngle = 0.0f;
	Pos.x = 0.0f;
	Pos.z = 0.0f;
	Fixed = false;
	Moved = false;
	Proportion = DANCE_GROUP_DEFAULT_PROPORTION;
	Numerator = DANCE_GROUP_DEFAULT_PROPORTION;
	Speed = GVillagerInfo::InfoList[0].WalkingSpeed;
	HasLastCentre = false;
	LivingType = DANCE_TYPE_LIVING;
	VillagerType = DANCE_GROUP_VILLAGER_TYPE_ANY;
}

void DanceGroup::RotateMapCoordsByAngle(MapCoords* coords, float angle)
{
	DancePos point;
	point.x = (float)coords->x * MetresPerMapCell / MAP_COORDS_UNITS_PER_CELL;
	point.z = (float)coords->z * MetresPerMapCell / MAP_COORDS_UNITS_PER_CELL;
	DancePos rotated = RotatePointByAngle(point, angle);
	coords->x = (long)(rotated.x * MAP_COORDS_UNITS_PER_CELL / MetresPerMapCell);
	coords->z = (long)(rotated.z * MAP_COORDS_UNITS_PER_CELL / MetresPerMapCell);
}

DancePos DanceGroup::RotatePointByAngle(DancePos& point, float angle)
{
	float x = point.x;
	float z = point.z;
	float distance = (float)sqrt(z * z + x * x);
	float pointAngle;
	if (x == 0.0f)
	{
		pointAngle = z > 0.0f ? HALF_PI_F : PI_F + HALF_PI_F;
	}
	else if (x > 0.0f)
	{
		if (z == 0.0f)
		{
			pointAngle = 0.0f;
		}
		else if (z > 0.0f)
		{
			pointAngle = (float)atan(z / x);
		}
		else
		{
			pointAngle = (float)(atan(z / x) + TWO_PI);
		}
	}
	else if (z == 0.0f)
	{
		pointAngle = PI_F;
	}
	else if (z > 0.0f)
	{
		pointAngle = (float)(atan(z / x) + PI_F);
	}
	else
	{
		pointAngle = (float)(atan(z / x) + PI_F);
	}
	float rotatedAngle = pointAngle + angle;
	if (rotatedAngle < 0.0f)
	{
		rotatedAngle += TWO_PI;
	}
	else if (rotatedAngle > TWO_PI)
	{
		rotatedAngle -= TWO_PI;
	}
	uint32_t gameAngle = GUtils::ConvertAngle3DToGame(rotatedAngle);
	DancePos rotated;
	rotated.x = (float)LHSinTable[gameAngle + LH_SIN_TABLE_COSINE_OFFSET] * distance / LH_SIN_TABLE_ONE;
	rotated.z = (float)LHSinTable[gameAngle] * distance / LH_SIN_TABLE_ONE;
	return rotated;
}

float DanceGroup::GetAngleFromPosToGroupCentre(const MapCoords& pos)
{
	MapCoords centre = CalculateActualPos();
	return (float)GUtils::GetAngleFromXZ(pos, centre);
}

void DanceGroup::ReassignChildGroupIndices()
{
	for (uint32_t i = 0; i < ChildGroups.Size(); i++)
	{
		behaviour->DanceGroups.GetAtPosition(ChildGroups[i])->IndexInParent = i;
	}
}

MapCoords DanceGroup::CalculateActualPos()
{
	MapCoords pos = behaviour->GetPos();
	pos.x += GUtils::MetersToWholeX(Pos.x);
	pos.z += GUtils::MetersToWholeZ(Pos.z);
	for (DanceGroup* parent = Parent; parent != NULL; parent = parent->Parent)
	{
		pos.x += GUtils::MetersToWholeX(parent->Pos.x);
		pos.z += GUtils::MetersToWholeZ(parent->Pos.z);
	}
	return pos;
}

long DanceGroup::GetTime()
{
	return (long)behaviour->Time;
}

MapCoords* DanceGroup::GetParentCentre()
{
	return &behaviour->Pos;
}

DanceGroup* DanceGroup::GetGroup(unsigned long index)
{
	return behaviour->DanceGroups.GetAtPosition(index);
}
