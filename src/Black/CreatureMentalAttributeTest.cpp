#include "GameTimeConstants.h"
#include "CreatureMentalAttributeTest.h"

#include "ColourConstants.h" /* For White */

#include <chlasm/Enum.h> /* For INVALID_CREATURE_DESIRE, MAGIC_TYPE_LAST, OBJECT_TYPE_LAST */

#include "Abode.h"    /* For ABODE_BEING_BUILT_LAST */
#include "Creature.h" /* For CREATURE_HEIGHT_LAST */
#include "CreatureMentalBelief.h"
#include "Forest.h" /* For FOREST_SIZE_LAST */

AttributeArrayEntry* AttributeTest::AttributeArray[ATTRIBUTE_TYPE_LAST];

void AttributeTest::CreateAttributeArray()
{
	Attribute* attribute;

	attribute = NEW(565) AttributeAllegiance;
	AttributeArray[ATTRIBUTE_TYPE_ALLEGIANCE] = NEW(566) AttributeArrayEntry(attribute, "Allegiance");

	attribute = NEW(569) AttributeOrigin;
	AttributeArray[ATTRIBUTE_TYPE_ORIGIN] = NEW(570) AttributeArrayEntry(attribute, "Origin");

	attribute = NEW(573) AttributeAnimate;
	AttributeArray[ATTRIBUTE_TYPE_ANIMATE] = NEW(574) AttributeArrayEntry(attribute, "Animate?");

	attribute = NEW(577) AttributePlayerNumber;
	AttributeArray[ATTRIBUTE_TYPE_PLAYER_NUMBER] = NEW(578) AttributeArrayEntry(attribute, "PlayerNumber");

	attribute = NEW(581) AttributeIsHarderThanMe;
	AttributeArray[ATTRIBUTE_TYPE_HARDER_THAN_ME] = NEW(582) AttributeArrayEntry(attribute, "HarderThanMe");

	attribute = NEW(585) AttributeCreatureType;
	AttributeArray[ATTRIBUTE_TYPE_CREATURE_TYPE] = NEW(586) AttributeArrayEntry(attribute, "CreatureType");

	attribute = NEW(589) AttributeType;
	AttributeArray[ATTRIBUTE_TYPE_TYPE] = NEW(590) AttributeArrayEntry(attribute, "Type");

	attribute = NEW(593) AttributeLife;
	AttributeArray[ATTRIBUTE_TYPE_LIFE] = NEW(594) AttributeArrayEntry(attribute, "Life");

	attribute = NEW(597) AttributeTribe;
	AttributeArray[ATTRIBUTE_TYPE_TRIBE] = NEW(598) AttributeArrayEntry(attribute, "Tribe");

	attribute = NEW(601) AttributeTownReligiousBeliefInYou;
	AttributeArray[ATTRIBUTE_TYPE_RELIGIOUS_BELIEF_IN_YOU] =
		NEW(602) AttributeArrayEntry(attribute, "TownReligiousBelief");

	attribute = NEW(605) AttributeWhatTownNeedsMost;
	AttributeArray[ATTRIBUTE_TYPE_TOWN_NEEDS_MOST] = NEW(606) AttributeArrayEntry(attribute, "TownNeedsMost");

	attribute = NEW(609) AttributeTownSize;
	AttributeArray[ATTRIBUTE_TYPE_TOWN_SIZE] = NEW(610) AttributeArrayEntry(attribute, "TownSize");

	attribute = NEW(613) AttributeCreatureDominantDesire;
	AttributeArray[ATTRIBUTE_TYPE_CREATURE_DOMINANT_DESIRE] = NEW(614) AttributeArrayEntry(attribute, "CreatureDesire");

	attribute = NEW(617) AttributeCreatureHeight;
	AttributeArray[ATTRIBUTE_TYPE_CREATURE_HEIGHT] = NEW(618) AttributeArrayEntry(attribute, "CreatureHeight");

	attribute = NEW(621) AttributeCreatureSpellKnowledge;
	AttributeArray[ATTRIBUTE_TYPE_CREATURE_SPELL_KNOWLEDGE] =
		NEW(622) AttributeArrayEntry(attribute, "CreatureSpellKnowledge");

	attribute = NEW(625) AttributeCreatureWhatHeIsCarrying;
	AttributeArray[ATTRIBUTE_TYPE_CREATURE_CARRYING] = NEW(626) AttributeArrayEntry(attribute, "CreatureCarryingWhat");

	attribute = NEW(629) AttributeForestSize;
	AttributeArray[ATTRIBUTE_TYPE_FOREST_SIZE] = NEW(630) AttributeArrayEntry(attribute, "ForestSize");

	attribute = NEW(633) AttributeVillagerJob;
	AttributeArray[ATTRIBUTE_TYPE_VILLAGER_JOB] = NEW(634) AttributeArrayEntry(attribute, "Job");

	attribute = NEW(637) AttributeSex;
	AttributeArray[ATTRIBUTE_TYPE_SEX] = NEW(638) AttributeArrayEntry(attribute, "Sex");

	attribute = NEW(641) AttributeMobileObjectType;
	AttributeArray[ATTRIBUTE_TYPE_MOBILE_OBJECT_TYPE] = NEW(642) AttributeArrayEntry(attribute, "SubType");

	attribute = NEW(645) AttributeAbodeType;
	AttributeArray[ATTRIBUTE_TYPE_ABODE_TYPE] = NEW(646) AttributeArrayEntry(attribute, "SubType");

	attribute = NEW(649) AttributeAbodeBeingBuilt;
	AttributeArray[ATTRIBUTE_TYPE_ABODE_BEING_BUILT] = NEW(650) AttributeArrayEntry(attribute, "AbodeBeingBuilt?");

	attribute = NEW(653) AttributeCreatureDominantDesire;
	AttributeArray[ATTRIBUTE_TYPE_ABODE_ON_FIRE] = NEW(654) AttributeArrayEntry(attribute, "OnFire?");
}

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

