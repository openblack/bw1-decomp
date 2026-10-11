#include "GameTimeConstants.h"
#include "DanceKey.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "GroupBehaviour.h"

DanceKeyAction::DanceKeyAction()
{
	field_0x3c = DANCE_KEY_ACTION_FIELD_0x3C_DEFAULT;
	field_0x30 = 0;
	field_0x38 = 0;
	field_0x34 = 0;
	Type = 0;
	field_0x24 = 0;
	field_0x20 = 0;
}

uint32_t DanceKeyAction::GetSaveType()
{
	return GAME_THING_TYPE_DANCE_KEY_ACTION;
}

DanceKeyFrame::DanceKeyFrame(int param_1, LHDynamicStack<unsigned long>& groups, DANCE_GROUP_ACTION_TYPE action_type,
                             const DanceGroupActionArgument& arguments)
{
	Time = (float)param_1;
	AddAction(groups, action_type, arguments);
	field_0x20 = 0;
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

void DanceKeyFrame::ToBeDeleted(int param_1)
{
	Actions.ToBeDeletedAll();
	GameThing::ToBeDeleted(param_1);
}

uint32_t DanceKeyFrame::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		WRITE_IT(file, Time);
		file.WriteSafe(Actions);
		WRITE_IT(file, field_0x20);
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
		file.ReadIt(field_0x20);
		return 1;
	}
	return 0;
}
