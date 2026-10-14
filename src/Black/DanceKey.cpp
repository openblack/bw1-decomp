#include "GameTimeConstants.h"
#include "DanceKey.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "GroupBehaviour.h"

#include <Lionhead/LHLib/ver5.0/LHStack.h> /* For class LHStack */

#include "GameInfo.h" /* For class GGameInfo */

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\DanceKey.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\DanceKey.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\DanceKey.cpp"
#endif

#define DANCE_KEY_FRAME_MAX_REMOVED_GROUPS 256

DanceKeyAction::DanceKeyAction()
{
	Type = DANCE_GROUP_ACTION_TYPE_SET_SHAPE;
	Argument.Value2 = 0;
	Argument.Value = 0;
}

DanceKeyAction::DanceKeyAction(LHDynamicStack<unsigned long>& groups, DANCE_GROUP_ACTION_TYPE type,
                               const DanceGroupActionArgument& argument)
{
	for (uint32_t i = 0; i < groups.GetSize(); i++)
	{
		Groups.Push(groups.GetNthMember(i));
	}
	Type = type;
	Argument = argument;
}

bool32_t DanceKeyAction::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		file.WriteSafe(Groups);
		WRITE_IT(file, Type);
		WRITE_IT(file, Argument);
		return true;
	}
	return false;
}

bool32_t DanceKeyAction::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadSafe(Groups);
		file.ReadIt(Type);
		file.ReadIt(Argument);
		return true;
	}
	return false;
}

uint32_t DanceKeyAction::GetSaveType()
{
	return GAME_THING_TYPE_DANCE_KEY_ACTION;
}

DanceKeyFrame::DanceKeyFrame(int time, LHDynamicStack<unsigned long>& groups, DANCE_GROUP_ACTION_TYPE action_type,
                             const DanceGroupActionArgument& arguments)
{
	Time = (float)time;
	AddAction(groups, action_type, arguments);
	EditFlags = 0;
}

uint32_t DanceKeyFrame::GetSaveType()
{
	return GAME_THING_TYPE_DANCE_KEY_FRAME;
}

char* DanceKeyAction::GetDebugText()
{
	return "DanceKeyAction:";
}

char* DanceKeyFrame::GetDebugText()
{
	return "DanceKeyFrame:";
}

void DanceKeyFrame::ToBeDeleted(int delete_now)
{
	Actions.ToBeDeletedAll();
	GameThing::ToBeDeleted(delete_now);
}

bool32_t DanceKeyFrame::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		WRITE_IT(file, Time);
		file.WriteSafe(Actions);
		WRITE_IT(file, EditFlags);
		return true;
	}
	return false;
}

bool32_t DanceKeyFrame::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadIt(Time);
		file.ReadSafe(Actions);
		file.ReadIt(EditFlags);
		return true;
	}
	return false;
}

bool32_t DanceKeyFrame::IsTimeEqualTo(float time)
{
	int32_t ticksPerHalfSecond = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(1.0f) / DANCE_KEY_FRAMES_PER_SECOND;
	return (int32_t)Time / ticksPerHalfSecond == (int32_t)time / ticksPerHalfSecond;
}

bool32_t DanceKeyFrame::GroupList1SubsumesGroupList2(LHDynamicStack<unsigned long>& group_list1,
                                                     LHDynamicStack<unsigned long>& group_list2)
{
	for (uint32_t i = 0; i < group_list2.GetSize(); i++)
	{
		if (!IsGroupInGroupList(group_list2.GetNthMember(i), group_list1))
		{
			return false;
		}
	}
	return true;
}

bool32_t DanceKeyFrame::IsGroupInGroupList(unsigned long group, LHDynamicStack<unsigned long>& group_list)
{
	for (uint32_t i = 0; i < group_list.GetSize(); i++)
	{
		if (group_list.GetNthMember(i) == group)
		{
			return true;
		}
	}
	return false;
}

void DanceKeyFrame::RemoveActionsWithSubsumedGroupLists(unsigned long index, DANCE_GROUP_ACTION_TYPE action_type,
                                                        LHDynamicStack<unsigned long>& groups)
{
	for (uint32_t i = index + 1; i < Actions.count; i++)
	{
		if (Actions.GetAtPosition(i)->Type == action_type &&
		    GroupList1SubsumesGroupList2(groups, Actions.GetAtPosition(i)->Groups))
		{
			Actions.Remove(Actions.GetAtPosition(i));
			i--;
		}
	}
}

void DanceKeyFrame::AddAction(LHDynamicStack<unsigned long>& groups, DANCE_GROUP_ACTION_TYPE action_type,
                              const DanceGroupActionArgument& arguments)
{
	for (uint32_t i = 0; i < Actions.count; i++)
	{
		if (Actions.GetAtPosition(i)->Type != action_type)
		{
			continue;
		}
		if (GroupList1SubsumesGroupList2(groups, Actions.GetAtPosition(i)->Groups))
		{
			for (uint32_t j = 0; j < groups.GetSize(); j++)
			{
				if (!IsGroupInGroupList(groups.GetNthMember(j), Actions.GetAtPosition(i)->Groups))
				{
					Actions.GetAtPosition(i)->Groups.Push(groups.GetNthMember(j));
				}
			}
			Actions.GetAtPosition(i)->Argument = arguments;
			RemoveActionsWithSubsumedGroupLists(i, action_type, groups);
			return;
		}
		if (GroupList1SubsumesGroupList2(Actions.GetAtPosition(i)->Groups, groups))
		{
			LHStack<unsigned long, DANCE_KEY_FRAME_MAX_REMOVED_GROUPS> removedGroups;
			removedGroups.SetToZero();
			uint32_t numRemovedGroups = 0;
			while (Actions.GetAtPosition(i)->Groups.GetSize() > 0)
			{
				removedGroups[numRemovedGroups++] = Actions.GetAtPosition(i)->Groups.Pop();
			}
			for (uint32_t j = 0; j < numRemovedGroups; j++)
			{
				if (!IsGroupInGroupList(removedGroups[j], groups))
				{
					Actions.GetAtPosition(i)->Groups.Push(removedGroups[j]);
				}
			}
			break;
		}
	}
	Actions.AddToEnd(new (FILEPATH, 278) DanceKeyAction(groups, action_type, arguments));
}
