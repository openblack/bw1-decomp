#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "Dance.h"
#include "DanceGroup.h"
#include "GroupBehaviour.h"

int DanceGroup::NextUntitledNumber = 1;

#include "ColourConstants.h" /* For White */

#include <math.h>  /* For atan, sqrt */
#include <stdio.h> /* For sprintf */

#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For LHSinTable, PI_F, HALF_PI_F, TWO_PI */

#include "GameOSFile.h"      /* For class GameOSFile */
#include "Living.h"          /* For class Living */
#include "MapCoordsMeters.h" /* For MapCoords::MetersX */
#include "Utils.h"           /* For class GUtils */
#include "VillagerInfo.h"    /* For class GVillagerInfo */

DanceEditState::DanceEditState() {}

DanceEditState::~DanceEditState() {}

void DanceEditState::ToBeDeleted(int delete_now) {}

void DanceEditState::UpdateEveryRender() {}

void DanceEditState::UpdateEveryGameTurn() {}

uint32_t DanceGroup::GetSaveType()
{
	return GAME_THING_TYPE_DANCE_GROUP;
}

char* DanceGroup::GetDebugText()
{
	return "DanceGroup:";
}

DanceGroup::DanceGroup()
{
	Parent = NULL;
	Dancer = NULL;
	behaviour = NULL;
	Initialise();
	NumLights = 0;
	sprintf(Name, "Untitled %d", NextUntitledNumber++);
}

void DanceGroup::Initialise()
{
	Hidden = true;
	IsPath = false;
	Shape = DANCE_SHAPE_CIRCLE;
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
	Proportion.Fixed = false;
	Moved = false;
	Proportion.Value = DANCE_GROUP_DEFAULT_PROPORTION;
	Proportion.Numerator = DANCE_GROUP_DEFAULT_PROPORTION;
	Speed = GVillagerInfo::InfoList[0].WalkingSpeed;
	HasLastCentre = false;
	LivingType = DANCE_TYPE_LIVING;
	VillagerType = DANCE_GROUP_VILLAGER_TYPE_ANY;
}

void DanceGroup::Process()
{
	Moved = false;
	switch (Action.Kind)
	{
	case DANCE_GROUP_MOVEMENT_KIND_CHANGE_SIZE:
		Size += Change.Size;
		if (GetTime() >= Action.EndTime)
		{
			Action.Kind = DANCE_GROUP_MOVEMENT_KIND_STAND_STILL;
			Change.Initialise();
		}
		Moved = true;
		break;
	case DANCE_GROUP_MOVEMENT_KIND_MOVE_TO_POS:
		Pos += Change.Move;
		if (GetTime() >= Action.EndTime)
		{
			Action.Kind = DANCE_GROUP_MOVEMENT_KIND_STAND_STILL;
			Change.Initialise();
		}
		Moved = true;
		break;
	case DANCE_GROUP_MOVEMENT_KIND_ROTATE_DANCERS:
		if (!Action.Param1.Direction)
		{
			float angle = DancerAngle + Change.DancerRotation;
			if (angle >= DANCE_DANCER_ANGLE_FULL_TURN)
			{
				angle = Change.DancerRotation - (DANCE_DANCER_ANGLE_FULL_TURN - DancerAngle);
				if (angle <= 0.0f)
				{
					angle = 0.0f;
				}
			}
			DancerAngle = angle;
		}
		else if (DancerAngle < Change.DancerRotation)
		{
			DancerAngle = DANCE_DANCER_ANGLE_MAX - (Change.DancerRotation - DancerAngle - DANCE_DANCER_ANGLE_UNIT);
		}
		else
		{
			DancerAngle -= Change.DancerRotation;
		}
		Moved = true;
		break;
	case DANCE_GROUP_MOVEMENT_KIND_ROTATE_SHAPE:
		if (!Action.Param1.Direction)
		{
			Angle += Change.ShapeRotation;
			if (Angle >= DANCE_SHAPE_ANGLE_FULL_TURN)
			{
				Angle = 0.0f;
			}
		}
		else
		{
			Angle -= Change.ShapeRotation;
			if (Angle < 0.0f)
			{
				Angle = DANCE_SHAPE_ANGLE_FULL_TURN;
			}
		}
		Moved = true;
		break;
	}
	if (Dancers.count > 0)
	{
		Living* living = Dancers.GetHead();
		if (!living->IsDancing())
		{
			living->RemoveFromDance(true);
			return;
		}
		living->CalculateDancePosition(*GetParentCentre(), &Centre);
		if (HasLastCentre)
		{
			Speed = GUtils::GetDistance(Centre, LastCentre);
		}
		HasLastCentre = true;
		LastCentre = Centre;
	}
}

