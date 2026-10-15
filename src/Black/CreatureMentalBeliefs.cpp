const float TownObjectToActOnUsefulness = 0.1f;

#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureMentalBeliefs.h"

#include "ColourConstants.h" /* For White */

#include "Citadel.h"
#include "CreatureMental.h"
#include "CreatureMentalAttributeTest.h"
#include "CreatureMentalBelief.h"
#include "Object.h"
#include "Tree.h"

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\CreatureMentalBeliefs.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreatureMentalBeliefs.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreatureMentalBeliefs.cpp"
#endif

inline Object* CreatureBelief::GetObjectPointer()
{
	return dynamic_cast<Object*>(Pointer);
}

void CreatureBelief::CreateCommonAttributes()
{
	*GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_ALLEGIANCE) = new (FILEPATH, 31) AttributeAllegiance(0);
	*GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_ORIGIN) = new (FILEPATH, 32) AttributeOrigin(0);
	*GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_ANIMATE) = new (FILEPATH, 33) AttributeAnimate(0);
	*GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_PLAYER_NUMBER) = new (FILEPATH, 34) AttributePlayerNumber(0);
	*GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_HARDER_THAN_ME) = new (FILEPATH, 35) AttributeIsHarderThanMe(0);
	*GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_CREATURE_TYPE) = new (FILEPATH, 36) AttributeCreatureType(0);
	*GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_TYPE) = new (FILEPATH, 37) AttributeType(0);
}

void CreatureBelief::CopyCommonAttributes(CreatureBelief* belief)
{
	*belief->GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_ALLEGIANCE) =
		new (FILEPATH, 43) AttributeAllegiance(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ALLEGIANCE));
	*belief->GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_ORIGIN) =
		new (FILEPATH, 44) AttributeOrigin(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ORIGIN));
	*belief->GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_ANIMATE) =
		new (FILEPATH, 45) AttributeAnimate(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ANIMATE));
	*belief->GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_PLAYER_NUMBER) =
		new (FILEPATH, 46) AttributePlayerNumber(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_PLAYER_NUMBER));
	*belief->GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_HARDER_THAN_ME) =
		new (FILEPATH, 47) AttributeIsHarderThanMe(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_HARDER_THAN_ME));
	*belief->GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_CREATURE_TYPE) =
		new (FILEPATH, 48) AttributeCreatureType(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_CREATURE_TYPE));
	*belief->GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_TYPE) =
		new (FILEPATH, 49) AttributeType(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_TYPE));
}

void CreatureBeliefSmall::CreateAttributes()
{
	CreateCommonAttributes();
}

void CreatureBeliefAboutTown::CreateAttributes()
{
	CreateCommonAttributes();
	Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_RELIGIOUS_BELIEF_IN_YOU] =
		new (FILEPATH, 62) AttributeTownReligiousBeliefInYou(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_NEEDS_MOST] = new (FILEPATH, 63) AttributeWhatTownNeedsMost(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_SIZE] = new (FILEPATH, 64) AttributeTownSize(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_TRIBE] = new (FILEPATH, 65) AttributeTribe(0);
}

void CreatureBeliefAboutFlock::CreateAttributes()
{
	CreateCommonAttributes();
}

void CreatureBeliefAboutCreature::CreateAttributes()
{
	CreateCommonAttributes();
	Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_DOMINANT_DESIRE] =
		new (FILEPATH, 78) AttributeCreatureDominantDesire(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_HEIGHT] = new (FILEPATH, 79) AttributeCreatureHeight(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_SPELL_KNOWLEDGE] =
		new (FILEPATH, 80) AttributeCreatureSpellKnowledge(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_CARRYING] = new (FILEPATH, 81) AttributeCreatureWhatHeIsCarrying(0);
}

void CreatureBeliefAboutForest::CreateAttributes()
{
	CreateCommonAttributes();
	Attributes[CREATURE_BELIEF_ATTRIBUTE_FOREST_SIZE] = new (FILEPATH, 88) AttributeForestSize(0);
}

