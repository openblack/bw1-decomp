#include "WhiteColour.h"
#include "CreatureAttitudeConstants.h"
#include "InfoArrays.h"
#include "Script.h"

inline GBaseInfo* GScriptOpposingCreature::GetBaseInfo(uint32_t& info_count)
{
	info_count = CREATURE_TYPE_LAST;
	return GInfoArrays::ScriptOpposingCreatures;
}

#include "GameTimeConstants.h"

#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>         /* For LHSPrintf */
#include <Lionhead/LHMultiplayer/ver4.0/LHSession.h> /* For LHSession */
#include <Lionhead/LH3DLib/development/LHPoint.h>

#include "Arena.h"
#include "Citadel.h"
#include "CitadelHeart.h"
#include "Creature.h"
#include "Creature3D.h"
#include "CreatureActionsKnownAbout.h"
#include "CreatureAgenda.h"
#include "CreatureAttitudeToPlayer.h"
#ifdef VERSION_BW1W100
#include "CreatureDevelopment.h"
#endif
#include "CreatureInfo.h"
#include "CreatureLearning.h"
#include "CreatureMentalBelief.h"
#include "CreatureMentalDesire.h"
#include "CreatureMental.h"
#include "CreaturePhysical.h"
#include "CameraModeNew3.h"
#include "Game.h"
#include "HelpSystem.h"
#include "HelpText.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "Landscape.h"
#include "LeashStatus.h"
#include "MapCoords.h"
#include "Player.h"
#include "Reaction.h"
#include "ScriptDLL.h"

#include <chlasm/HitRegions.h>
#ifdef VERSION_BW1WCI
#include <chlasm/ScriptEnumstwo.h>
#include "CreatureForcedAction.h"
#include "CreatureInitialDesireInfo.h"
#include "Serialise.h"
#endif

static uint32_t UnusedStatic = 0;

#ifdef VERSION_BW1WCI
const float FightEventTicksPerSecond = 1200.0f;
#endif

GScriptOpposingCreature GInfoArrays::ScriptOpposingCreatures[CREATURE_TYPE_LAST];

void GScript::CreateCreatureFromCreature()
{
#ifdef VERSION_BW1WCI
	bool32_t dumb = g_scriptDLL->ULONG_POP();
#endif
	MapCoords     coords;
	CREATURE_TYPE type = (CREATURE_TYPE)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(type < CREATURE_TYPE_LAST, "Invalid creature type");
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GLandscape::ConvertLandscapePointToMapCoord(pos, coords);
	float             scale = g_scriptDLL->FLOAT_POP();
	uint32_t          id = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* thing = GetScriptGameThing(id);
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature for script");
	}
	else
	{
		Creature* creature = dynamic_cast<Creature*>(thing);
		SCRIPT_ASSERT(creature != NULL, "No creature for script");
#ifdef VERSION_BW1WCI
		Creature* newCreature = Creature::ScriptCreateCreatureRelativeToCreature(creature, scale, coords, type, dumb);
#else
		Creature* newCreature = Creature::ScriptCreateCreatureRelativeToCreature(creature, scale, coords, type);
#endif
		if (newCreature != NULL)
		{
			uint32_t newId = AddScriptGameThing(newCreature, true);
			g_scriptDLL->PUSH((void*)newId, VMType_OBJECT);
			return;
		}
		ScriptErrorMessage("Creature not created!");
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

#ifdef VERSION_BW1WCI
void GScript::CreateYoungCreatureWithKnowledge()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GameThingWithPos* second = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* first = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (first != NULL && second != NULL)
	{
		Creature* master = dynamic_cast<Creature*>(first);
		Creature* tyke = dynamic_cast<Creature*>(second);
		if (master != NULL && tyke != NULL)
		{
			MapCoords coords;
			GLandscape::ConvertLandscapePointToMapCoord(pos, coords);
			Creature::ReleaseTykeFromMaster(tyke, master);
			Creature* young = Creature::Create(
				coords, &CreatureInfo::Infos[((CreatureInfo*)master->info)->CreatureType], NULL, false);
			if (young != NULL)
			{
				tyke->mind->SaveMind(CREATURE_MENTAL_YOUNG_MIND_FILE, 0);
				Archive archive(CREATURE_MENTAL_YOUNG_MIND_FILE, LH_FILE_MODE_READ_ONLY);
				if (archive.IsOpen())
				{
					young->mind->LoadMindIntoPreexistingCreature(archive);
					young->SetTyke(master);
				}
				uint32_t id = AddScriptGameThing(young, true);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				wcscpy(tyke->name, HelpTextDataBase::HelpTextDatabase.GetHelpText(HELP_TEXT_CHIMP_NAME_01));
				tyke->HasYoung = true;
				return;
			}
		}
	}
	ScriptErrorMessage("Creature not created!");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void Creature::ReleaseTykeFromMaster(Creature* tyke, Creature* master)
{
	if (tyke->ConfinedToObject)
	{
		tyke->ConfinedToObject = false;
		tyke->ConfinementObject = NULL;
		tyke->ConfinementPlayerNumber = 0;
		master->ConfinedCreatures.Remove(tyke);
	}
}
#endif

void GScript::CreatureLearnEverything()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature for script");
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	SCRIPT_ASSERT(creature != NULL, "No script for creature");
	creature->ScriptLearnEverything();
}

void GScript::CreatureSetKnowsAction()
{
#ifdef VERSION_BW1WCI
	float progress = g_scriptDLL->FLOAT_POP();
#endif
	bool32_t                      knows = g_scriptDLL->ULONG_POP();
	uint32_t                      action = g_scriptDLL->ULONG_POP();
	CREATURE_ACTION_LEARNING_TYPE type = (CREATURE_ACTION_LEARNING_TYPE)g_scriptDLL->ULONG_POP();
	GameThingWithPos*             thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature for script");
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	SCRIPT_ASSERT(creature != NULL, "No script for creature");
#ifdef VERSION_BW1WCI
	creature->ScriptSetKnowsAction(type, action, knows, progress);
#else
	creature->ScriptSetKnowsAction(type, action, knows);
#endif
}

