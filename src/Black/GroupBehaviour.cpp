#include "GameTimeConstants.h"
#include "GroupBehaviour.h"

#include "ColourConstants.h" /* For White */
#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"

#include <Lionhead/LHLib/ver5.0/LHDynamicStack.h> /* For class LHDynamicStack */

#include "Dance.h"      /* For class Dance */
#include "DanceKey.h"   /* For class DanceKeyFrame, class DanceKeyAction */
#include "DanceLight.h" /* For class DanceLight */
#include "GameInfo.h"   /* For class GGameInfo */
#include "GameOSFile.h" /* For class GameOSFile */
#include "Living.h"     /* For class Living */
#include "Utils.h"      /* For class GUtils */

#define FILEPATH "C:\\dev\\MP\\Black\\GroupBehaviour.cpp"

/* Seconds in a minute, the unit of GroupBehaviour::Length */
#define SECONDS_PER_MINUTE 60

template <typename T> static void ReadSafe(GameOSFile& file, LHOrderedLinkedList<T>& list)
{
	if (GameOSFile::ReadEnabled)
	{
		long count;
		file.ReadIt(count);
		while (count > 0)
		{
			T* element;
			file.ReadPtr((GameThing**)&element);
			list.Insert(element);
			count--;
		}
	}
}

template <typename T> static void WriteSafe(GameOSFile& file, LHOrderedLinkedList<T>& list)
{
	if (GameOSFile::WriteEnabled)
	{
		uint32_t count = list.count;
		int      written = 0;
		file.WriteIt(list.count);
		for (LHOrderedLinkedListIterator<T> iterator(list); iterator.MoreToDo(); iterator++)
		{
			if (++written > (int)count)
			{
				GameOSFile::WriteEnabled = false;
				break;
			}
			if (!GameOSFile::WriteEnabled)
			{
				break;
			}
			file.WritePtr(iterator.Get());
		}
	}
}

inline float MapCoords::MetersX() const
{
	return (float)(WholeX() * MetresPerMapCell / MAP_COORDS_UNITS_PER_CELL);
}

inline float MapCoords::MetersZ() const
{
	return (float)(WholeZ() * MetresPerMapCell / MAP_COORDS_UNITS_PER_CELL);
}

inline void MapCoords::SetMetersX(float meters)
{
	SetWholeX((long)(meters * MAP_COORDS_UNITS_PER_CELL / MetresPerMapCell));
}

inline void MapCoords::SetMetersZ(float meters)
{
	SetWholeZ((long)(meters * MAP_COORDS_UNITS_PER_CELL / MetresPerMapCell));
}

GroupBehaviour::GroupBehaviour()
{
	Pos.Clear();
	Speed = LastSpeed = 1.0f;
	Unused2 = 0;
	Unused1 = 0;
	Unused3 = 0;
	Time = 0.0f;
	NumGroups = 0;
	EditorValue2 = 0;
	NumDancers = 0;
	ProportionCounter = 0;
	GroupAngle = 0.0f;
	UseDanceCamera = false;
	DanceCameraDisabled = false;
	DanceCameraCreated = false;
	MarkedForDeletion = false;
	CameraNearTurns = 0;
	EditorValue = GROUP_BEHAVIOUR_DEFAULT_EDITOR_VALUE;
	Denominator = GROUP_BEHAVIOUR_DEFAULT_DENOMINATOR;
	Length = GROUP_BEHAVIOUR_DEFAULT_LENGTH;
	CameraTravelTime = GROUP_BEHAVIOUR_DEFAULT_CAMERA_TRAVEL_TIME;
	for (int i = 0; i < GROUP_BEHAVIOUR_MAX_LIGHTS; i++)
	{
		Lights[i] = NULL;
	}
}

void GroupBehaviour::ToBeDeleted(int delete_now)
{
	OrderedNode<DanceKeyFrame>* node;
	while ((node = KeyFrames.GetHead()) != NULL)
	{
		DanceKeyFrame* keyFrame = node->GetData();
		KeyFrames.Remove(keyFrame);
		keyFrame->ToBeDeleted(false);
	}
	MarkedForDeletion = true;
	for (int i = 0; i < GROUP_BEHAVIOUR_MAX_LIGHTS; i++)
	{
		if (Lights[i] != NULL)
		{
			delete Lights[i];
		}
	}
	DanceGroups.ToBeDeletedAll();
	DanceMembers.ToBeDeletedAll();
	FixedGroups.RemoveAll();
	ProportionGroups.RemoveAll();
	GameThingWithPos::ToBeDeleted(delete_now);
}

