#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "Living.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "DataPath.h"
#include "GameOSFile.h" /* For class GameOSFile */

const uint32_t NumTurnsToDieOver = 600;
const int16_t  NumTurnsDowned = 300;

uint32_t DataForScriptRemind::GetSaveType()
{
	return GAME_THING_TYPE_DATA_FOR_SCRIPT_REMIND;
}

char* DataForScriptRemind::GetDebugText()
{
	return "DataForScriptRemind:";
}

uint32_t DataPath::GetSaveType()
{
	return GAME_THING_TYPE_DATA_PATH;
}

char* DataPath::GetDebugText()
{
	return "DataPath:";
}

bool32_t DataPath::Load(GameOSFile& file)
{
	if (GameThing::Load(file))
	{
		file.ReadIt(TrackNo);
		file.ReadIt(field_0x1c);
		file.ReadIt(field_0x20);
		file.ReadIt(field_0x24);
		file.ReadIt(field_0x28);
		file.ReadIt(field_0x2c);
		return true;
	}
	return false;
}

bool32_t DataPath::Save(GameOSFile& file)
{
	if (GameThing::Save(file))
	{
		file.WriteIt(TrackNo);
		file.WriteIt(field_0x1c);
		file.WriteIt(field_0x20);
		file.WriteIt(field_0x24);
		file.WriteIt(field_0x28);
		file.WriteIt(field_0x2c);
		return true;
	}
	return false;
}

bool32_t Living::CanBecomeAPhysicsObject()
{
	return true;
}

bool32_t Living::InvalidState()
{
	return false;
}

bool32_t Living::Flying()
{
	return true;
}

bool32_t Living::InHand()
{
	return true;
}

void Living::Birthday() {}

bool32_t Living::ExitInLanded(uint8_t state)
{
	return true;
}

bool32_t Living::CreatureMustAvoid(Creature* param_1)
{
	return false;
}

uint32_t Living::EnterMoveToPos(VILLAGER_STATES param_1, VILLAGER_STATES param_2)
{
	return 1;
}

bool32_t Living::ExitBeingEaten(uint8_t state)
{
	return true;
}

bool32_t Living::EnterMoveOnPath(uint8_t current, uint8_t destination)
{
	return true;
}

IMMERSION_EFFECT_TYPE Living::GetInHandImmersionTexture()
{
	return IMMERSION_EFFECT_TYPE_ANIMATING_IN_HAND;
}

#ifndef VERSION_BW1W100
bool32_t Living::IsMovingForAnimation()
{
	return IsMoving();
}

void Living::ResolveLoad()
{
	Object::ResolveLoad();
}
#endif

int Living::MoveToPos()
{
	if (GameThingWithPos::Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE)
	{
		return 0;
	}
	int result = MoveTo();
	if (result == MOVE_TO_STATES_0xa)
	{
		SetTopStateToFinal();
	}
	return result;
}

bool32_t Living::WaitForCounter()
{
	if (--TurnsUntilNextStateChange <= 0)
	{
		SetTopStateToFinal();
	}
	return true;
}

uint32_t Living::GetNumTurnsToDieOver()
{
	return NumTurnsToDieOver;
}

bool32_t Living::Dying()
{
	PlayAnimThenSetState(VILLAGER_STATE_DEAD, 1);
	return true;
}

bool32_t Living::Downed()
{
	PlayAnimThenSetState(VILLAGER_STATE_BEING_EATEN, 1);
	TurnsUntilNextStateChange = NumTurnsDowned;
	return true;
}

bool32_t Living::ExitMoveToPos(uint8_t state)
{
	circle_hug_info.Reset(this);
	target = NULL;
	return true;
}
