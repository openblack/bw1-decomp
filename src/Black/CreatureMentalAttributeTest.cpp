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

AttributeArrayEntry* AttributeTest::AttributeArray[ATTRIBUTE_TYPE_LAST];

void AttributeTest::CreateAttributeArray()
{
	Attribute* attribute;

	attribute = new (FILEPATH, 565) AttributeAllegiance;
	AttributeArray[ATTRIBUTE_TYPE_ALLEGIANCE] = new (FILEPATH, 566) AttributeArrayEntry(attribute, "Allegiance");

	attribute = new (FILEPATH, 569) AttributeOrigin;
	AttributeArray[ATTRIBUTE_TYPE_ORIGIN] = new (FILEPATH, 570) AttributeArrayEntry(attribute, "Origin");

	attribute = new (FILEPATH, 573) AttributeAnimate;
	AttributeArray[ATTRIBUTE_TYPE_ANIMATE] = new (FILEPATH, 574) AttributeArrayEntry(attribute, "Animate?");

	attribute = new (FILEPATH, 577) AttributePlayerNumber;
	AttributeArray[ATTRIBUTE_TYPE_PLAYER_NUMBER] = new (FILEPATH, 578) AttributeArrayEntry(attribute, "PlayerNumber");

	attribute = new (FILEPATH, 581) AttributeIsHarderThanMe;
	AttributeArray[ATTRIBUTE_TYPE_HARDER_THAN_ME] = new (FILEPATH, 582) AttributeArrayEntry(attribute, "HarderThanMe");

	attribute = new (FILEPATH, 585) AttributeCreatureType;
	AttributeArray[ATTRIBUTE_TYPE_CREATURE_TYPE] = new (FILEPATH, 586) AttributeArrayEntry(attribute, "CreatureType");

	attribute = new (FILEPATH, 589) AttributeType;
	AttributeArray[ATTRIBUTE_TYPE_TYPE] = new (FILEPATH, 590) AttributeArrayEntry(attribute, "Type");

	attribute = new (FILEPATH, 593) AttributeLife;
	AttributeArray[ATTRIBUTE_TYPE_LIFE] = new (FILEPATH, 594) AttributeArrayEntry(attribute, "Life");

	attribute = new (FILEPATH, 597) AttributeTribe;
	AttributeArray[ATTRIBUTE_TYPE_TRIBE] = new (FILEPATH, 598) AttributeArrayEntry(attribute, "Tribe");

	attribute = new (FILEPATH, 601) AttributeTownReligiousBeliefInYou;
	AttributeArray[ATTRIBUTE_TYPE_RELIGIOUS_BELIEF_IN_YOU] =
		new (FILEPATH, 602) AttributeArrayEntry(attribute, "TownReligiousBelief");

	attribute = new (FILEPATH, 605) AttributeWhatTownNeedsMost;
	AttributeArray[ATTRIBUTE_TYPE_TOWN_NEEDS_MOST] =
		new (FILEPATH, 606) AttributeArrayEntry(attribute, "TownNeedsMost");

	attribute = new (FILEPATH, 609) AttributeTownSize;
	AttributeArray[ATTRIBUTE_TYPE_TOWN_SIZE] = new (FILEPATH, 610) AttributeArrayEntry(attribute, "TownSize");

	attribute = new (FILEPATH, 613) AttributeCreatureDominantDesire;
	AttributeArray[ATTRIBUTE_TYPE_CREATURE_DOMINANT_DESIRE] =
		new (FILEPATH, 614) AttributeArrayEntry(attribute, "CreatureDesire");

	attribute = new (FILEPATH, 617) AttributeCreatureHeight;
	AttributeArray[ATTRIBUTE_TYPE_CREATURE_HEIGHT] =
		new (FILEPATH, 618) AttributeArrayEntry(attribute, "CreatureHeight");

	attribute = new (FILEPATH, 621) AttributeCreatureSpellKnowledge;
	AttributeArray[ATTRIBUTE_TYPE_CREATURE_SPELL_KNOWLEDGE] =
		new (FILEPATH, 622) AttributeArrayEntry(attribute, "CreatureSpellKnowledge");

	attribute = new (FILEPATH, 625) AttributeCreatureWhatHeIsCarrying;
	AttributeArray[ATTRIBUTE_TYPE_CREATURE_CARRYING] =
		new (FILEPATH, 626) AttributeArrayEntry(attribute, "CreatureCarryingWhat");

	attribute = new (FILEPATH, 629) AttributeForestSize;
	AttributeArray[ATTRIBUTE_TYPE_FOREST_SIZE] = new (FILEPATH, 630) AttributeArrayEntry(attribute, "ForestSize");

	attribute = new (FILEPATH, 633) AttributeVillagerJob;
	AttributeArray[ATTRIBUTE_TYPE_VILLAGER_JOB] = new (FILEPATH, 634) AttributeArrayEntry(attribute, "Job");

	attribute = new (FILEPATH, 637) AttributeSex;
	AttributeArray[ATTRIBUTE_TYPE_SEX] = new (FILEPATH, 638) AttributeArrayEntry(attribute, "Sex");

	attribute = new (FILEPATH, 641) AttributeMobileObjectType;
	AttributeArray[ATTRIBUTE_TYPE_MOBILE_OBJECT_TYPE] = new (FILEPATH, 642) AttributeArrayEntry(attribute, "SubType");

	attribute = new (FILEPATH, 645) AttributeAbodeType;
	AttributeArray[ATTRIBUTE_TYPE_ABODE_TYPE] = new (FILEPATH, 646) AttributeArrayEntry(attribute, "SubType");

	attribute = new (FILEPATH, 649) AttributeAbodeBeingBuilt;
	AttributeArray[ATTRIBUTE_TYPE_ABODE_BEING_BUILT] =
		new (FILEPATH, 650) AttributeArrayEntry(attribute, "AbodeBeingBuilt?");

	attribute = new (FILEPATH, 653) AttributeCreatureDominantDesire;
	AttributeArray[ATTRIBUTE_TYPE_ABODE_ON_FIRE] = new (FILEPATH, 654) AttributeArrayEntry(attribute, "OnFire?");
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