#ifndef VERSION_BW1W100
void GScript::CreatureSetAgendaPriority()
{
	float             priority = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature for script");
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	SCRIPT_ASSERT(creature != NULL, "No script for creature");
	creature->ScriptSetAgendaPriority(priority);
}

void GScript::CreatureTurnOffAllDesires()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature for script");
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	SCRIPT_ASSERT(creature != NULL, "No script for creature");
	creature->ScriptTurnOffAllDesires();
}
#endif

void GScript::CreatureTurnOnDesireAndMakeItMaximum()
{
	CREATURE_DESIRES  desire = (CREATURE_DESIRES)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature for script");
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	SCRIPT_ASSERT(creature != NULL, "No script for creature");
	creature->ScriptTurnOnDesireAndMakeItMaximum(desire);
}

#ifdef VERSION_BW1W100
void GScript::CreatureTurnOffAllDesires()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature for script");
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	SCRIPT_ASSERT(creature != NULL, "No script for creature");
	creature->ScriptTurnOffAllDesires();
}
#endif

void GScript::CreatureLearnDistinction()
{
	uint32_t       amount = g_scriptDLL->ULONG_POP();
	ATTRIBUTE_TYPE attribute = (ATTRIBUTE_TYPE)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(attribute < ATTRIBUTE_TYPE_LAST, "Invalid type");
	CREATURE_DESIRES desire = (CREATURE_DESIRES)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(desire < NUM_CREATURE_DESIRES, "Invalid creature desire");
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature for script");
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	SCRIPT_ASSERT(creature != NULL, "No script for creature");
	creature->ScriptLearnDistinctionAboutActivityObject(desire, attribute, amount);
}

void GScript::CreatureDoAction()
{
	uint32_t          secondId = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* secondObject = secondId == 0 ? NULL : GetScriptGameThing(secondId);
	GameThingWithPos* object = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CREATURE_ACTION   action = (CREATURE_ACTION)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "No creature for script");
	SCRIPT_ASSERT(object != NULL, "No object-to-act-on for script");
	if (thing == NULL || object == NULL)
	{
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature == NULL)
	{
		ScriptErrorMessage("No creature for script");
		return;
	}
	creature->SetControlledByScript(true);
	creature->ScriptDoAction(action, object, secondObject);
}

#ifdef VERSION_BW1WCI
void GScript::CreatureDoActionAtPos()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GameThingWithPos* object = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CREATURE_ACTION   action = (CREATURE_ACTION)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature for script");
		return;
	}
	if (thing->IsCreature())
	{
		Creature* creature = (Creature*)thing;
		creature->SetControlledByScript(true);
		CreatureForcedAction::InProgress = true;
		creature->PrepareCreatureForScriptedAction(true);
		CreatureBelief* belief = creature->mind->AddBeliefAboutObject(creature, object);
		creature->ForceActivityAndForceAction(CREATURE_DESIRE_TO_OBEY_PLAYER, NULL, action, belief, NULL, true, true);
		GLandscape::ConvertLandscapePointToMapCoord(pos, creature->mind->agenda.PosToRunAwayFrom);
	}
}
#endif

void GScript::CallPlayerCreature()
{
	uint32_t playerIndex = ConvertScriptPlayerToGamePlayer((uint32_t)g_scriptDLL->FLOAT_POP());
	playerIndex = (uint32_t)(float)playerIndex;
	Creature* creature = GGame::g_game->GetPlayer(playerIndex)->creature.Get();
	uint32_t  id = 0;
	if (creature == NULL)
	{
		ScriptWarningMessage(LHSPrintf("No creature of player %d", playerIndex));
	}
	else
	{
		id = AddScriptGameThing(creature, false);
	}
	g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
}

