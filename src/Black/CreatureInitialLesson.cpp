#include "CreatureMentalAttributeTest.h"

#include <chlasm/Enum.h> /* For SEX_TYPE_LAST, TOWN_DESIRE_INFO_LAST, TRIBE_TYPE_LAST */

#include "GameThingWithPos.h" /* For CREATURE_BELIEF_TYPE_LAST */

const char* Attribute::TypeName()
{
	return "NULL";
}

uint32_t Attribute::ValueRange()
{
	return 0;
}

const char* Attribute::ValueName(unsigned long value)
{
	return "NULL";
}

ATTRIBUTE_TYPE Attribute::GetType()
{
	return ATTRIBUTE_TYPE_ERROR;
}

bool32_t Attribute::IsDynamic()
{
	return false;
}

bool32_t AttributeAllegiance::IsDynamic()
{
	return true;
}

const char* AttributeAllegiance::TypeName()
{
	return "Allegiance";
}

uint32_t AttributeAllegiance::ValueRange()
{
	return ALLEGIANCE_LAST;
}

const char* AttributeAllegiance::ValueName(unsigned long value)
{
	return ValueNames[value];
}

ATTRIBUTE_TYPE AttributeAllegiance::GetType()
{
	return ATTRIBUTE_TYPE_ALLEGIANCE;
}

bool32_t AttributeOrigin::IsDynamic()
{
	return false;
}

const char* AttributeOrigin::TypeName()
{
	return "Origin";
}

uint32_t AttributeOrigin::ValueRange()
{
	return ORIGIN_LAST;
}

const char* AttributeOrigin::ValueName(unsigned long value)
{
	return ValueNames[value];
}

ATTRIBUTE_TYPE AttributeOrigin::GetType()
{
	return ATTRIBUTE_TYPE_ORIGIN;
}

bool32_t AttributeAnimate::IsDynamic()
{
	return false;
}

const char* AttributeAnimate::TypeName()
{
	return "Animate";
}

uint32_t AttributeAnimate::ValueRange()
{
	return ATTRIBUTE_BOOL_LAST;
}

const char* AttributeAnimate::ValueName(unsigned long value)
{
	return value == ATTRIBUTE_BOOL_TRUE ? "True" : "False";
}

ATTRIBUTE_TYPE AttributeAnimate::GetType()
{
	return ATTRIBUTE_TYPE_ANIMATE;
}

bool32_t AttributeType::IsDynamic()
{
	return false;
}

const char* AttributeType::TypeName()
{
	return "Type";
}

uint32_t AttributeType::ValueRange()
{
	return CREATURE_BELIEF_TYPE_LAST;
}

ATTRIBUTE_TYPE AttributeType::GetType()
{
	return ATTRIBUTE_TYPE_TYPE;
}

bool32_t AttributeLife::IsDynamic()
{
	return true;
}

const char* AttributeLife::TypeName()
{
	return "Life";
}

uint32_t AttributeLife::ValueRange()
{
	return LIFE_LAST;
}

const char* AttributeLife::ValueName(unsigned long value)
{
	return ValueNames[value];
}

ATTRIBUTE_TYPE AttributeLife::GetType()
{
	return ATTRIBUTE_TYPE_LIFE;
}

bool32_t AttributeVillagerJob::IsDynamic()
{
	return false;
}

const char* AttributeVillagerJob::TypeName()
{
	return "Job";
}

ATTRIBUTE_TYPE AttributeVillagerJob::GetType()
{
	return ATTRIBUTE_TYPE_VILLAGER_JOB;
}

bool32_t AttributeSex::IsDynamic()
{
	return false;
}

const char* AttributeSex::TypeName()
{
	return "Sex";
}

uint32_t AttributeSex::ValueRange()
{
	return SEX_TYPE_LAST;
}

const char* AttributeSex::ValueName(unsigned long value)
{
	return ValueNames[value];
}

ATTRIBUTE_TYPE AttributeSex::GetType()
{
	return ATTRIBUTE_TYPE_SEX;
}

