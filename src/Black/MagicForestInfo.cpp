#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "MagicForestInfo.h"

#include "SpellForest.h"

#if defined(VERSION_BW1W100)
#define MAGIC_FOREST_INFO_FILE "C:\\dev\\black\\MagicForestInfo.cpp"
#elif defined(VERSION_BW1W110)
#define MAGIC_FOREST_INFO_FILE "C:\\dev\\Black\\MagicForestInfo.cpp"
#else
#define MAGIC_FOREST_INFO_FILE "C:\\dev\\MP\\Black\\MagicForestInfo.cpp"
#endif

Spell* GMagicForestInfo::AllocSpell(GameThing* caster) const
{
	return new (MAGIC_FOREST_INFO_FILE, 14) SpellForest(MagicType, caster);
}