void GScript::InCreatureHand()
{
	GameThingWithPos* creatureThing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* object = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (creatureThing != NULL && object != NULL)
	{
		Creature* creature = dynamic_cast<Creature*>(creatureThing);
		SCRIPT_ASSERT(creature != NULL, "Not a creature");
		if (creature == NULL)
		{
			g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
		}
		if (creature->physical->ObjectCarried == object)
		{
			g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
			return;
		}
		CreatureMental* mind = creature->mind;
		CreatureBelief* belief = mind->agenda.SubActionAgenda.GetObjectArgument();
		if (mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.GetSubActionIndex()].Action ==
		        CREATURE_SUB_STATE_ACTIONS_EAT &&
		    belief != NULL && belief->GetPointer() == object)
		{
			g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
			return;
		}
	}
	else
	{
		ScriptErrorMessage("Invalid creature or thing");
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

void GScript::CreatureSetDesireValue()
{
	float             value = g_scriptDLL->FLOAT_POP();
	CREATURE_DESIRES  desire = (CREATURE_DESIRES)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("no creature");
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	SCRIPT_ASSERT(creature != NULL, "not a creature");
	creature->mind->desires.SetLevel(desire, value);
	if (value == 1.0f)
	{
		creature->mind->desires.MakeAllSourcesMaximum(desire);
	}
}

void GScript::CreatureSetDesireActivated()
{
	bool32_t          activated = g_scriptDLL->ULONG_POP();
	CREATURE_DESIRES  desire = (CREATURE_DESIRES)g_scriptDLL->ULONG_POP();
	uint32_t          id = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* thing = GetScriptGameThing(id);
	SCRIPT_ASSERT(thing != NULL, "no creature");
	if (thing != NULL)
	{
		Creature* creature = dynamic_cast<Creature*>(thing);
		SCRIPT_ASSERT(creature != NULL, "not a creature");
		creature->mind->desires.SetActivated(desire, activated);
	}
}

void GScript::CreatureSetAllDesireActivated()
{
	bool32_t          activated = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("no creature");
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	SCRIPT_ASSERT(creature != NULL, "not a creature");
	for (uint32_t desire = 0; desire < NUM_CREATURE_DESIRES; desire++)
	{
		creature->mind->desires.SetActivated((CREATURE_DESIRES)desire, activated);
	}
}

void GScript::CreatureSetDesireMaximum()
{
	float             maximum = g_scriptDLL->FLOAT_POP();
	CREATURE_DESIRES  desire = (CREATURE_DESIRES)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("no creature");
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	SCRIPT_ASSERT(creature != NULL, "not a creature");
	creature->mind->desires.MaxLevels[desire] = maximum;
}

void GScript::CreatureSetPlayer()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
#ifdef VERSION_BW1WCI
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((uint32_t)g_scriptDLL->FLOAT_POP()));
#endif
	SCRIPT_ASSERT(thing != NULL, "no creature");
	if (thing != NULL)
	{
		Creature* creature = dynamic_cast<Creature*>(thing);
		SCRIPT_ASSERT(creature != NULL, "not a creature");
#ifndef VERSION_BW1WCI
		GPlayer* player = GGame::g_game->MyPlayer();
#endif
		player->creature = creature;
		creature->owner = player;
		Reaction* reaction = Reaction::GetReactionInitiatedByObject(creature);
		if (reaction != NULL)
		{
			reaction->SetPlayer(creature->GetPlayer());
		}
		if (player->GetLeaderInterfaceStatus() != NULL)
		{
			LHPlayer*      lhPlayer = player->GetLeaderInterfaceStatus()->GetInterface()->player;
			const wchar_t* name = (const wchar_t*)GGame::g_game->network.session->GetUserData(lhPlayer);
			if (name != NULL)
			{
				wcscpy(creature->name, name);
			}
		}
	}
}

void GScript::CreatureInitialiseNumTimesPerformedAction()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "no creature");
	if (thing != NULL)
	{
		Creature* creature = dynamic_cast<Creature*>(thing);
		SCRIPT_ASSERT(creature != NULL, "not a creature");
		creature->NumTimesPerformedAction[g_scriptDLL->ULONG_POP()] = 0.0f;
	}
	else
	{
		g_scriptDLL->ULONG_POP();
	}
}

void GScript::CreatureGetNumTimesPerformedAction()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "no creature");
	if (thing != NULL)
	{
		Creature* creature = dynamic_cast<Creature*>(thing);
		SCRIPT_ASSERT(creature != NULL, "not a creature");
		SCRIPT_PERFORMED_ACTION action = (SCRIPT_PERFORMED_ACTION)g_scriptDLL->ULONG_POP();
		g_scriptDLL->FLOAT_PUSH(creature->NumTimesPerformedAction[action]);
	}
	else
	{
		g_scriptDLL->ULONG_POP();
		g_scriptDLL->FLOAT_PUSH(0.0f);
	}
}

void GScript::SetCreatureHelp()
{
	GGame::g_game->help_system->CreatureHelp = g_scriptDLL->ULONG_POP();
}

void GScript::TogglePlayerLeash()
{
	float    scriptPlayer = g_scriptDLL->FLOAT_POP();
	uint32_t playerIndex = ConvertScriptPlayerToGamePlayer((uint32_t)scriptPlayer);
	GGame::g_game->GetPlayer(playerIndex)->GetLeaderInterfaceStatus()->GetInterface()->ToggleLeash();
}

void GScript::AttachObjectLeachToObject()
{
	GameThingWithPos* first = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* second = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(first != NULL && second != NULL, "Thing for leach not found!");
	if (first == NULL || second == NULL)
	{
		return;
	}
	SCRIPT_ASSERT(second->IsCreature() || first->IsCreature(), "Thing for leach not creature!");
	if (!second->IsCreature() && first->IsCreature())
	{
		GameThingWithPos* swap = second;
		second = first;
		first = swap;
	}
	if (second->IsCreature())
	{
		GPlayer* player = second->GetPlayer();
		if (player == NULL)
		{
			ScriptErrorMessage("No player for creature to leash to");
		}
		else
		{
			GLeashStatus* leash = player->GetLeaderInterfaceStatus()->LeashStatus;
			leash->SetOnObject((Creature*)second, first);
		}
	}
}

void GScript::AttachLeashToHand()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing for leach not found!");
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing for leach not creature!");
	if (thing->IsCreature())
	{
		GPlayer* player = thing->GetPlayer();
		if (player == NULL)
		{
			ScriptErrorMessage("Creature no player!");
		}
		else
		{
			GLeashStatus* leash = player->GetLeaderInterfaceStatus()->LeashStatus;
			leash->SetOnHand((Creature*)thing);
		}
	}
}

void GScript::DetachObjectLeash()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing for leach not found!");
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing for leash not creature!");
	if (thing->IsCreature())
	{
		SCRIPT_ASSERT(thing->GetPlayer() != NULL, "Creature no player!");
		if (thing->GetPlayer() != NULL)
		{
			GLeashStatus* leash = thing->GetPlayer()->GetLeaderInterfaceStatus()->LeashStatus;
			leash->SetOn((Creature*)thing, false);
		}
	}
}

void GScript::SetCreatureOnlyDesire()
{
	float             seconds = g_scriptDLL->FLOAT_POP();
	CREATURE_DESIRES  desire = (CREATURE_DESIRES)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(desire >= 0 && desire < NUM_CREATURE_DESIRES, "Invalid desire");
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature())
	{
		thing->CastCreature()->mind->SetCheatDominantDesire(desire, seconds, true);
	}
}

