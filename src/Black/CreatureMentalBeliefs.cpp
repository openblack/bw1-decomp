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

inline Object* CreatureBelief::GetObjectPointer()
{
	return dynamic_cast<Object*>(Pointer);
}

void CreatureBelief::CreateCommonAttributes()
{
	*GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_ALLEGIANCE) = new (__FILE__, 31) AttributeAllegiance(0);
	*GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_ORIGIN) = new (__FILE__, 32) AttributeOrigin(0);
	*GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_ANIMATE) = new (__FILE__, 33) AttributeAnimate(0);
	*GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_PLAYER_NUMBER) = new (__FILE__, 34) AttributePlayerNumber(0);
	*GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_HARDER_THAN_ME) = new (__FILE__, 35) AttributeIsHarderThanMe(0);
	*GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_CREATURE_TYPE) = new (__FILE__, 36) AttributeCreatureType(0);
	*GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_TYPE) = new (__FILE__, 37) AttributeType(0);
}

void CreatureBelief::CopyCommonAttributes(CreatureBelief* belief)
{
	*belief->GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_ALLEGIANCE) =
		new (__FILE__, 43) AttributeAllegiance(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ALLEGIANCE));
	*belief->GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_ORIGIN) =
		new (__FILE__, 44) AttributeOrigin(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ORIGIN));
	*belief->GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_ANIMATE) =
		new (__FILE__, 45) AttributeAnimate(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ANIMATE));
	*belief->GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_PLAYER_NUMBER) =
		new (__FILE__, 46) AttributePlayerNumber(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_PLAYER_NUMBER));
	*belief->GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_HARDER_THAN_ME) =
		new (__FILE__, 47) AttributeIsHarderThanMe(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_HARDER_THAN_ME));
	*belief->GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_CREATURE_TYPE) =
		new (__FILE__, 48) AttributeCreatureType(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_CREATURE_TYPE));
	*belief->GetNthAttributePtr(CREATURE_BELIEF_ATTRIBUTE_TYPE) =
		new (__FILE__, 49) AttributeType(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_TYPE));
}

void CreatureBeliefSmall::CreateAttributes()
{
	CreateCommonAttributes();
}

void CreatureBeliefAboutTown::CreateAttributes()
{
	CreateCommonAttributes();
	Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_RELIGIOUS_BELIEF_IN_YOU] =
		new (__FILE__, 62) AttributeTownReligiousBeliefInYou(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_NEEDS_MOST] = new (__FILE__, 63) AttributeWhatTownNeedsMost(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_SIZE] = new (__FILE__, 64) AttributeTownSize(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_TRIBE] = new (__FILE__, 65) AttributeTribe(0);
}

void CreatureBeliefAboutFlock::CreateAttributes()
{
	CreateCommonAttributes();
}

void CreatureBeliefAboutCreature::CreateAttributes()
{
	CreateCommonAttributes();
	Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_DOMINANT_DESIRE] =
		new (__FILE__, 78) AttributeCreatureDominantDesire(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_HEIGHT] = new (__FILE__, 79) AttributeCreatureHeight(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_SPELL_KNOWLEDGE] =
		new (__FILE__, 80) AttributeCreatureSpellKnowledge(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_CARRYING] = new (__FILE__, 81) AttributeCreatureWhatHeIsCarrying(0);
}

void CreatureBeliefAboutForest::CreateAttributes()
{
	CreateCommonAttributes();
	Attributes[CREATURE_BELIEF_ATTRIBUTE_FOREST_SIZE] = new (__FILE__, 88) AttributeForestSize(0);
}

void CreatureBeliefAboutVillager::CreateAttributes()
{
	CreateCommonAttributes();
	Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_SEX] = new (__FILE__, 95) AttributeSex(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_JOB] = new (__FILE__, 96) AttributeVillagerJob(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_LIFE] = new (__FILE__, 97) AttributeLife(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_ON_FIRE] = new (__FILE__, 98) AttributeOnFire(0);
}

// 1.00 has no CreatureBeliefAboutMobileObject.
#if !defined(VERSION_BW1W100)
void CreatureBeliefAboutMobileObject::CreateAttributes()
{
	CreateCommonAttributes();
	Attributes[CREATURE_BELIEF_ATTRIBUTE_MOBILE_OBJECT_TYPE] = new (__FILE__, 105) AttributeMobileObjectType(0);
}
#endif

void CreatureBeliefAboutAbode::CreateAttributes()
{
	CreateCommonAttributes();
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_TYPE] = new (__FILE__, 112) AttributeAbodeType(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_LIFE] = new (__FILE__, 113) AttributeLife(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_ON_FIRE] = new (__FILE__, 114) AttributeOnFire(0);
	Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_BEING_BUILT] = new (__FILE__, 115) AttributeAbodeBeingBuilt(0);
}

void CreatureBeliefAboutCitadel::CreateAttributes()
{
	CreateCommonAttributes();
}

void CreatureBeliefAboutContext::CreateAttributes() {}

