#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "MagicForestInfo.h"

#include "SpellForest.h"

Spell* GMagicForestInfo::AllocSpell(GameThing* caster) const
{
	return new (__FILE__, 14) SpellForest(MagicType, caster);
}