void GScript::SetCreatureOnlyDesireOff()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature())
	{
		Creature*        creature = (Creature*)thing;
		CREATURE_DESIRES desire = creature->mind->desires.CheatDominantDesire;
		creature->mind->ClearCheatDominantDesire();
		creature->mind->desires.CheatDominantDesire = INVALID_CREATURE_DESIRE;
		if (desire < NUM_CREATURE_DESIRES)
		{
			creature->mind->desires.SetLevel(desire, 0.0f);
		}
	}
}

void GScript::SetCreatureDevelopmentPhase()
{
	DEVELOPMENT_PHASE phase = (DEVELOPMENT_PHASE)g_scriptDLL->ULONG_POP();
	uint32_t          id = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* thing = GetScriptGameThing(id);
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature())
	{
#ifdef VERSION_BW1W100
		Creature* creature = (Creature*)thing;
		creature->DevelopmentPhase = phase;
		creature->mind->desires.UnsuppressAllDesires();
		uint32_t i;
		for (i = 0; i < NUM_DEVELOPMENT_PHASE_ACTIVATED_DESIRES; i++)
		{
			CREATURE_DESIRES desire = CreatureDevelopmentPhaseEntry::Infos[phase].ActivatedDesires[i];
			if (desire != NO_CREATURE_DESIRE)
			{
				creature->mind->desires.SetActivated(desire, true);
			}
		}
		for (i = 0; i < NUM_DEVELOPMENT_PHASE_DEACTIVATED_DESIRES; i++)
		{
			CREATURE_DESIRES desire = CreatureDevelopmentPhaseEntry::Infos[phase].DeactivatedDesires[i];
			if (desire != NO_CREATURE_DESIRE)
			{
				creature->mind->desires.SetActivated(desire, false);
			}
		}
#else
		((Creature*)thing)->MoveToDevelopmentPhase(phase, 0);
#endif
	}
}

void GScript::SwapCreature()
{
	GameThingWithPos* myCreature = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	uint32_t          newId = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* newCreature = GetScriptGameThing(newId);
	SCRIPT_ASSERT(myCreature != NULL && newCreature != NULL, "creature for swap not found!");
	if (myCreature != NULL && newCreature != NULL)
	{
		SCRIPT_ASSERT(newCreature->IsCreature(), "Thing not creature!");
		SCRIPT_ASSERT(myCreature->IsCreature(), "Thing not creature!");
		if (newCreature->IsCreature() && myCreature->IsCreature())
		{
			Creature* newCast = newCreature->CastCreature();
			Creature* myCast = myCreature->CastCreature();
			Creature::SwapMinds(newCast, myCast);
		}
	}
}

void GScript::IsLeashed()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature() && thing->GetPlayer() != NULL)
	{
		bool32_t leashed = ((Creature*)thing)->GetInterfaceStatusLeashOn() != NULL;
		g_scriptDLL->PUSH((void*)leashed, VMType_BOOLEAN);
	}
	else
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
	}
}

void GScript::SetCreatureHome()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature())
	{
		((Creature*)thing)->HomePos.SetX(pos.x);
		((Creature*)thing)->HomePos.SetZ(pos.z);
		((Creature*)thing)->HomePos.SetAltitude(0.0f);
	}
}

void GScript::GetArena()
{
	GameThingWithPos* first = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* second = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	float             radius = g_scriptDLL->FLOAT_POP();
	bool32_t          created = false;
	LHPoint           pos;
	g_scriptDLL->POINT_POP(pos);
	SCRIPT_ASSERT(first != NULL && second != NULL, "creature for arena not found!");
	if (first != NULL && second != NULL)
	{
		SCRIPT_ASSERT(second->IsCreature(), "Thing not creature!");
		SCRIPT_ASSERT(first->IsCreature(), "Thing not creature!");
		Creature* secondCreature = second->CastCreature();
		Creature* firstCreature = first->CastCreature();
		GArena*   arena = GArena::FindNearestArena(MapCoords(pos), radius);
		if (arena == NULL)
		{
			arena = GArena::FindNearestArenaOrCreateNew(MapCoords(pos), secondCreature, firstCreature, radius);
			created = true;
		}
		if (arena != NULL)
		{
			uint32_t id = AddScriptGameThing(arena, created);
			g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
			return;
		}
	}
	ScriptErrorMessage("Arena not found or created!");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::SetCreatureCanAttackOwnTown()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          canAttack = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature())
	{
		((Creature*)thing)->mind->AvoidOwnPlayersThingsWhenAngry = canAttack == false;
	}
}

void GScript::IsFighting()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature())
	{
		bool32_t fighting = ((Creature*)thing)->IsFighting();
		g_scriptDLL->PUSH((void*)fighting, VMType_BOOLEAN);
	}
	else
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
	}
}

void GScript::SetCreatureSpellReversion()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          reversion = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature())
	{
		((Creature*)thing)->SpellReversion = reversion;
	}
}

void GScript::SetLeashWorks()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          works = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature() && thing->GetPlayer() != NULL)
	{
		thing->GetPlayer()->GetLeaderInterfaceStatus()->LeashStatus->LeashWorks = works;
	}
}

