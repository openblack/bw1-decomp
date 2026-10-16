#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "CreatureMentalBelief.h"

#include "ColourConstants.h" /* For White */

#include "Animal.h"
#include "Citadel.h"
#include "Creature.h"
#include "CreatureMental.h"
#include "CreatureMentalBeliefs.h"
#include "Forest.h"
#include "Game.h"
#include "GameInfo.h"
#include "Player.h"
#include "TotemStatue.h"
#include "Town.h"
#include "TownCentre.h"
#include "Tree.h"
#include "Utils.h"
#include "Villager.h"
#include "VillagerStateTableInfo.h"

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\CreatureMentalBelief.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\CreatureMentalBelief.cpp"
#elif defined(VERSION_BW1W130)
#define FILEPATH "D:\\Work\\Games\\dd\\Black\\CreatureMentalBelief.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\CreatureMentalBelief.cpp"
#endif

CreatureBelief::CreatureBelief()
{
	AssociatedBelief = NULL;
	NextAllocated = NULL;
	Previous = NULL;
	Next = NULL;
	field_0x20 = 0;
	Pointer = NULL;
	GameTurnNavigationBlocked = 0;
	NavigationBlocked = false;
	GameTurnSourcesUpdated = 0;
	SlotInUse = false;
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		CREATURE_DESIRES desire = (CREATURE_DESIRES)i;
		UsedInPlan[desire / CHAR_BIT] &= ~(1 << (desire % CHAR_BIT));
	}
}

AllocatedBeliefList::AllocatedBeliefList()
{
	NumSlotsInUse = 0;
	NumBeliefs = 0;
	NextSlot = NULL;
	FirstBelief = NULL;
}

void AllocatedBeliefList::AddNewBelief(CreatureBelief* belief)
{
	belief->SlotInUse = false;
	belief->NextAllocated = FirstBelief;
	FirstBelief = belief;
	NumBeliefs++;
}

CreatureBelief* AllocatedBeliefList::GetSlot(CreatureMental* mental)
{
	if (NumSlotsInUse < NumBeliefs)
	{
		for (CreatureBelief* belief = FirstBelief; belief != NULL; belief = belief->NextAllocated)
		{
			if (!belief->SlotInUse)
			{
				if (NextSlot == NULL)
				{
					NextSlot = belief;
				}
				belief->SlotInUse = true;
				NumSlotsInUse++;
				return belief;
			}
		}
		return NULL;
	}

	CreatureBelief* belief = NextSlot;
	uint32_t        numBeliefs = mental->beliefs.AllocatedLists[belief->GetType()].NumBeliefs;
	uint32_t        tries = 0;
	for (;;)
	{
		if (!mental->IsBeliefCurrentlyUsedInAgenda(belief))
		{
			bool32_t usedInPlan = false;
			for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
			{
				if (belief->IsUsedInPlan((CREATURE_DESIRES)i))
				{
					usedInPlan = true;
					break;
				}
			}
			if (!usedInPlan)
			{
				belief->ClearAfterFreeingUp();
				mental->beliefs.lists[belief->Pointer->GetCreatureBeliefListType()].Remove(belief);
				return belief;
			}
		}
		if (++tries >= numBeliefs)
		{
			return NULL;
		}
		belief = belief->NextAllocated;
		if (belief == NULL)
		{
			belief = FirstBelief;
		}
	}
}

void CreatureBelief::ClearAfterFreeingUp()
{
	for (uint32_t i = 0; i < NUM_CREATURE_DESIRES; i++)
	{
		CREATURE_DESIRES desire = (CREATURE_DESIRES)i;
		UsedInPlan[desire / CHAR_BIT] &= ~(1 << (desire % CHAR_BIT));
	}
	field_0x20 = 0;
	NavigationBlocked = false;
	GameTurnNavigationBlocked = 0;
	GameTurnSourcesUpdated = 0;
}

