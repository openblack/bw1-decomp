#include "WhiteColour.h"
#include "CreatureAttitudeConstants.h"
#include "InfoArrays.h"
#include "GameTimeConstants.h"
#include "Script.h"

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

#define SCRIPT_CREATURE_AUTO_FIGHT_OFF 0
#define SCRIPT_CREATURE_AUTO_FIGHT_ON  2

static uint32_t UnusedStatic = 0;

GScriptOpposingCreature GInfoArrays::ScriptOpposingCreatures[CREATURE_TYPE_LAST];

GBaseInfo* GScriptOpposingCreature::GetBaseInfo(uint32_t& info_count)
{
	info_count = CREATURE_TYPE_LAST;
	return GInfoArrays::ScriptOpposingCreatures;
}

void GScript::CreateCreatureFromCreature()
{
	MapCoords     coords;
	CREATURE_TYPE type = (CREATURE_TYPE)g_scriptDLL->ULONG_POP();
	if (type >= CREATURE_TYPE_LAST)
	{
		ScriptErrorMessage("Invalid creature type");
	}
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GLandscape::ConvertLandscapePointToMapCoord(pos, coords);
	float             scale = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature for script");
	}
	else
	{
		Creature* creature = dynamic_cast<Creature*>(thing);
		if (creature == NULL)
		{
			ScriptErrorMessage("No creature for script");
		}
		Creature* newCreature = Creature::ScriptCreateCreatureRelativeToCreature(creature, scale, coords, type);
		if (newCreature != NULL)
		{
			uint32_t id = AddScriptGameThing(newCreature, true);
			g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
			return;
		}
		ScriptErrorMessage("Creature not created!");
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CreatureLearnEverything()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature for script");
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature == NULL)
	{
		ScriptErrorMessage("No script for creature");
	}
	creature->ScriptLearnEverything();
}

void GScript::CreatureSetKnowsAction()
{
	int                           knows = g_scriptDLL->ULONG_POP();
	uint32_t                      action = g_scriptDLL->ULONG_POP();
	CREATURE_ACTION_LEARNING_TYPE type = (CREATURE_ACTION_LEARNING_TYPE)g_scriptDLL->ULONG_POP();
	GameThingWithPos*             thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature for script");
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature == NULL)
	{
		ScriptErrorMessage("No script for creature");
	}
	creature->ScriptSetKnowsAction(type, action, knows);
}

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
	if (creature == NULL)
	{
		ScriptErrorMessage("No script for creature");
	}
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
	if (creature == NULL)
	{
		ScriptErrorMessage("No script for creature");
	}
	creature->ScriptTurnOffAllDesires();
}

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
	if (creature == NULL)
	{
		ScriptErrorMessage("No script for creature");
	}
	creature->ScriptTurnOnDesireAndMakeItMaximum(desire);
}

void GScript::CreatureLearnDistinction()
{
	unsigned long  amount = g_scriptDLL->ULONG_POP();
	ATTRIBUTE_TYPE attribute = (ATTRIBUTE_TYPE)g_scriptDLL->ULONG_POP();
	if (attribute >= ATTRIBUTE_TYPE_LAST)
	{
		ScriptErrorMessage("Invalid type");
	}
	CREATURE_DESIRES desire = (CREATURE_DESIRES)g_scriptDLL->ULONG_POP();
	if (desire >= NUM_CREATURE_DESIRES)
	{
		ScriptErrorMessage("Invalid creature desire");
	}
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature for script");
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature == NULL)
	{
		ScriptErrorMessage("No script for creature");
	}
	creature->ScriptLearnDistinctionAboutActivityObject(desire, attribute, amount);
}

void GScript::CreatureDoAction()
{
	uint32_t          secondId = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* secondObject = secondId == 0 ? NULL : GetScriptGameThing(secondId);
	GameThingWithPos* object = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	CREATURE_ACTION   action = (CREATURE_ACTION)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature for script");
	}
	if (object == NULL)
	{
		ScriptErrorMessage("No object-to-act-on for script");
	}
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