void GScript::CreatureLearnAllExcluding()
{
	GameThingWithPos*             thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CREATURE_ACTION_LEARNING_TYPE excluding = (CREATURE_ACTION_LEARNING_TYPE)g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature())
	{
		if (excluding != CREATURE_ACTION_LEARNING_TYPE_NORMAL)
		{
			for (uint32_t action = 0; action < CREATURE_ACTION_KNOWN_ABOUT_LAST; action++)
			{
				((Creature*)thing)
					->mind->ActionsKnownAbout.AddActionLearnt((Creature*)thing, CREATURE_ACTION_LEARNING_TYPE_NORMAL,
				                                              action, false);
			}
		}
		if (excluding != CREATURE_ACTION_LEARNING_TYPE_MAGIC)
		{
			for (uint32_t action = 0; action < MAGIC_TYPE_LAST; action++)
			{
				((Creature*)thing)
					->mind->ActionsKnownAbout.AddActionLearnt((Creature*)thing, CREATURE_ACTION_LEARNING_TYPE_MAGIC,
				                                              action, false);
			}
		}
	}
}

void GScript::ObjectLeashedToObject()
{
	GameThingWithPos* first = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* second = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(second != NULL && first != NULL, "Thing not found!");
	if (second == NULL || first == NULL)
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
		return;
	}
	SCRIPT_ASSERT(second->IsCreature() || first->IsCreature(), "Thing not creature!");
	if (!second->IsCreature() && first->IsCreature())
	{
		GameThingWithPos* swap = second;
		second = first;
		first = swap;
	}
	if (!second->IsCreature() || second == NULL)
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
		return;
	}
	GPlayer* player = second->GetPlayer();
	if (player == NULL)
	{
		ScriptErrorMessage("No player for leash");
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
		return;
	}
	bool32_t leashed = player->GetLeaderInterfaceStatus()->LeashStatus->GetObjectAttachedTo() == first;
	g_scriptDLL->PUSH((void*)leashed, VMType_BOOLEAN);
}

void GScript::InteractionMagnitude()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing not found!");
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
		if (thing->IsCreature())
		{
			g_scriptDLL->FLOAT_PUSH(((Creature*)thing)->mind->AttitudeToPlayer.GetMostRecentPlayerFeedbackValue());
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::CreatureAvailable()
{
	bool32_t available;
	switch (g_scriptDLL->ULONG_POP())
	{
	case CREATURE_TYPE_LEOPARD:
		available = GGame::g_game->IsCreaturePresent(CREATURE_BITS_LEOPARD);
		break;
	case CREATURE_TYPE_HORSE:
		available = GGame::g_game->IsCreaturePresent(CREATURE_BITS_HORSE);
		break;
	case CREATURE_TYPE_MANDRILL:
		available = GGame::g_game->IsCreaturePresent(CREATURE_BITS_MANDRILL);
		break;
	case CREATURE_TYPE_GORILLA:
		available = GGame::g_game->IsCreaturePresent(CREATURE_BITS_GORILLA);
		break;
	case CREATURE_TYPE_RHINO:
		available = GGame::g_game->IsCreaturePresent(CREATURE_BITS_RHINO);
		break;
	default:
		g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH((void*)available, VMType_BOOLEAN);
}

void GScript::GetObjectDropped()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Richard: no creature");
	if (thing != NULL)
	{
		Creature* creature = dynamic_cast<Creature*>(thing);
		if (creature != NULL)
		{
			Object* dropped = creature->LastDroppedObject;
			if (dropped != NULL)
			{
				uint32_t id = AddScriptGameThing(dropped, false);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				return;
			}
		}
		else
		{
			ScriptErrorMessage("Only coded for creatures");
		}
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::ClearDroppedByObject()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "no creature");
	if (thing != NULL)
	{
		Creature* creature = dynamic_cast<Creature*>(thing);
		SCRIPT_ASSERT(creature != NULL, "Not creature");
		if (creature != NULL)
		{
			creature->LastDroppedObject = NULL;
		}
		else
		{
			ScriptErrorMessage("Only for creatures");
		}
	}
}

void GScript::GetObjectHeldByObject()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature == NULL)
	{
		ScriptErrorMessage("Not creature");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
		return;
	}
	GameThingWithPos* held = creature->physical->ObjectCarried;
	if (held != NULL)
	{
		uint32_t id = AddScriptGameThing(held, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
	}
	else
	{
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

void GScript::GetActionCount()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CREATURE_ACTION   action = (CREATURE_ACTION)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(thing != NULL, "No creature");
	if (thing != NULL)
	{
		Creature* creature = dynamic_cast<Creature*>(thing);
		SCRIPT_ASSERT(creature != NULL, "Not creature");
		if (creature != NULL)
		{
			g_scriptDLL->FLOAT_PUSH((float)creature->mind->learning.NumTimesActionPerformed[action]);
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::GetObjectLeashType()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature");
		g_scriptDLL->PUSH(NULL, VMType_INT);
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature == NULL)
	{
		ScriptErrorMessage("Not creature");
		g_scriptDLL->PUSH(NULL, VMType_INT);
		return;
	}
	GPlayer* player = creature->GetPlayer();
	if (player == NULL || player->citadel.Get() == NULL || player->citadel.Get()->heart.Get() == NULL)
	{
		g_scriptDLL->PUSH(NULL, VMType_INT);
		return;
	}
	LEASH_TYPE type = player->citadel.Get()->heart.Get()->GetLeashToCreate();
	g_scriptDLL->PUSH((void*)type, VMType_INT);
}

void GScript::CreatureForceFinish()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	Creature*         creature = dynamic_cast<Creature*>(thing);
	if (creature != NULL)
	{
		creature->physical->Creature3d->EndAnyAnimsRapidly();
		creature->FinishActionUnsuccessfully("script made me finish man", true, true);
	}
	else
	{
		ScriptErrorMessage("Force finish not implemented on non-creatures as yet");
	}
}

void GScript::SetAnimationModify()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          modify = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature())
	{
		((Creature*)thing)->SetAnimationTimeModify(modify == true);
	}
}