void AllocatedBeliefList::FreeUpSlot(CreatureBelief* belief)
{
	belief->SlotInUse = false;
	if (belief == NextSlot)
	{
		NextSlot = NextSlot->NextAllocated;
		if (NextSlot == NULL)
		{
			NextSlot = FirstBelief;
		}
	}
	NumSlotsInUse--;
	if (NumSlotsInUse == 0)
	{
		NextSlot = NULL;
	}
}

CreatureBelief* CreatureMental::CreateBeliefAboutContext()
{
	return beliefs.AllocatedLists[CREATURE_BELIEF_TYPE_CONTEXT].GetSlot(this);
}

CreatureBelief* CreatureMental::CreateBelief(GameThingWithPos* object, GPlayer* player)
{
	CREATURE_BELIEF_TYPE type = (CREATURE_BELIEF_TYPE)object->GetCreatureBeliefType();
	if (type < CREATURE_BELIEF_TYPE_LAST)
	{
		CreatureBelief* belief = beliefs.AllocatedLists[type].GetSlot(this);
		belief->FillInAllAttributes(object, player);
		return belief;
	}
	return NULL;
}

void CreatureMental::DeleteBelief(CreatureBelief* belief)
{
	beliefs.AllocatedLists[belief->GetType()].FreeUpSlot(belief);
}

CreatureBelief* CreatureMental::GetBeliefAboutObject(GameThingWithPos* object)
{
	return beliefs.lists[object->GetCreatureBeliefListType()].GetBeliefAboutObject(object);
}

CreatureBelief* CreatureBeliefList::GetBeliefAboutObject(GameThingWithPos* object)
{
	for (CreatureBelief* belief = Head; belief != NULL; belief = belief->Next)
	{
		if (object == belief->Pointer)
		{
			return belief;
		}
	}
	return NULL;
}

CreatureBelief* CreatureMental::AddBeliefAboutObject(Creature* creature, GameThingWithPos* object)
{
	if (object->IsMoving() && object != this->creature && LookState.Priority <= CREATURE_LOOK_PRIORITY_MOVING_OBJECT)
	{
		LookState.coords = object->Pos;
		LookState.coords.altitude = object->GetHeight();
		LookState.GameTurn = GGame::g_game->data.GameTurn;
		LookState.Priority = CREATURE_LOOK_PRIORITY_MOVING_OBJECT;
	}
	if (agenda.plans[0].ObjectToActOn != NULL && object == agenda.plans[0].ObjectToActOn->Pointer)
	{
		VisionState.SeenObjectToActOn = true;
	}
	if (agenda.plans[0].ObjectToUse != NULL && object == agenda.plans[0].ObjectToUse->Pointer)
	{
		VisionState.SeenObjectToUse = true;
	}
	return beliefs.lists[object->GetCreatureBeliefListType()].AddBeliefAboutObject(creature, object);
}

CreatureBelief* CreatureBeliefList::AddBeliefAboutObject(Creature* creature, GameThingWithPos* object)
{
	if (creature != NULL)
	{
		CreatureBelief* belief = GetBeliefAboutObject(object);
		if (belief != NULL)
		{
			belief->UpdateAttributes(creature, object, creature->GetPlayer());
			return belief;
		}

		belief = creature->mind->CreateBelief(object, creature->GetPlayer());
		if (belief != NULL)
		{
			Add(belief, creature->mind);
			creature->AddBeliefAboutAssociatedObject(belief);
		}
		return belief;
	}
	return NULL;
}

void CreatureBeliefList::Add(CreatureBelief* belief, CreatureMental* mental)
{
	belief->Previous = NULL;
	belief->Next = Head;
	if (Head != NULL)
	{
		Head->Previous = belief;
	}
	Head = belief;
	if (Tail == NULL)
	{
		Tail = belief;
	}
	NumBeliefs++;
}

