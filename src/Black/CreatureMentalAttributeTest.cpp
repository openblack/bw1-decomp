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

	attribute = new (__FILE__, 565) AttributeAllegiance;
	AttributeArray[ATTRIBUTE_TYPE_ALLEGIANCE] = new (__FILE__, 566) AttributeArrayEntry(attribute, "Allegiance");

	attribute = new (__FILE__, 569) AttributeOrigin;
	AttributeArray[ATTRIBUTE_TYPE_ORIGIN] = new (__FILE__, 570) AttributeArrayEntry(attribute, "Origin");

	attribute = new (__FILE__, 573) AttributeAnimate;
	AttributeArray[ATTRIBUTE_TYPE_ANIMATE] = new (__FILE__, 574) AttributeArrayEntry(attribute, "Animate?");

	attribute = new (__FILE__, 577) AttributePlayerNumber;
	AttributeArray[ATTRIBUTE_TYPE_PLAYER_NUMBER] = new (__FILE__, 578) AttributeArrayEntry(attribute, "PlayerNumber");

	attribute = new (__FILE__, 581) AttributeIsHarderThanMe;
	AttributeArray[ATTRIBUTE_TYPE_HARDER_THAN_ME] = new (__FILE__, 582) AttributeArrayEntry(attribute, "HarderThanMe");

	attribute = new (__FILE__, 585) AttributeCreatureType;
	AttributeArray[ATTRIBUTE_TYPE_CREATURE_TYPE] = new (__FILE__, 586) AttributeArrayEntry(attribute, "CreatureType");

	attribute = new (__FILE__, 589) AttributeType;
	AttributeArray[ATTRIBUTE_TYPE_TYPE] = new (__FILE__, 590) AttributeArrayEntry(attribute, "Type");

	attribute = new (__FILE__, 593) AttributeLife;
	AttributeArray[ATTRIBUTE_TYPE_LIFE] = new (__FILE__, 594) AttributeArrayEntry(attribute, "Life");

	attribute = new (__FILE__, 597) AttributeTribe;
	AttributeArray[ATTRIBUTE_TYPE_TRIBE] = new (__FILE__, 598) AttributeArrayEntry(attribute, "Tribe");

	attribute = new (__FILE__, 601) AttributeTownReligiousBeliefInYou;
	AttributeArray[ATTRIBUTE_TYPE_RELIGIOUS_BELIEF_IN_YOU] =
		new (__FILE__, 602) AttributeArrayEntry(attribute, "TownReligiousBelief");

	attribute = new (__FILE__, 605) AttributeWhatTownNeedsMost;
	AttributeArray[ATTRIBUTE_TYPE_TOWN_NEEDS_MOST] =
		new (__FILE__, 606) AttributeArrayEntry(attribute, "TownNeedsMost");

	attribute = new (__FILE__, 609) AttributeTownSize;
	AttributeArray[ATTRIBUTE_TYPE_TOWN_SIZE] = new (__FILE__, 610) AttributeArrayEntry(attribute, "TownSize");

	attribute = new (__FILE__, 613) AttributeCreatureDominantDesire;
	AttributeArray[ATTRIBUTE_TYPE_CREATURE_DOMINANT_DESIRE] =
		new (__FILE__, 614) AttributeArrayEntry(attribute, "CreatureDesire");

	attribute = new (__FILE__, 617) AttributeCreatureHeight;
	AttributeArray[ATTRIBUTE_TYPE_CREATURE_HEIGHT] =
		new (__FILE__, 618) AttributeArrayEntry(attribute, "CreatureHeight");

	attribute = new (__FILE__, 621) AttributeCreatureSpellKnowledge;
	AttributeArray[ATTRIBUTE_TYPE_CREATURE_SPELL_KNOWLEDGE] =
		new (__FILE__, 622) AttributeArrayEntry(attribute, "CreatureSpellKnowledge");

	attribute = new (__FILE__, 625) AttributeCreatureWhatHeIsCarrying;
	AttributeArray[ATTRIBUTE_TYPE_CREATURE_CARRYING] =
		new (__FILE__, 626) AttributeArrayEntry(attribute, "CreatureCarryingWhat");

	attribute = new (__FILE__, 629) AttributeForestSize;
	AttributeArray[ATTRIBUTE_TYPE_FOREST_SIZE] = new (__FILE__, 630) AttributeArrayEntry(attribute, "ForestSize");

	attribute = new (__FILE__, 633) AttributeVillagerJob;
	AttributeArray[ATTRIBUTE_TYPE_VILLAGER_JOB] = new (__FILE__, 634) AttributeArrayEntry(attribute, "Job");

	attribute = new (__FILE__, 637) AttributeSex;
	AttributeArray[ATTRIBUTE_TYPE_SEX] = new (__FILE__, 638) AttributeArrayEntry(attribute, "Sex");

	attribute = new (__FILE__, 641) AttributeMobileObjectType;
	AttributeArray[ATTRIBUTE_TYPE_MOBILE_OBJECT_TYPE] = new (__FILE__, 642) AttributeArrayEntry(attribute, "SubType");

	attribute = new (__FILE__, 645) AttributeAbodeType;
	AttributeArray[ATTRIBUTE_TYPE_ABODE_TYPE] = new (__FILE__, 646) AttributeArrayEntry(attribute, "SubType");

	attribute = new (__FILE__, 649) AttributeAbodeBeingBuilt;
	AttributeArray[ATTRIBUTE_TYPE_ABODE_BEING_BUILT] =
		new (__FILE__, 650) AttributeArrayEntry(attribute, "AbodeBeingBuilt?");

	attribute = new (__FILE__, 653) AttributeCreatureDominantDesire;
	AttributeArray[ATTRIBUTE_TYPE_ABODE_ON_FIRE] = new (__FILE__, 654) AttributeArrayEntry(attribute, "OnFire?");
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
		return new (__FILE__, 700) CreatureBeliefAboutTown;
	case CREATURE_BELIEF_TYPE_FOREST:
		return new (__FILE__, 703) CreatureBeliefAboutForest;
	case CREATURE_BELIEF_TYPE_CREATURE:
		return new (__FILE__, 706) CreatureBeliefAboutCreature;
	case CREATURE_BELIEF_TYPE_VILLAGER:
		return new (__FILE__, 709) CreatureBeliefAboutVillager;
	case CREATURE_BELIEF_TYPE_ABODE:
		return new (__FILE__, 712) CreatureBeliefAboutAbode;
	case CREATURE_BELIEF_TYPE_CITADEL:
		return new (__FILE__, 715) CreatureBeliefAboutCitadel;
	case CREATURE_BELIEF_TYPE_CONTEXT:
		return new (__FILE__, 718) CreatureBeliefAboutContext;
	case CREATURE_BELIEF_TYPE_MOBILE_OBJECT:
		return new (__FILE__, 721) CreatureBeliefSmall;
	case CREATURE_BELIEF_TYPE_FLOCK:
		return new (__FILE__, 724) CreatureBeliefAboutFlock;
	default:
		return new (__FILE__, 727) CreatureBeliefSmall;
	}
}