void GroupBehaviour::Process()
{
	float                       time = Time;
	OrderedNode<DanceKeyFrame>* node;
	for (node = KeyFrames.GetHead(); node != NULL; node = node->next)
	{
		if (node->data->IsTimeEqualTo(time))
		{
			break;
		}
	}
	if (node != NULL)
	{
		UpdateGroupsFromKeyFrame(node->data);
	}
	ProcessGroups();
	for (int i = 0; i < GROUP_BEHAVIOUR_MAX_LIGHTS; i++)
	{
		if (Lights[i] != NULL)
		{
			Lights[i]->Process();
		}
	}
	Time += 1.0f;
	if ((unsigned long)Time >= GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f) / DANCE_KEY_FRAMES_PER_SECOND *
	                               Length * SECONDS_PER_MINUTE * DANCE_KEY_FRAMES_PER_SECOND)
	{
		Time = 0.0f;
	}
}

void GroupBehaviour::ProcessGroups()
{
	for (LHLinkedNode<DanceGroup*>* node = DanceGroups.GetStart(); node != NULL; node = node->next.Get())
	{
		node->payload->Process();
	}
}

void GroupBehaviour::UpdateGroupsFromKeyFrame(DanceKeyFrame* key_frame)
{
	for (unsigned long i = 0; i < key_frame->Actions.count; i++)
	{
		UpdateGroupsBasedOnAction(key_frame->Actions.GetAtPosition(i));
	}
}

void GroupBehaviour::UpdateGroupsBasedOnAction(DanceKeyAction* action)
{
	for (uint32_t i = 0; i < action->Groups.GetSize(); i++)
	{
		unsigned long group = action->Groups.GetNthMember(i);
		if (group >= DanceGroups.count)
		{
			DanceGroup* danceGroup = new (FILEPATH, 130) DanceGroup();
			danceGroup->behaviour = this;
			Dance* dance = dynamic_cast<Dance*>(this);
			if (dance != NULL)
			{
				danceGroup->Dancer = dance;
			}
			danceGroup->Index = group;
			DanceGroups.AddToEnd(danceGroup);
		}
		UpdateGroupBasedOnAction(DanceGroups.GetAtPosition(group), action->Type, action->Argument,
		                         action->Groups.GetNthMember(i));
	}
}

void GroupBehaviour::UpdateNumeratorsAndDenominator()
{
	unsigned long              maxProportion = 0;
	LHLinkedNode<DanceGroup*>* node;
	for (node = ProportionGroups.GetStart(); node != NULL; node = node->next.Get())
	{
		if (node->payload->Proportion.Value > maxProportion)
		{
			maxProportion = node->payload->Proportion.Value;
		}
	}
	for (unsigned long divisor = maxProportion; divisor >= 1; divisor--)
	{
		bool32_t dividesAll = true;
		for (node = ProportionGroups.GetStart(); node != NULL; node = node->next.Get())
		{
			if (node->payload->Proportion.Value % divisor != 0)
			{
				dividesAll = false;
			}
		}
		if (dividesAll)
		{
			for (node = ProportionGroups.GetStart(); node != NULL; node = node->next.Get())
			{
				node->payload->Proportion.Numerator = node->payload->Proportion.Value / divisor;
			}
			Denominator = GROUP_BEHAVIOUR_DEFAULT_DENOMINATOR / divisor;
			return;
		}
	}
}

void GroupBehaviour::AddAction(float time, unsigned long group, DANCE_GROUP_ACTION_TYPE action_type,
                               const DanceGroupActionArgument& argument)
{
	LHDynamicStack<unsigned long> groups;
	groups.Push(group);
	AddAction(time, groups, action_type, argument);
}

DanceKeyFrame* GroupBehaviour::AddAction(float time, LHDynamicStack<unsigned long>& groups,
                                         DANCE_GROUP_ACTION_TYPE action_type, const DanceGroupActionArgument& argument)
{
	DanceKeyFrame* keyFrame = NULL;
	for (OrderedNode<DanceKeyFrame>* node = KeyFrames.GetHead(); node != NULL; node = node->next)
	{
		if (node->data->IsTimeEqualTo(time))
		{
			keyFrame = node->data;
			break;
		}
	}
	if (keyFrame != NULL)
	{
		keyFrame->AddAction(groups, action_type, argument);
		return keyFrame;
	}
	keyFrame = new (FILEPATH, 527) DanceKeyFrame((int)time, groups, action_type, argument);
	KeyFrames.Insert(keyFrame);
	return keyFrame;
}

Living* GroupBehaviour::GetFirstDancer()
{
	if (DanceGroups.GetAtPosition(0)->Dancers.count > 0)
	{
		return DanceGroups.GetAtPosition(0)->Dancers.GetHead();
	}
	return NULL;
}