bool32_t CreatureMental::IsBeliefCurrentlyUsedInAgenda(CreatureBelief* belief)
{
	bool agendaValid = agenda.plans[0].IsValid() && agenda.SubActionAgenda.IsValid();
	if (!agendaValid)
	{
		return false;
	}
	if (belief == agenda.plans[0].ActivityObject || belief == agenda.plans[0].ObjectToActOn ||
	    belief == agenda.plans[0].ObjectToUse)
	{
		return true;
	}
	for (unsigned long i = agenda.SubActionAgenda.GetSubActionIndex(); i < agenda.SubActionAgenda.NumSubActions; i++)
	{
		if (agenda.SubActionAgenda.SubActions[i].Belief == belief)
		{
			return true;
		}
	}
	return false;
}

void CreatureBelief::FillInAllAttributes(GameThingWithPos* thing, GPlayer* player)
{
	Pos = thing->Pos;
	Pointer = thing;
	for (unsigned long i = 0; i < GetNumAttributes(); i++)
	{
		GetNthAttribute(i)->UpdateValue(thing, player);
	}
}

void CreatureBelief::UpdateAttributes(Creature* creature, GameThingWithPos* thing, GPlayer* player)
{
	Pos = thing->Pos;
	for (unsigned long i = 0; i < GetNumAttributes(); i++)
	{
		Attribute* attribute = GetNthAttribute(i);
		if (attribute->IsDynamic())
		{
			attribute->UpdateValue(thing, player);
			attribute->ValueRange();
		}
	}
	if (Pointer->IsSuitableForCreatureActivity() && Pointer != creature &&
	    GGame::g_game->data.GameTurn - GameTurnSourcesUpdated > CREATURE_BELIEF_SOURCES_UPDATE_TURNS)
	{
		GameTurnSourcesUpdated = GGame::g_game->data.GameTurn;
		creature->mind->UpdateSourcesFromBelief(this);
	}
	if (Pointer->IsToy(creature))
	{
		creature->mind->desires.ChangeSource(TO_PLAY_FROM_WATCHING_PLAYER, CREATURE_BELIEF_TOY_PLAY_SOURCE);
	}
	if (Pointer->IsStealableByCreature(creature))
	{
		creature->mind->desires.ChangeSource(TO_STEAL, CREATURE_BELIEF_STEALABLE_STEAL_SOURCE);
	}
}

void CreatureBeliefAboutAbode::UpdateAttributes(Creature* creature, GameThingWithPos* thing, GPlayer* player)
{
	TownCentre* centre = dynamic_cast<TownCentre*>(GetPointer());
	if (centre != NULL && centre->totem_statue.Get() != NULL)
	{
		creature->mind->AddBeliefAboutObject(creature, centre->totem_statue.Get());
	}
}

void CreatureBeliefAboutTown::UpdateAttributes(Creature* creature, GameThingWithPos* thing, GPlayer* player)
{
	CreatureBelief::UpdateAttributes(creature, thing, player);
	if (!(creature->GameThingWithPos::Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT))
	{
		Town* town = dynamic_cast<Town*>(thing);
		float change =
			1.0f / GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(CREATURE_BELIEF_TOWN_COMPASSION_SECONDS);
		if (town->desire.GetMostSignificantRawDesire(0.0f) != TOWN_DESIRE_INFO_NONE)
		{
			creature->mind->desires.ChangeSource(COMPASSION_FROM_SEEING_OBJECTS_WHICH_DESERVE_IT, change);
		}
	}
}