void GScript::SetCreatureReaction()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          enabled = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature())
	{
		((Creature*)thing)->ReactionsEnabled = enabled;
	}
}

void GScript::SetCreatureInDevScript()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          showing = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature())
	{
		((Creature*)thing)->IsShowingDevelopmentHelpScript = showing;
	}
}

void GScript::ReleaseObjectFocus()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature())
	{
		((Creature*)thing)->mind->LookState.ScriptFocus = false;
	}
}

void GScript::SetCreatureFriends()
{
	GameThingWithPos* first = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* second = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          friends = g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(first != NULL && second != NULL, "Thing not found!");
	if (first != NULL && second != NULL)
	{
		SCRIPT_ASSERT(first->IsCreature(), "Thing not creature!");
		SCRIPT_ASSERT(second->IsCreature(), "Thing not creature!");
		if (first->IsCreature() && second->IsCreature() && friends)
		{
			if (!((Creature*)first)->Friends.IsThisInList((Creature*)second))
			{
				((Creature*)first)->Friends.Add((Creature*)second);
			}
			if (!((Creature*)second)->Friends.IsThisInList((Creature*)first))
			{
				((Creature*)second)->Friends.Add((Creature*)first);
			}
		}
	}
}

void GScript::ObjectInteractingWithObject()
{
	GameThingWithPos* first = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* second = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(first != NULL && second != NULL, "Thing not found!");
	if (first != NULL && second != NULL)
	{
		SCRIPT_ASSERT(first->IsCreature(), "Thing not creature!");
		if (first->IsCreature())
		{
			bool32_t interacting = second == ((Creature*)first)->InteractingObject;
			g_scriptDLL->PUSH((void*)interacting, VMType_BOOLEAN);
			return;
		}
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

void GScript::ConfineObject()
{
	float   radius = g_scriptDLL->FLOAT_POP();
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
		if (thing->IsCreature())
		{
			((Creature*)thing)->ConfinementRadius = radius;
			((Creature*)thing)->ConfinementCentre.SetX(pos.x);
			((Creature*)thing)->ConfinementCentre.SetZ(pos.z);
			((Creature*)thing)->ConfinementCentre.SetAltitude(0.0f);
		}
	}
}

void GScript::ClearConfineOnObject()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
		if (thing->IsCreature())
		{
			((Creature*)thing)->ConfinementRadius = 0.0f;
		}
	}
}

void GScript::GetOpposingCreatureType()
{
	Creature* creature = GGame::g_game->MyPlayer()->GetCreature();
	uint32_t  slot = g_scriptDLL->ULONG_POP();
	g_scriptDLL->PUSH((void*)GInfoArrays::ScriptOpposingCreatures[creature->info->type].OpposingTypes[slot],
	                  VMType_INT);
}

void GScript::SetCreedProperties()
{
	float             time = g_scriptDLL->FLOAT_POP();
	float             power = g_scriptDLL->FLOAT_POP();
	float             scale = g_scriptDLL->FLOAT_POP();
	HAND_GLOW_TYPE    type = (HAND_GLOW_TYPE)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
		if (thing->IsCreature())
		{
			((Creature*)thing)->SetCreedPower(type, scale, power, time);
		}
	}
}

void GScript::SetCreatureName()
{
	uint32_t          text = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
		if (thing->IsCreature())
		{
			wcscpy(((Creature*)thing)->name, HelpTextDataBase::HelpTextDatabase.GetHelpText(text));
		}
	}
}

void GScript::PositionValidForCreature()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	bool32_t valid = LH3DCreature::IsDestinationValid(&pos);
	g_scriptDLL->PUSH((void*)valid, VMType_BOOLEAN);
}

void GScript::SetCreatureAutoFighting()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          autoFighting = g_scriptDLL->ULONG_POP();
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
		if (thing->IsCreature())
		{
			((Creature*)thing)->SetAutoFightStatus(autoFighting ? FIGHT_CONTROL_AI_FULL_ON : FIGHT_CONTROL_AI_NEVER);
		}
	}
}

void GScript::IsCreatureAutoFighting()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature())
	{
		bool32_t autoFighting = ((Creature*)thing)->GetAutoFightStatus() != FIGHT_CONTROL_AI_NEVER;
		g_scriptDLL->PUSH((void*)autoFighting, VMType_BOOLEAN);
	}
	else
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
	}
}

void GScript::QueueCreatureFightMove()
{
#ifdef VERSION_BW1WCI
	float time = g_scriptDLL->FLOAT_POP();
#endif
	FIGHT_MOVE        move = (FIGHT_MOVE)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
		if (thing->IsCreature())
		{
#ifdef VERSION_BW1WCI
			LH3DCreature* creature3d = ((Creature*)thing)->physical->Creature3d;
			((Creature*)thing)->ClearFightQueue();
			((Creature*)thing)->QueueAttackOrBlock(move);
			creature3d->ValidateFightEvent((uint32_t)(FightEventTicksPerSecond * time));
#else
			((Creature*)thing)->QueueAttackOrBlock(move);
#endif
		}
	}
}

void GScript::QueueCreatureFightSpell()
{
	uint32_t          spell = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
		if (thing->IsCreature())
		{
#ifdef VERSION_BW1WCI
			((Creature*)thing)->ClearFightQueue();
#endif
			((Creature*)thing)->QueueSpell(spell);
		}
	}
}

void GScript::QueueCreatureFightStep()
{
	uint32_t          step = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
		if (thing->IsCreature())
		{
#ifdef VERSION_BW1WCI
			((Creature*)thing)->ClearFightQueue();
#endif
			((Creature*)thing)->QueueSideStep(step);
		}
	}
}