void CreatureBeliefAboutVillager::CreateAttributes()
{
	CreateCommonAttributes();
	Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_SEX] = new (FILEPATH, 95) AttributeSex(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_JOB] = new (FILEPATH, 96) AttributeVillagerJob(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_LIFE] = new (FILEPATH, 97) AttributeLife(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_ON_FIRE] = new (FILEPATH, 98) AttributeOnFire(0);
}

void CreatureBeliefAboutMobileObject::CreateAttributes()
{
	CreateCommonAttributes();
	Attributes[CREATURE_BELIEF_ATTRIBUTE_MOBILE_OBJECT_TYPE] = new (FILEPATH, 105) AttributeMobileObjectType(0);
}

void CreatureBeliefAboutAbode::CreateAttributes()
{
	CreateCommonAttributes();
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_TYPE] = new (FILEPATH, 112) AttributeAbodeType(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_LIFE] = new (FILEPATH, 113) AttributeLife(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_ON_FIRE] = new (FILEPATH, 114) AttributeOnFire(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_BEING_BUILT] = new (FILEPATH, 115) AttributeAbodeBeingBuilt(0);
}

void CreatureBeliefAboutCitadel::CreateAttributes()
{
	CreateCommonAttributes();
}

void CreatureBeliefAboutContext::CreateAttributes() {}

CreatureBelief* CreatureBeliefSmall::Copy()
{
	CreatureBeliefSmall* belief = new (FILEPATH, 137) CreatureBeliefSmall;
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete belief->Attributes[i];
	}
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	CopyCommonAttributes(belief);
	return belief;
}

CreatureBelief* CreatureBeliefAboutTown::Copy()
{
	CreatureBeliefAboutTown* belief = new (FILEPATH, 153) CreatureBeliefAboutTown;
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete belief->Attributes[i];
	}
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	CopyCommonAttributes(belief);
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_RELIGIOUS_BELIEF_IN_YOU] = new (FILEPATH, 162)
		AttributeTownReligiousBeliefInYou(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_TOWN_RELIGIOUS_BELIEF_IN_YOU));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_NEEDS_MOST] =
		new (FILEPATH, 163) AttributeWhatTownNeedsMost(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_TOWN_NEEDS_MOST));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_SIZE] =
		new (FILEPATH, 164) AttributeTownSize(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_TOWN_SIZE));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_TRIBE] =
		new (FILEPATH, 165) AttributeTribe(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_TOWN_TRIBE));
	return belief;
}

CreatureBelief* CreatureBeliefAboutFlock::Copy()
{
	CreatureBeliefAboutFlock* belief = new (FILEPATH, 173) CreatureBeliefAboutFlock;
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete belief->Attributes[i];
	}
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	CopyCommonAttributes(belief);
	return belief;
}

CreatureBelief* CreatureBeliefAboutCreature::Copy()
{
	CreatureBeliefAboutCreature* belief = new (FILEPATH, 189) CreatureBeliefAboutCreature;
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete belief->Attributes[i];
	}
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	CopyCommonAttributes(belief);
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_DOMINANT_DESIRE] = new (FILEPATH, 198)
		AttributeCreatureDominantDesire(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_CREATURE_DOMINANT_DESIRE));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_HEIGHT] =
		new (FILEPATH, 199) AttributeCreatureHeight(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_CREATURE_HEIGHT));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_SPELL_KNOWLEDGE] = new (FILEPATH, 200)
		AttributeCreatureSpellKnowledge(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_CREATURE_SPELL_KNOWLEDGE));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_CARRYING] = new (FILEPATH, 201)
		AttributeCreatureWhatHeIsCarrying(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_CREATURE_CARRYING));
	return belief;
}

CreatureBelief* CreatureBeliefAboutForest::Copy()
{
	CreatureBeliefAboutForest* belief = new (FILEPATH, 209) CreatureBeliefAboutForest;
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete belief->Attributes[i];
	}
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	CopyCommonAttributes(belief);
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_FOREST_SIZE] =
		new (FILEPATH, 218) AttributeForestSize(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ORIGIN));
	return belief;
}