void CreatureBeliefAboutVillager::UpdateAttributes(Creature* creature, GameThingWithPos* thing, GPlayer* player)
{
	CreatureBelief::UpdateAttributes(creature, thing, player);
	if (creature->DevelopmentPhase < DEVELOPMENT_PHASE_LEASH_PULL_AND_PICKUP ||
	    (creature->GameThingWithPos::Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT))
	{
		return;
	}

	switch (creature->mind->agenda.plans[0].CreatureDesire)
	{
	case CREATURE_DESIRE_TO_IMPRESS:
	case CREATURE_DESIRE_COMPASSION:
	case CREATURE_DESIRE_ANGER:
	case CREATURE_DESIRE_TO_PLAY:
	case CREATURE_DESIRE_HUNGER:
	case CREATURE_DESIRE_FEAR:
	case CREATURE_DESIRE_TO_POO:
	case CREATURE_DESIRE_TIREDNESS:
	case CREATURE_DESIRE_TO_PUKE:
	case CREATURE_DESIRE_FOR_WATER:
	case CREATURE_DESIRE_TO_RESTORE_HEALTH:
	case CREATURE_DESIRE_TO_BE_FRIENDS:
	case CREATURE_DESIRE_TO_GET_WARMER:
	case CREATURE_DESIRE_TO_GET_COLDER:
	case CREATURE_DESIRE_TO_SCRATCH:
	case CREATURE_DESIRE_TO_RUN_AWAY_FROM_PLAYER:
	case CREATURE_DESIRE_TO_REST:
	case CREATURE_DESIRE_ILLNESS:
	case CREATURE_DESIRE_TO_OBEY_CREATURE:
	case CREATURE_DESIRE_TO_STEAL:
		return;
	default:
		break;
	}

	Villager*       villager = dynamic_cast<Villager*>(thing);
	VILLAGER_STATES state = (VILLAGER_STATES)(uint8_t)villager->GetTopState();
	if (state == VILLAGER_STATE_WAIT_FOR_ANIMATION)
	{
		state = (VILLAGER_STATES)villager->action.states[LIVING_ACTION_INDEX_FINAL];
	}
	if (state == VILLAGER_STATE_GOTO_STORAGE_PIT_FOR_FOOD &&
	    GUtils::GetDistanceInMetres(villager->Pos, villager->goal) > CREATURE_BELIEF_VILLAGER_FAR_FROM_STORAGE_PIT)
	{
		state = VILLAGER_STATE_DECIDE_WHAT_TO_DO;
	}
	unsigned long action = GVillagerStateTableInfo::GetInfo()[state].ActionKnownAbout;
	if (action != CREATURE_ACTION_KNOWN_ABOUT_NONE &&
	    !creature->mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_NORMAL, action))
	{
		creature->mind->ConsiderLearningAction(CREATURE_ACTION_LEARNING_TYPE_NORMAL, action);
		creature->ForceActivityAndForceAction(CREATURE_DESIRE_CURIOSITY, NULL, CREATURE_EXAMINE_BY_FOLLOWING, this,
		                                      NULL, false, true);
	}

	Town* town = villager->GetTown();
	if (town != NULL)
	{
		GPlayer* owner = town->GetPlayer();
		if (owner->IsNeutral() || owner != creature->GetPlayer())
		{
			creature->mind->desires.DesireToImpressFromVillagersWhoNeedIt +=
				CREATURE_BELIEF_IMPRESS_FROM_VILLAGER_INCREMENT;
			CLAMP(creature->mind->desires.DesireToImpressFromVillagersWhoNeedIt, 0.0f, 1.0f);
		}
	}
}

void CreatureBeliefAboutCreature::UpdateAttributes(Creature* creature, GameThingWithPos* thing, GPlayer* player)
{
	CreatureBelief::UpdateAttributes(creature, thing, player);
	if (!(creature->GameThingWithPos::Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT))
	{
		Creature* other = dynamic_cast<Creature*>(thing);
		if (creature != other &&
		    other->mind->IsBeliefCurrentlyUsedInAgenda(other->mind->GetBeliefAboutObject(creature)))
		{
			creature->mind->UpdateHowMuchAttentionPaidToMeByCreature(other, CREATURE_BELIEF_ATTENTION_FROM_CREATURE);
		}
	}
}

void CreatureMental::UpdateBeliefAboutContext()
{
	for (unsigned long i = 0; i < ContextBelief->GetNumAttributes(); i++)
	{
		Attribute* attribute = ContextBelief->GetNthAttribute(i);
		Creature*  owner = creature;
		attribute->UpdateValue(owner, owner->GetPlayer());
	}
}

