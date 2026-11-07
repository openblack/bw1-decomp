#include "GameTimeConstants.h"
#include "MagicCreatureSpellInfo.h"

#include "ColourConstants.h" /* For White */
#include "Creature.h"
#include "CreatureReceiveSpell.h"
#include "SpellCreature.h"

Spell* GMagicCreatureSpellInfo::AllocSpell(GameThing* caster) const
{
	return NEW(13) SpellCreature(MagicType, caster);
}

bool32_t GMagicCreatureSpellInfo::CanCast(const MapCoords& coords, GameThing* caster) const
{
	return false;
}

bool32_t GMagicCreatureSpellInfo::CanCast(Object* object, GameThing* caster) const
{
	Creature* creature = dynamic_cast<Creature*>(object);
	if (creature != NULL && !creature->ReceiveSpell->IsQueueFull())
	{
		return true;
	}
	return false;
}

const GMagicCreatureSpellInfo* GMagicCreatureSpellInfo::AsMagicCreatureSpellInfo() const
{
	return this;
}

GMagicCreatureSpellInfo* GMagicCreatureSpellInfo::AsMagicCreatureSpellInfo()
{
	return this;
}