CreatureBelief* CreatureBeliefAboutVillager::Copy()
{
	CreatureBeliefAboutVillager* belief = new (FILEPATH, 226) CreatureBeliefAboutVillager;
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete belief->Attributes[i];
	}
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	CopyCommonAttributes(belief);
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_SEX] =
		new (FILEPATH, 235) AttributeSex(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_VILLAGER_SEX));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_JOB] =
		new (FILEPATH, 236) AttributeVillagerJob(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_VILLAGER_JOB));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_LIFE] =
		new (FILEPATH, 237) AttributeLife(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_VILLAGER_LIFE));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_ON_FIRE] =
		new (FILEPATH, 238) AttributeOnFire(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_VILLAGER_ON_FIRE));
	return belief;
}

CreatureBelief* CreatureBeliefAboutMobileObject::Copy()
{
	CreatureBeliefAboutMobileObject* belief = new (FILEPATH, 246) CreatureBeliefAboutMobileObject;
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete belief->Attributes[i];
	}
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	CopyCommonAttributes(belief);
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_MOBILE_OBJECT_TYPE] = new (FILEPATH, 255)
		AttributeMobileObjectType(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_MOBILE_OBJECT_TYPE));
	return belief;
}

CreatureBelief* CreatureBeliefAboutAbode::Copy()
{
	CreatureBeliefAboutAbode* belief = new (FILEPATH, 263) CreatureBeliefAboutAbode;
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete belief->Attributes[i];
	}
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	CopyCommonAttributes(belief);
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_TYPE] =
		new (FILEPATH, 272) AttributeAbodeType(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ABODE_TYPE));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_LIFE] =
		new (FILEPATH, 273) AttributeLife(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ABODE_LIFE));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_ON_FIRE] =
		new (FILEPATH, 274) AttributeOnFire(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ABODE_ON_FIRE));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_BEING_BUILT] =
		new (FILEPATH, 275) AttributeAbodeBeingBuilt(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ABODE_BEING_BUILT));
	return belief;
}

CreatureBelief* CreatureBeliefAboutCitadel::Copy()
{
	CreatureBeliefAboutCitadel* belief = new (FILEPATH, 283) CreatureBeliefAboutCitadel;
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete belief->Attributes[i];
	}
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	CopyCommonAttributes(belief);
	return belief;
}

CreatureBelief* CreatureBeliefAboutContext::Copy()
{
	CreatureBeliefAboutContext* belief = new (FILEPATH, 299) CreatureBeliefAboutContext;
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	return belief;
}

CreatureBeliefSmall::~CreatureBeliefSmall()
{
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete Attributes[i];
	}
}

CreatureBeliefAboutTown::~CreatureBeliefAboutTown()
{
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete Attributes[i];
	}
}

CreatureBeliefAboutFlock::~CreatureBeliefAboutFlock()
{
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete Attributes[i];
	}
}

CreatureBeliefAboutCreature::~CreatureBeliefAboutCreature()
{
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete Attributes[i];
	}
}

CreatureBeliefAboutForest::~CreatureBeliefAboutForest()
{
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete Attributes[i];
	}
}

CreatureBeliefAboutMobileObject::~CreatureBeliefAboutMobileObject()
{
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete Attributes[i];
	}
}

CreatureBeliefAboutVillager::~CreatureBeliefAboutVillager()
{
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete Attributes[i];
	}
}

CreatureBeliefAboutAbode::~CreatureBeliefAboutAbode()
{
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete Attributes[i];
	}
}

CreatureBeliefAboutCitadel::~CreatureBeliefAboutCitadel()
{
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete Attributes[i];
	}
}

CreatureBeliefAboutContext::~CreatureBeliefAboutContext() {}

CreatureBelief* CreatureBeliefSmall::FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
                                                           CREATURE_ACTION action, float* usefulness)
{
	return NULL;
}

