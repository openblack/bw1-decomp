#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureMental.h"

#include "ColourConstants.h" /* For White */

#include <stdio.h> /* For sprintf */

#include <chlasm/Enum.h> /* For ABODE_TYPE_LAST, SEX_TYPE_LAST, TRIBE_TYPE_LAST */

#include "Abode.h"
#include "AbodeInfo.h"
#include "Creature.h"
#include "CreatureActionInfo.h"
#include "CreatureInfo.h"
#include "CreatureInitialDesireInfo.h"
#include "CreaturePhysical.h"
#include "DesireFunctions.h"
#include "Forest.h"
#include "MobileObject.h"
#include "MobileObjectInfo.h"
#include "Player.h"
#include "PlayerName.h"
#include "Town.h"
#include "TownDesireInfo.h"
#include "Villager.h"
#include "VillagerInfo.h"
#include "VillagerStateTableInfo.h"

char AttributeAllegiance::ValueNames[ALLEGIANCE_LAST][64] = {
	"Friendly", //
	"Enemy",    //
	"Ally",     //
};

char AttributeOrigin::ValueNames[ORIGIN_LAST][64] = {
	"Natural",  //
	"Man-made", //
	"Magic",    //
};

char AttributeLife::ValueNames[LIFE_LAST][64] = {
	"Low",  //
	"High", //
};

char AttributeTribe::ValueNames[TRIBE_TYPE_LAST][64] = {
	"Celtic",   //
	"African",  //
	"Aztec",    //
	"Japanese", //
	"Indian",   //
	"Egyptian", //
	"Greek",    //
	"Norse",    //
	"Tibetan",  //
};

char AttributeTownReligiousBeliefInYou::ValueNames[TOWN_BELIEF_LAST][64] = {
	"VeryLow", //
	"Low",     //
	"Medium",  //
	"High",    //
};

char AttributeTownSize::ValueNames[TOWN_SIZE_LAST][64] = {
	"Small",  //
	"Medium", //
	"Large",  //
};

char AttributeCreatureHeight::ValueNames[CREATURE_HEIGHT_LAST][64] = {
	"VerySmall", //
	"Small",     //
	"Medium",    //
	"Big",       //
};

char AttributeForestSize::ValueNames[FOREST_SIZE_LAST][64] = {
	"Small",  //
	"Medium", //
	"Large",  //
};

char AttributeSex::ValueNames[SEX_TYPE_LAST][64] = {
	"Male",   //
	"Female", //
};

char AttributeMobileObjectType::ValueNames[MOBILE_OBJECT_INFO_LAST][64] = {
	"Barrel",   //
	"Cart",     //
	"PotA",     //
	"PotB",     //
	"Food",     //
	"Poo",      //
	"WaterJug", //
	"Arrow",    //
	"Ball",     //
	"Cart",     //
	"FoodPot",  //
	"WoodPot",  //
	"FoodPile", //
	"WoodPile", //
};

char AttributeAbodeType::ValueNames[ABODE_TYPE_LAST][64] = {
	"Invalid",    //
	"Living",     //
	"Invalid",    //
	"Windmill",   //
	"Totem",      //
	"Invalid",    //
	"Invalid",    //
	"Invalid",    //
	"StoragePit", //
};

char AttributeAbodeBeingBuilt::ValueNames[ABODE_BEING_BUILT_LAST][64] = {
	"IsBeingBuilt",    //
	"IsNotBeingBuilt", //
};

char AttributeOnFire::ValueNames[ON_FIRE_LAST][64] = {
	"IsOnFire",    //
	"IsNotOnFire", //
};

void AttributeAllegiance::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	if (player == thing->GetPlayer())
		Value = ALLEGIANCE_FRIENDLY;
	else
		Value = ALLEGIANCE_ENEMY;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeOrigin::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Value = thing->GetOrigin();
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeAnimate::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Value = thing->IsAnimate();
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeType::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Value = thing->GetCreatureBeliefType();
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeLife::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Object* object = dynamic_cast<Object*>(thing);
	if (object != NULL)
	{
		if (object->GetLife() > ATTRIBUTE_LIFE_LOW_LIMIT)
			Value = LIFE_HIGH;
		else
			Value = LIFE_LOW;
	}
	else
	{
		Value = LIFE_LOW;
	}
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeTribe::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Town* town = dynamic_cast<Town*>(thing);
	Value = town->tribe_type;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeTownReligiousBeliefInYou::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Town* town = dynamic_cast<Town*>(thing);
	if (town != NULL && player != NULL)
	{
		float belief = town->belief.GetBeliefInPlayer(player);
		if (belief < ATTRIBUTE_TOWN_BELIEF_VERY_LOW_LIMIT)
			Value = TOWN_BELIEF_VERY_LOW;
		else if (belief < ATTRIBUTE_TOWN_BELIEF_LOW_LIMIT)
			Value = TOWN_BELIEF_LOW;
		else if (belief < ATTRIBUTE_TOWN_BELIEF_MEDIUM_LIMIT)
			Value = TOWN_BELIEF_MEDIUM;
		else
			Value = TOWN_BELIEF_HIGH;
	}
	else
	{
		Value = TOWN_BELIEF_VERY_LOW;
	}
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeWhatTownNeedsMost::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Town* town = dynamic_cast<Town*>(thing);
	Value = town->desire.GetMostDesired();
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

const char* AttributeWhatTownNeedsMost::ValueName(unsigned long value)
{
	return GTownDesireInfo::GetInfo()[value].GetDesireFunctions()->Name;
}