void GScript::GetCreatureFightAction()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		g_scriptDLL->PUSH(NULL, VMType_INT);
		return;
	}
	SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
	if (thing->IsCreature())
	{
		FIGHT_ACTION action = (FIGHT_ACTION)((Creature*)thing)->GetCurrentFightAction();
		g_scriptDLL->PUSH((void*)action, VMType_INT);
	}
	else
	{
		g_scriptDLL->PUSH(NULL, VMType_INT);
	}
}

void GScript::GetCreatureFightQueuedHits()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsCreature(), "Thing not creature!");
		if (thing->IsCreature())
		{
			g_scriptDLL->FLOAT_PUSH((float)((Creature*)thing)->CountNumberOfHitsInQueue());
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

#ifdef VERSION_BW1WCI
void GScript::SetFightCameraExit()
{
	bool32_t exitCamera = g_scriptDLL->ULONG_POP();
	GGame::g_game->script->StayInFightCamera = exitCamera == false;
}
#else
void GScript::SetFightExit()
{
	CameraModeNew3::AutoEndFight = g_scriptDLL->ULONG_POP();
}
#endif

void GScript::SetCreatureAutoScale()
{
	float             scale = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          autoScale = g_scriptDLL->ULONG_POP();
#ifdef VERSION_BW1WCI
	if (thing == NULL || !thing->IsCreature())
	{
		ScriptErrorMessage("Thing should be valid!");
	}
	if (thing != NULL && thing->IsCreature())
#else
	SCRIPT_ASSERT(thing != NULL && thing->IsCreature(), "Thing should be valid!");
	if (thing != NULL)
#endif
	{
		((Creature*)thing)->AutoScaleEnabled = autoScale;
		((Creature*)thing)->AutoScaleValue = scale;
	}
}

#ifdef VERSION_BW1WCI
void GScript::SetObjectFollowMaster()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          follow = g_scriptDLL->ULONG_POP();
	if (thing == NULL || !thing->IsCreature())
	{
		ScriptErrorMessage("Thing should be valid!");
	}
	if (thing != NULL && thing->IsCreature())
	{
		Creature* creature = (Creature*)thing;
		creature->FollowMaster = follow;
		if (!follow && creature->ConfinedToObject)
		{
			Creature* master = (Creature*)creature->ConfinementObject;
			if (master != NULL)
			{
				master->ConfinedCreatures.Remove(creature);
				creature->Friends.Remove((Creature*)creature->ConfinementObject);
				((Creature*)creature->ConfinementObject)->Friends.Remove(creature);
				((Creature*)creature->ConfinementObject)
					->mind->desires.SuppressDesire(CREATURE_DESIRE_TO_BE_FRIENDS,
				                                   CREATURE_DESIRE_SCRIPT_SUPPRESS_SECONDS);
			}
			creature->ConfinedToObject = false;
			creature->ConfinementObject = NULL;
			creature->ConfinementPlayerNumber = -1;
			creature->mind->desires.SuppressDesire(CREATURE_DESIRE_TO_BE_FRIENDS,
			                                       CREATURE_DESIRE_SCRIPT_SUPPRESS_SECONDS);
			creature->mind->desires.SetActivated(CREATURE_DESIRE_TO_BE_FRIENDS, false);
			creature->ConfinementRadius = 0.0f;
		}
	}
}

void GScript::SetObjectDistanceFromHome()
{
	int               distance = (int)g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL || !thing->IsCreature())
	{
		ScriptErrorMessage("Thing should be valid!");
	}
	if (thing != NULL && thing->IsCreature())
	{
		((Creature*)thing)->DistanceFromHome = (float)distance;
	}
}

void GScript::SetCreatureMaster()
{
	GameThingWithPos* master = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL || !thing->IsCreature())
	{
		ScriptErrorMessage("Creature Thing should be valid!");
	}
	if (thing != NULL && thing->IsCreature())
	{
		if (master == NULL || !master->IsCreature())
		{
			ScriptErrorMessage("Master Thing should be valid!");
		}
		if (master != NULL && master->IsCreature())
		{
			((Creature*)thing)->SetTyke((Creature*)master);
		}
	}
}

void GScript::SetObjectNavigation()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          navigation = g_scriptDLL->ULONG_POP();
	if (thing == NULL || !thing->IsCreature())
	{
		ScriptErrorMessage("Creature Thing should be valid!");
	}
	if (thing != NULL && thing->IsCreature())
	{
		if (thing->IsCreature())
		{
			((Creature*)thing)->Navigation = navigation;
		}
	}
}

void GScript::GetCreatureDesire()
{
	GameThingWithPos* object = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	uint32_t          desire = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	float             usefulness = 0.0f;
	if (object != NULL && thing != NULL && thing->IsCreature() && desire < NUM_CREATURE_DESIRES)
	{
		Creature*       creature = (Creature*)thing;
		CreatureBelief* belief = creature->mind->AddBeliefAboutObject(creature, object);
		if (belief != NULL)
		{
			if (CreatureInitialDesireInfo::GetInfo()[desire].Social)
			{
				CreatureBelief* associated = creature->AddBeliefAboutAssociatedObject(belief);
				usefulness = creature->mind->GetActivityObjectUsefulness(associated, (CREATURE_DESIRES)desire);
			}
			else
			{
				usefulness = creature->mind->GetObjectToActOnUsefulness(belief, (CREATURE_DESIRES)desire);
			}
		}
	}
	g_scriptDLL->FLOAT_PUSH(usefulness);
}

void GScript::GetCreatureCurrentAction()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL && thing->IsCreature())
	{
		g_scriptDLL->PUSH((void*)((Creature*)thing)->mind->agenda.CurrentPlan.creature_action, VMType_INT);
		return;
	}
	g_scriptDLL->PUSH(NULL, VMType_INT);
}

