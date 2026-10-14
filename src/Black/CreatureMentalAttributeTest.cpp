#include "GameTimeConstants.h"
#include "CreatureMentalAttributeTest.h"

#include "ColourConstants.h" /* For White */

#include <chlasm/Enum.h> /* For INVALID_CREATURE_DESIRE, MAGIC_TYPE_LAST, OBJECT_TYPE_LAST */

#include "Abode.h"    /* For ABODE_BEING_BUILT_LAST */
#include "Creature.h" /* For CREATURE_HEIGHT_LAST */
#include "CreatureMentalBelief.h"
#include "Forest.h" /* For FOREST_SIZE_LAST */

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\CreatureMentalAttributeTest.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreatureMentalAttributeTest.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreatureMentalAttributeTest.cpp"
#endif

bool32_t AttributeCreatureDominantDesire::IsDynamic()
{
	return true;
}

const char* AttributeCreatureDominantDesire::TypeName()
{
	return "Desire";
}

uint32_t AttributeCreatureDominantDesire::ValueRange()
{
	// Actions without a desire (e.g. gestures) store INVALID_CREATURE_DESIRE, the highest value.
	return INVALID_CREATURE_DESIRE + 1;
}

ATTRIBUTE_TYPE AttributeCreatureDominantDesire::GetType()
{
	return ATTRIBUTE_TYPE_CREATURE_DOMINANT_DESIRE;
}

AttributeCreatureDominantDesire::~AttributeCreatureDominantDesire() {}

bool32_t AttributeCreatureHeight::IsDynamic()
{
	return true;
}

const char* AttributeCreatureHeight::TypeName()
{
	return "Height";
}

uint32_t AttributeCreatureHeight::ValueRange()
{
	return CREATURE_HEIGHT_LAST;
}

const char* AttributeCreatureHeight::ValueName(unsigned long value)
{
	return ValueNames[value];
}

ATTRIBUTE_TYPE AttributeCreatureHeight::GetType()
{
	return ATTRIBUTE_TYPE_CREATURE_HEIGHT;
}

AttributeCreatureHeight::~AttributeCreatureHeight() {}

bool32_t AttributeCreatureSpellKnowledge::IsDynamic()
{
	return true;
}

const char* AttributeCreatureSpellKnowledge::TypeName()
{
	return "Spell";
}

uint32_t AttributeCreatureSpellKnowledge::ValueRange()
{
	// The value is a count of known spells; scripts can teach all MAGIC_TYPE_LAST of them.
	return MAGIC_TYPE_LAST + 1;
}

ATTRIBUTE_TYPE AttributeCreatureSpellKnowledge::GetType()
{
	return ATTRIBUTE_TYPE_CREATURE_SPELL_KNOWLEDGE;
}

AttributeCreatureSpellKnowledge::~AttributeCreatureSpellKnowledge() {}

bool32_t AttributeCreatureWhatHeIsCarrying::IsDynamic()
{
	return true;
}

const char* AttributeCreatureWhatHeIsCarrying::TypeName()
{
	return "Carrying";
}

uint32_t AttributeCreatureWhatHeIsCarrying::ValueRange()
{
	// The value is an OBJECT_TYPE; carrying nothing stores OBJECT_TYPE_DUMMY.
	return OBJECT_TYPE_LAST;
}

ATTRIBUTE_TYPE AttributeCreatureWhatHeIsCarrying::GetType()
{
	return ATTRIBUTE_TYPE_CREATURE_CARRYING;
}

AttributeCreatureWhatHeIsCarrying::~AttributeCreatureWhatHeIsCarrying() {}

bool32_t AttributeForestSize::IsDynamic()
{
	return true;
}

const char* AttributeForestSize::TypeName()
{
	return "Size";
}

uint32_t AttributeForestSize::ValueRange()
{
	return FOREST_SIZE_LAST;
}