CreatureBelief* CreatureBeliefAboutTown::FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
                                                               CREATURE_ACTION action, float* usefulness)
{
	float           bestUsefulness = 0.0f;
	CreatureBelief* bestBelief = NULL;
	for (LHLinkedNode<CreatureBelief*>* node = AssociatedBeliefs.GetStart(); node != NULL; node = node->next.Get())
	{
		CreatureBelief* belief = node->payload;
		if (mental->IsObjectSuitableForDesire(belief, desire) != false)
		{
			if (action == NO_ACTION_SPECIFIED ||
			    mental->IsObjectSuitableForAction(belief->GetObjectPointer(), action) != false)
			{
				float objectUsefulness = mental->GetObjectToActOnUsefulness(belief, desire);
				if (objectUsefulness > bestUsefulness)
				{
					bestUsefulness = objectUsefulness;
					*usefulness = TownObjectToActOnUsefulness;
					bestBelief = belief;
				}
			}
		}
	}
	return bestBelief;
}

CreatureBelief* CreatureBeliefAboutFlock::FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
                                                                CREATURE_ACTION action, float* usefulness)
{
	float           bestUsefulness = 0.0f;
	CreatureBelief* bestBelief = NULL;
	for (LHLinkedNode<CreatureBelief*>* node = AssociatedBeliefs.GetStart(); node != NULL; node = node->next.Get())
	{
		CreatureBelief* belief = node->payload;
		if (mental->IsObjectSuitableForDesire(belief, desire) != false)
		{
			if (action == NO_ACTION_SPECIFIED ||
			    mental->IsObjectSuitableForAction(belief->GetObjectPointer(), action) != false)
			{
				float objectUsefulness = mental->GetObjectToActOnUsefulness(belief, desire);
				if (objectUsefulness > bestUsefulness)
				{
					*usefulness = objectUsefulness;
					bestBelief = belief;
					bestUsefulness = objectUsefulness;
				}
			}
		}
	}
	return bestBelief;
}

CreatureBelief* CreatureBeliefAboutCreature::FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
                                                                   CREATURE_ACTION action, float* usefulness)
{
	*usefulness = mental->GetObjectToActOnUsefulness(this, desire);
	return this;
}

CreatureBelief* CreatureBeliefAboutForest::FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
                                                                 CREATURE_ACTION action, float* usefulness)
{
	float           bestUsefulness = 0.0f;
	CreatureBelief* bestBelief = NULL;
	for (LHLinkedNode<CreatureBelief*>* node = AssociatedBeliefs.GetStart(); node != NULL; node = node->next.Get())
	{
		CreatureBelief* belief = node->payload;
		Tree*           tree = dynamic_cast<Tree*>(belief->Pointer);
		if (mental->IsObjectSuitableForDesire(belief, desire) != false)
		{
			if (action == NO_ACTION_SPECIFIED ||
			    mental->IsObjectSuitableForAction(belief->GetObjectPointer(), action) != false)
			{
				float objectUsefulness = mental->GetObjectToActOnUsefulness(belief, desire);
				if (objectUsefulness > bestUsefulness)
				{
					*usefulness = objectUsefulness;
					bestBelief = belief;
					bestUsefulness = objectUsefulness;
				}
			}
		}
	}
	return bestBelief;
}

CreatureBelief* CreatureBeliefAboutCitadel::FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
                                                                  CREATURE_ACTION action, float* usefulness)
{
	float           bestUsefulness = 0.0f;
	CreatureBelief* bestBelief = NULL;
	Citadel*        citadel = dynamic_cast<Citadel*>(Pointer);
	for (LHLinkedNode<CreatureBelief*>* node = AssociatedBeliefs.GetStart(); node != NULL; node = node->next.Get())
	{
		CreatureBelief* belief = node->payload;
		if (mental->IsObjectSuitableForDesire(belief, desire) != false)
		{
			if (action == NO_ACTION_SPECIFIED ||
			    mental->IsObjectSuitableForAction(belief->GetObjectPointer(), action) != false)
			{
				float objectUsefulness = mental->GetObjectToActOnUsefulness(belief, desire);
				if (objectUsefulness > bestUsefulness)
				{
					*usefulness = objectUsefulness;
					bestBelief = belief;
					bestUsefulness = objectUsefulness;
				}
			}
		}
	}
	return bestBelief;
}