void GScript::GetCreatureSpellSkill()
{
	float             skill;
	MAGIC_TYPE        spell = (MAGIC_TYPE)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL && thing->IsCreature())
	{
		Creature* creature = (Creature*)thing;
		float     seen = (float)creature->mind->learning.NumTimesMagicActionSeen[spell];
		skill = seen / creature->NumTimesMagicActionMustBeSeenBeforeItIsLearnt(spell);
		if (skill > 1.0f)
		{
			skill = 1.0f;
		}
	}
	g_scriptDLL->FLOAT_PUSH(skill);
}

void GScript::CreatureKnowsAction()
{
	CREATURE_ACTION_KNOWN_ABOUT action = (CREATURE_ACTION_KNOWN_ABOUT)g_scriptDLL->ULONG_POP();
	GameThingWithPos*           thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL && thing->IsCreature())
	{
		bool32_t knows =
			((Creature*)thing)->mind->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_NORMAL, action);
		g_scriptDLL->PUSH((void*)knows, VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

void GScript::SetObjectTattoo()
{
	CREATURE_TATTOO_TYPE tattoo = (CREATURE_TATTOO_TYPE)g_scriptDLL->ULONG_POP();
	GameThingWithPos*    thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t             enabled = g_scriptDLL->ULONG_POP();
	if (thing != NULL && thing->IsCreature())
	{
		Creature* creature = (Creature*)thing;
		switch (tattoo)
		{
		case CREATURE_TATTOO_TYPE_THE_BROTHERHOOD:
		case CREATURE_TATTOO_TYPE_SUPER_GODS:
			if (enabled)
			{
				creature->BodyFlags |= CREATURE_TATTOO_FLAG_GODS;
			}
			else
			{
				creature->BodyFlags &= ~CREATURE_TATTOO_FLAG_GODS;
			}
			break;
		case CREATURE_TATTOO_TYPE_FIGHTER:
			if (enabled)
			{
				creature->BodyFlags |= CREATURE_TATTOO_FLAG_FIGHTER;
			}
			else
			{
				creature->BodyFlags &= ~CREATURE_TATTOO_FLAG_FIGHTER;
			}
			break;
		case CREATURE_TATTOO_TYPE_FIGHTER_ALWAYS:
			if (enabled)
			{
				creature->BodyFlags |= CREATURE_TATTOO_FLAG_FIGHTER_ALWAYS;
			}
			else
			{
				creature->BodyFlags &= ~CREATURE_TATTOO_FLAG_FIGHTER_ALWAYS;
			}
			break;
		}
	}
}

void GScript::ClearFightQueue()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL && thing->IsCreature())
	{
		((Creature*)thing)->ClearFightQueue();
	}
}

void GScript::SetCreatureLightbulb()
{
	float             progress = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL && thing->IsCreature())
	{
		((Creature*)thing)->CreateLightbulb(progress);
	}
}

void GScript::SetCreatureCanDrop()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          canDrop = g_scriptDLL->ULONG_POP();
	if (thing != NULL && thing->IsCreature())
	{
		((Creature*)thing)->CanDrop = canDrop;
	}
}

void GScript::IsCreatureHelpOn()
{
	g_scriptDLL->PUSH((void*)GGame::g_game->help_system->CreatureHelp, VMType_BOOLEAN);
}

void GScript::SetCreatureCanLearn()
{
	CREATURE_ACTION_KNOWN_ABOUT lesson = (CREATURE_ACTION_KNOWN_ABOUT)g_scriptDLL->ULONG_POP();
	GameThingWithPos*           thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t                    canLearn = g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(lesson < CREATURE_ACTION_KNOWN_ABOUT_LAST, "Invalid lesson");
	if (thing != NULL && thing->IsCreature())
	{
		((Creature*)thing)->mind->learning.CanLearn[lesson] = canLearn;
	}
}

void GScript::ObjectHandPosition()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          leftHand = g_scriptDLL->ULONG_POP();
	LHPoint           pos(0.0f, 0.0f, 0.0f);
	if (thing != NULL)
	{
		LH3DCreature* creature3d;
		if (thing->IsCreature() && (creature3d = ((Creature*)thing)->GetCreature3D()) != NULL)
		{
			if (leftHand)
			{
				long bone = creature3d->GetMirrorBone(creature3d->RightHand);
				pos = LHPoint(*creature3d->GetBonePos(bone));
			}
			else
			{
				pos = LHPoint(*creature3d->GetBonePos(creature3d->RightHand));
			}
			g_scriptDLL->POINT_PUSH(pos);
			return;
		}
		pos = thing->Pos.Get3DPoint();
	}
	g_scriptDLL->POINT_PUSH(pos);
}

void GScript::SetCreatureRightHandOnly()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          rightHandOnly = g_scriptDLL->ULONG_POP();
	if (thing != NULL && thing->IsCreature())
	{
		((Creature*)thing)->RightHandOnly = rightHandOnly;
	}
}

void GScript::GetBraceletPos()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	LHPoint           pos(0.0f, 0.0f, 0.0f);
	if (thing != NULL && thing->IsCreature())
	{
		pos = ((Creature*)thing)->GetCreature3D()->BraceletPos;
	}
	g_scriptDLL->POINT_PUSH(pos);
}

void GScript::GetObjectObjectLeashedTo()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing->IsCreature() && thing != NULL)
	{
		GPlayer* player = thing->GetPlayer();
		if (player == NULL)
		{
			ScriptErrorMessage("No player for leash");
		}
		else
		{
			GInterfaceStatus* status = player->GetLeaderInterfaceStatus();
			if (status->LeashStatus != NULL && status->LeashStatus->GetObjectAttachedTo() != NULL)
			{
				uint32_t id = AddScriptGameThing(status->LeashStatus->GetObjectAttachedTo(), false);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				return;
			}
		}
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}
#endif