void AttributeTownSize::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Town* town = dynamic_cast<Town*>(thing);
	if (town->GetPopulation() < ATTRIBUTE_TOWN_SIZE_SMALL_POPULATION)
		Value = TOWN_SIZE_SMALL;
	else if (town->GetPopulation() < ATTRIBUTE_TOWN_SIZE_MEDIUM_POPULATION)
		Value = TOWN_SIZE_MEDIUM;
	else
		Value = TOWN_SIZE_LARGE;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeCreatureDominantDesire::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Creature* creature = dynamic_cast<Creature*>(thing);
	Value = CreatureActionInfo::GetInfo()[creature->mind->agenda.plans[0].creature_action].Desire;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

const char* AttributeCreatureDominantDesire::ValueName(unsigned long value)
{
	return CreatureInitialDesireInfo::GetInfo()[value].Name;
}

void AttributeCreatureHeight::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Creature* creature = dynamic_cast<Creature*>(thing);
	float     size = creature->physical->GetUserSize();
	if (size < ATTRIBUTE_CREATURE_HEIGHT_VERY_SMALL_SIZE)
		Value = CREATURE_HEIGHT_VERY_SMALL;
	else if (size < ATTRIBUTE_CREATURE_HEIGHT_SMALL_SIZE)
		Value = CREATURE_HEIGHT_SMALL;
	else if (size < ATTRIBUTE_CREATURE_HEIGHT_MEDIUM_SIZE)
		Value = CREATURE_HEIGHT_MEDIUM;
	else
		Value = CREATURE_HEIGHT_BIG;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeCreatureSpellKnowledge::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Creature* creature = dynamic_cast<Creature*>(thing);
	Value = creature->mind->ActionsKnownAbout.ActionsKnown[CREATURE_ACTION_LEARNING_TYPE_MAGIC].count;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

const char* AttributeCreatureSpellKnowledge::ValueName(unsigned long value)
{
	static char text[64];
	sprintf(text, "%d", value);
	return text;
}

void AttributeCreatureWhatHeIsCarrying::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Creature* creature = dynamic_cast<Creature*>(thing);
	Object*   carried = creature->physical->GetObjectCarried();
	if (carried == NULL)
		Value = OBJECT_TYPE_DUMMY;
	else
		Value = carried->info->type;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeForestSize::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Forest*  forest = dynamic_cast<Forest*>(thing);
	uint32_t trees = forest->Trees0.GetSize() + forest->Trees1.GetSize();
	if (trees < ATTRIBUTE_FOREST_SIZE_SMALL_TREES)
		Value = FOREST_SIZE_SMALL;
	else if (trees < ATTRIBUTE_FOREST_SIZE_MEDIUM_TREES)
		Value = FOREST_SIZE_MEDIUM;
	else
		Value = FOREST_SIZE_LARGE;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeVillagerJob::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Villager*       villager = dynamic_cast<Villager*>(thing);
	VILLAGER_STATES state = villager->GetTopState();
	Value = GVillagerStateTableInfo::GetInfo()[(uint8_t)state].TownDesireType;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeSex::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Villager* villager = dynamic_cast<Villager*>(thing);
	Value = villager->GetInfo()->sex;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeMobileObjectType::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	MobileObject* object = dynamic_cast<MobileObject*>(thing);
	Value = object->GetInfo()->MobileObjectType;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeAbodeType::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Abode* abode = dynamic_cast<Abode*>(thing);
	Value = abode->GetInfo()->AbodeType;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeAbodeBeingBuilt::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Abode* abode = dynamic_cast<Abode*>(thing);
	if (abode->IsBeingBuilt(NULL) != false)
		Value = ABODE_BEING_BUILT_IS_BEING_BUILT;
	else
		Value = ABODE_BEING_BUILT_IS_NOT_BEING_BUILT;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributeOnFire::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	switch (thing->IsOnFire(NULL))
	{
	case true:
		Value = ON_FIRE_IS_ON_FIRE;
		break;
	default:
		Value = ON_FIRE_IS_NOT_ON_FIRE;
		break;
	}
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

void AttributePlayerNumber::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	if (thing->GetPlayer() != NULL)
		Value = thing->GetPlayer()->player_number;
	else
		Value = PLAYER_NAME_NEUTRAL;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

const char* AttributePlayerNumber::ValueName(unsigned long value)
{
	static char text[256];
	sprintf(text, "%d", value);
	return text;
}

void AttributeIsHarderThanMe::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Creature* creature = thing->CastCreature();
	if (creature != NULL && player != NULL && player->GetCreature() != NULL)
		Value = creature->GetHeight() > player->GetCreature()->GetHeight();
	else
		Value = ATTRIBUTE_BOOL_FALSE;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

const char* AttributeIsHarderThanMe::ValueName(unsigned long value)
{
	return value == ATTRIBUTE_BOOL_TRUE ? "true" : "false";
}

void AttributeCreatureType::UpdateValue(GameThingWithPos* thing, GPlayer* player)
{
	Creature* creature = thing->CastCreature();
	if (creature != NULL)
		Value = creature->GetInfo()->CreatureType;
	else
		Value = CREATURE_TYPE_APE;
	if (Value > ValueRange() - 1)
		Value = ValueRange() - 1;
}

const char* AttributeCreatureType::ValueName(unsigned long value)
{
	static char text[256];
	sprintf(text, "%d", value);
	return text;
}
