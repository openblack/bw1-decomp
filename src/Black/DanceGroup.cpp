#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "DanceGroup.h"
#include "GroupBehaviour.h"

int DanceGroup::NextUntitledNumber = 1;

#include "ColourConstants.h" /* For White */

uint32_t DanceGroup::GetSaveType()
{
	return GAME_THING_TYPE_DANCE_GROUP;
}

void DanceEditState::ToBeDeleted(int delete_now) {}
