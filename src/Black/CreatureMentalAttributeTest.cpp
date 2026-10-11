#include "GameTimeConstants.h"
#include "CreatureMentalAttributeTest.h"

#include "ColourConstants.h" /* For White */

#include "Abode.h"    /* For ABODE_BEING_BUILT_LAST */
#include "Creature.h" /* For CREATURE_HEIGHT_LAST */
#include "CreatureMentalBelief.h"
#include "Forest.h" /* For FOREST_SIZE_LAST */

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
	return NUM_CREATURE_DESIRES + 1;
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

uint32_t CreatureBeliefSmall::GetNumAttributes()
{
	return ARRAY_SIZE(Attributes);
}

Attribute* CreatureBeliefSmall::GetNthAttribute(unsigned long index)
{
	return Attributes[index];
}

Attribute** CreatureBeliefSmall::GetNthAttributePtr(unsigned long index)
{
	return &Attributes[index];
}

CreatureBeliefSmall::~CreatureBeliefSmall() {}

uint32_t CreatureBeliefAboutVillager::GetNumAttributes()
{
	return ARRAY_SIZE(Attributes);
}

Attribute* CreatureBeliefAboutVillager::GetNthAttribute(unsigned long index)
{
	return Attributes[index];
}

Attribute** CreatureBeliefAboutVillager::GetNthAttributePtr(unsigned long index)
{
	return &Attributes[index];
}

CreatureBeliefAboutVillager::~CreatureBeliefAboutVillager() {}

uint32_t CreatureBeliefAboutTown::GetNumAttributes()
{
	return ARRAY_SIZE(Attributes);
}

Attribute* CreatureBeliefAboutTown::GetNthAttribute(unsigned long index)
{
	return Attributes[index];
}

Attribute** CreatureBeliefAboutTown::GetNthAttributePtr(unsigned long index)
{
	return &Attributes[index];
}

CreatureBeliefAboutTown::~CreatureBeliefAboutTown() {}

uint32_t CreatureBeliefAboutFlock::GetNumAttributes()
{
	return ARRAY_SIZE(Attributes);
}

Attribute* CreatureBeliefAboutFlock::GetNthAttribute(unsigned long index)
{
	return Attributes[index];
}

Attribute** CreatureBeliefAboutFlock::GetNthAttributePtr(unsigned long index)
{
	return &Attributes[index];
}

CreatureBeliefAboutFlock::~CreatureBeliefAboutFlock() {}

uint32_t CreatureBeliefAboutCitadel::GetNumAttributes()
{
	return ARRAY_SIZE(Attributes);
}

Attribute* CreatureBeliefAboutCitadel::GetNthAttribute(unsigned long index)
{
	return Attributes[index];
}

Attribute** CreatureBeliefAboutCitadel::GetNthAttributePtr(unsigned long index)
{
	return &Attributes[index];
}

CreatureBeliefAboutCitadel::~CreatureBeliefAboutCitadel() {}

uint32_t CreatureBeliefAboutCreature::GetNumAttributes()
{
	return ARRAY_SIZE(Attributes);
}

Attribute* CreatureBeliefAboutCreature::GetNthAttribute(unsigned long index)
{
	return Attributes[index];
}

Attribute** CreatureBeliefAboutCreature::GetNthAttributePtr(unsigned long index)
{
	return &Attributes[index];
}

CreatureBeliefAboutCreature::~CreatureBeliefAboutCreature() {}

uint32_t CreatureBeliefAboutForest::GetNumAttributes()
{
	return ARRAY_SIZE(Attributes);
}

Attribute* CreatureBeliefAboutForest::GetNthAttribute(unsigned long index)
{
	return Attributes[index];
}

Attribute** CreatureBeliefAboutForest::GetNthAttributePtr(unsigned long index)
{
	return &Attributes[index];
}

CreatureBeliefAboutForest::~CreatureBeliefAboutForest() {}

uint32_t CreatureBeliefAboutAbode::GetNumAttributes()
{
	return ARRAY_SIZE(Attributes);
}

Attribute* CreatureBeliefAboutAbode::GetNthAttribute(unsigned long index)
{
	return Attributes[index];
}

Attribute** CreatureBeliefAboutAbode::GetNthAttributePtr(unsigned long index)
{
	return &Attributes[index];
}

CreatureBeliefAboutAbode::~CreatureBeliefAboutAbode() {}

uint32_t CreatureBeliefAboutContext::GetNumAttributes()
{
	return 0;
}

Attribute* CreatureBeliefAboutContext::GetNthAttribute(unsigned long index)
{
	return NULL;
}

Attribute** CreatureBeliefAboutContext::GetNthAttributePtr(unsigned long index)
{
	return NULL;
}

uint32_t CreatureBeliefAboutContext::GetType()
{
	return CREATURE_BELIEF_TYPE_CONTEXT;
}

CreatureBeliefAboutContext::~CreatureBeliefAboutContext() {}
