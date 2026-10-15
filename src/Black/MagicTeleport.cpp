#include "MagicTeleport.h"
#include "GameOSFile.h" /* For class GameOSFile */
#include "Reaction.h"
#include "SpellTeleport.h"
#include "Player.h"

bool32_t MagicTeleport::CanBePickedUpByCreature(Creature* param_1)
{
	return false;
}

bool32_t MagicTeleport::CanBeSetOnFire(Creature* param_1)
{
	return false;
}

bool32_t MagicTeleport::CanBeStompedOnByCreature(Creature* param_1)
{
	return false;
}

bool32_t MagicTeleport::CanBeThrownByCreature(Creature* param_1)
{
	return false;
}

bool32_t MagicTeleport::CanBePutInAStoragePit(Creature* param_1)
{
	return false;
}

bool32_t MagicTeleport::CanBeDestroyedByStoning(Creature* param_1)
{
	return false;
}

bool32_t MagicTeleport::CanBeStonedAndEatenByCreature(Creature* param_1)
{
	return false;
}

bool32_t MagicTeleport::CanBeExaminedByCreature(Creature* param_1)
{
	return false;
}

bool32_t MagicTeleport::CanBeFoughtByCreature(Creature* param_1)
{
	return false;
}

bool32_t MagicTeleport::CanActAsAContainer(Creature* param_1)
{
	return false;
}

uint32_t MagicTeleport::GetSaveType()
{
	return GAME_THING_TYPE_MAGIC_TELEPORT;
}

bool32_t MagicTeleport::IsSolidToNewAbode()
{
	return true;
}

bool MagicTeleport::InteractsWithPhysicsObjects()
{
	return false;
}

bool32_t MagicTeleport::CanBecomeAPhysicsObject()
{
	return false;
}

bool32_t MagicTeleport::IsEffectReceiver(EffectValues* param_1)
{
	return false;
}

char* MagicTeleport::GetDebugText()
{
	return "MagicTeleport:";
}

bool32_t MagicTeleport::Load(GameOSFile& file)
{
	if (MobileStatic::Load(file))
	{
		file.ReadPtr((GameThing**)&TeleportReaction);
		file.ReadPtr((GameThing**)&Spell);
		file.ReadPtr((GameThing**)&Player);
		return true;
	}
	return false;
}

bool32_t MagicTeleport::Save(GameOSFile& file)
{
	if (MobileStatic::Save(file))
	{
		file.WritePtr(TeleportReaction);
		file.WritePtr(Spell);
		file.WritePtr(Player);
		return true;
	}
	return false;
}

GPlayer* MagicTeleport::GetPlayer()
{
	return Player;
}

MagicTeleport::~MagicTeleport() {}
