#include "GameTimeConstants.h"
#include "DanceKey.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "GroupBehaviour.h"

DanceKeyAction::DanceKeyAction()
{
	Argument.Movement.EndTime = DANCE_GROUP_MOVEMENT_DEFAULT_END_TIME;
	Argument.Movement.Kind = DANCE_GROUP_MOVEMENT_KIND_STAND_STILL;
	Argument.Movement.Param2 = 0;
	Argument.Movement.Param1 = 0;
	Type = DANCE_GROUP_ACTION_TYPE_SET_SHAPE;
	Argument.Value2 = 0;
	Argument.Value = 0;
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

uint32_t DanceKeyFrame::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		WRITE_IT(file, Time);
		file.WriteSafe(Actions);
		WRITE_IT(file, EditFlags);
		return 1;
	}
	return 0;
}

uint32_t DanceKeyFrame::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadIt(Time);
		file.ReadSafe(Actions);
		file.ReadIt(EditFlags);
		return 1;
	}
	return 0;
}