ATTRIBUTE_TEST_RESULT CreatureBelief::SatisfiesAttributeTest(ATTRIBUTE_TYPE type, unsigned long value)
{
	for (unsigned long i = 0; i < GetNumAttributes(); i++)
	{
		Attribute* attribute = GetNthAttribute(i);
		if (attribute->GetType() == type)
		{
			return attribute->Value == value ? ATTRIBUTE_TEST_RESULT_SATISFIED : ATTRIBUTE_TEST_RESULT_NOT_SATISFIED;
		}
	}
	return ATTRIBUTE_TEST_RESULT_NO_ATTRIBUTE;
}

bool32_t CreatureBelief::FindAttributeValue(ATTRIBUTE_TYPE type, unsigned long* value)
{
	for (unsigned long i = 0; i < GetNumAttributes(); i++)
	{
		Attribute* attribute = GetNthAttribute(i);
		if (attribute->GetType() == type)
		{
			*value = attribute->Value;
			return true;
		}
	}
	return false;
}

void CreatureBeliefList::Remove(CreatureBelief* belief)
{
	if (belief->AssociatedBelief != NULL)
	{
		belief->AssociatedBelief->AssociatedBeliefs.Remove(belief);
		belief->AssociatedBelief = NULL;
	}
	if (belief->Previous != NULL)
	{
		belief->Previous->Next = belief->Next;
	}
	if (belief->Next != NULL)
	{
		belief->Next->Previous = belief->Previous;
	}
	if (belief == Head)
	{
		Head = Head->Next;
	}
	if (belief == Tail)
	{
		Tail = belief->Previous;
	}
	NumBeliefs--;
}

CreatureBeliefs::~CreatureBeliefs()
{
	for (uint32_t type = 0; type < CREATURE_BELIEF_TYPE_LAST; type++)
	{
		CreatureBelief* belief = AllocatedLists[type].FirstBelief;
		while (belief != NULL)
		{
			CreatureBelief* next = belief->NextAllocated;
			delete belief;
			belief = next;
		}
	}
}

const char* CreatureBelief::AttributeTypeText(unsigned long index)
{
	return GetNthAttribute(index)->TypeName();
}

const char* CreatureBelief::AttributeValueText(unsigned long index, unsigned long value)
{
	return GetNthAttribute(index)->ValueName(value);
}

uint32_t CreatureBelief::AttributeValueRange(unsigned long index)
{
	return GetNthAttribute(index)->ValueRange();
}

uint32_t CreatureBeliefs::GetNumBeliefsAboutType(CREATURE_BELIEF_TYPE type)
{
	uint32_t        count = 0;
	CreatureBelief* belief;
	for (belief = lists[0].Head; belief != NULL; belief = belief->Next)
	{
		if (belief->GetType() == type)
		{
			count++;
		}
	}
	for (belief = lists[CREATURE_BELIEF_LIST_TYPE_OBJECT].Head; belief != NULL; belief = belief->Next)
	{
		if (belief->GetType() == type)
		{
			count++;
		}
	}
	return count;
}

CreatureBelief* CreatureBelief::Copy()
{
	return NULL;
}

CreatureBelief::~CreatureBelief()
{
	AssociatedBeliefs.RemoveAll();
}