void GScript::CallPlayerCreature()
{
	uint32_t playerIndex = ConvertScriptPlayerToGamePlayer((unsigned long)g_scriptDLL->FLOAT_POP());
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
		if (creature == NULL)
		{
			ScriptErrorMessage("Not a creature");
			g_scriptDLL->PUSH(creature, VMType_BOOLEAN);
		}
		if (creature->physical->ObjectCarried == object)
		{
			g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
			return;
		}
		CreatureMental* mind = creature->mind;
		CreatureBelief* belief =
			mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction].Belief;
		if (mind->agenda.SubActionAgenda.SubActions[mind->agenda.SubActionAgenda.CurrentSubAction].Action ==
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
	if (creature == NULL)
	{
		ScriptErrorMessage("not a creature");
	}
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
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("no creature");
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature == NULL)
	{
		ScriptErrorMessage("not a creature");
	}
	creature->mind->desires.SetActivated(desire, activated);
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
	if (creature == NULL)
	{
		ScriptErrorMessage("not a creature");
	}
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
	if (creature == NULL)
	{
		ScriptErrorMessage("not a creature");
	}
	creature->mind->desires.MaxLevels[desire] = maximum;
}

void GScript::CreatureSetPlayer()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("no creature");
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature == NULL)
	{
		ScriptErrorMessage("not a creature");
	}
	GPlayer* player = GGame::g_game->MyPlayer();
	player->creature = creature;
	creature->owner = player;
	Reaction* reaction = Reaction::GetReactionInitiatedByObject(creature);
	if (reaction != NULL)
	{
		reaction->SetPlayer(creature->GetPlayer());
	}
	if (player->GetLeaderInterfaceStatus() != NULL)
	{
		const wchar_t* name = (const wchar_t*)GGame::g_game->network.session->GetUserData(
			player->GetLeaderInterfaceStatus()->GetInterface()->player);
		if (name != NULL)
		{
			wcscpy(creature->name, name);
		}
	}
}

void GScript::CreatureInitialiseNumTimesPerformedAction()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("no creature");
		g_scriptDLL->ULONG_POP();
	}
	else
	{
		Creature* creature = dynamic_cast<Creature*>(thing);
		if (creature == NULL)
		{
			ScriptErrorMessage("not a creature");
		}
		creature->NumTimesPerformedAction[g_scriptDLL->ULONG_POP()] = 0.0f;
	}
}

void GScript::CreatureGetNumTimesPerformedAction()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("no creature");
		g_scriptDLL->ULONG_POP();
		g_scriptDLL->FLOAT_PUSH(0.0f);
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature == NULL)
	{
		ScriptErrorMessage("not a creature");
	}
	uint32_t action = g_scriptDLL->ULONG_POP();
	g_scriptDLL->FLOAT_PUSH(creature->NumTimesPerformedAction[action]);
}

void GScript::SetCreatureHelp()
{
	GGame::g_game->help_system->CreatureHelp = g_scriptDLL->ULONG_POP();
}

void GScript::TogglePlayerLeash()
{
	float    scriptPlayer = g_scriptDLL->FLOAT_POP();
	uint32_t playerIndex = ConvertScriptPlayerToGamePlayer((unsigned long)scriptPlayer);
	GGame::g_game->GetPlayer(playerIndex)->GetLeaderInterfaceStatus()->GetInterface()->ToggleLeash();
}

void GScript::AttachObjectLeachToObject()
{
	GameThingWithPos* first = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* second = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (first == NULL || second == NULL)
	{
		ScriptErrorMessage("Thing for leach not found!");
	}
	if (first == NULL || second == NULL)
	{
		return;
	}
	if (!second->IsCreature() && !first->IsCreature())
	{
		ScriptErrorMessage("Thing for leach not creature!");
	}
	if (!second->IsCreature())
	{
		first->IsCreature();
	}
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
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing for leach not creature!");
	}
	thing->IsCreature();
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
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing for leash not creature!");
	}
	thing->IsCreature();
	if (thing->IsCreature())
	{
		if (thing->GetPlayer() == NULL)
		{
			ScriptErrorMessage("Creature no player!");
		}
		thing->GetPlayer();
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
	if (desire < 0 || desire >= NUM_CREATURE_DESIRES)
	{
		ScriptErrorMessage("Invalid desire");
	}
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
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
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
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
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
	if (thing->IsCreature())
	{
		((Creature*)thing)->MoveToDevelopmentPhase(phase, 0);
	}
}