const char* AttributeForestSize::ValueName(unsigned long value)
{
	return ValueNames[value];
}

ATTRIBUTE_TYPE AttributeForestSize::GetType()
{
	return ATTRIBUTE_TYPE_FOREST_SIZE;
}

AttributeForestSize::~AttributeForestSize() {}

bool32_t AttributeMobileObjectType::IsDynamic()
{
	return false;
}

const char* AttributeMobileObjectType::TypeName()
{
	return "Type";
}

uint32_t AttributeMobileObjectType::ValueRange()
{
	return ARRAY_SIZE(ValueNames);
}

const char* AttributeMobileObjectType::ValueName(unsigned long value)
{
	return ValueNames[value];
}

ATTRIBUTE_TYPE AttributeMobileObjectType::GetType()
{
	return ATTRIBUTE_TYPE_MOBILE_OBJECT_TYPE;
}

AttributeMobileObjectType::~AttributeMobileObjectType() {}

bool32_t AttributeAbodeType::IsDynamic()
{
	return false;
}

const char* AttributeAbodeType::TypeName()
{
	return "AbodeType";
}

uint32_t AttributeAbodeType::ValueRange()
{
	return ABODE_TYPE_LAST;
}

const char* AttributeAbodeType::ValueName(unsigned long value)
{
	return ValueNames[value];
}

ATTRIBUTE_TYPE AttributeAbodeType::GetType()
{
	return ATTRIBUTE_TYPE_ABODE_TYPE;
}

AttributeAbodeType::~AttributeAbodeType() {}

bool32_t AttributeAbodeBeingBuilt::IsDynamic()
{
	return true;
}

const char* AttributeAbodeBeingBuilt::TypeName()
{
	return "BeingBuilt";
}

uint32_t AttributeAbodeBeingBuilt::ValueRange()
{
	return ABODE_BEING_BUILT_LAST;
}

const char* AttributeAbodeBeingBuilt::ValueName(unsigned long value)
{
	return ValueNames[value];
}

ATTRIBUTE_TYPE AttributeAbodeBeingBuilt::GetType()
{
	return ATTRIBUTE_TYPE_ABODE_BEING_BUILT;
}

AttributeAbodeBeingBuilt::~AttributeAbodeBeingBuilt() {}

uint32_t CreatureBelief::GetType()
{
	return GetNthAttribute(CREATURE_BELIEF_ATTRIBUTE_TYPE)->GetValue();
}

CreatureBelief* DecisionTreeAgenda::CreateBelief(CREATURE_BELIEF_TYPE type)
{
	switch (type)
	{
	case CREATURE_BELIEF_TYPE_TOWN:
		return new (FILEPATH, 700) CreatureBeliefAboutTown;
	case CREATURE_BELIEF_TYPE_FOREST:
		return new (FILEPATH, 703) CreatureBeliefAboutForest;
	case CREATURE_BELIEF_TYPE_CREATURE:
		return new (FILEPATH, 706) CreatureBeliefAboutCreature;
	case CREATURE_BELIEF_TYPE_VILLAGER:
		return new (FILEPATH, 709) CreatureBeliefAboutVillager;
	case CREATURE_BELIEF_TYPE_ABODE:
		return new (FILEPATH, 712) CreatureBeliefAboutAbode;
	case CREATURE_BELIEF_TYPE_CITADEL:
		return new (FILEPATH, 715) CreatureBeliefAboutCitadel;
	case CREATURE_BELIEF_TYPE_CONTEXT:
		return new (FILEPATH, 718) CreatureBeliefAboutContext;
	case CREATURE_BELIEF_TYPE_MOBILE_OBJECT:
		return new (FILEPATH, 721) CreatureBeliefSmall;
	case CREATURE_BELIEF_TYPE_FLOCK:
		return new (FILEPATH, 724) CreatureBeliefAboutFlock;
	default:
		return new (FILEPATH, 727) CreatureBeliefSmall;
	}
}
