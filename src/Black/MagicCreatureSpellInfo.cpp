#include "GameTimeConstants.h"
#include "MagicCreatureSpellInfo.h"

#include "ColourConstants.h" /* For White */
#include "Creature.h"
#include "CreatureReceiveSpell.h"
#include "SpellCreature.h"

#if defined(VERSION_BW1W100)
#define MAGIC_CREATURE_SPELL_INFO_FILE "C:\\dev\\black\\MagicCreatureSpellInfo.cpp"
#elif defined(VERSION_BW1W110)
#define MAGIC_CREATURE_SPELL_INFO_FILE "C:\\dev\\Black\\MagicCreatureSpellInfo.cpp"
#else
#define MAGIC_CREATURE_SPELL_INFO_FILE "C:\\dev\\MP\\Black\\MagicCreatureSpellInfo.cpp"
#endif

Spell* GMagicCreatureSpellInfo::AllocSpell(GameThing* caster) const
{
	return new (MAGIC_CREATURE_SPELL_INFO_FILE, 13) SpellCreature(MagicType, caster);
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