DancePos DanceGroup::InterpolatedShapePosition(unsigned long shape, float position)
{
	uint32_t index = (uint32_t)position;
	float    fraction = position - (float)index;
	DancePos point;
	point.x = (float)DanceShapePoints[shape][index].x;
	point.z = (float)DanceShapePoints[shape][index].z;
	uint32_t next = index + 1;
	if (next >= DANCE_SHAPE_NUM_POINTS)
	{
		next = 0;
	}
	DancePos nextPoint;
	nextPoint.x = (float)DanceShapePoints[shape][next].x;
	nextPoint.z = (float)DanceShapePoints[shape][next].z;
	float    inverse = 1.0f - fraction;
	DancePos pos;
	pos.x = inverse * point.x + nextPoint.x * fraction;
	pos.z = inverse * point.z + nextPoint.z * fraction;
	if (Angle == 0.0f)
	{
		return pos;
	}
	return RotatePointByAngle(pos, Angle);
}

void DanceGroup::RotateMapCoordsByAngle(MapCoords* coords, float angle)
{
	DancePos point;
	point.x = coords->MetersX();
	point.z = coords->MetersZ();
	DancePos rotated = RotatePointByAngle(point, angle);
	coords->SetMetersX(rotated.x);
	coords->SetMetersZ(rotated.z);
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
	return (int32_t)behaviour->Time;
}

MapCoords* DanceGroup::GetParentCentre()
{
	return &behaviour->Pos;
}

DanceGroup* DanceGroup::GetGroup(unsigned long index)
{
	return behaviour->DanceGroups.GetAtPosition(index);
}

bool32_t DanceGroup::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		file.WritePtr(Dancer);
		file.WritePtr(behaviour);
		file.WriteSafe(Dancers);
		file.WriteIt(Index);
		file.WriteIt(Hidden);
		file.WriteIt(IsPath);
		file.WriteIt(Shape);
		file.WriteIt(Pos);
		file.WriteIt(Size);
		file.WriteIt(Unused);
		file.WriteIt(Angle);
		file.WriteIt(Action);
		file.WriteIt(DancerAngle);
		file.WritePtr(Parent);
		file.WriteIt(IndexInParent);
		file.WriteIt(NumDancersAssigned);
		file.WriteIt(Moved);
		file.WriteIt(Speed);
		file.WriteIt(HasLastCentre);
		file.WriteIt(Centre);
		file.WriteIt(LastCentre);
		file.WriteIt(LivingType);
		file.WriteIt(NumLights);
		file.WriteIt(Name);
		file.WriteIt(Proportion);
		file.WriteSafe(ChildGroups);
		file.WriteIt(VillagerType);
		return true;
	}
	return false;
}

bool32_t DanceGroup::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadPtr((GameThing**)&Dancer);
		file.ReadPtr((GameThing**)&behaviour);
		file.ReadSafe(Dancers);
		file.ReadIt(Index);
		file.ReadIt(Hidden);
		file.ReadIt(IsPath);
		file.ReadIt(Shape);
		file.ReadIt(Pos);
		file.ReadIt(Size);
		file.ReadIt(Unused);
		file.ReadIt(Angle);
		file.ReadIt(Action);
		file.ReadIt(DancerAngle);
		file.ReadPtr((GameThing**)&Parent);
		file.ReadIt(IndexInParent);
		file.ReadIt(NumDancersAssigned);
		file.ReadIt(Moved);
		file.ReadIt(Speed);
		file.ReadIt(HasLastCentre);
		file.ReadIt(Centre);
		file.ReadIt(LastCentre);
		file.ReadIt(LivingType);
		file.ReadIt(NumLights);
		file.ReadIt(Name);
		file.ReadIt(Proportion);
		file.ReadSafe(ChildGroups);
		file.ReadIt(VillagerType);
		return true;
	}
	return false;
}