void GScript::SwapCreature()
{
	GameThingWithPos* myCreature = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* newCreature = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (myCreature == NULL || newCreature == NULL)
	{
		ScriptErrorMessage("creature for swap not found!");
	}
	if (myCreature != NULL && newCreature != NULL)
	{
		if (!newCreature->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		newCreature->IsCreature();
		if (!myCreature->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		myCreature->IsCreature();
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
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
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
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
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
	if (first == NULL || second == NULL)
	{
		ScriptErrorMessage("creature for arena not found!");
	}
	if (first != NULL && second != NULL)
	{
		if (!second->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		second->IsCreature();
		if (!first->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		first->IsCreature();
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
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
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
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
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
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
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
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
	if (thing->IsCreature() && thing->GetPlayer() != NULL)
	{
		thing->GetPlayer()->GetLeaderInterfaceStatus()->LeashStatus->LeashWorks = works;
	}
}

void GScript::CreatureLearnAllExcluding()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          excluding = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
		return;
	}
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
	if (thing->IsCreature())
	{
		if (excluding != false)
		{
			for (uint32_t role = 0; role < CREATURE_ACTION_KNOWN_ABOUT_LAST; role++)
			{
				((Creature*)thing)
					->mind->ActionsKnownAbout.AddActionLearnt((Creature*)thing, CREATURE_ACTION_LEARNING_TYPE_NORMAL,
				                                              role, false);
			}
		}
		if (excluding != true)
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
	if (second == NULL || first == NULL)
	{
		ScriptErrorMessage("Thing not found!");
	}
	if (second == NULL || first == NULL)
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
		return;
	}
	if (!second->IsCreature() && !first->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	if (!second->IsCreature())
	{
		first->IsCreature();
	}
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
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
	}
	if (thing != NULL)
	{
		if (!thing->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		thing->IsCreature();
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
	if (thing == NULL)
	{
		ScriptErrorMessage("Richard: no creature");
	}
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
	if (thing == NULL)
	{
		ScriptErrorMessage("no creature");
	}
	if (thing != NULL)
	{
		Creature* creature = dynamic_cast<Creature*>(thing);
		if (creature == NULL)
		{
			ScriptErrorMessage("Not creature");
		}
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
	if (thing == NULL)
	{
		ScriptErrorMessage("No creature");
	}
	if (thing != NULL)
	{
		Creature* creature = dynamic_cast<Creature*>(thing);
		if (creature == NULL)
		{
			ScriptErrorMessage("Not creature");
		}
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
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
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
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
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
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
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
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
	if (thing->IsCreature())
	{
		((Creature*)thing)->mind->LookState.ScriptFocus = false;
	}
}

static inline void AddFriendIfNotInList(LHLinkedList<Creature*>& friends, Creature* creature)
{
	if (!friends.IsThisInList(creature))
	{
		LHLinkedNode<Creature*>* node = new LHLinkedNode<Creature*>(creature, friends.head.Get());
		if (node)
		{
			friends.head.Set(node);
			++friends.count;
		}
	}
}

void GScript::SetCreatureFriends()
{
	GameThingWithPos* first = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* second = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          friends = g_scriptDLL->ULONG_POP();
	if (first == NULL || second == NULL)
	{
		ScriptErrorMessage("Thing not found!");
	}
	if (first != NULL && second != NULL)
	{
		if (!first->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		first->IsCreature();
		if (!second->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		second->IsCreature();
		if (first->IsCreature() && second->IsCreature() && friends)
		{
			AddFriendIfNotInList(((Creature*)first)->Friends, (Creature*)second);
			AddFriendIfNotInList(((Creature*)second)->Friends, (Creature*)first);
		}
	}
}

void GScript::ObjectInteractingWithObject()
{
	GameThingWithPos* first = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* second = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (first == NULL || second == NULL)
	{
		ScriptErrorMessage("Thing not found!");
	}
	if (first == NULL || second == NULL)
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
		return;
	}
	if (!first->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	first->IsCreature();
	if (first->IsCreature())
	{
		g_scriptDLL->PUSH((void*)(second == ((Creature*)first)->InteractingObject), VMType_BOOLEAN);
	}
	else
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
	}
}

void GScript::ConfineObject()
{
	float   radius = g_scriptDLL->FLOAT_POP();
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		if (!thing->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		thing->IsCreature();
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
		if (!thing->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		thing->IsCreature();
		if (thing->IsCreature())
		{
			((Creature*)thing)->ConfinementRadius = 0.0f;
		}
	}
}

void GScript::GetOpposingCreatureType()
{
	Creature* creature = GGame::g_game->MyPlayer()->GetCreature();
	uint32_t  type = g_scriptDLL->ULONG_POP();
	g_scriptDLL->PUSH((void*)GInfoArrays::ScriptOpposingCreatures[creature->info->type].OpposingTypes[type],
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
		if (!thing->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		thing->IsCreature();
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
		if (!thing->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		thing->IsCreature();
		if (thing->IsCreature())
		{
			wcscpy(((Creature*)thing)->name, (const wchar_t*)HelpTextDataBase::HelpTextDatabase.GetHelpText(text));
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
		if (!thing->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		thing->IsCreature();
		if (thing->IsCreature())
		{
			((Creature*)thing)
				->SetAutoFightStatus(autoFighting ? SCRIPT_CREATURE_AUTO_FIGHT_ON : SCRIPT_CREATURE_AUTO_FIGHT_OFF);
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
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
	if (thing->IsCreature())
	{
		bool32_t autoFighting = ((Creature*)thing)->GetAutoFightStatus() != SCRIPT_CREATURE_AUTO_FIGHT_OFF;
		g_scriptDLL->PUSH((void*)autoFighting, VMType_BOOLEAN);
	}
	else
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
	}
}

void GScript::QueueCreatureFightMove()
{
	unsigned long     move = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		if (!thing->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		thing->IsCreature();
		if (thing->IsCreature())
		{
			((Creature*)thing)->QueueAttackOrBlock(move);
		}
	}
}

void GScript::QueueCreatureFightSpell()
{
	unsigned long     spell = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		if (!thing->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		thing->IsCreature();
		if (thing->IsCreature())
		{
			((Creature*)thing)->QueueSpell(spell);
		}
	}
}

void GScript::QueueCreatureFightStep()
{
	unsigned long     step = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		if (!thing->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		thing->IsCreature();
		if (thing->IsCreature())
		{
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
	if (!thing->IsCreature())
	{
		ScriptErrorMessage("Thing not creature!");
	}
	thing->IsCreature();
	if (thing->IsCreature())
	{
		uint32_t action = ((Creature*)thing)->GetCurrentFightAction();
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
		if (!thing->IsCreature())
		{
			ScriptErrorMessage("Thing not creature!");
		}
		thing->IsCreature();
		if (thing->IsCreature())
		{
			g_scriptDLL->FLOAT_PUSH((float)((Creature*)thing)->CountNumberOfHitsInQueue());
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::SetFightExit()
{
	CameraModeNew3::AutoEndFight = g_scriptDLL->ULONG_POP();
}

void GScript::SetCreatureAutoScale()
{
	float             scale = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          autoScale = g_scriptDLL->ULONG_POP();
	if (thing == NULL || !thing->IsCreature())
	{
		ScriptErrorMessage("Thing should be valid!");
	}
	if (thing != NULL)
	{
		thing->IsCreature();
		((Creature*)thing)->AutoScale = autoScale;
		((Creature*)thing)->AutoScaleValue = scale;
	}
}
