#include "GameTimeConstants.h"
#include "SpellShield.h"

#include "ColourConstants.h" /* For White */
#include "MagicShield.h"
#include "PhysicalShield.h"

uint32_t MagicShield::GetSaveType()
{
	return GAME_THING_TYPE_MAGIC_SHIELD;
}

uint32_t PhysicalShield::GetSaveType()
{
	return GAME_THING_TYPE_PHYSICAL_SHIELD;
}
