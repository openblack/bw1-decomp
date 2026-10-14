#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "Living.h"

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */
#include "DataPath.h"
#include "GameOSFile.h" /* For class GameOSFile */

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