bool32_t AttributeOnFire::IsDynamic()
{
	return true;
}

const char* AttributeOnFire::TypeName()
{
	return "OnFire";
}

uint32_t AttributeOnFire::ValueRange()
{
	return ON_FIRE_LAST;
}

const char* AttributeOnFire::ValueName(unsigned long value)
{
	return ValueNames[value];
}

ATTRIBUTE_TYPE AttributeOnFire::GetType()
{
	return ATTRIBUTE_TYPE_ABODE_ON_FIRE;
}

bool32_t AttributePlayerNumber::IsDynamic()
{
	return false;
}

const char* AttributePlayerNumber::TypeName()
{
	return "PlayerNumber";
}

ATTRIBUTE_TYPE AttributePlayerNumber::GetType()
{
	return ATTRIBUTE_TYPE_PLAYER_NUMBER;
}

bool32_t AttributeIsHarderThanMe::IsDynamic()
{
	return true;
}

const char* AttributeIsHarderThanMe::TypeName()
{
	return "IsHarderThanMe";
}

uint32_t AttributeIsHarderThanMe::ValueRange()
{
	return ATTRIBUTE_BOOL_LAST;
}

ATTRIBUTE_TYPE AttributeIsHarderThanMe::GetType()
{
	return ATTRIBUTE_TYPE_HARDER_THAN_ME;
}

bool32_t AttributeCreatureType::IsDynamic()
{
	return true;
}

const char* AttributeCreatureType::TypeName()
{
	return "CreatureType";
}

uint32_t AttributeCreatureType::ValueRange()
{
	return CREATURE_TYPE_LAST;
}

ATTRIBUTE_TYPE AttributeCreatureType::GetType()
{
	return ATTRIBUTE_TYPE_CREATURE_TYPE;
}

bool32_t AttributeTribe::IsDynamic()
{
	return false;
}

const char* AttributeTribe::TypeName()
{
	return "Tribe";
}

uint32_t AttributeTribe::ValueRange()
{
	return TRIBE_TYPE_LAST;
}

const char* AttributeTribe::ValueName(unsigned long value)
{
	return ValueNames[value];
}

ATTRIBUTE_TYPE AttributeTribe::GetType()
{
	return ATTRIBUTE_TYPE_TRIBE;
}

bool32_t AttributeTownReligiousBeliefInYou::IsDynamic()
{
	return true;
}

const char* AttributeTownReligiousBeliefInYou::TypeName()
{
	return "Belief";
}

uint32_t AttributeTownReligiousBeliefInYou::ValueRange()
{
	return TOWN_BELIEF_LAST;
}

const char* AttributeTownReligiousBeliefInYou::ValueName(unsigned long value)
{
	return ValueNames[value];
}

ATTRIBUTE_TYPE AttributeTownReligiousBeliefInYou::GetType()
{
	return ATTRIBUTE_TYPE_RELIGIOUS_BELIEF_IN_YOU;
}

bool32_t AttributeWhatTownNeedsMost::IsDynamic()
{
	return true;
}

const char* AttributeWhatTownNeedsMost::TypeName()
{
	return "NeedsMost";
}

uint32_t AttributeWhatTownNeedsMost::ValueRange()
{
	return TOWN_DESIRE_INFO_LAST;
}

ATTRIBUTE_TYPE AttributeWhatTownNeedsMost::GetType()
{
	return ATTRIBUTE_TYPE_TOWN_NEEDS_MOST;
}

bool32_t AttributeTownSize::IsDynamic()
{
	return false;
}

const char* AttributeTownSize::TypeName()
{
	return "Size";
}

uint32_t AttributeTownSize::ValueRange()
{
	return TOWN_SIZE_LAST;
}

const char* AttributeTownSize::ValueName(unsigned long value)
{
	return ValueNames[value];
}

ATTRIBUTE_TYPE AttributeTownSize::GetType()
{
	return ATTRIBUTE_TYPE_TOWN_SIZE;
}