void GroupBehaviour::CalculateDancePosition(const MapCoords& centre, MapCoords* pos, DanceGroup* dance_group,
                                            unsigned long index)
{
	MapCoords     offset;
	unsigned long numPositions;
	if (dance_group->IsPath)
	{
		numPositions = dance_group->NumLights;
	}
	else if (dance_group->Proportion.Fixed)
	{
		numPositions = dance_group->Proportion.Value < dance_group->Dancers.count ? dance_group->Dancers.count
		                                                                          : dance_group->Proportion.Value;
	}
	else
	{
		numPositions = dance_group->Dancers.count;
	}
	*pos = centre;
	float angle = (float)index * DANCE_DANCER_ANGLE_FULL_TURN / numPositions + dance_group->DancerAngle;
	if (angle >= DANCE_DANCER_ANGLE_FULL_TURN)
	{
		angle -= DANCE_DANCER_ANGLE_FULL_TURN;
	}
	DancePos shapePos = dance_group->InterpolatedShapePosition(dance_group->Shape, angle);
	offset.SetMetersX(dance_group->Size * GUtils::ShapePosToMeters(shapePos.x) + dance_group->Pos.x);
	offset.SetMetersZ(dance_group->Size * GUtils::ShapePosToMeters(shapePos.z) + dance_group->Pos.z);
	DanceGroup* child = dance_group;
	for (DanceGroup* parent = dance_group->Parent; parent != NULL; parent = parent->Parent)
	{
		float parentAngle =
			(float)child->IndexInParent * DANCE_DANCER_ANGLE_FULL_TURN / (uint8_t)parent->ChildGroups.Size() +
			parent->DancerAngle;
		if (parentAngle >= DANCE_DANCER_ANGLE_FULL_TURN)
		{
			parentAngle -= DANCE_DANCER_ANGLE_FULL_TURN;
		}
		DancePos parentPos = parent->InterpolatedShapePosition(parent->Shape, parentAngle);
		float    x = parent->Size * GUtils::ShapePosToMeters(parentPos.x) + parent->Pos.x;
		offset.SetMetersX(offset.MetersX() + x);
		float z = parent->Size * GUtils::ShapePosToMeters(parentPos.z) + parent->Pos.z;
		offset.SetMetersZ(offset.MetersZ() + z);
		child = parent;
	}
	DanceGroup::RotateMapCoordsByAngle(&offset, dance_group->behaviour->GetAngle());
	pos->SetMetersX(offset.MetersX() + pos->MetersX());
	pos->SetMetersZ(offset.MetersZ() + pos->MetersZ());
	GUtils::GetDistanceInMetres(centre, *pos);
}

Living* GroupBehaviour::FindFirstDanceMember(GameThingWithPos* exclude)
{
	for (unsigned long i = 0; i < NumGroups; i++)
	{
		for (LHLinkedNode<Living*>* node = DanceGroups.GetAtPosition(i)->Dancers.GetStart(); node != NULL;
		     node = node->next.Get())
		{
			if (node->payload != exclude)
			{
				return node->payload;
			}
		}
	}
	return NULL;
}

uint32_t GroupBehaviour::Save(GameOSFile& file)
{
	if (GameThingWithPos::Save(file))
	{
		file.WriteIt(Time);
		file.WriteIt(Unused1);
		file.WriteIt(Unused2);
		file.WriteIt(Unused3);
		WriteSafe(file, KeyFrames);
		file.WriteIt(NumGroups);
		file.WriteIt(EditorValue);
		file.WriteIt(EditorValue2);
		file.WriteIt(Length);
		file.WriteSafe(DanceGroups);
		file.WriteSafe(FixedGroups);
		file.WriteSafe(ProportionGroups);
		file.WriteIt(NumDancers);
		file.WriteIt(ProportionCounter);
		file.WriteIt(Denominator);
		file.WriteIt(Speed);
		file.WriteIt(LastSpeed);
		file.WriteSafe(DanceMembers);
		file.WriteIt(GroupAngle);
		file.WriteIt(UseDanceCamera);
		file.WriteIt(DanceCameraDisabled);
		file.WriteIt(DanceCameraCreated);
		file.WriteIt(MarkedForDeletion);
		file.WriteIt(CameraTravelTime);
		file.WriteIt(CameraNearTurns);
		return 1;
	}
	return 0;
}

uint32_t GroupBehaviour::Load(GameOSFile& file)
{
	if (GameThingWithPos::Load(file))
	{
		file.ReadIt(Time);
		file.ReadIt(Unused1);
		file.ReadIt(Unused2);
		file.ReadIt(Unused3);
		ReadSafe(file, KeyFrames);
		file.ReadIt(NumGroups);
		file.ReadIt(EditorValue);
		file.ReadIt(EditorValue2);
		for (int i = 0; i < GROUP_BEHAVIOUR_MAX_LIGHTS; i++)
		{
			Lights[i] = NULL;
		}
		file.ReadIt(Length);
		file.ReadSafe(DanceGroups);
		file.ReadSafe(FixedGroups);
		file.ReadSafe(ProportionGroups);
		file.ReadIt(NumDancers);
		file.ReadIt(ProportionCounter);
		file.ReadIt(Denominator);
		file.ReadIt(Speed);
		file.ReadIt(LastSpeed);
		file.ReadSafe(DanceMembers);
		file.ReadIt(GroupAngle);
		file.ReadIt(UseDanceCamera);
		file.ReadIt(DanceCameraDisabled);
		file.ReadIt(DanceCameraCreated);
		file.ReadIt(MarkedForDeletion);
		file.ReadIt(CameraTravelTime);
		file.ReadIt(CameraNearTurns);
		return 1;
	}
	return 0;
}