CreatureBelief* Creature::AddBeliefAboutAssociatedObject(CreatureBelief* belief)
{
	if (belief == NULL)
	{
		return NULL;
	}

	CreatureBelief*   associated = NULL;
	GameThingWithPos* object;
	switch (belief->GetType())
	{
	case CREATURE_BELIEF_TYPE_ABODE:
	case CREATURE_BELIEF_TYPE_VILLAGER:
		object = belief->Pointer->GetTown();
		if (object != NULL && !(object->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE))
		{
			associated = mind->AddBeliefAboutObject(this, belief->Pointer->GetTown());
		}
		break;
	case CREATURE_BELIEF_TYPE_CITADEL_PART:
		if (belief->Pointer->GetCitadel() != NULL &&
		    belief->Pointer->GetCitadel()->IsObjectPartOfCitadel(belief->Pointer))
		{
			associated = mind->AddBeliefAboutObject(this, belief->Pointer->GetCitadel());
		}
		break;
	case CREATURE_BELIEF_TYPE_TREE: {
		Tree* tree = dynamic_cast<Tree*>(belief->Pointer);
		object = tree->GetForest();
		if (object == NULL)
		{
			object = Forest::FindClosestForest(tree->Pos, CREATURE_BELIEF_FOREST_SEARCH_RADIUS, false);
		}
		if (object != NULL && !(object->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE))
		{
			associated = mind->AddBeliefAboutObject(this, object);
		}
		break;
	}
	case CREATURE_BELIEF_TYPE_CREATURE:
		return belief;
	case CREATURE_BELIEF_TYPE_ANIMAL:
		object = dynamic_cast<Animal*>(belief->Pointer)->flock.Get();
		if (object != NULL && !(object->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE))
		{
			associated = mind->AddBeliefAboutObject(this, object);
		}
		break;
	case CREATURE_BELIEF_TYPE_TOTEM_STATUE: {
		TotemStatue* statue = dynamic_cast<TotemStatue*>(belief->Pointer);
		if (statue != NULL)
		{
			object = statue->GetTown();
			if (object != NULL && !(object->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE))
			{
				associated = mind->AddBeliefAboutObject(this, object);
			}
		}
		break;
	}
	case CREATURE_BELIEF_TYPE_FIELD:
		object = belief->Pointer->GetTown();
		if (object != NULL)
		{
			associated = mind->AddBeliefAboutObject(this, object);
		}
		break;
	default:
		break;
	}

	if (belief->AssociatedBelief != NULL)
	{
		belief->AssociatedBelief->AssociatedBeliefs.Remove(belief);
	}
	belief->AssociatedBelief = associated;
	if (associated != NULL && associated->AssociatedBeliefs.Find(belief) == NULL)
	{
		associated->AssociatedBeliefs.Add(belief);
	}
	return associated;
}

void CreatureBelief::SetNavigationBlockedFlag()
{
	NavigationBlocked = true;
	GameTurnNavigationBlocked = GGame::g_game->data.GameTurn;
}

bool32_t CreatureBelief::HasNavigationBeenBlockedRecently()
{
	uint32_t turns;
	if (Pointer->IsFixed())
	{
		turns = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(CREATURE_BELIEF_FIXED_NAVIGATION_BLOCKED_SECONDS);
	}
	else
	{
		turns = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(CREATURE_BELIEF_MOBILE_NAVIGATION_BLOCKED_SECONDS);
	}
	if (NavigationBlocked)
	{
		if (GGame::g_game->data.GameTurn - GameTurnNavigationBlocked > turns)
		{
			NavigationBlocked = false;
			return false;
		}
		return true;
	}
	return false;
}

