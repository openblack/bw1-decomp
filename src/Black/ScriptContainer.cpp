#include "ColourConstants.h"
#include "GameTimeConstants.h"
#include "Script.h"

#include "Abode.h"
#include "ContainerInfo.h"
#include "Dance.h"
#include "DanceInfo.h"
#include "Flock.h"
#include "Football.h"
#include "Game.h"
#include "Living.h"
#include "ObjectInfo.h"
#include "ScriptDLL.h"
#include "SpellDispenser.h"
#include "Town.h"
#include "Villager.h"

#ifdef VERSION_BW1WCI
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) < 675 ? (line) : (line) + 21)
#endif

void GScript::AttachToId()
{
	bool32_t          asLeader = g_scriptDLL->ULONG_POP();
	uint32_t          containerId = g_scriptDLL->THING_OR_NULL_POP();
	uint32_t          thingId = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* thing = GetScriptGameThing(thingId);
	GameThingWithPos* container = GetScriptGameThing(containerId);
	if (thing != NULL)
	{
		if (container != NULL)
		{
			if (container->IsDance())
			{
				container->SetControlledByScript(true);
				AttachToDance(thingId, containerId, (Dance*)container, asLeader);
			}
			else if (container->IsFlock())
			{
				container->SetControlledByScript(true);
				AttachToFlock(thingId, containerId, asLeader);
			}
			else if (container->IsTown())
			{
				AttachToTown(thingId, containerId, (Town*)container);
			}
			else
			{
				ScriptErrorMessage("Thing not added to id");
				g_scriptDLL->PUSH(NULL, VMType_OBJECT);
			}
		}
		else
		{
			ScriptErrorMessage("Id deleted to attach to");
			g_scriptDLL->PUSH(NULL, VMType_OBJECT);
		}
	}
	else
	{
		ScriptErrorMessage("Id deleted to attach");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

void GScript::AttachToFlock(unsigned long thing_id, unsigned long flock_id, bool32_t as_leader)
{
	GameThingWithPos* thing = GetScriptGameThing(thing_id);
	GameThingWithPos* container = GetScriptGameThing(flock_id);
	Flock*            thingFlock = NULL;
	Flock*            containerFlock = NULL;
	Living*           thingLiving = NULL;
	Living*           containerLiving = NULL;
	if (thing != NULL && container != NULL)
	{
		if (thing->IsFlock())
		{
			thingFlock = dynamic_cast<Flock*>(thing);
			SCRIPT_ASSERT(thingFlock != NULL, "JONTY-When is a flock not a flock?");
			if (thingFlock == NULL)
			{
				g_scriptDLL->PUSH(NULL, VMType_OBJECT);
				return;
			}
		}
		else
		{
			thingLiving = dynamic_cast<Living*>(thing);
			SCRIPT_ASSERT(thingLiving != NULL, "JONTY-Trying to add non living to flock");
			if (thingLiving == NULL)
			{
				g_scriptDLL->PUSH(NULL, VMType_OBJECT);
				return;
			}
		}
		if (container->IsFlock())
		{
			containerFlock = dynamic_cast<Flock*>(container);
			SCRIPT_ASSERT(containerFlock != NULL, "JONTY-When is a flock not a flock?");
			if (containerFlock == NULL)
			{
				g_scriptDLL->PUSH(NULL, VMType_OBJECT);
				return;
			}
			if (thingFlock == NULL)
			{
				thingFlock = containerFlock;
				containerFlock = NULL;
			}
		}
		else
		{
			containerLiving = dynamic_cast<Living*>(container);
			SCRIPT_ASSERT(containerLiving != NULL, "JONTY-Trying to add non living to flock");
			if (containerLiving == NULL)
			{
				g_scriptDLL->PUSH(NULL, VMType_OBJECT);
				return;
			}
			if (thingLiving == NULL)
			{
				thingLiving = containerLiving;
				containerLiving = NULL;
			}
		}
		if (thingFlock != NULL)
		{
			if (containerFlock != NULL)
			{
				containerFlock->MergeWithOtherFlock(thingFlock);
				g_scriptDLL->PUSH((void*)flock_id, VMType_OBJECT);
				return;
			}
			if (as_leader)
			{
				thingFlock->ForceLeaderInFlock(thingLiving);
				SetScriptState(thingLiving, VILLAGER_STATE_MOVE_IN_FLOCK);
			}
			else
			{
				if (!thingFlock->AddLivingToFlock(thingLiving))
				{
					ScriptErrorMessage("Living already in Flock");
				}
				SetScriptState(thingLiving, VILLAGER_STATE_MOVE_IN_FLOCK);
			}
			if (thing->IsFlock())
			{
				g_scriptDLL->PUSH((void*)thing_id, VMType_OBJECT);
				IncrementScriptReference(flock_id);
			}
			else
			{
				g_scriptDLL->PUSH((void*)flock_id, VMType_OBJECT);
				IncrementScriptReference(thing_id);
			}
			return;
		}
		SCRIPT_ASSERT(thingLiving != NULL && containerLiving != NULL,
		              "JONTY- Something is seriously wrong with my code");
		if (thingLiving == NULL || containerLiving == NULL)
		{
			g_scriptDLL->PUSH(NULL, VMType_OBJECT);
			return;
		}
		Flock* flock =
			NEW(150) Flock(containerLiving->Pos, (const GFlockInfo*)&GContainerInfo::GetInfo()[CONTAINER_INFO_FLOCK],
		                   GGame::g_game->GetNeutralPlayer(), FLOCK_MAGIC);
		if (flock != NULL)
		{
			uint32_t id = AddScriptGameThing(flock, true);
			IncrementScriptReference(flock_id);
			if (id != 0)
			{
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				if (as_leader)
				{
					flock->ForceLeaderInFlock(thingLiving);
					IncrementScriptReference(thing_id);
				}
				else if (!flock->AddLivingToFlock(thingLiving))
				{
					ScriptErrorMessage("Living already in Flock");
				}
				else
				{
					SetScriptState(thingLiving, VILLAGER_STATE_MOVE_IN_FLOCK);
					IncrementScriptReference(thing_id);
				}
				if (!flock->AddLivingToFlock(containerLiving))
				{
					ScriptErrorMessage("Living already in Flock");
					return;
				}
				SetScriptState(containerLiving, VILLAGER_STATE_MOVE_IN_FLOCK);
				IncrementScriptReference(flock_id);
				return;
			}
			ScriptErrorMessage("Flock ID failed");
			delete flock;
		}
	}
	ScriptErrorMessage("Thing not added to Flock");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

bool32_t GScript::AttachToTownLoopFunction(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	Living* living = dynamic_cast<Living*>(thing);
	if (living != NULL)
	{
		Villager* villager = dynamic_cast<Villager*>(living);
		SCRIPT_ASSERT(villager != NULL, "JONTY-Trying to add non villager to town");
		if (villager == NULL)
		{
			g_scriptDLL->PUSH(NULL, VMType_OBJECT);
			return false;
		}
		if (villager->GetTown() != NULL)
		{
			villager->GetTown()->RemoveVillager(villager);
		}
		GGame::g_game->script->LoopTown->AddVillagerToTown(villager);
	}
#ifdef VERSION_BW1WCI
	else if (thing->IsAbode())
	{
		if (thing->GetTown() != NULL)
		{
			thing->GetTown()->RemoveStructureFromTown((Abode*)thing);
		}
		GGame::g_game->script->LoopTown->AddStructureToTown((Abode*)thing);
	}
#endif
	return false;
}

void GScript::AttachToTown(unsigned long thing_id, unsigned long town_id, Town* town)
{
	GameThingWithPos* thing = GetScriptGameThing(thing_id);
	if (thing != NULL)
	{
		if (thing->IsScriptContainer())
		{
			GGame::g_game->script->LoopTown = town;
			void*(__cdecl * loop)(GameThingWithPos*, int(__cdecl*)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
			                      SCRIPT_OBJECT_TYPE, uint32_t) =
				g_scriptObjectDispatch[thing->GetScriptObjectType()].Loop;
			if (loop != NULL)
			{
				loop(thing, AttachToTownLoopFunction, SCRIPT_OBJECT_TYPE_NONE, 0);
			}
			else
			{
				ScriptErrorMessage("No Loop function for type");
			}
		}
		else if (thing->IsSpellDispenser())
		{
			((SpellDispenser*)thing)->SetTown(town);
		}
#ifdef VERSION_BW1WCI
		else if (thing->IsAbode())
		{
			if (thing->GetTown() != NULL)
			{
				thing->GetTown()->RemoveStructureFromTown((Abode*)thing);
			}
			town->AddStructureToTown((Abode*)thing);
		}
#endif
		else
		{
			Villager* villager = dynamic_cast<Villager*>(thing);
			SCRIPT_ASSERT(villager != NULL, "JONTY-Trying to add non villager to town");
			if (villager == NULL)
			{
				g_scriptDLL->PUSH(NULL, VMType_OBJECT);
				return;
			}
			if (villager->GetTown() != NULL)
			{
				villager->GetTown()->RemoveVillager(villager);
			}
			town->AddVillagerToTown(villager);
		}
		g_scriptDLL->PUSH((void*)town_id, VMType_OBJECT);
		return;
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::DetachFromId()
{
	GameThingWithPos* container = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	uint32_t          thingId = g_scriptDLL->THING_OR_NULL_POP();
	if (container != NULL)
	{
		if (container->IsFlock())
		{
			DetachFromFlock(thingId, (Flock*)container);
		}
		else if (container->IsDance())
		{
			DetachFromDance(thingId, (Dance*)container);
		}
		else if (container->IsTown())
		{
			DetachFromTown(thingId, (Town*)container);
		}
		else
		{
			Living* living = dynamic_cast<Living*>(container);
			if (living != NULL)
			{
				Flock* flock = living->flock.Get();
				if (flock != NULL)
				{
					DetachFromFlock(thingId, flock);
				}
				else
				{
					ScriptErrorMessage("No flock for living so what the...");
					g_scriptDLL->PUSH(NULL, VMType_OBJECT);
				}
			}
			else
			{
				ScriptErrorMessage("Not living - confused");
				g_scriptDLL->PUSH(NULL, VMType_OBJECT);
			}
		}
	}
	else
	{
		ScriptErrorMessage("From thing dead!");
	}
}

void GScript::DetachFromTown(unsigned long thing_id, Town* town)
{
	GameThingWithPos* thing = NULL;
	if (thing_id != 0)
	{
		thing = GetScriptGameThing(thing_id);
	}
	if (town != NULL && thing != NULL)
	{
		Villager* villager = dynamic_cast<Villager*>(thing);
		if (villager != NULL)
		{
			if (villager->GetTown() == town)
			{
				town->RemoveVillager(villager);
				g_scriptDLL->PUSH(NULL, VMType_OBJECT);
				return;
			}
			ScriptErrorMessage("Wrong Town");
		}
	}
	ScriptErrorMessage("Thing not removed from Town");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::DetachFromFlock(unsigned long thing_id, Flock* flock)
{
	GameThingWithPos* thing = NULL;
	if (thing_id != 0)
	{
		thing = GetScriptGameThing(thing_id);
	}
	if (flock != NULL)
	{
		if (thing != NULL)
		{
			Living* living = dynamic_cast<Living*>(thing);
			if (living != NULL)
			{
				if (living->info->type == OBJECT_TYPE_ANIMAL)
				{
					flock->SeperateLivingIntoNewFlock(living, false);
				}
				else
				{
					flock->RemoveLivingFromFlock(living, false);
				}
				DecrementScriptReference(thing_id);
				g_scriptDLL->PUSH((void*)thing_id, VMType_OBJECT);
				return;
			}
			ScriptErrorMessage("Trying to remove non living from flock");
		}
		else
		{
			Living* leader = NULL;
			if (flock->GetFlockMembers()->GetSize() > 1)
			{
				leader = flock->GetFlockMembers()->GetLast();
			}
			Living* living = flock->FindRandomFlockMember(leader);
			if (living != NULL)
			{
				if (living->info->type == OBJECT_TYPE_ANIMAL)
				{
					flock->SeperateLivingIntoNewFlock(living, false);
				}
				else
				{
					flock->RemoveLivingFromFlock(living, false);
				}
				SCRIPT_ASSERT(FindScriptGameThing(living) != 0, "JONTY-Does this ever happen?");
				uint32_t id = FindOrAddScriptGameThing(living);
				if (id != 0)
				{
					DecrementScriptReference(id);
					g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
					return;
				}
			}
			else
			{
				ScriptErrorMessage("Thing not found from Flock");
			}
		}
	}
	ScriptErrorMessage("Thing not removed from Flock");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::ReleaseContainerContents(GameThingWithPos* thing)
{
	SCRIPT_ASSERT(thing != NULL, "Releasing a NULL object");
	if (thing != NULL)
	{
		if (thing->IsFlock())
		{
			Flock* flock = dynamic_cast<Flock*>(thing);
			if (flock != NULL)
			{
				SLLNode<Living>* node = flock->GetFlockMembers()->First;
				while (node != NULL)
				{
					Living*          living = node->Data;
					SLLNode<Living>* next = node->Next;
					if (living->IsControlledByScript())
					{
						unsigned long slot = FindScriptGameThing(living);
						if (slot == 0)
						{
							return;
						}
						ReleaseScriptThingIntoTheGame(living, slot, true);
					}
					node = next;
				}
			}
		}
		else
		{
			ScriptErrorMessage("CANNOT RELEASE THIS! USE DISPAND!");
		}
	}
}

void GScript::DecreaseContainerContentsScriptReference(GameThingWithPos* thing)
{
	SCRIPT_ASSERT(thing != NULL, "Decreasing a NULL object");
	if (thing != NULL && thing->IsFlock())
	{
		Flock* flock = dynamic_cast<Flock*>(thing);
		if (flock != NULL)
		{
			for (SLLNode<Living>* node = flock->GetFlockMembers()->First; node != NULL; node = node->Next)
			{
				DecrementScriptReference(node->Data);
			}
		}
	}
}

void GScript::DisbandId()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Disbanding a NULL object");
	if (thing != NULL)
	{
		if (thing->IsFlock())
		{
			Flock* flock = dynamic_cast<Flock*>(thing);
			if (flock != NULL)
			{
				SLLNode<Living>* node = flock->GetFlockMembers()->First;
				while (node != NULL)
				{
					Living*          living = node->Data;
					SLLNode<Living>* next = node->Next;
					if (living->info->type == OBJECT_TYPE_ANIMAL &&
					    (GGame::g_game->GameFlags & GAME_FLAG_CLEARING_MAP) == 0)
					{
						flock->SeperateLivingIntoNewFlock(living, false);
					}
					else
					{
						flock->RemoveLivingFromFlock(living, false);
					}
					DecrementScriptReference(living);
					if (living->IsControlledByScript())
					{
						SetScriptState(living, VILLAGER_STATE_IN_SCRIPT);
					}
					node = next;
				}
				return;
			}
			ScriptErrorMessage("Bad Id for Disband");
		}
		else if (thing->IsDance())
		{
			Dance* dance = dynamic_cast<Dance*>(thing);
			while (dance->NumDancers != 0)
			{
				Living* dancer = dance->FindFirstDanceMember(NULL);
				if (dancer != NULL)
				{
					dancer->RemoveFromDance(false);
					DecrementScriptReference(dancer);
					if (dancer->IsControlledByScript())
					{
						SetScriptState(dancer, VILLAGER_STATE_IN_SCRIPT);
					}
				}
				else
				{
					ScriptErrorMessage("Should never happen");
				}
			}
		}
		else if (!thing->IsTown() && !thing->IsAbode())
		{
			ScriptErrorMessage("Bad Id for Disband");
		}
	}
	else
	{
		ScriptErrorMessage("Bad Id for Disband");
	}
}

void GScript::GetIdSize()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		if (thing->IsFlock())
		{
			g_scriptDLL->FLOAT_PUSH(((Flock*)thing)->GetFlockMembers()->GetSize());
			return;
		}
		if (thing->IsDance())
		{
			g_scriptDLL->FLOAT_PUSH(((Dance*)thing)->NumDancers);
			return;
		}
		if (thing->IsTown())
		{
			g_scriptDLL->FLOAT_PUSH(((Town*)thing)->GetPopulation());
			return;
		}
		if (thing->IsFootball())
		{
			g_scriptDLL->FLOAT_PUSH(((Football*)thing)->GetNumberOfPeoplePlayingFootball());
			return;
		}
	}
	ScriptErrorMessage("Cannot Find Flock/Dance/Town Size");
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::IsFlockMember()
{
	GameThingWithPos* container = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (container != NULL)
	{
		Flock* flock = dynamic_cast<Flock*>(container);
		if (flock != NULL && thing != NULL)
		{
			Living* living = dynamic_cast<Living*>(thing);
			if (living != NULL)
			{
				SLLNode<Living>* node = flock->GetFlockMembers()->First;
				while (node != NULL && node->Data != living)
				{
					node = node->Next;
				}
				g_scriptDLL->PUSH((void*)(node != NULL), VMType_BOOLEAN);
				return;
			}
		}
	}
	ScriptErrorMessage("Invalid Flock or Thing");
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

void GScript::CreateDance()
{
	float   duration = g_scriptDLL->FLOAT_POP();
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	DANCE_INFO        type = (DANCE_INFO)g_scriptDLL->ULONG_POP();
	GameThingWithPos* target = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	Dance* dance = NEW(675) Dance(MapCoords(pos), &GDanceInfo::GetInfo()[type], target, duration, false, NULL);
	if (dance != NULL)
	{
		dance->DanceCameraDisabled = true;
		uint32_t id = AddScriptGameThing(dance, true);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
	}
	else
	{
		ScriptErrorMessage("Dance not created");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

bool32_t GScript::AttachToDanceLoopFunction(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	Living* living = dynamic_cast<Living*>(thing);
	if (living != NULL)
	{
		if (living->IsDancing())
		{
			living->RemoveFromDance(true);
		}
		GGame::g_game->script->LoopDance->FindDanceGroup(living);
		SetScriptState(living, VILLAGER_STATE_IN_DANCE);
		living->SetControlledByScript(true);
		IncrementScriptReference(living);
	}
	return false;
}

void GScript::AttachToDance(unsigned long thing_id, unsigned long dance_id, Dance* dance, bool32_t as_leader)
{
	GameThingWithPos* thing = GetScriptGameThing(thing_id);
	if (thing->IsScriptContainer())
	{
		GGame::g_game->script->LoopDance = dance;
		void*(__cdecl * loop)(GameThingWithPos*, int(__cdecl*)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
		                      SCRIPT_OBJECT_TYPE, uint32_t) = g_scriptObjectDispatch[thing->GetScriptObjectType()].Loop;
		if (loop != NULL)
		{
			loop(thing, AttachToDanceLoopFunction, SCRIPT_OBJECT_TYPE_NONE, 0);
		}
		else
		{
			ScriptErrorMessage("No Loop funtion for type");
		}
	}
	else
	{
		Living* living = dynamic_cast<Living*>(thing);
		SCRIPT_ASSERT(living != NULL, "JONTY-Trying to add non living to dance");
		if (living == NULL)
		{
			g_scriptDLL->PUSH(NULL, VMType_OBJECT);
			return;
		}
		if (as_leader)
		{
			dance->Target = living;
		}
		if (living->IsDancing())
		{
			living->RemoveFromDance(true);
		}
		dance->FindDanceGroup(living);
		SetScriptState(living, VILLAGER_STATE_IN_DANCE);
		IncrementScriptReference(thing_id);
	}
	g_scriptDLL->PUSH((void*)dance_id, VMType_OBJECT);
}

void GScript::DetachFromDance(unsigned long thing_id, Dance* dance)
{
	GameThingWithPos* thing = NULL;
	if (thing_id != 0)
	{
		thing = GetScriptGameThing(thing_id);
	}
	if (dance != NULL)
	{
		if (thing != NULL)
		{
			Living* living = dynamic_cast<Living*>(thing);
			if (living != NULL)
			{
				living->RemoveFromDance(false);
				DecrementScriptReference(thing_id);
				g_scriptDLL->PUSH((void*)thing_id, VMType_OBJECT);
				return;
			}
			ScriptErrorMessage("Trying to remove non living from dance");
		}
		else
		{
			GameThingWithPos* leader = dance->Target;
			if (dance->NumDancers == 1)
			{
				leader = NULL;
			}
			Living* dancer = dance->FindFirstDanceMember(leader);
			if (dancer != NULL)
			{
				dancer->RemoveFromDance(false);
				uint32_t id = FindOrAddScriptGameThing(dancer);
				if (id != 0)
				{
					g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
					DecrementScriptReference(id);
					return;
				}
			}
		}
	}
	ScriptErrorMessage("Thing not removed from Dance");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::FlockWithinLimits()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptWarningMessage("Thing no longer valid");
	}
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsFlock(), "Invalid thing");
		if (thing->IsFlock())
		{
			bool32_t within = ((Flock*)thing)->AllMembersWithinFlockDistance();
			g_scriptDLL->PUSH((void*)within, VMType_BOOLEAN);
			return;
		}
	}
	g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
}

void GScript::GetFirstInContainer()
{
	GameThingWithPos* container = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* thing = NULL;
	SCRIPT_ASSERT(container != NULL && container->IsScriptContainer(), "Invalid container");
	if (container != NULL && container->IsScriptContainer())
	{
		switch (container->GetScriptObjectType())
		{
		case SCRIPT_OBJECT_TYPE_TOWN: {
			Town* town = (Town*)container;
			if (town->AbodeList.head != NULL)
			{
				thing = town->AbodeList.head->villagers.head;
			}
			if (thing == NULL)
			{
				thing = town->HomelessList.head;
			}
			break;
		}
		case SCRIPT_OBJECT_TYPE_DANCE:
			thing = ((Dance*)container)->GetFirstDancer();
			break;
		case SCRIPT_OBJECT_TYPE_FLOCK:
			thing = ((Flock*)container)->GetFlockMembers()->GetFirst();
			break;
		}
		if (thing != NULL)
		{
			uint32_t id = AddScriptGameThing(thing, false);
			g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
			return;
		}
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::GetNextInContainer()
{
	GameThingWithPos* previous = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* thing = NULL;
	bool32_t          found = false;
	if (previous == NULL)
	{
		GetFirstInContainer();
		return;
	}
	GameThingWithPos* container = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(container != NULL && container->IsScriptContainer(), "Invalid container");
	if (container != NULL && container->IsScriptContainer())
	{
		switch (container->GetScriptObjectType())
		{
		case SCRIPT_OBJECT_TYPE_TOWN: {
			Town* town = (Town*)container;
			for (Abode* abode = town->AbodeList.head; abode != NULL; abode = abode->next)
			{
				for (Villager* villager = abode->villagers.head; villager != NULL; villager = villager->next)
				{
					if (found)
					{
						thing = villager;
						goto found_thing;
					}
					if (previous == villager)
					{
						found = true;
					}
				}
			}
			for (Villager* homeless = town->HomelessList.head; homeless != NULL; homeless = homeless->next)
			{
				if (found)
				{
					thing = homeless;
					break;
				}
				if (previous == homeless)
				{
					found = true;
				}
			}
			break;
		}
		case SCRIPT_OBJECT_TYPE_DANCE: {
			for (LHLinkedNode<Living*>* node = ((Dance*)container)->DanceMembers.GetStart(); node != NULL;
			     node = node->next.Get())
			{
				if (found)
				{
					thing = node->payload;
					break;
				}
				if (previous == node->payload)
				{
					found = true;
				}
			}
			break;
		}
		case SCRIPT_OBJECT_TYPE_FLOCK: {
			Flock* flock = (Flock*)container;
			flock->GetFlockMembers()->Current = flock->GetFlockMembers()->First;
			while (flock->GetFlockMembers()->GetCurrent() != NULL)
			{
				if (found)
				{
					thing = flock->GetFlockMembers()->GetCurrent();
					break;
				}
				if (previous == flock->GetFlockMembers()->GetCurrent())
				{
					found = true;
				}
				flock->GetFlockMembers()->MoveForward();
			}
			break;
		}
		}
	found_thing:
		if (thing != NULL)
		{
			uint32_t id = AddScriptGameThing(thing, false);
			g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
			return;
		}
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}