void AttributeTest::DeleteAttributeArray()
{
	for (uint32_t i = 0; i < ATTRIBUTE_TYPE_LAST; i++)
	{
		delete AttributeArray[i]->Instance;
		delete AttributeArray[i];
	}
}

uint32_t CreatureBelief::GetType()
{
	return GetNthAttribute(CREATURE_BELIEF_ATTRIBUTE_TYPE)->GetValue();
}

CreatureBelief* DecisionTreeAgenda::CreateBelief(CREATURE_BELIEF_TYPE type)
{
	switch (type)
	{
	case CREATURE_BELIEF_TYPE_TOWN:
		return NEW(700) CreatureBeliefAboutTown;
	case CREATURE_BELIEF_TYPE_FOREST:
		return NEW(703) CreatureBeliefAboutForest;
	case CREATURE_BELIEF_TYPE_CREATURE:
		return NEW(706) CreatureBeliefAboutCreature;
	case CREATURE_BELIEF_TYPE_VILLAGER:
		return NEW(709) CreatureBeliefAboutVillager;
	case CREATURE_BELIEF_TYPE_ABODE:
		return NEW(712) CreatureBeliefAboutAbode;
	case CREATURE_BELIEF_TYPE_CITADEL:
		return NEW(715) CreatureBeliefAboutCitadel;
	case CREATURE_BELIEF_TYPE_CONTEXT:
		return NEW(718) CreatureBeliefAboutContext;
	case CREATURE_BELIEF_TYPE_MOBILE_OBJECT:
		return NEW(721) CreatureBeliefSmall;
	case CREATURE_BELIEF_TYPE_FLOCK:
		return NEW(724) CreatureBeliefAboutFlock;
	default:
		return NEW(727) CreatureBeliefSmall;
	}
}