CreatureBelief* CreatureBeliefSmall::Copy()
{
	CreatureBeliefSmall* belief = new (__FILE__, 137) CreatureBeliefSmall;
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
	CreatureBeliefAboutTown* belief = new (__FILE__, 153) CreatureBeliefAboutTown;
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete belief->Attributes[i];
	}
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	CopyCommonAttributes(belief);
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_RELIGIOUS_BELIEF_IN_YOU] = new (__FILE__, 162)
		AttributeTownReligiousBeliefInYou(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_TOWN_RELIGIOUS_BELIEF_IN_YOU));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_NEEDS_MOST] =
		new (__FILE__, 163) AttributeWhatTownNeedsMost(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_TOWN_NEEDS_MOST));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_SIZE] =
		new (__FILE__, 164) AttributeTownSize(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_TOWN_SIZE));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_TOWN_TRIBE] =
		new (__FILE__, 165) AttributeTribe(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_TOWN_TRIBE));
	return belief;
}

CreatureBelief* CreatureBeliefAboutFlock::Copy()
{
	CreatureBeliefAboutFlock* belief = new (__FILE__, 173) CreatureBeliefAboutFlock;
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
	CreatureBeliefAboutCreature* belief = new (__FILE__, 189) CreatureBeliefAboutCreature;
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete belief->Attributes[i];
	}
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	CopyCommonAttributes(belief);
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_DOMINANT_DESIRE] = new (__FILE__, 198)
		AttributeCreatureDominantDesire(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_CREATURE_DOMINANT_DESIRE));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_HEIGHT] =
		new (__FILE__, 199) AttributeCreatureHeight(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_CREATURE_HEIGHT));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_SPELL_KNOWLEDGE] = new (__FILE__, 200)
		AttributeCreatureSpellKnowledge(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_CREATURE_SPELL_KNOWLEDGE));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_CREATURE_CARRYING] = new (__FILE__, 201)
		AttributeCreatureWhatHeIsCarrying(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_CREATURE_CARRYING));
	return belief;
}

CreatureBelief* CreatureBeliefAboutForest::Copy()
{
	CreatureBeliefAboutForest* belief = new (__FILE__, 209) CreatureBeliefAboutForest;
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete belief->Attributes[i];
	}
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	CopyCommonAttributes(belief);
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_FOREST_SIZE] =
		new (__FILE__, 218) AttributeForestSize(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ORIGIN));
	return belief;
}

CreatureBelief* CreatureBeliefAboutVillager::Copy()
{
	CreatureBeliefAboutVillager* belief = new (__FILE__, 226) CreatureBeliefAboutVillager;
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete belief->Attributes[i];
	}
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	CopyCommonAttributes(belief);
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_SEX] =
		new (__FILE__, 235) AttributeSex(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_VILLAGER_SEX));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_JOB] =
		new (__FILE__, 236) AttributeVillagerJob(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_VILLAGER_JOB));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_LIFE] =
		new (__FILE__, 237) AttributeLife(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_VILLAGER_LIFE));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_VILLAGER_ON_FIRE] =
		new (__FILE__, 238) AttributeOnFire(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_VILLAGER_ON_FIRE));
	return belief;
}

// 1.00 has no CreatureBeliefAboutMobileObject.
#if !defined(VERSION_BW1W100)
CreatureBelief* CreatureBeliefAboutMobileObject::Copy()
{
	CreatureBeliefAboutMobileObject* belief = new (__FILE__, 246) CreatureBeliefAboutMobileObject;
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete belief->Attributes[i];
	}
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	CopyCommonAttributes(belief);
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_MOBILE_OBJECT_TYPE] = new (__FILE__, 255)
		AttributeMobileObjectType(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_MOBILE_OBJECT_TYPE));
	return belief;
}
#endif

CreatureBelief* CreatureBeliefAboutAbode::Copy()
{
	CreatureBeliefAboutAbode* belief = new (__FILE__, 263) CreatureBeliefAboutAbode;
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete belief->Attributes[i];
	}
	*belief = *this;
	belief->AssociatedBeliefs.count = 0;
	belief->AssociatedBeliefs.head.Clear();
	CopyCommonAttributes(belief);
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_TYPE] =
		new (__FILE__, 272) AttributeAbodeType(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ABODE_TYPE));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_LIFE] =
		new (__FILE__, 273) AttributeLife(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ABODE_LIFE));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_ON_FIRE] =
		new (__FILE__, 274) AttributeOnFire(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ABODE_ON_FIRE));
	belief->Attributes[CREATURE_BELIEF_ATTRIBUTE_ABODE_BEING_BUILT] =
		new (__FILE__, 275) AttributeAbodeBeingBuilt(GetNthAttributeValue(CREATURE_BELIEF_ATTRIBUTE_ABODE_BEING_BUILT));
	return belief;
}

CreatureBelief* CreatureBeliefAboutCitadel::Copy()
{
	CreatureBeliefAboutCitadel* belief = new (__FILE__, 283) CreatureBeliefAboutCitadel;
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
	CreatureBeliefAboutContext* belief = new (__FILE__, 299) CreatureBeliefAboutContext;
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

// 1.00 has no CreatureBeliefAboutMobileObject.
#if !defined(VERSION_BW1W100)
CreatureBeliefAboutMobileObject::~CreatureBeliefAboutMobileObject()
{
	for (uint32_t i = 0; i < GetNumAttributes(); i++)
	{
		delete Attributes[i];
	}
}
#endif

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

// 1.00 has no CreatureBeliefAboutMobileObject.
#if !defined(VERSION_BW1W100)
CreatureBelief* CreatureBeliefAboutMobileObject::FindBestObjectToActOn(CREATURE_DESIRES desire, CreatureMental* mental,
                                                                       CREATURE_ACTION action, float* usefulness)
{
	return NULL;
}
#endif

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