void CreatureBeliefs::Initialise()
{
	int i;
	for (i = 0; i < NUM_ALLOCATED_TOWN_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_TOWN].AddNewBelief(new (FILEPATH, 1074) CreatureBeliefAboutTown());
	}
	for (i = 0; i < NUM_ALLOCATED_FLOCK_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_FLOCK].AddNewBelief(new (FILEPATH, 1079) CreatureBeliefAboutFlock());
	}
	for (i = 0; i < NUM_ALLOCATED_FOREST_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_FOREST].AddNewBelief(new (FILEPATH, 1084) CreatureBeliefAboutForest());
	}
	for (i = 0; i < NUM_ALLOCATED_CITADEL_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_CITADEL].AddNewBelief(new (FILEPATH, 1089) CreatureBeliefAboutCitadel());
	}
	for (i = 0; i < NUM_ALLOCATED_ABODE_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_ABODE].AddNewBelief(new (FILEPATH, 1094) CreatureBeliefAboutAbode());
	}
	for (i = 0; i < NUM_ALLOCATED_CITADEL_PART_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_CITADEL_PART].AddNewBelief(new (FILEPATH, 1099) CreatureBeliefSmall());
	}
	for (i = 0; i < NUM_ALLOCATED_TREE_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_TREE].AddNewBelief(new (FILEPATH, 1104) CreatureBeliefSmall());
	}
	for (i = 0; i < NUM_ALLOCATED_VILLAGER_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_VILLAGER].AddNewBelief(new (FILEPATH, 1109) CreatureBeliefAboutVillager());
	}
	for (i = 0; i < NUM_ALLOCATED_ANIMAL_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_ANIMAL].AddNewBelief(new (FILEPATH, 1114) CreatureBeliefSmall());
	}
	for (i = 0; i < NUM_ALLOCATED_CREATURE_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_CREATURE].AddNewBelief(new (FILEPATH, 1119) CreatureBeliefAboutCreature());
	}
	for (i = 0; i < NUM_ALLOCATED_MAGIC_LIVING_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_MAGIC_LIVING].AddNewBelief(new (FILEPATH, 1124) CreatureBeliefSmall());
	}
	for (i = 0; i < NUM_ALLOCATED_SPELL_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_SPELL].AddNewBelief(new (FILEPATH, 1129) CreatureBeliefSmall());
	}
	for (i = 0; i < NUM_ALLOCATED_FIELD_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_FIELD].AddNewBelief(new (FILEPATH, 1134) CreatureBeliefSmall());
	}
	for (i = 0; i < NUM_ALLOCATED_ROCK_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_ROCK].AddNewBelief(new (FILEPATH, 1139) CreatureBeliefSmall());
	}
	for (i = 0; i < NUM_ALLOCATED_POO_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_POO].AddNewBelief(new (FILEPATH, 1144) CreatureBeliefSmall());
	}
	for (i = 0; i < NUM_ALLOCATED_MAGIC_FOOD_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_MAGIC_FOOD].AddNewBelief(new (FILEPATH, 1149) CreatureBeliefSmall());
	}
	for (i = 0; i < NUM_ALLOCATED_FEATURE_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_FEATURE].AddNewBelief(new (FILEPATH, 1154) CreatureBeliefSmall());
	}
	for (i = 0; i < NUM_ALLOCATED_POT_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_POT].AddNewBelief(new (FILEPATH, 1159) CreatureBeliefSmall());
	}
	for (i = 0; i < NUM_ALLOCATED_SPELL_ICON_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_SPELL_ICON].AddNewBelief(new (FILEPATH, 1164) CreatureBeliefSmall());
	}
	for (i = 0; i < NUM_ALLOCATED_SPELL_SEED_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_SPELL_SEED].AddNewBelief(new (FILEPATH, 1169) CreatureBeliefSmall());
	}
	for (i = 0; i < NUM_ALLOCATED_MOBILE_OBJECT_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_MOBILE_OBJECT].AddNewBelief(new (FILEPATH, 1174) CreatureBeliefSmall());
	}
	for (i = 0; i < NUM_ALLOCATED_CONTEXT_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_CONTEXT].AddNewBelief(new (FILEPATH, 1179) CreatureBeliefAboutContext());
	}
	for (i = 0; i < NUM_ALLOCATED_SMALL_OBJECT_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_SMALL_OBJECT].AddNewBelief(new (FILEPATH, 1184) CreatureBeliefSmall());
	}
	for (i = 0; i < NUM_ALLOCATED_TOTEM_STATUE_BELIEFS; i++)
	{
		AllocatedLists[CREATURE_BELIEF_TYPE_TOTEM_STATUE].AddNewBelief(new (FILEPATH, 1189) CreatureBeliefSmall());
	}
}
