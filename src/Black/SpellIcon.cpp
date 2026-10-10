#include "GameTimeConstants.h"
#include "SpellIcon.h"
#include "SpellSeedGraphic.h"

uint32_t SpellSeedGraphic::GetSaveType()
{
	return GAME_THING_TYPE_SPELL_SEED_GRAPHIC;
}

bool SpellIcon::InteractsWithPhysicsObjects()
{
	return false;
}
