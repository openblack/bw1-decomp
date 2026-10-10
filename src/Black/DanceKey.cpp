#include "GameTimeConstants.h"
#include "DanceKey.h"
#include "GroupBehaviour.h"

uint32_t DanceKeyAction::GetSaveType()
{
	return GAME_THING_TYPE_DANCE_KEY_ACTION;
}

uint32_t DanceKeyFrame::GetSaveType()
{
	return GAME_THING_TYPE_DANCE_KEY_FRAME;
}