CreatureBelief* CreatureBeliefAboutVillager::FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
                                                                   CREATURE_ACTION action, float* usefulness)
{
	return NULL;
}

CreatureBelief* CreatureBeliefAboutMobileObject::FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
                                                                       CREATURE_ACTION action, float* usefulness)
{
	return NULL;
}

CreatureBelief* CreatureBeliefAboutAbode::FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
                                                                CREATURE_ACTION action, float* usefulness)
{
	return NULL;
}

CreatureBelief* CreatureBeliefAboutContext::FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
                                                                  CREATURE_ACTION action, float* usefulness)
{
	return NULL;
}

CreatureBeliefAboutTown::CreatureBeliefAboutTown(Attribute* allegiance, Attribute* origin, Attribute* animate,
                                                 Attribute* player_number, Attribute* harder_than_me,
                                                 Attribute* creature_type, Attribute* type,
                                                 Attribute* religious_belief_in_you, Attribute* needs_most,
                                                 Attribute* size, Attribute* tribe)
{
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ALLEGIANCE] = allegiance;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ORIGIN] = origin;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ANIMATE] = animate;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_PLAYER_NUMBER] = player_number;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_HARDER_THAN_ME] = harder_than_me;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_TYPE] = creature_type;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_TYPE] = type;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_RELIGIOUS_BELIEF_IN_YOU] = religious_belief_in_you;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_NEEDS_MOST] = needs_most;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_SIZE] = size;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_TRIBE] = tribe;
}

CreatureBeliefAboutFlock::CreatureBeliefAboutFlock(Attribute* allegiance, Attribute* origin, Attribute* animate,
                                                   Attribute* player_number)
{
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ALLEGIANCE] = allegiance;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ORIGIN] = origin;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ANIMATE] = animate;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_PLAYER_NUMBER] = player_number;
}

CreatureBeliefAboutVillager::CreatureBeliefAboutVillager(Attribute* allegiance, Attribute* origin, Attribute* animate,
                                                         Attribute* player_number, Attribute* harder_than_me,
                                                         Attribute* creature_type, Attribute* type, Attribute* sex,
                                                         Attribute* job, Attribute* life, Attribute* on_fire)
{
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ALLEGIANCE] = allegiance;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ORIGIN] = origin;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ANIMATE] = animate;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_PLAYER_NUMBER] = player_number;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_HARDER_THAN_ME] = harder_than_me;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_TYPE] = creature_type;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_TYPE] = type;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_SEX] = sex;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_JOB] = job;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_LIFE] = life;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_ON_FIRE] = on_fire;
}

CreatureBeliefAboutCreature::CreatureBeliefAboutCreature(Attribute* allegiance, Attribute* origin, Attribute* animate,
                                                         Attribute* player_number, Attribute* harder_than_me,
                                                         Attribute* creature_type, Attribute* type,
                                                         Attribute* dominant_desire)
{
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ALLEGIANCE] = allegiance;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ORIGIN] = origin;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ANIMATE] = animate;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_PLAYER_NUMBER] = player_number;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_HARDER_THAN_ME] = harder_than_me;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_TYPE] = creature_type;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_TYPE] = type;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_DOMINANT_DESIRE] = dominant_desire;
}

CreatureBeliefSmall::CreatureBeliefSmall(Attribute* allegiance, Attribute* origin, Attribute* animate,
                                         Attribute* player_number)
{
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ALLEGIANCE] = allegiance;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ORIGIN] = origin;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ANIMATE] = animate;
	Attributes[CREATURE_BELIEF_ATTRIBUTE_PLAYER_NUMBER] = player_number;
}

CreatureBeliefAboutContext::CreatureBeliefAboutContext(Attribute* allegiance, Attribute* origin, Attribute* animate,
                                                       Attribute* player_number, Attribute* harder_than_me,
                                                       Attribute* creature_type, Attribute* type, Attribute* attribute8,
                                                       Attribute* attribute9, Attribute* attribute10)
{
}
