#include <windows.h>
#include "WhiteColour.h"
#include "MaxFloat.h"
#include "MapCoordsMeters.h"
#include "GameTimeConstants.h"
#include "CreatureAttitudeConstants.h"
#include "Script.h"

#include <Lionhead/LH3DLib/development/LH3DAnim.h>   /* For LH3DAnim::GetPackedAnim */
#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DMath.h>   /* For DEGREES_TO_RADIANS */
#include <Lionhead/LH3DLib/development/LH3DText.h>   /* For CHAR2WCHAR */
#include <Lionhead/LH3DLib/development/LH3DTech.h>   /* For IsObjectOnScreen, IsPointOnScreen */
#include <Lionhead/LH3DLib/development/LHMatrix.h>   /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/LHPoint.h>    /* For struct LHPoint */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>          /* For LHSys::TheSystem */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>         /* For UNICODE_sprintf */

#include "Abode.h"
#include "AbodeInfo.h"
#include "Alignment.h"
#include "AnimatedStatic.h"
#include "Camera.h"
#include "ChallengeRoom.h"
#include "Citadel.h"
#include "CitadelHeart.h"
#include "Climate.h"
#include "Creature.h"
#include "Creature3D.h"
#include "CreatureActionInfo.h"
#include "CreatureAgenda.h"
#include "CreatureMental.h"
#include "CreatureMentalBelief.h"
#include "CreatureMorph.h"
#include "CreaturePhysical.h"
#include "CreatureReceiveSpell.h"
#include "CreatureRoom.h"
#ifdef VERSION_BW1WCI
#include <chlasm/CreatureSpec.h>

#include <Lionhead/LH3DLib/development/LH3DLine.h>

#include "Bookmark.h"
#include "Cannon.h"
#include "Die.h"
#include "Dolphin.h"
#include "FireEffect.h"
#include "Fragment.h"
#include "ScriptHighlightInfo.h"
#include "StreetLantern.h"
#endif
#include "Flock.h"
#include "Football.h"
#include "Game3DObject.h"
#include "Game.h"
#include "GameInfo.h"
#include "GameThingWithPos.h"
#include "HelpSystem.h"
#include "HelpText.h"
#include "Influence.h"
#include "Interface.h"
#include "LandBalance.h"
#include "Landscape.h"
#include "Living.h"
#include "LoadingScreen.h"
#include "MagicCreatureSpellInfo.h"
#include "MagicEffectInfo.h"
#include "MagicInfo.h"
#include "MagicVortex.h"
#include "MapCoords.h"
#include "Mist.h"
#include "MobileObject.h"
#include "MobileObjectInfo.h"
#include "MultiMapFixed.h"
#include "Object.h"
#include "ParticleContainer.h"
#include "Player.h"
#include "PhysicsObject.h"
#include "PlayerComputer.h"
#include "PSysGlobal.h"
#include "PuzzleGame.h"
#include "Reaction.h"
#include "Rand.h"
#include "Reward.h"
#include "RewardInfo.h"
#include "SaveGameRoom.h"
#include "Scaffold.h"
#include "ScriptDLL.h"
#include "ScriptHighlight.h"
#include "Setup.h"
#include "SoundGuidance.h"
#include "SpellDispenser.h"
#include "Temple.h"
#include "Town.h"
#include "Utils.h"
#include "Villager.h"
#include "VillagerInfo.h"
#include "Weather.h"
#include "WeatherThing.h"
#include "WorshipSite.h"

class CImmMouse;

// BW1W120 00bec284
extern TempleRoomsEnum CurrentRoom;
// BW1W120 00c221cc
extern bool32_t CreatureInTemple;
// BW1W120 00d18588
extern CImmMouse* ImmersionMouse;

static uint32_t UnusedStatic = 0;
bool32_t        CreatureRoom::CreatureInTemple = false;

#ifndef VERSION_BW1WCI
void GScript::SetWideScreen()
{
	bool32_t widescreen = g_scriptDLL->ULONG_POP();
	uint32_t control = GGame::g_game->help_system->WideScreenControl;
	uint32_t task = g_scriptDLL->TaskNumber();
	SCRIPT_ASSERT(!widescreen || control != task, "Script asking for Widescreen it has control of! Bad");
	if (control == 0 || control == task)
	{
		GGame::g_game->help_system->SetWideScreen(widescreen, g_scriptDLL->TaskNumber());
	}
}
#endif

void GScript::RunTextWithNumber()
{
#ifdef VERSION_BW1WCI
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
#endif
	HELP_TEXT_INTERACTION interaction = (HELP_TEXT_INTERACTION)g_scriptDLL->ULONG_POP();
	float                 number = g_scriptDLL->FLOAT_POP();
	uint32_t              text = g_scriptDLL->ULONG_POP();
	bool32_t              singleLine = g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(!GGame::g_game->IsMultiplayerGame() || interaction == HELP_TEXT_INTERACTION_NONE,
	              "This is not multiplayer friendly yet!");
	if (text >= SCRIPT_TEXT_ID_LIMIT)
	{
		ScriptErrorMessage("Invalid text");
		text = 0;
	}
	if (singleLine || GGame::g_game->help_system->GetHelpText()->SingleLine)
	{
		GGame::g_game->help_system->ClearAllText();
	}
#ifdef VERSION_BW1WCI
	GGame::g_game->help_system->ScriptTextThing = thing;
#endif
	GGame::g_game->help_system->GetHelpText()->SingleLine = singleLine;
	GGame::g_game->help_system->SendText(text, interaction, number, HELP_TEXT_NARRATOR_DEFAULT);
}

void GScript::RunText()
{
#ifdef VERSION_BW1WCI
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
#endif
	HELP_TEXT_INTERACTION interaction = (HELP_TEXT_INTERACTION)g_scriptDLL->ULONG_POP();
	uint32_t              text = g_scriptDLL->ULONG_POP();
	bool32_t              singleLine = g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(!GGame::g_game->IsMultiplayerGame() || interaction == HELP_TEXT_INTERACTION_NONE,
	              "This is not multiplayer friendly yet!");
	if (text >= SCRIPT_TEXT_ID_LIMIT)
	{
		ScriptErrorMessage("Invalid text");
		text = 0;
	}
	if (singleLine || GGame::g_game->help_system->GetHelpText()->SingleLine)
	{
		GGame::g_game->help_system->ClearAllText();
	}
#ifdef VERSION_BW1WCI
	GGame::g_game->help_system->ScriptTextThing = thing;
#endif
	GGame::g_game->help_system->GetHelpText()->SingleLine = singleLine;
	GGame::g_game->help_system->SendText(text, interaction, 0.0f, HELP_TEXT_NARRATOR_DEFAULT);
}

void GScript::TempText()
{
	static wchar_t text[0x80];

#ifdef VERSION_BW1WCI
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
#endif
	HELP_TEXT_INTERACTION interaction = (HELP_TEXT_INTERACTION)g_scriptDLL->ULONG_POP();
	ScriptDLL*            dll = g_scriptDLL;
	char*                 string = dll->STRING(dll->ULONG_POP());
	bool32_t              singleLine = g_scriptDLL->ULONG_POP();
	UNICODE_sprintf(text, L"*%s", CHAR2WCHAR(string));
	ScriptErrorMessage("Development text being used in game!");
	SCRIPT_ASSERT(string != NULL, "Jonty - Invalid ptr");
	SCRIPT_ASSERT(!GGame::g_game->IsMultiplayerGame() || interaction == HELP_TEXT_INTERACTION_NONE,
	              "This is not multiplayer friendly yet!");
	ScriptWarningMessage(string);
	if (singleLine || GGame::g_game->help_system->GetHelpText()->SingleLine)
	{
		GGame::g_game->help_system->ClearAllText();
	}
#ifdef VERSION_BW1WCI
	GGame::g_game->help_system->ScriptTextThing = thing;
#endif
	GGame::g_game->help_system->GetHelpText()->SingleLine = singleLine;
	GGame::g_game->help_system->SendText(text, interaction, 0.0f, HELP_TEXT_NARRATOR_DEFAULT, 0);
}

void GScript::TempTextWithNumber()
{
	static wchar_t text[0x80];

#ifdef VERSION_BW1WCI
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
#endif
	HELP_TEXT_INTERACTION interaction = (HELP_TEXT_INTERACTION)g_scriptDLL->ULONG_POP();
	float                 number = g_scriptDLL->FLOAT_POP();
	ScriptDLL*            dll = g_scriptDLL;
	char*                 string = dll->STRING(dll->ULONG_POP());
	bool32_t              singleLine = g_scriptDLL->ULONG_POP();
	UNICODE_sprintf(text, L"*%s", CHAR2WCHAR(string));
	SCRIPT_ASSERT(string != NULL, "Jonty - Invalid ptr");
	SCRIPT_ASSERT(!GGame::g_game->IsMultiplayerGame() || interaction == HELP_TEXT_INTERACTION_NONE,
	              "This is not multiplayer friendly yet!");
	if (singleLine || GGame::g_game->help_system->GetHelpText()->SingleLine)
	{
		GGame::g_game->help_system->ClearAllText();
	}
#ifdef VERSION_BW1WCI
	GGame::g_game->help_system->ScriptTextThing = thing;
#endif
	GGame::g_game->help_system->GetHelpText()->SingleLine = singleLine;
	GGame::g_game->help_system->SendText(text, interaction, number, HELP_TEXT_NARRATOR_DEFAULT, 0);
}

void GScript::IsPosFieldOfView()
{
	if (GGame::g_game->IsMultiplayerGame())
	{
		ScriptErrorMessage("This is not multiplayer friendly yet!");
	}
	if (GGame::g_game->IsMultiplayerGame())
	{
		g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
		return;
	}
	LHPoint point;
	g_scriptDLL->POINT_POP(point);
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
		return;
	}
	bool32_t onScreen = IsPointOnScreen(&point);
	g_scriptDLL->PUSH((void*)onScreen, VMType_BOOLEAN);
}

void GScript::IsGameThingFieldOfView()
{
	if (GGame::g_game->IsMultiplayerGame())
	{
		ScriptErrorMessage("This is not multiplayer friendly yet!");
	}
	if (GGame::g_game->IsMultiplayerGame())
	{
		g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
		return;
	}
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
	}
	if (GGame::g_game->ViewMode != GAME_VIEW_MODE_INSIDE_CITADEL && thing != NULL)
	{
		Object* object = dynamic_cast<Object*>(thing);
		if (object != NULL)
		{
			bool32_t onScreen = IsObjectOnScreen(object->Game3dObject);
			g_scriptDLL->PUSH((void*)onScreen, VMType_BOOLEAN);
			return;
		}
		LHPoint point;
		GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, point);
		bool32_t onScreen = IsPointOnScreen(&point);
		g_scriptDLL->PUSH((void*)onScreen, VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

void GScript::TextRead()
{
	bool32_t read = GGame::g_game->help_system->IsTextRead();
	g_scriptDLL->PUSH((void*)read, VMType_BOOLEAN);
}

bool32_t GScript::SetStateLoopFunction(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	Living* living = dynamic_cast<Living*>(thing);
	if (living != NULL)
	{
#ifdef VERSION_BW1WCI
		SetScriptState(living, GGame::g_game->script->LoopState);
#else
		SetScriptState(living, GGame::g_game->script->LoopValue);
#endif
	}
	return false;
}

void GScript::SetScriptFlyingState(Living* living, uint32_t state)
{
	living->action.SetState(LIVING_ACTION_INDEX_PREVIOUS, (VILLAGER_STATES)state);
}

void GScript::SetScriptState(Living* living, uint32_t state)
{
	if (living->IsCreature())
	{
		Creature* creature = (Creature*)living;
		uint32_t  anim = creature->ScriptAnim;
		if (creature->IsAnimIndividual(anim))
		{
			creature->ScriptPlayIndividualAnimation(anim);
		}
		else
		{
			creature->ScriptPlayStaticAnimation(anim, SCRIPT_STATIC_ANIM_DURATION);
		}
		return;
	}
	if (living->IsAvailable() && living->IsObjectInMap())
	{
		living->StorePreviousState();
		living->CallExitStateFunction(state);
		living->CallEntryStateFunction(state);
		living->SetAnim(1);
		living->TurnsUntilNextStateChange = 0;
	}
}

void GScript::SetScriptState()
{
	uint32_t          state = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		return;
	}
	if (thing->IsScriptContainer())
	{
#ifdef VERSION_BW1WCI
		GGame::g_game->script->LoopState = state;
#else
		GGame::g_game->script->LoopValue = state;
#endif
		SCRIPT_OBJECT_TYPE type = thing->GetScriptObjectType();
		if (g_scriptObjectDispatch[type].Loop != NULL)
		{
			g_scriptObjectDispatch[type].Loop(thing, SetStateLoopFunction, SCRIPT_OBJECT_TYPE_NONE, 0);
			return;
		}
		ScriptErrorMessage("No Loop funtion for type");
		return;
	}
	Living* living = dynamic_cast<Living*>(thing);
	if (living != NULL && !living->IsDrowning())
	{
		SetScriptState(living, state);
		return;
	}
	ScriptErrorMessage("Object not living for set state");
}

#ifdef VERSION_BW1WCI
bool32_t GScript::SetPlayAnimLoopFunction(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	Villager* villager = dynamic_cast<Villager*>(thing);
	if (villager != NULL)
	{
		GScript* script = GGame::g_game->script;
		uint32_t repeats = script->LoopValue2;
		uint32_t anim = script->LoopValue;
		villager->WanderArea.x = anim;
		villager->WanderArea.z = repeats;
	}
	else
	{
		Creature* creature = dynamic_cast<Creature*>(thing);
		if (creature == NULL)
		{
			ScriptErrorMessage("setting the state of something neither a creature nor a villager");
		}
		else
		{
			GScript* script = GGame::g_game->script;
			if (script->LoopValue2 >= SCRIPT_ANIM_REPEATS_LIMIT)
			{
				script->LoopValue2 = SCRIPT_ANIM_REPEATS_LIMIT - 1;
			}
			script = GGame::g_game->script;
			uint32_t repeats = script->LoopValue2;
			uint32_t anim = script->LoopValue;
			creature->ScriptAnim = anim;
			creature->ScriptAnimRepeats = repeats;
		}
	}
	Living* living = dynamic_cast<Living*>(thing);
	if (living != NULL && !living->IsDrowning())
	{
		SetScriptState(living, GGame::g_game->script->LoopState);
		return false;
	}
	ScriptErrorMessage("Object not living for set state");
	return false;
}

void GScript::GameThingPlayAnim()
{
	float             repeats = g_scriptDLL->FLOAT_POP();
	float             clamped = repeats;
	uint32_t          anim = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		return;
	}
	if (thing->IsScriptContainer())
	{
		GGame::g_game->script->LoopValue = anim;
		GGame::g_game->script->LoopValue2 = (int)repeats;
		SCRIPT_OBJECT_TYPE type = thing->GetScriptObjectType();
		if (g_scriptObjectDispatch[type].Loop != NULL)
		{
			g_scriptObjectDispatch[type].Loop(thing, SetPlayAnimLoopFunction, SCRIPT_OBJECT_TYPE_NONE, 0);
			return;
		}
		ScriptErrorMessage("No Loop funtion for type");
		return;
	}
	uint32_t  state;
	Villager* villager = dynamic_cast<Villager*>(thing);
	if (villager != NULL)
	{
		state = VILLAGER_STATE_SCRIPT_PLAY_ANIM;
		villager->WanderArea.x = anim;
		villager->WanderArea.z = (int)repeats;
	}
	else if (thing->IsCreature())
	{
		if (repeats < 0.0f || !(repeats < SCRIPT_ANIM_REPEATS_LIMIT))
		{
			clamped = SCRIPT_ANIM_REPEATS_LIMIT - 1;
		}
		((Creature*)thing)->ScriptAnim = anim;
		((Creature*)thing)->ScriptAnimRepeats = (int)clamped;
	}
	else if (thing->IsAnimal())
	{
		state = ANIMAL_STATE_SCRIPT_PLAY_ANIM;
		((Animal*)thing)->ScriptULData1 = anim;
		((Animal*)thing)->ScriptULData2 = (int)repeats;
	}
	Living* living = dynamic_cast<Living*>(thing);
	if (living != NULL && !living->IsDrowning())
	{
		SetScriptState(living, state);
		return;
	}
	ScriptErrorMessage("Object not living for set state");
}

bool32_t GScript::SetStateWithParamsLoopFunction(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	Living* living = dynamic_cast<Living*>(thing);
	if (living == NULL || living->IsDrowning())
	{
		ScriptErrorMessage("Object not living for set state");
		return false;
	}
	SetScriptState(living, GGame::g_game->script->LoopState);
	Villager* villager = dynamic_cast<Villager*>(thing);
	if (villager != NULL)
	{
		GScript* script = GGame::g_game->script;
		uint32_t x = script->LoopValue;
		uint32_t z = script->LoopValue2;
		villager->WanderArea.x = x;
		villager->WanderArea.z = z;
		float radius = GGame::g_game->script->FindRadius;
		villager->ScriptWanderRadius = radius;
		MapCoords coords(GGame::g_game->script->FocusPos);
		villager->ScriptWanderCentre.Init(coords);
		return false;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature == NULL)
	{
		ScriptErrorMessage("Setting the state of something neither a creature nor a villager");
		return false;
	}
	GScript* script = GGame::g_game->script;
	uint32_t repeats = script->LoopValue2;
	uint32_t anim = script->LoopValue;
	creature->ScriptAnim = anim;
	creature->ScriptAnimRepeats = repeats;
	return false;
}

void GScript::SetStateWithParams()
{
	uint32_t z = (int)g_scriptDLL->FLOAT_POP();
	uint32_t x = (int)g_scriptDLL->FLOAT_POP();
	float    radius = g_scriptDLL->FLOAT_POP();
	LHPoint  pos;
	g_scriptDLL->POINT_POP(pos);
	uint32_t          state = g_scriptDLL->ULONG_POP();
	uint32_t          thingId = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* thing = GetScriptGameThing(thingId);
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		return;
	}
	if (thing->IsScriptContainer())
	{
		GGame::g_game->script->FindRadius = radius;
		GGame::g_game->script->LoopValue = x;
		GGame::g_game->script->LoopValue2 = z;
		GGame::g_game->script->LoopState = state;
		GGame::g_game->script->FocusPos = pos;
		SCRIPT_OBJECT_TYPE type = thing->GetScriptObjectType();
		if (g_scriptObjectDispatch[type].Loop != NULL)
		{
			g_scriptObjectDispatch[type].Loop(thing, SetStateWithParamsLoopFunction, SCRIPT_OBJECT_TYPE_NONE, 0);
			return;
		}
		ScriptErrorMessage("No Loop funtion for type");
		return;
	}
	Living* living = dynamic_cast<Living*>(thing);
	if (living == NULL || living->IsDrowning())
	{
		ScriptErrorMessage("Object not living for set state");
		return;
	}
	SetScriptState(living, state);
	Villager* villager = dynamic_cast<Villager*>(thing);
	if (villager != NULL)
	{
		villager->ScriptWanderRadius = radius;
		villager->WanderArea.x = x;
		villager->WanderArea.z = z;
		MapCoords coords(pos);
		villager->ScriptWanderCentre.Init(coords);
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature == NULL)
	{
		ScriptErrorMessage("setting the state of something neither a creature nor a villager");
		return;
	}
	creature->ScriptAnim = x;
	creature->ScriptAnimRepeats = z;
}
#else
bool32_t GScript::SetStatePosLoopFunction(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	Villager* villager = dynamic_cast<Villager*>(thing);
	if (villager != NULL)
	{
		MapCoords coords(GGame::g_game->script->FocusPos);
		villager->ScriptWanderCentre.Init(coords);
	}
	return false;
}

void GScript::SetScriptStatePos()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		return;
	}
	if (thing->IsScriptContainer())
	{
		GGame::g_game->script->FocusPos = pos;
		SCRIPT_OBJECT_TYPE type = thing->GetScriptObjectType();
		if (g_scriptObjectDispatch[type].Loop != NULL)
		{
			g_scriptObjectDispatch[type].Loop(thing, SetStatePosLoopFunction, SCRIPT_OBJECT_TYPE_NONE, 0);
			return;
		}
		ScriptErrorMessage("No Loop funtion for type");
		return;
	}
	Villager* villager = dynamic_cast<Villager*>(thing);
	if (villager != NULL)
	{
		MapCoords coords(pos);
		villager->ScriptWanderCentre.Init(coords);
		return;
	}
	ScriptErrorMessage("Object not villager for state data");
}

bool32_t GScript::SetStateFloatLoopFunction(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	Villager* villager = dynamic_cast<Villager*>(thing);
	if (villager != NULL)
	{
		float radius = GGame::g_game->script->FindRadius;
		villager->ScriptWanderRadius = radius;
	}
	return false;
}

void GScript::SetScriptStateFloat()
{
	float             value = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		return;
	}
	if (thing->IsScriptContainer())
	{
		GGame::g_game->script->FindRadius = value;
		SCRIPT_OBJECT_TYPE type = thing->GetScriptObjectType();
		if (g_scriptObjectDispatch[type].Loop != NULL)
		{
			g_scriptObjectDispatch[type].Loop(thing, SetStateFloatLoopFunction, SCRIPT_OBJECT_TYPE_NONE, 0);
			return;
		}
		ScriptErrorMessage("No Loop funtion for type");
		return;
	}
	Villager* villager = dynamic_cast<Villager*>(thing);
	if (villager != NULL)
	{
		villager->ScriptWanderRadius = value;
		return;
	}
	ScriptErrorMessage("Object not villager for state data");
}

bool32_t GScript::SetStateULLoopFunction(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	Villager* villager = dynamic_cast<Villager*>(thing);
	if (villager != NULL)
	{
		GScript* script = GGame::g_game->script;
		uint32_t value2 = script->LoopValue2;
		uint32_t value = script->LoopValue;
		villager->WanderArea.x = value;
		villager->WanderArea.z = value2;
	}
	return false;
}

void GScript::SetScriptStateULData()
{
	uint32_t          value2 = g_scriptDLL->ULONG_POP();
	uint32_t          value = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		return;
	}
	if (thing->IsScriptContainer())
	{
		GGame::g_game->script->LoopValue = value;
		GGame::g_game->script->LoopValue2 = value2;
		SCRIPT_OBJECT_TYPE type = thing->GetScriptObjectType();
		if (g_scriptObjectDispatch[type].Loop != NULL)
		{
			g_scriptObjectDispatch[type].Loop(thing, SetStateULLoopFunction, SCRIPT_OBJECT_TYPE_NONE, 0);
			return;
		}
		ScriptErrorMessage("No Loop funtion for type");
		return;
	}
	Villager* villager = dynamic_cast<Villager*>(thing);
	if (villager != NULL)
	{
		villager->WanderArea.x = value;
		villager->WanderArea.z = value2;
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature == NULL)
	{
		ScriptErrorMessage("setting the state of something neither a creature nor a villager");
		return;
	}
	creature->ScriptAnim = value;
	creature->ScriptAnimRepeats = value2;
}
#endif

void GScript::GetPosition()
{
	LHPoint           point;
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing no longer valid");
	if (thing != NULL)
	{
		if (thing->IsFlock())
		{
			Flock*  flock = (Flock*)thing;
			Living* leader = flock->Members.GetLast();
			if (leader != NULL)
			{
				GLandscape::ConvertMapCoordToLandscapePoint(leader->Pos, point);
			}
			else
			{
				GLandscape::ConvertMapCoordToLandscapePoint(*flock->GetFlockPos(), point);
			}
		}
		else if (thing->IsMobileWallHug() && !thing->IsCreature())
		{
			if (((MobileWallHug*)thing)->AreWeThere(0.0f))
			{
				GLandscape::ConvertMapCoordToLandscapePoint(((MobileWallHug*)thing)->goal, point);
			}
			else
			{
				GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, point);
			}
		}
		else
		{
			GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, point);
		}
	}
	else
	{
		point.x = point.y = point.z = 0.0f;
	}
	g_scriptDLL->POINT_PUSH(point);
}

// Inliner IL size: <= 40
// BW1W120 inlined BW1M119 inlined
inline void StorePreviousPosition(Object* object);

inline void StorePreviousPosition(Object* object)
{
	object->coords = object->Pos;
}

#ifdef VERSION_BW1WCI
void GScript::SetPosition()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing no longer valid");
		return;
	}
	if (thing->Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE)
	{
		ScriptErrorMessage("Setting object in hand to a position");
	}
	if (thing->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS)
	{
		ScriptErrorMessage("Trying to set position - Object is flying");
	}
	if (!(thing->Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE) &&
	    !(thing->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS))
	{
		Object*   object = dynamic_cast<Object*>(thing);
		MapCoords coords(pos);
		if (!thing->IsScriptMarker())
		{
			coords.altitude = 0.0f;
			float x = coords.MetersX();
			if (x >= SCRIPT_BAD_POS_MIN && x < SCRIPT_BAD_POS_MAX)
			{
				float z = coords.MetersZ();
				if (z >= SCRIPT_BAD_POS_MIN && z < SCRIPT_BAD_POS_MAX)
				{
					ScriptErrorMessage("Script setting a bad pos!");
				}
			}
		}
		if (object != NULL)
		{
			if (!(object->Flags & GAME_THING_WITH_POS_FLAG_IN_MAP))
			{
				ScriptErrorMessage("Trying to set position - Object not in map");
			}
			if (object->Flags & GAME_THING_WITH_POS_FLAG_IN_MAP)
			{
				Creature* creature = object->CastCreature();
				if (creature != NULL)
				{
					if (creature->IsFighting())
					{
						creature->ForceMoveMapObjectWithoutWalkingOrChangingWhatDoing(coords);
						return;
					}
					creature->FinishActionUnsuccessfully("", true, true);
					creature->ForceMoveMapObjectWithoutWalking(coords);
					return;
				}
				object->MoveMapObject(coords);
				if (object->Game3dObject != NULL)
				{
					SetPositionOnMap(object->Game3dObject, coords, object->GetYAngle(), object->GetScale());
				}
				StorePreviousPosition(object);
				if (object->IsLiving())
				{
					if (thing->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)
					{
						SetScriptState((Living*)thing, VILLAGER_STATE_IN_SCRIPT);
					}
					if (object->IsVillager(NULL))
					{
						((Villager*)object)->DrawYAngle = object->GetYAngle();
					}
				}
			}
		}
		else
		{
			thing->SetPos(coords);
		}
	}
}
#else
void GScript::SetPosition()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing no longer valid");
	if (thing != NULL)
	{
		SCRIPT_ASSERT(!(thing->Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE),
		              "Setting object in hand to a position");
		SCRIPT_ASSERT(!(thing->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS),
		              "Trying to set position - Object is flying");
		if (!(thing->Flags & GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE) &&
		    !(thing->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS))
		{
			Object*   object = dynamic_cast<Object*>(thing);
			MapCoords coords(pos);
			if (!thing->IsScriptMarker())
			{
				coords.altitude = 0.0f;
			}
			if (object != NULL)
			{
				SCRIPT_ASSERT(object->Flags & GAME_THING_WITH_POS_FLAG_IN_MAP,
				              "Trying to set position - Object not in map");
				if (object->Flags & GAME_THING_WITH_POS_FLAG_IN_MAP)
				{
					Creature* creature = object->CastCreature();
					if (creature != NULL)
					{
						creature->ForceMoveMapObjectWithoutWalking(coords);
					}
					else
					{
						object->MoveMapObject(coords);
						if (object->Game3dObject != NULL)
						{
							SetPositionOnMap(object->Game3dObject, coords, object->GetYAngle(), object->GetScale());
						}
						StorePreviousPosition(object);
						if (object->IsLiving() && thing->IsControlledByScript())
						{
							SetScriptState((Living*)thing, VILLAGER_STATE_IN_SCRIPT);
						}
					}
				}
			}
			else
			{
				thing->SetPos(coords);
			}
		}
	}
}
#endif

void GScript::GetDistance()
{
	ScriptDLL* dll = g_scriptDLL;
	uint32_t   z1 = dll->ULONG_POP();
	uint32_t   y1 = dll->ULONG_POP();
	uint32_t   x1 = dll->ULONG_POP();
	dll = g_scriptDLL;
	uint32_t z2 = dll->ULONG_POP();
	uint32_t y2 = dll->ULONG_POP();
	uint32_t x2 = dll->ULONG_POP();
	float    distance = GUtils::GetDistance(LHPoint(*(float*)&x1, *(float*)&y1, *(float*)&z1),
	                                        LHPoint(*(float*)&x2, *(float*)&y2, *(float*)&z2));
	if (distance < SCRIPT_NEGLIGIBLE_DISTANCE)
	{
		g_scriptDLL->FLOAT_PUSH(0.0f);
		return;
	}
	g_scriptDLL->FLOAT_PUSH(distance);
}

void GScript::Random()
{
	float max = g_scriptDLL->FLOAT_POP();
	float min = g_scriptDLL->FLOAT_POP();
	float value = (float)(int)(GRand::GameFloatRand(max - min + 1.0f, __FILE__, FILELINE(682, 902)) + min);
	g_scriptDLL->PUSH(*(void**)&value, VMType_FLOAT);
}

void GScript::RandomULONG()
{
	uint32_t max = g_scriptDLL->ULONG_POP();
	uint32_t min = g_scriptDLL->ULONG_POP();
	uint32_t value = GRand::GameRand(max - min + 1, __FILE__, FILELINE(697, 917)) + min;
	g_scriptDLL->PUSH((void*)value, VMType_INT);
}

void GScript::MoveGameThing()
{
	float   speed = g_scriptDLL->FLOAT_POP();
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing no longer valid");
		return;
	}
	if (thing->IsCreature())
	{
		Creature* creature = dynamic_cast<Creature*>(thing);
		SCRIPT_ASSERT(creature != NULL, "no creature for script");
		if (thing->IsObjectInMap())
		{
			creature->ScriptMoveToPos(&pos, speed);
		}
		return;
	}
	if (thing->IsLiving())
	{
		if (thing->IsObjectInMap() && !thing->IsDrowning())
		{
			MapCoords coords(pos);
			if (!((Living*)thing)->AreWeThere(coords, 0.0f))
			{
				((Living*)thing)->SetupMoveToPos(coords, VILLAGER_STATE_IN_SCRIPT);
			}
			else
			{
				SetScriptState((Living*)thing, VILLAGER_STATE_IN_SCRIPT);
			}
		}
		return;
	}
	if (thing->IsFlock())
	{
		((Flock*)thing)->SetDomainCentrePos(MapCoords(pos));
		return;
	}
	if (thing->IsWeather())
	{
		((WeatherThing*)thing)->SetMoveTo(pos);
		return;
	}
	if (thing->IsComputerPlayer())
	{
		((GComputerPlayer*)thing)->ForceComputerPlayerToMoveToPointAndPause(pos, COMPUTER_PLAYER_SCRIPT_PAUSE_TIME);
		return;
	}
#ifdef VERSION_BW1WCI
	if (thing->IsDolphin())
	{
		MapCoords coords(pos);
		coords.altitude = 0.0f;
		coords.MakeInBounds();
		((Dolphin*)thing)->SetupMoveToPos(coords, DOLPHIN_STATE_MOVE, DOLPHIN_STATE_IDLE);
		return;
	}
#endif
	ScriptErrorMessage("Jonty - Thing must be living to move it!");
	thing->SetPos(MapCoords(pos));
}

bool32_t GScript::SetFocusLoopFn(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	((Object*)thing)->SetFocus(GGame::g_game->script->FocusPos);
	return false;
}

void GScript::SetFocus()
{
	LHPoint            pos;
	GameThingWithPos*  thing;
	Object*            object;
	SCRIPT_OBJECT_TYPE objectType;

	g_scriptDLL->POINT_POP(pos);
	thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptWarningMessage("Thing no longer valid");
		return;
	}
	if (thing->IsScriptContainer())
	{
		objectType = thing->GetScriptObjectType();
		GGame::g_game->script->FocusPos = pos;
		if (g_scriptObjectDispatch[objectType].Loop == NULL)
		{
			return;
		}
		g_scriptObjectDispatch[objectType].Loop(thing, SetFocusLoopFn, SCRIPT_OBJECT_TYPE_NONE, 0);
		return;
	}
	object = dynamic_cast<Object*>(thing);
	if (object != NULL)
	{
		if (object->IsCreature())
		{
			object->SetControlledByScript(true);
		}
		object->SetFocus(pos);
#ifdef VERSION_BW1WCI
		if (object->IsVillager(NULL))
		{
			((Villager*)object)->DrawYAngle = object->GetYAngle();
		}
#endif
		return;
	}
	ScriptErrorMessage("Jonty - Thing must be living to face position!");
}

// Inliner IL size: <= 40
// BW1W120 inlined BW1M119 inlined
inline GameThingWithPos* PopGameThing();

inline GameThingWithPos* PopGameThing()
{
	uint32_t id = GScript::g_scriptDLL->THING_OR_NULL_POP();
	return GScript::GetScriptGameThing(id);
}

void GScript::SetFocusOnObject()
{
	GameThingWithPos* target = PopGameThing();
	GameThingWithPos* thing = PopGameThing();
	SCRIPT_ASSERT(thing != NULL && target != NULL, "Thing not found!");
	if (thing == NULL || target == NULL)
	{
		return;
	}
	if (thing->IsCreature())
	{
		((Creature*)thing)->SetFocus(target);
		return;
	}
	Object* object = dynamic_cast<Object*>(thing);
	if (object != NULL)
	{
		LHPoint point;
		object->SetFocus(*GLandscape::ConvertMapCoordToLandscapePoint(target->Pos, point));
	}
}

void GScript::DeleteObject()
{
	SCRIPT_DELETE_MODE mode = (SCRIPT_DELETE_MODE)g_scriptDLL->ULONG_POP();
	uint32_t           id = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos*  thing = GetScriptGameThing(id);
	if (thing == NULL)
	{
		return;
	}
	if (thing->IsPuzzleGame())
	{
		RemoveScriptGameThing(id);
		((PuzzleGame*)thing)->FullDelete(false);
		return;
	}
	switch (mode)
	{
	case SCRIPT_DELETE_MODE_NORMAL:
		thing->ToBeDeleted(false);
		break;
	case SCRIPT_DELETE_MODE_FADE:
		if (thing->IsObject())
		{
			Creature* creature;
			if (thing->IsCreature() && (creature = dynamic_cast<Creature*>((Object*)thing)) != NULL)
			{
				creature->SetFizz(SCRIPT_DELETE_FIZZ_AMOUNT, SCRIPT_DELETE_FIZZ_DURATION, true);
			}
			else
			{
				GoolooGooloo((Object*)thing);
				thing->ToBeDeleted(false);
			}
		}
		break;
	case SCRIPT_DELETE_MODE_EXPLODE:
		if (thing->IsObject())
		{
			PSysGlobal::ExplodeObjectMesh((Object*)thing, false);
			thing->ToBeDeleted(false);
		}
		break;
	case SCRIPT_DELETE_MODE_TEMPLE_EXPLODE:
		if (thing->IsObject())
		{
			CitadelHeart* heart = dynamic_cast<CitadelHeart*>(thing);
			if (heart != NULL)
			{
				if (heart->DestructionStarted)
				{
					PSysGlobal::ExplodeObjectMesh(heart, heart->Pos.GetLHPoint(), CITADEL_HEART_SCRIPT_EXPLODE_FORCE,
					                              CITADEL_HEART_SCRIPT_EXPLODE_UNUSED, false);
				}
				else
				{
					heart->DestructionSequenceStart();
				}
			}
		}
		break;
	}
	RemoveScriptGameThing(id);
}

void GScript::UpdateSnapShotDetails()
{
	SnapShotData data;
	data.ScriptName = NULL;
	data.Success = 0.0f;
	data.Alignment = 0.0f;
#ifndef VERSION_BW1WCI
	data.Challenge = static_cast<ScriptChallengeEnums>(g_scriptDLL->ULONG_POP());
#endif
	bool32_t takePicture = g_scriptDLL->ULONG_POP();
	data.HelpText = g_scriptDLL->ULONG_POP();
	data.Alignment = g_scriptDLL->FLOAT_POP();
	CLAMP(data.Alignment, -1.0f, 1.0f);
	data.Success = g_scriptDLL->FLOAT_POP();
	CLAMP(data.Success, 0.0f, 1.0f);
#ifdef VERSION_BW1WCI
	data.Challenge = static_cast<ScriptChallengeEnums>(g_scriptDLL->ULONG_POP());
#endif
	g_scriptDLL->POINT_POP(data.Focus);
	g_scriptDLL->POINT_POP(data.Position);
	GGame::g_game->temple->UpdateChallenge(data, 0, NULL, NULL, takePicture);
}

void GScript::UpdateSnapShot()
{
	SnapShotData data;
	VMType       types[SCRIPT_SNAPSHOT_MAX_VALUES];
	void*        values[SCRIPT_SNAPSHOT_MAX_VALUES];
	data.ScriptName = NULL;
	data.Success = 0.0f;
	data.Alignment = 0.0f;
#ifndef VERSION_BW1WCI
	data.Challenge = static_cast<ScriptChallengeEnums>(g_scriptDLL->ULONG_POP());
#endif
	uint32_t count = g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(count < SCRIPT_SNAPSHOT_MAX_VALUES, "Paul - number of stack objects is too big.");
	for (uint32_t i = 0; i < count; i++)
	{
		values[i] = (void*)g_scriptDLL->POP(&types[i]);
	}
	ScriptDLL* dll = g_scriptDLL;
	data.ScriptName = dll->STRING(dll->ULONG_POP());
	data.HelpText = g_scriptDLL->ULONG_POP();
	data.Alignment = g_scriptDLL->FLOAT_POP();
	CLAMP(data.Alignment, -1.0f, 1.0f);
	data.Success = g_scriptDLL->FLOAT_POP();
	CLAMP(data.Success, 0.0f, 1.0f);
#ifdef VERSION_BW1WCI
	data.Challenge = static_cast<ScriptChallengeEnums>(g_scriptDLL->ULONG_POP());
#endif
	GGame::g_game->temple->UpdateChallenge(data, count, values, types, false);
}

void GScript::SnapShot()
{
	SnapShotData data;
	VMType       types[SCRIPT_SNAPSHOT_MAX_VALUES];
	void*        values[SCRIPT_SNAPSHOT_MAX_VALUES];
	data.ScriptName = NULL;
	data.Success = 0.0f;
	data.Alignment = 0.0f;
#ifndef VERSION_BW1WCI
	data.Challenge = static_cast<ScriptChallengeEnums>(g_scriptDLL->ULONG_POP());
#endif
	uint32_t count = g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(count <= SCRIPT_SNAPSHOT_MAX_VALUES, "Paul - number of stack objects is too big.");
	for (uint32_t i = 0; i < count; i++)
	{
		values[i] = (void*)g_scriptDLL->POP(&types[i]);
	}
	ScriptDLL* dll = g_scriptDLL;
	data.ScriptName = dll->STRING(dll->ULONG_POP());
	data.HelpText = g_scriptDLL->ULONG_POP();
	data.Alignment = g_scriptDLL->FLOAT_POP();
	CLAMP(data.Alignment, -1.0f, 1.0f);
	data.Success = g_scriptDLL->FLOAT_POP();
	CLAMP(data.Success, 0.0f, 1.0f);
	g_scriptDLL->POINT_POP(data.Focus);
	g_scriptDLL->POINT_POP(data.Position);
	data.Type = g_scriptDLL->ULONG_POP();
#ifdef VERSION_BW1WCI
	data.Challenge = static_cast<ScriptChallengeEnums>(g_scriptDLL->ULONG_POP());
#endif
	GGame::g_game->temple->UpdateChallenge(data, count, values, types, true);
}

void GScript::UpdateAlignment()
{
	GPlayer* player = GGame::g_game->GetPlayer(g_scriptDLL->ULONG_POP());
	float    change = g_scriptDLL->FLOAT_POP();
	SCRIPT_ASSERT(change >= -1.0f && change <= 1.0f, "Alignment out of range");
	if (change >= -1.0f && change <= 1.0f)
	{
		player->alignment->CrudeUpdate(change);
	}
}

void GScript::GetAlignment()
{
	float alignment = GGame::g_game->GetPlayer(g_scriptDLL->ULONG_POP())->GetAlignmentValue();
	g_scriptDLL->PUSH(*(void**)&alignment, VMType_FLOAT);
}

void GScript::CreateInfluenceOnObject()
{
	bool32_t          anti = g_scriptDLL->ULONG_POP();
	GPlayer*          player = GGame::g_game->GetPlayer(g_scriptDLL->ULONG_POP());
	float             radius = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "thing not valid");
	if (thing != NULL)
	{
		InfluenceRing* ring = InfluenceRing::Create(thing, player, radius, anti);
		if (ring != NULL)
		{
			uint32_t id = AddScriptGameThing(ring, true);
			g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
			return;
		}
	}
	ScriptErrorMessage("Could not make influence ring!");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CreateInfluenceOnPos()
{
	bool32_t anti = g_scriptDLL->ULONG_POP();
	GPlayer* player = GGame::g_game->GetPlayer(g_scriptDLL->ULONG_POP());
	float    radius = g_scriptDLL->FLOAT_POP();
	LHPoint  pos;
	g_scriptDLL->POINT_POP(pos);
	InfluenceRing* ring = InfluenceRing::Create(MapCoords(pos), player, radius, anti);
	if (ring != NULL)
	{
		uint32_t id = AddScriptGameThing(ring, true);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		return;
	}
	ScriptErrorMessage("Could not make influence ring!");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::GetInfluence()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	bool32_t excludeAllies = g_scriptDLL->ULONG_POP();
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((int)g_scriptDLL->FLOAT_POP()));
	float    influence =
		Influence::CalculatePlayerInfluence(MapCoords(pos), player, 0, INFL_CALC_TYPE_DEFAULT, excludeAllies == false);
	g_scriptDLL->FLOAT_PUSH(influence);
}

void GScript::GetPlayedPercentage()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing no longer valid");
	if (thing != NULL)
	{
		if (thing->IsCreature())
		{
			g_scriptDLL->FLOAT_PUSH(((Creature*)thing)->physical->Creature3d->GetBodyActionFraction());
			return;
		}
		ScriptErrorMessage("Not coded for non creature");
	}
	g_scriptDLL->FLOAT_PUSH(1.0f);
}

void GScript::HasPlayed()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing no longer valid");
	if (thing != NULL)
	{
		if (thing->IsCreature())
		{
			Creature* creature = (Creature*)thing;
#ifdef VERSION_BW1WCI
			if (creature->IsFighting() && creature->GetCreature3D() != NULL)
			{
				int anim = creature->GetCreature3D()->CurrentAnim;
				if ((anim >= C_FIGHT_ATTACK_HIGH && anim <= C_FIGHT_ATTACK_SPECIAL2) ||
				    creature->CountNumberOfHitsInQueue() > 0)
				{
					g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
					return;
				}
				g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
				return;
			}
#endif
			if (creature != NULL)
			{
				CreatureAgenda& agenda = creature->mind->agenda;
				bool32_t        finished;
#ifdef VERSION_BW1WCI
				CREATURE_ACTION action;
				if (agenda.CurrentPlan.IsValid() && agenda.SubActionAgenda.IsValid() &&
				    (action = creature->mind->agenda.CurrentPlan.creature_action) != CREATURE_IDLE &&
				    action != CREATURE_LOOK_FOREVER)
#else
				if (agenda.CurrentPlan.IsValid() && agenda.SubActionAgenda.IsValid() &&
				    creature->mind->agenda.CurrentPlan.creature_action != CREATURE_IDLE)
#endif
				{
					finished = false;
				}
				else
				{
					finished = true;
					creature->mind->agenda.SubActionAgenda.ClearSubActionAgenda();
				}
				g_scriptDLL->PUSH((void*)finished, VMType_BOOLEAN);
				return;
			}
			g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
			return;
		}
		if (thing->IsLiving())
		{
#ifdef VERSION_BW1WCI
			bool32_t complete = ((Living*)thing)->IsScriptAnimationComplete();
			g_scriptDLL->PUSH((void*)complete, VMType_BOOLEAN);
			return;
#else
			Villager* villager = dynamic_cast<Villager*>(thing);
			if (villager != NULL)
			{
				bool32_t complete = villager->IsScriptAnimationComplete();
				g_scriptDLL->PUSH((void*)complete, VMType_BOOLEAN);
				return;
			}
			bool32_t inScript = ((Living*)thing)->GetFinalState() == VILLAGER_STATE_IN_SCRIPT;
			g_scriptDLL->PUSH((void*)inScript, VMType_BOOLEAN);
			return;
#endif
		}
		if (thing->IsWeather())
		{
			g_scriptDLL->PUSH((void*)((WeatherThing*)thing)->IsFinished(), VMType_BOOLEAN);
			return;
		}
		if (thing->IsPuzzleGame())
		{
			bool32_t complete = ((PuzzleGame*)thing)->IsComplete();
			g_scriptDLL->PUSH((void*)complete, VMType_BOOLEAN);
			return;
		}
#ifdef VERSION_BW1WCI
		if (thing->IsDolphin())
		{
			bool32_t finished = ((Dolphin*)thing)->HasFinishedAnimation();
			g_scriptDLL->PUSH((void*)finished, VMType_BOOLEAN);
			return;
		}
#endif
		ScriptErrorMessage("Thing not living");
	}
	g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
}

void GScript::OverrideStateAnimation()
{
	ANIM_LIST         anim = (ANIM_LIST)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(anim > 0 && anim < SCRIPT_ANIM_LIMIT, "Invalid animation forced");
	if (thing == NULL)
	{
		return;
	}
	Living* living = dynamic_cast<Living*>(thing);
	if (living == NULL)
	{
		ScriptErrorMessage("Thing must be living");
		return;
	}
	LH3DAnim* packedAnim = LH3DAnim::GetPackedAnim(anim);
	if (packedAnim != living->Game3dObject->GetCurrentAnim())
	{
		living->Game3dObject->SetCurrentAnim(packedAnim);
		living->Game3dObject->SetCurrentCycleTime(0);
	}
	if (living->data_for_script_remind == NULL)
	{
		living->data_for_script_remind = new (__FILE__, FILELINE(1217, 1465)) DataForScriptRemind();
	}
	living->data_for_script_remind->KeepThatInMind(living);
	living->data_for_script_remind->OverrideState = 0;
	living->data_for_script_remind->OverrideAnim = anim;
}

void GScript::CreateReaction()
{
	REACTION          reaction = (REACTION)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "no reaction for thing");
	if (thing != NULL)
	{
		Reaction::CreateReaction(thing, (uint8_t)reaction, NULL, false);
	}
}

bool32_t GScript::RemoveAllReactionsLoopFn(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	Reaction::RemoveAllReactionsInitiatedByObject(thing);
	return false;
}

void GScript::RemoveReaction()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "no reaction for thing");
	if (thing != NULL)
	{
		if (thing->IsScriptContainer())
		{
			SCRIPT_OBJECT_TYPE objectType = thing->GetScriptObjectType();
			if (g_scriptObjectDispatch[objectType].Loop != NULL)
			{
				g_scriptObjectDispatch[objectType].Loop(thing, RemoveAllReactionsLoopFn, SCRIPT_OBJECT_TYPE_NONE, 0);
			}
			return;
		}
		Reaction::RemoveAllReactionsInitiatedByObject(thing);
	}
}

bool32_t GScript::RemoveAllReactionsOfTypeLoopFn(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	Reaction::RemoveAllReactionsOfTypeInitiatedByObject(thing, (REACTION)GGame::g_game->script->LoopValue);
	return false;
}

void GScript::RemoveReactionsOfType()
{
	REACTION          reaction = (REACTION)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "no reaction for thing");
	if (thing != NULL)
	{
		if (thing->IsScriptContainer())
		{
			SCRIPT_OBJECT_TYPE objectType = thing->GetScriptObjectType();
			GGame::g_game->script->LoopValue = reaction;
			if (g_scriptObjectDispatch[objectType].Loop != NULL)
			{
				g_scriptObjectDispatch[objectType].Loop(thing, RemoveAllReactionsOfTypeLoopFn, SCRIPT_OBJECT_TYPE_NONE,
				                                        0);
			}
			return;
		}
		Reaction::RemoveAllReactionsOfTypeInitiatedByObject(thing, reaction);
	}
}

void GScript::GetTargetObject()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "no object");
	if (thing == NULL)
	{
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature != NULL)
	{
		CreatureBelief* belief = creature->mind->agenda.CurrentPlan.ObjectToActOn;
		if (belief != NULL)
		{
			GameThingWithPos* target = belief->Pointer;
			SCRIPT_ASSERT(target != NULL, "Richard: strange. No pointer for belief");
			if (target != NULL)
			{
				uint32_t id = AddScriptGameThing(target, false);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				return;
			}
		}
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
		return;
	}
	ScriptErrorMessage("Only for creatures");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::DesireIs()
{
	CREATURE_DESIRES  desire = (CREATURE_DESIRES)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	Creature*         creature = dynamic_cast<Creature*>(thing);
	if (creature != NULL)
	{
		g_scriptDLL->PUSH(
			(void*)(desire == CreatureActionInfo::GetInfo()[creature->mind->agenda.CurrentPlan.creature_action].Desire),
			VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH(NULL, VMType_BOOLEAN);
}

void GScript::GetObjectDestination()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	Living*           living = dynamic_cast<Living*>(thing);
	LHPoint           point;
	if (living != NULL)
	{
		MapCoords destination = *living->GetDestPos();
		GLandscape::ConvertMapCoordToLandscapePoint(destination, point);
	}
#ifdef VERSION_BW1WCI
	else if (Dolphin* dolphin = dynamic_cast<Dolphin*>(thing))
	{
		MapCoords destination = dolphin->GetDestination();
		GLandscape::ConvertMapCoordToLandscapePoint(destination, point);
	}
#endif
	else
	{
		point.x = 0.0f;
		point.y = 0.0f;
		point.z = 0.0f;
	}
	g_scriptDLL->POINT_PUSH(point);
}

void GScript::GetActionTextForObject()
{
	g_scriptDLL->PUSH((void*)SCRIPT_ACTION_TEXT, VMType_INT);
}

void GScript::AddReference()
{
	IncrementScriptReference(g_scriptDLL->THING_OR_NULL_POP());
}

void GScript::RemoveReference()
{
	DecrementScriptReference(g_scriptDLL->THING_OR_NULL_POP());
}

void GScript::SetWeatherProperties()
{
	float             fallSpeed = g_scriptDLL->FLOAT_POP();
	float             overcast = g_scriptDLL->FLOAT_POP();
	float             snowfall = g_scriptDLL->FLOAT_POP();
	float             rainfall = g_scriptDLL->FLOAT_POP();
	float             temperature = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsWeather(), "Jonty-Weather properties on non weather object");
		if (thing->IsWeather())
		{
			((WeatherThing*)thing)->SetProperties(temperature, rainfall, snowfall, overcast, fallSpeed);
		}
	}
}

void GScript::SetTimeFadeProperties()
{
	float             fade = g_scriptDLL->FLOAT_POP();
	float             time = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsWeather(), "Jonty-Weather properties on non weather object");
		if (thing->IsWeather())
		{
			((WeatherThing*)thing)->SetTimes(time, fade);
		}
	}
}

void GScript::SetCloudProperties()
{
	float             height = g_scriptDLL->FLOAT_POP();
	float             shade = g_scriptDLL->FLOAT_POP();
	float             clouds = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsWeather(), "Jonty-Weather properties on non weather object");
		if (thing->IsWeather())
		{
			((WeatherThing*)thing)->SetClouds(shade, (int)clouds, height);
		}
	}
}

void GScript::SetLightningProperties()
{
	float             forkMax = g_scriptDLL->FLOAT_POP();
	float             forkMin = g_scriptDLL->FLOAT_POP();
	float             sheetMax = g_scriptDLL->FLOAT_POP();
	float             sheetMin = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		SCRIPT_ASSERT(thing->IsWeather(), "Jonty-Weather properties on non weather object");
		if (thing->IsWeather())
		{
			((WeatherThing*)thing)->SetLightning(sheetMin, sheetMax, forkMin, forkMax);
		}
	}
}

// Inliner IL size: 123
// BW1W120 inlined BW1M119 inlined
inline void SetPointLength(LHPoint& point, float length);

inline void SetPointLength(LHPoint& point, float length)
{
	float x = point.x;
	float y = point.y;
	float z = point.z;
	if (x == 0.0f && y == 0.0f && z == 0.0f)
	{
		return;
	}
	float scale = length / (float)sqrt(z * z + y * y + x * x);
	point.x = scale * x;
	point.y = scale * y;
	point.z = scale * z;
}

void GScript::SetVelocityHeadingSpeed()
{
#ifdef VERSION_BW1WCI
	float    spinZ = g_scriptDLL->FLOAT_POP();
	float    spinY = g_scriptDLL->FLOAT_POP();
	float    spinX = g_scriptDLL->FLOAT_POP();
	float    speed = g_scriptDLL->FLOAT_POP();
	bool32_t randomSpin = spinY == 0.0 && spinX == 0.0 && spinZ == 0.0;
#else
	float speed = g_scriptDLL->FLOAT_POP();
#endif
	LHPoint heading;
	g_scriptDLL->POINT_POP(heading);
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		return;
	}
	LHPoint pos;
	LHPoint velocity;
	GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, pos);
	velocity = heading - pos;
	SetPointLength(velocity, speed);
	if (thing->IsWeather())
	{
		((WeatherThing*)thing)->SetMovement(velocity);
		return;
	}
	Object* object = dynamic_cast<Object*>(thing);
	if (object != NULL)
	{
		if (object->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS)
		{
			PhysicsObject* physics = PhysicsObject::SearchForPhysicsObject(object);
			if (physics != NULL)
			{
				physics->Physics.Velocity = velocity;
			}
			return;
		}
		LHPoint spin;
#ifdef VERSION_BW1WCI
		if (randomSpin)
		{
			spin.x =
				((GRand::GameFloatRand(SCRIPT_SPIN_RANGE, __FILE__, 1795)) - SCRIPT_SPIN_OFFSET) / SCRIPT_SPIN_SCALE;
			spin.y =
				((GRand::GameFloatRand(SCRIPT_SPIN_RANGE, __FILE__, 1796)) - SCRIPT_SPIN_OFFSET) / SCRIPT_SPIN_SCALE;
			spin.z =
				((GRand::GameFloatRand(SCRIPT_SPIN_RANGE, __FILE__, 1797)) - SCRIPT_SPIN_OFFSET) / SCRIPT_SPIN_SCALE;
		}
		else
		{
			spin.x = spinX;
			spin.y = spinY;
			spin.z = spinZ;
		}
#else
		spin.x = ((GRand::GameFloatRand(SCRIPT_SPIN_RANGE, __FILE__, 1535)) - SCRIPT_SPIN_OFFSET) / SCRIPT_SPIN_SCALE;
		spin.y = ((GRand::GameFloatRand(SCRIPT_SPIN_RANGE, __FILE__, 1536)) - SCRIPT_SPIN_OFFSET) / SCRIPT_SPIN_SCALE;
		spin.z = ((GRand::GameFloatRand(SCRIPT_SPIN_RANGE, __FILE__, 1537)) - SCRIPT_SPIN_OFFSET) / SCRIPT_SPIN_SCALE;
#endif
		object->InitialisePhysics(velocity, spin, NULL, true, NULL);
		return;
	}
	ScriptErrorMessage("Thing not an object or weather for Physics");
}

void GScript::StartGameSpeed()
{
	uint32_t owner = GGame::g_game->script->GameSpeedTask;
	uint32_t task = g_scriptDLL->TaskNumber();
	if (owner == 0 || owner == task)
	{
		GGame::g_game->GetCamera()->SetScriptSlomoControl(true);
		GGame::g_game->script->GameSpeedTask = task;
	}
}

void GScript::ClearGameSpeedControl(unsigned long task)
{
	if (GameSpeedTask == task)
	{
		ActualEndGameSpeed();
	}
}

void GScript::ActualEndGameSpeed()
{
	if (GGame::g_game->GetCamera() != NULL)
	{
		GGame::g_game->GetCamera()->SetScriptSlomoControl(false);
	}
	GGame::g_game->SetSpeed(1.0f);
	GGame::g_game->script->GameSpeedTask = 0;
}

void GScript::EndGameSpeed()
{
	uint32_t owner = GGame::g_game->script->GameSpeedTask;
	uint32_t task = g_scriptDLL->TaskNumber();
	if (owner == 0 || owner == task)
	{
		ActualEndGameSpeed();
	}
}

void GScript::SetGameSpeed()
{
	uint32_t owner = GGame::g_game->script->GameSpeedTask;
	uint32_t task = g_scriptDLL->TaskNumber();
	float    speed = g_scriptDLL->FLOAT_POP();
	if (owner == task)
	{
		GGame::g_game->SetSpeed(speed);
	}
}

void GScript::BuildBuilding()
{
	float   desire = g_scriptDLL->FLOAT_POP();
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	desire *= SCRIPT_BUILD_DESIRE_SCALE;
	Town::ForceBuildingOfPlannedAtPos(MapCoords(pos), desire);
}

void GScript::SetAffectedByWind()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          affected = g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(thing != NULL, "Invalid thing");
	if (thing != NULL)
	{
		thing->SetAffectedByWind(affected);
	}
}

void GScript::IsWideScreenTransitionFinished()
{
	bool32_t finished = !GGame::g_game->help_system->IsInWideScreenTransition();
	g_scriptDLL->PUSH((void*)finished, VMType_BOOLEAN);
}

void GScript::GetResource()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	RESOURCE_TYPE     type = (RESOURCE_TYPE)g_scriptDLL->ULONG_POP();
	if (thing != NULL)
	{
		Object* object = dynamic_cast<Object*>(thing);
		if (object != NULL)
		{
			g_scriptDLL->FLOAT_PUSH((float)object->GetResource(type));
			return;
		}
		ScriptErrorMessage("Not object for resource");
	}
	SCRIPT_ASSERT(thing != NULL, "No thing for resource");
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::AddResource()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	uint32_t          amount = (int)g_scriptDLL->FLOAT_POP();
	if (amount > 0)
	{
	}
	RESOURCE_TYPE type = (RESOURCE_TYPE)g_scriptDLL->ULONG_POP();
	if (thing != NULL)
	{
		Object* object = dynamic_cast<Object*>(thing);
		if (object != NULL)
		{
			g_scriptDLL->FLOAT_PUSH((float)object->AddResource(type, amount, NULL, false, NULL, false));
			return;
		}
		ScriptErrorMessage("Not object for resource");
	}
	SCRIPT_ASSERT(thing != NULL, "No thing for resource");
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::RemoveResource()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	uint32_t          amount = (int)g_scriptDLL->FLOAT_POP();
	if (amount > 0)
	{
	}
	RESOURCE_TYPE type = (RESOURCE_TYPE)g_scriptDLL->ULONG_POP();
	if (thing != NULL)
	{
		Object* object = dynamic_cast<Object*>(thing);
		if (object != NULL)
		{
			g_scriptDLL->FLOAT_PUSH((float)object->RemoveResource(type, amount, NULL, NULL));
			return;
		}
		ScriptErrorMessage("Not object for resource");
	}
	SCRIPT_ASSERT(thing != NULL, "No thing for resource");
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::GetTargetRelativePos()
{
	float   angle = g_scriptDLL->FLOAT_POP();
	float   distance = g_scriptDLL->FLOAT_POP();
	LHPoint target;
	g_scriptDLL->POINT_POP(target);
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    origin;
	origin.z = dll->COORD_POP();
	origin.y = dll->COORD_POP();
	origin.x = dll->COORD_POP();
	LHPoint direction;
	direction = target - origin;
	direction.Normalise();
	LHMatrix rotation;
	rotation.SetRotationY(angle * DEGREES_TO_RADIANS);
	rotation.TransformPoint(direction);
	direction = target + direction * distance;
	g_scriptDLL->POINT_PUSH(&direction);
}

void GScript::GetScriptState()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing invalid");
	if (thing != NULL)
	{
		if (thing->IsLiving())
		{
			VILLAGER_STATES state = (VILLAGER_STATES)((Living*)thing)->GetFinalState();
			g_scriptDLL->PUSH((void*)state, VMType_INT);
			return;
		}
		if (thing->IsPuzzleGame())
		{
			SCRIPT_PUZZLE_GAME_STATUS status = (SCRIPT_PUZZLE_GAME_STATUS)((PuzzleGame*)thing)->GetPuzzleGameStatus();
			g_scriptDLL->PUSH((void*)status, VMType_INT);
			return;
		}
		ScriptErrorMessage("Thing not a known type for functions");
	}
	g_scriptDLL->PUSH(NULL, VMType_INT);
}

void GScript::GetLandHeight()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	LandCell* cell =
		LH3DIsland::GetCell((long)(pos.x / MAP_COORDS_METRES_PER_CELL), (long)(pos.z / MAP_COORDS_METRES_PER_CELL));
	uint8_t cellAltitude = cell != NULL ? cell->altitude : 0;
	if (cellAltitude == 0)
	{
		float invalid = SCRIPT_INVALID_LAND_HEIGHT;
		g_scriptDLL->PUSH(*(void**)&invalid, VMType_FLOAT);
		return;
	}
	float altitude = LH3DIsland::GetAltitude(pos);
	g_scriptDLL->PUSH(*(void**)&altitude, VMType_FLOAT);
}

void GScript::LoadMap()
{
	ScriptDLL* dll = g_scriptDLL;
	char*      path = dll->STRING(dll->ULONG_POP());
	LoadingScreen::Active = true;
	LoadingScreen::Time = 0;
	GGame::LoadingFrameEnabled = LOADING_FRAME_STATIC;
	RenderLoadingFrame(true);
	GGame::g_game->LoadMap(path);
	GGame::LoadingFrameEnabled = LOADING_FRAME_DISABLED;
}

void GScript::ReleaseActorFromScript()
{
	uint32_t          id = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* thing = GetScriptGameThing(id);
	SCRIPT_ASSERT(thing != NULL, "Thing not valid");
	if (thing != NULL)
	{
		if (thing->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)
		{
			ReleaseControlFromScript(thing, id, true);
		}
		if (thing->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)
		{
			ScriptErrorMessage("Thing should be released! PANIC-GEt ME!");
		}
	}
}

void GScript::SetMoveable()
{
	uint32_t          thingId = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* thing = GetScriptGameThing(thingId);
	bool32_t          moveable = g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(thing != NULL, "Thing not valid");
	if (thing != NULL)
	{
		thing->Flags = (thing->Flags & ~GAME_THING_WITH_POS_FLAG_IMMOVABLE) |
		               (((moveable == false) & 1) << GAME_THING_WITH_POS_FLAG_IMMOVABLE_BIT);
	}
}

void GScript::SetPickupable()
{
	uint32_t          thingId = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* thing = GetScriptGameThing(thingId);
	bool32_t          pickupable = g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(thing != NULL, "Thing not valid");
	if (thing != NULL)
	{
		thing->Flags = (thing->Flags & ~GAME_THING_WITH_POS_FLAG_CANNOT_BE_PICKED_UP) |
		               (((pickupable == false) & 1) << GAME_THING_WITH_POS_FLAG_CANNOT_BE_PICKED_UP_BIT);
	}
}

void GScript::IsOnFire()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing not valid");
	if (thing != NULL)
	{
		bool32_t onFire = thing->IsOnFire(NULL);
		g_scriptDLL->PUSH((void*)onFire, VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

void GScript::IsPoisoned()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing not valid");
	if (thing != NULL)
	{
		bool32_t poisoned = thing->IsPoisoned();
		g_scriptDLL->PUSH((void*)poisoned, VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

bool32_t GScript::CountPoisonedFunction(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if (thing->IsPoisoned())
	{
		GGame::g_game->script->LoopCount++;
	}
	return false;
}

void GScript::GetPoisonedSize()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing not valid");
	if (thing != NULL)
	{
		SCRIPT_OBJECT_TYPE objectType = thing->GetScriptObjectType();
		if (g_scriptObjectDispatch[objectType].Loop != NULL)
		{
			GGame::g_game->script->LoopCount = 0;
			g_scriptObjectDispatch[objectType].Loop(thing, CountPoisonedFunction, SCRIPT_OBJECT_TYPE_NONE, 0);
			g_scriptDLL->FLOAT_PUSH((float)GGame::g_game->script->LoopCount);
			return;
		}
		ScriptErrorMessage("No Loop funtion for type");
	}
	float none = 0.0f;
	g_scriptDLL->PUSH(*(void**)&none, VMType_FLOAT);
}

bool32_t GScript::SetPoisonedLoopFn(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	((Object*)thing)->SetPoisoned(GGame::g_game->script->LoopParam);
	return false;
}

void GScript::SetPoisoned()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          poisoned = g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(thing != NULL, "Thing not valid");
	if (thing != NULL)
	{
		if (thing->IsScriptContainer())
		{
			SCRIPT_OBJECT_TYPE objectType = thing->GetScriptObjectType();
			GGame::g_game->script->LoopParam = poisoned;
			if (g_scriptObjectDispatch[objectType].Loop != NULL)
			{
				g_scriptObjectDispatch[objectType].Loop(thing, SetPoisonedLoopFn, SCRIPT_OBJECT_TYPE_NONE, 0);
			}
			return;
		}
		Object* object = dynamic_cast<Object*>(thing);
		SCRIPT_ASSERT(object != NULL, "Thing not object");
		if (object != NULL)
		{
			object->SetPoisoned(poisoned);
		}
	}
}

void GScript::SetOnFire()
{
	float             temperature = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          onFire = g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(thing != NULL, "Thing not valid");
	if (thing != NULL)
	{
		Object* object = dynamic_cast<Object*>(thing);
		SCRIPT_ASSERT(object != NULL, "Thing not object");
		if (object != NULL)
		{
			if (onFire)
			{
				object->SetOnFire(temperature);
				return;
			}
#ifdef VERSION_BW1WCI
			FireEffect::RemoveFiresInRadius(object->Pos.Get3DPoint(), SCRIPT_REMOVE_FIRE_RADIUS);
#else
			object->SetTemperature(object->Pos.GetTemperature(), NULL);
#endif
		}
	}
}

void GScript::SetTemperature()
{
	float             temperature = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing not valid");
	if (thing != NULL)
	{
		Object* object = dynamic_cast<Object*>(thing);
		SCRIPT_ASSERT(object != NULL, "Thing not object");
		if (object != NULL)
		{
			object->SetTemperature(temperature, NULL);
		}
	}
}

void GScript::SetIdTarget()
{
	float   time = g_scriptDLL->FLOAT_POP();
	LHPoint gravity(0.0f, (-OBJECT_GRAVITY), 0.0f);
	LHPoint target;
	g_scriptDLL->POINT_POP(target);
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing not valid");
	SCRIPT_ASSERT(time > 0.0f, "Invalid time");
	if (thing == NULL || !(time > 0.0f))
	{
		return;
	}
	Object* object = dynamic_cast<Object*>(thing);
	if (object == NULL)
	{
		return;
	}
	LHPoint pos;
	LHPoint velocity;
	GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, pos);
	velocity = (target - pos - gravity * (0.5f * time * time)) * (1.0f / time);
	LHPoint spin;
	spin.x = ((GRand::GameFloatRand(SCRIPT_SPIN_RANGE, __FILE__, FILELINE(2049, 2316))) - SCRIPT_SPIN_OFFSET) /
	         SCRIPT_SPIN_SCALE;
	spin.y = ((GRand::GameFloatRand(SCRIPT_SPIN_RANGE, __FILE__, FILELINE(2050, 2317))) - SCRIPT_SPIN_OFFSET) /
	         SCRIPT_SPIN_SCALE;
	float   spinZ = ((GRand::GameFloatRand(SCRIPT_SPIN_RANGE, __FILE__, FILELINE(2051, 2318))) - SCRIPT_SPIN_OFFSET) /
	                SCRIPT_SPIN_SCALE;
	uint8_t flags = object->Flags;
	spin.z = spinZ;
	if (flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS)
	{
		PhysicsObject* found = PhysicsObject::SearchForPhysicsObject(object);
		if (found != NULL)
		{
			found->Physics.Velocity = velocity;
			found->Physics.WindResist = 0.0f;
		}
		return;
	}
	PhysicsObject* physics = object->InitialisePhysics(velocity, spin, NULL, true, NULL).Physics;
	if (physics != NULL)
	{
		physics->Physics.WindResist = 0.0f;
	}
}

void GScript::SetWalkPath()
{
	float             end = g_scriptDLL->FLOAT_POP();
	float             start = g_scriptDLL->FLOAT_POP();
	SCRIPT_PATH       path = (SCRIPT_PATH)g_scriptDLL->ULONG_POP();
	bool32_t          reverse = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing not valid");
	if (thing == NULL)
	{
		return;
	}
	if (thing->IsLiving())
	{
		((Living*)thing)->SetupMoveAlongPath(path, VILLAGER_STATE_IN_SCRIPT, start, end, reverse);
		return;
	}
	MobileObject* mobile = dynamic_cast<MobileObject*>(thing);
	if (mobile != NULL)
	{
		mobile->SetupMoveAlongPath(path, start, end, reverse);
		return;
	}
	ScriptErrorMessage("Thing is invalid for move path");
}

void GScript::GetWalkPathPercentage()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Thing not valid");
	if (thing != NULL && thing->IsLiving())
	{
		float percentage = ((Living*)thing)->GetWalkPathPercentage();
		g_scriptDLL->PUSH(*(void**)&percentage, VMType_FLOAT);
		return;
	}
	float done = 1.0f;
	g_scriptDLL->PUSH(*(void**)&done, VMType_FLOAT);
}

void GScript::IsOfType()
{
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	GameThingWithPos*  thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (!(type > SCRIPT_OBJECT_TYPE_NONE && type < SCRIPT_OBJECT_TYPE_LAST))
	{
		ScriptErrorMessage(LHSPrintf("Invalid type=%d", type));
	}
	if (!(type > SCRIPT_OBJECT_TYPE_NONE && type < SCRIPT_OBJECT_TYPE_LAST))
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
		return;
	}
	SCRIPT_ASSERT(thing != NULL, "Object no longer valid");
	if (thing != NULL)
	{
		bool32_t isOfType = FindGeneralCheck(thing, type, subtype);
		g_scriptDLL->PUSH((void*)isOfType, VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

void GScript::GetLastHitObject()
{
	GameThingWithPos* hit = GGame::g_game->script->HitObject;
	if (hit != NULL)
	{
		uint32_t id = AddScriptGameThing(hit, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		return;
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::GetObjectWhichHit()
{
	GameThingWithPos* hitter = GGame::g_game->script->ObjectWhichHit;
	if (hitter != NULL)
	{
		uint32_t id = AddScriptGameThing(hitter, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		return;
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::ClearHitObject()
{
	GGame::g_game->script->SetHitObject(NULL, NULL);
}

void GScript::IsHitObject()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Object no longer valid");
	if (thing != NULL)
	{
		g_scriptDLL->PUSH((void*)(GGame::g_game->script->GetHitObject() == thing), VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

#ifdef VERSION_BW1WCI
void GScript::IsHitLandObject()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL, "Object no longer valid");
	if (thing != NULL)
	{
		g_scriptDLL->PUSH((void*)(GGame::g_game->script->GetObjectHitLand() == thing), VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

void GScript::ClearHitLandObject()
{
	GGame::g_game->script->SetObjectHitLand(NULL);
}

void GScript::GetLastObjectToHitLand()
{
	GameThingWithPos* thing = GGame::g_game->script->GetObjectHitLand();
	if (thing != NULL)
	{
		uint32_t id = AddScriptGameThing(thing, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		return;
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}
#endif

bool32_t GScript::GetSlowestLoopFn(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if (GGame::g_game->script->FindRadius > thing->GetSpeedInMetres())
	{
		GGame::g_game->script->FindRadius = thing->GetSpeedInMetres();
	}
	return false;
}

void GScript::GetSlowestInId()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
	}
	else
	{
		SCRIPT_ASSERT(thing->IsScriptContainer(), "Object not container");
		if (thing->IsScriptContainer())
		{
			SCRIPT_OBJECT_TYPE objectType = thing->GetScriptObjectType();
			if (g_scriptObjectDispatch[objectType].Loop != NULL)
			{
				GGame::g_game->script->FindRadius = MaxFloat;
				g_scriptObjectDispatch[objectType].Loop(thing, GetSlowestLoopFn, SCRIPT_OBJECT_TYPE_NONE, 0);
				g_scriptDLL->FLOAT_PUSH(GGame::g_game->script->FindRadius);
				return;
			}
			ScriptErrorMessage("No Loop funtion for type");
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::IsHelpSystemOn()
{
	g_scriptDLL->PUSH((void*)GGame::g_game->help_system->IsHelpEnabled(), VMType_BOOLEAN);
}

void GScript::SetHelpSystem()
{
	GGame::g_game->help_system->HelpSystemOn = g_scriptDLL->ULONG_POP();
}

void GScript::SetAviSequence()
{
	SCRIPT_AVI_SEQUENCE sequence = (SCRIPT_AVI_SEQUENCE)g_scriptDLL->ULONG_POP();
	if (g_scriptDLL->ULONG_POP())
	{
		PSysGlobal::StartAVISequence(sequence);
	}
	else
	{
		PSysGlobal::StopAVISequence(sequence);
	}
}

void GScript::PlayGesture()
{
	float   scale = g_scriptDLL->FLOAT_POP();
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GESTURE_TYPE gesture = (GESTURE_TYPE)g_scriptDLL->ULONG_POP();
	PSysGlobal::FakeGestureOnLandscape(gesture, pos, scale, GGame::g_game->MyInterface()->GetStatus());
}

void GScript::DevFunction()
{
	switch (g_scriptDLL->ULONG_POP())
	{
	case SCRIPT_DEV_FUNCTION_START_DEVELOPMENT_SCRIPTS: {
		Creature* creature = GGame::g_game->MyPlayer()->GetCreature();
		creature->MoveToDevelopmentPhase(DEVELOPMENT_PHASE_INITIAL, 0);
		creature->ConfinementCentre = creature->HomePos;
		creature->ConfinementRadius = CREATURE_DEVELOPMENT_CONFINEMENT_RADIUS;
		break;
	}
	case SCRIPT_DEV_FUNCTION_ROPE_LEASH_ENABLED:
		if (GGame::g_game->MyPlayer() != NULL && GGame::g_game->MyPlayer()->GetCreature() != NULL)
		{
			GGame::g_game->MyPlayer()->GetCreature()->LeashEnabled[LEASH_TYPE_ROPE] = true;
		}
		break;
	case SCRIPT_DEV_FUNCTION_OTHER_LEASHES_ENABLED:
		if (GGame::g_game->MyPlayer() != NULL && GGame::g_game->MyPlayer()->GetCreature() != NULL)
		{
			GGame::g_game->MyPlayer()->GetCreature()->LeashEnabled[LEASH_TYPE_GOOD] = true;
			GGame::g_game->MyPlayer()->GetCreature()->LeashEnabled[LEASH_TYPE_EVIL] = true;
		}
		break;
	case SCRIPT_DEV_FUNCTION_LOAD_MY_CREATURE:
		GGame::g_game->SetPacket(PACKET_TYPE_LOAD_MY_CREATURE);
		break;
	case SCRIPT_DEV_FUNCTION_RESET_ESCAPE_STATE:
		GGame::TutorialState = TUTORIAL_STATE_ESCAPE_RESET;
		break;
	case SCRIPT_DEV_FUNCTION_CLEAR_INTERACTION_MAGNITUDE:
		if (GGame::g_game->MyPlayer() != NULL && GGame::g_game->MyPlayer()->GetCreature() != NULL)
		{
			GGame::g_game->MyPlayer()->GetCreature()->mind->AttitudeToPlayer.MostRecentPlayerFeedbackValue = 0.0f;
		}
		break;
	case SCRIPT_DEV_FUNCTION_MY_CREATURE_POINT_OUT_HIGHLIGHT: {
		Creature* creature = GGame::g_game->MyPlayer()->GetCreature();
		if (creature != NULL)
		{
			MapCoords pos(creature->Pos);
			long      spiralX = 1;
			long      spiralZ = 1;
			int       remaining = SCRIPT_HIGHLIGHT_SEARCH_CELLS;
			do
			{
				if (pos.InBounds())
				{
					for (Object* object = pos.FindType(OBJECT_TYPE_ANY, NULL); object != NULL;
					     object = pos.FindType(OBJECT_TYPE_ANY, object))
					{
						ScriptHighlight* highlight = dynamic_cast<ScriptHighlight*>(object);
						if (highlight != NULL && !highlight->IsDidYouKnow())
						{
							CreatureBelief* belief = creature->mind->AddBeliefAboutObject(creature, highlight);
							CreaturePlan    plan(CREATURE_DESIRE_TO_OBEY_PLAYER, CREATURE_POINT_OUT_HIGHLIGHT, NULL,
							                     belief, NULL, 1.0f);
							creature->ForceActivityAndForceAction(plan, true, true);
							creature->mind->agenda.CommandState.Commanded = true;
							break;
						}
					}
				}
				pos += *GUtils::Spiral(spiralX, spiralZ);
			} while (--remaining != 0);
		}
		break;
	}
	case SCRIPT_DEV_FUNCTION_MY_CREATURE_CAN_DIE: {
		Creature* creature = GGame::g_game->MyPlayer()->GetCreature();
		if (creature != NULL)
		{
			creature->CanDie = true;
		}
		break;
	}
	case SCRIPT_DEV_FUNCTION_MY_CREATURE_CANNOT_DIE: {
		Creature* creature = GGame::g_game->MyPlayer()->GetCreature();
		if (creature != NULL)
		{
			creature->CanDie = false;
		}
		break;
	}
	case SCRIPT_DEV_FUNCTION_CREATURE_HELP_OFF: {
		Creature* creature = GGame::g_game->MyPlayer()->GetCreature();
		if (creature != NULL)
		{
			for (uint32_t i = 0; i < CREATURE_HELP_TYPE_LAST; i++)
			{
				creature->ClearHelpStack((CREATURE_HELP_TYPE)i);
			}
		}
		break;
	}
	case SCRIPT_DEV_FUNCTION_ENTER_SAVEGAMEROOM:
		CurrentRoom = TEMPLE_ROOM_SAVE_GAME;
		GGame::g_game->GoInsideCitadel(TEMPLE_ROOM_SAVE_GAME, false);
		CurrentRoom = TEMPLE_ROOM_SAVE_GAME;
		break;
	}
}

void GScript::HasMouseWheel()
{
	g_scriptDLL->PUSH((void*)LHSys::GetMouse().GetMouseWheelPresent(), VMType_BOOLEAN);
}

void GScript::GetNumberMouseButtons()
{
	g_scriptDLL->FLOAT_PUSH((float)LHSys::GetMouse().GetNumberOfButtons());
}

void GScript::GetFootballPitch()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
	}
	else
	{
		SCRIPT_ASSERT(thing->IsTown(), "Must look in a town!");
		if (thing->IsTown())
		{
			GameThing* pitch = ((Town*)thing)->FootballPitch;
			if (pitch != NULL)
			{
				uint32_t id = AddScriptGameThing((GameThingWithPos*)pitch, false);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				return;
			}
		}
	}
	ScriptErrorMessage("No pitch!");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::StopAllGames()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		return;
	}
	SCRIPT_ASSERT(thing->IsFootball(), "Must be football");
	if (thing->IsFootball())
	{
		((Football*)thing)->StopFootballGame();
	}
}

void GScript::AttachToGame()
{
	int               side = g_scriptDLL->ULONG_POP();
	GameThingWithPos* game = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && game != NULL, "Object no longer valid");
	if (thing != NULL && game != NULL)
	{
		SCRIPT_ASSERT(game->IsFootball(), "Must be footy!");
		SCRIPT_ASSERT(thing->IsVillager(NULL), "Must be villager!");
		if (game->IsFootball() && thing->IsVillager(NULL))
		{
			if (((Football*)game)->AddVillagerToTeam((Villager*)thing, side) != true)
			{
				ScriptErrorMessage("Cannot add to team!");
			}
			((Villager*)thing)->SetInFootballGame((Football*)game);
		}
	}
}

void GScript::DetachFromGame()
{
	g_scriptDLL->ULONG_POP();
	GameThingWithPos* game = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && game != NULL, "Object no longer valid");
	if (thing != NULL && game != NULL)
	{
		SCRIPT_ASSERT(game->IsFootball(), "Must be footy!");
		SCRIPT_ASSERT(thing->IsVillager(NULL), "Must be villager!");
		if (game->IsFootball() && thing->IsVillager(NULL))
		{
			if (((Football*)game)->RemoveVillagerFromTeam((Villager*)thing) != true)
			{
				ScriptErrorMessage("Cannot detach!");
			}
		}
	}
}

void GScript::DetachFirstFromGame()
{
	int               side = g_scriptDLL->ULONG_POP();
	GameThingWithPos* game = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (game == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		return;
	}
	SCRIPT_ASSERT(game->IsFootball(), "Must be footy!");
	if (game->IsFootball())
	{
		if (((Football*)game)->RemovePlayerFromSide(side) != true)
		{
			ScriptErrorMessage("Cannot detach!");
		}
	}
}

void GScript::SetOnlyForScripts()
{
	GameThingWithPos* game = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          onlyForScripts = g_scriptDLL->ULONG_POP();
	if (game == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		return;
	}
	SCRIPT_ASSERT(game->IsFootball(), "Must be footy!");
	if (game->IsFootball())
	{
		((Football*)game)->AvailableToVillagers = onlyForScripts == false;
	}
}

void GScript::StartWithReferee()
{
	GameThingWithPos* referee = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* game = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(referee != NULL && game != NULL, "Object no longer valid");
	if (referee != NULL && game != NULL)
	{
		SCRIPT_ASSERT(game->IsFootball(), "Must be footy!");
		SCRIPT_ASSERT(referee->IsVillager(NULL), "Must be villager!");
		if (game->IsFootball() && referee->IsVillager(NULL))
		{
			if (((Football*)game)->AddReferee((Villager*)referee) != true)
			{
				ScriptErrorMessage("Cannot start game with ref!");
			}
			((Villager*)referee)->SetInFootballGame((Football*)game);
		}
	}
}

void GScript::GetTeamSize()
{
	bool32_t          home = g_scriptDLL->ULONG_POP();
	GameThingWithPos* game = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (game == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
	}
	else
	{
		SCRIPT_ASSERT(game->IsFootball(), "Must be footy!");
		if (game->IsFootball())
		{
			if (home)
			{
				g_scriptDLL->FLOAT_PUSH((float)((Football*)game)->GetNumberOfPeopleInHomeTeam());
				return;
			}
			g_scriptDLL->FLOAT_PUSH((float)((Football*)game)->GetNumberOfPeopleInAwayTeam());
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::GetType()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		g_scriptDLL->PUSH(NULL, VMType_INT);
		return;
	}
	SCRIPT_OBJECT_TYPE type = thing->GetScriptObjectType();
	g_scriptDLL->PUSH((void*)type, VMType_INT);
}

void GScript::GetSubType()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		g_scriptDLL->PUSH(NULL, VMType_INT);
		return;
	}
	uint32_t subtype = GetSubType(thing);
	g_scriptDLL->PUSH((void*)subtype, VMType_INT);
}

// Inliner IL size: <= 40
// BW1W120 inlined BW1M119 inlined
inline bool32_t IsValidDesire(TOWN_DESIRE_INFO desire);

inline bool32_t IsValidDesire(TOWN_DESIRE_INFO desire)
{
	return desire >= TOWN_DESIRE_INFO_FIRST && desire < TOWN_DESIRE_INFO_LAST;
}

void GScript::GetDesire()
{
	TOWN_DESIRE_INFO desire = (TOWN_DESIRE_INFO)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(IsValidDesire(desire), "Invalid desire");
	if (!IsValidDesire(desire))
	{
		g_scriptDLL->FLOAT_PUSH(0.0f);
		return;
	}
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
	}
	else if (thing->IsTown())
	{
		g_scriptDLL->FLOAT_PUSH(((Town*)thing)->GetRawDesire(desire));
		return;
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::SetFade()
{
	float time = g_scriptDLL->FLOAT_POP();
	float blue = g_scriptDLL->FLOAT_POP();
	float green = g_scriptDLL->FLOAT_POP();
	float red = g_scriptDLL->FLOAT_POP();
	GGame::g_game->script->SetupScreenFadeTo((uint8_t)red, (uint8_t)green, (uint8_t)blue, (signed char)time);
}

void GScript::SetFadeIn()
{
	float time = g_scriptDLL->FLOAT_POP();
	GGame::g_game->script->SetupScreenFadeBackToNormal((signed char)time);
}

void GScript::IsFadeFinished()
{
	bool32_t faded = GGame::g_game->script->IsScreenFaded();
	g_scriptDLL->PUSH((void*)faded, VMType_BOOLEAN);
}

void GScript::GetThingBeliefForPlayer()
{
	float             scriptPlayer = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GPlayer*          player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((int)scriptPlayer));
	SCRIPT_ASSERT(thing != NULL && player != NULL, "Object or player no longer valid");
	if (thing != NULL && player != NULL)
	{
		if (thing->IsTown())
		{
			g_scriptDLL->FLOAT_PUSH(((Town*)thing)->GetBeliefInPlayer(player));
			return;
		}
		if (thing->GetPlayer() == player)
		{
			g_scriptDLL->FLOAT_PUSH(1.0f);
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::GetThingHelp()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
	}
	else
	{
		SCRIPT_ASSERT(thing->IsReward(), "Not reward!");
		if (thing->IsReward())
		{
			g_scriptDLL->FLOAT_PUSH((float)(uint32_t)((GRewardInfo*)((Reward*)thing)->info)->HelpEnum);
			return;
		}
		if (thing->IsSpellDispenser())
		{
			g_scriptDLL->FLOAT_PUSH(
				(float)(uint32_t)((SpellDispenser*)thing)->GetMagicInfoProduced()->GetMagicEffectInfo()->HelpEnum);
			return;
		}
		if (thing->IsObject())
		{
			g_scriptDLL->FLOAT_PUSH((float)(uint32_t)((Object*)thing)->info->HelpStartEnum);
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::GetFirstHelp()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
	}
	else
	{
		if (thing->IsSpellDispenser())
		{
			g_scriptDLL->FLOAT_PUSH(
				(float)(uint32_t)((SpellDispenser*)thing)->GetMagicInfoProduced()->GetMagicEffectInfo()->HelpEnum);
			return;
		}
		if (thing->IsObject())
		{
			g_scriptDLL->FLOAT_PUSH((float)(uint32_t)((Object*)thing)->info->HelpStartEnum);
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

#ifndef VERSION_BW1W100
void GScript::GetLastHelp()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
	}
	else
	{
		if (thing->IsSpellDispenser())
		{
			g_scriptDLL->FLOAT_PUSH(
				(float)(uint32_t)((SpellDispenser*)thing)->GetMagicInfoProduced()->GetMagicEffectInfo()->HelpEnum);
			return;
		}
		if (thing->IsObject())
		{
			g_scriptDLL->FLOAT_PUSH((float)(uint32_t)((Object*)thing)->info->HelpStartEnum);
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}
#endif

void GScript::LoadMyCreature()
{
	MapCoords coords;
	LHPoint   pos;
	g_scriptDLL->POINT_POP(pos);
	coords.SetX(pos.x);
	coords.SetZ(pos.z);
	coords.SetAltitude(0.0f);
	GGame::g_game->LoadMyCreatureIntoNewMap(coords.MapX(), coords.MapZ());
}

void GScript::LoadComputerCreature()
{
	MapCoords  coords;
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    pos;
	g_scriptDLL->POINT_POP(pos);
	coords.SetX(pos.x);
	coords.SetZ(pos.z);
	coords.SetAltitude(0.0f);
	uint32_t player = ConvertScriptPlayerToGamePlayer((int)g_scriptDLL->FLOAT_POP());
	dll = g_scriptDLL;
	char*         path = dll->STRING(dll->ULONG_POP());
	CREATURE_TYPE type = (CREATURE_TYPE)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(GGame::g_game->GetPlayer(player)->GetCreature() == NULL,
	              "Player has already his creature loaded, but I overwrite it");
	if (GGame::g_game->GetPlayer(player)->ComputerPlayer != NULL)
	{
		GGame::g_game->GetPlayer(player)->ComputerPlayer->CreateCreatureFromFile(type, coords, path);
		return;
	}
	ScriptErrorMessage("Player has not a tocomputer player field");
}

void GScript::SetObjectRelativeBelief()
{
	float             belief = g_scriptDLL->FLOAT_POP();
	uint32_t          player = ConvertScriptPlayerToGamePlayer((int)g_scriptDLL->FLOAT_POP());
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		return;
	}
	SCRIPT_ASSERT(thing->IsTown(), "Not town!");
	if (thing->IsTown())
	{
		((Town*)thing)->PlayerTakeTownCheat(GGame::g_game->GetPlayer(player), belief);
	}
}

void GScript::SetBelief()
{
	float             scale = g_scriptDLL->FLOAT_POP();
	uint32_t          player = ConvertScriptPlayerToGamePlayer((int)g_scriptDLL->FLOAT_POP());
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		return;
	}
	SCRIPT_ASSERT(thing->IsTown(), "Not town!");
	if (thing->IsTown())
	{
		GBelief& belief = ((Town*)thing)->belief;
		float    value = belief.GetBeliefInPlayer(thing->GetPlayer()) * scale;
		belief.SetBelief(player, value);
	}
}

#ifndef VERSION_BW1W100
void GScript::SetTownBeliefCap()
{
	float cap = g_scriptDLL->FLOAT_POP();
	ConvertScriptPlayerToGamePlayer((int)g_scriptDLL->FLOAT_POP());
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		return;
	}
	SCRIPT_ASSERT(thing->IsTown(), "Not town!");
	if (thing->IsTown())
	{
		((Town*)thing)->belief.SetBeliefInPlayerCap(thing->GetPlayer(), cap);
	}
}
#endif

void GScript::SetVirtualInfluence()
{
	uint32_t player = ConvertScriptPlayerToGamePlayer((int)g_scriptDLL->FLOAT_POP());
	bool32_t enable = g_scriptDLL->ULONG_POP();
	GGame::g_game->GetPlayer(player)->SetVirtualInfluence(enable);
}

void GScript::SetActive()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          active = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		return;
	}
	if (thing->IsScriptHighlight())
	{
		((ScriptHighlight*)thing)->SetActivated(active);
		return;
	}
	if (thing->IsSpellDispenser())
	{
		((SpellDispenser*)thing)->SetActive(active);
		return;
	}
	if (thing->IsScaffold())
	{
		if (active)
		{
			((Scaffold*)thing)->ForceBuildBuilding(NULL);
		}
		return;
	}
#ifdef VERSION_BW1WCI
	if (thing->IsStreetLantern())
	{
		((GStreetLantern*)thing)->Active = active;
		return;
	}
#endif
	ScriptErrorMessage("Invalid object type");
}

void GScript::IsActive()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
		return;
	}
	bool32_t active = thing->IsActive();
	g_scriptDLL->PUSH((void*)active, VMType_BOOLEAN);
}

void GScript::IsThingValid()
{
	uint32_t id = g_scriptDLL->THING_OR_NULL_POP();
	if (id != 0)
	{
		GameThingWithPos* thing = GetScriptGameThing(id);
		if (thing != NULL)
		{
			if (thing->IsTown())
			{
				bool32_t standing = ((Town*)thing)->IsCompletelyDestroyed() == false;
				g_scriptDLL->PUSH((void*)standing, VMType_BOOLEAN);
				return;
			}
			g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
			return;
		}
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

void GScript::VortexFadeOut()
{
	LandscapeVortex*  vortex;
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		vortex = dynamic_cast<LandscapeVortex*>(thing);
		if (vortex != NULL)
		{
			vortex->StartFadeOut();
			return;
		}
		ScriptErrorMessage("Thing not vortex");
	}
	if (vortex == NULL)
	{
		ScriptErrorMessage("vortex fade out failed");
	}
}

void GScript::SetMistFade()
{
	uint32_t          duration = g_scriptDLL->ULONG_POP();
	uint32_t          endAlpha = g_scriptDLL->ULONG_POP();
	uint32_t          startAlpha = g_scriptDLL->ULONG_POP();
	uint32_t          endScale = g_scriptDLL->ULONG_POP();
	uint32_t          startScale = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptWarningMessage("Thing deleted");
		return;
	}
	if (thing->IsMist())
	{
		((Mist*)thing)
			->SetFade(*(float*)&startScale, *(float*)&endScale, *(float*)&startAlpha, *(float*)&endAlpha,
		              *(float*)&duration);
		return;
	}
	SCRIPT_ASSERT(thing->IsMist(), "Must be mist object!");
}

void GScript::GetMistFade()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptWarningMessage("Thing deleted");
	}
	else
	{
		if (thing->IsMist())
		{
			g_scriptDLL->FLOAT_PUSH(((Mist*)thing)->GetFadePercentage());
			return;
		}
		SCRIPT_ASSERT(thing->IsMist(), "Must be mist object!");
	}
	g_scriptDLL->FLOAT_PUSH(1.0f);
}

void GScript::PlayHandDemo()
{
	char       path[MAX_PATH];
	bool32_t   withoutHandModify = g_scriptDLL->ULONG_POP();
	bool32_t   withPause = g_scriptDLL->ULONG_POP();
	ScriptDLL* dll = g_scriptDLL;
	sprintf(path, ".\\Data\\HandDemo\\%s.hnd", dll->STRING(dll->ULONG_POP()));
	GGame::g_game->MyInterface()->StartPlayBack(path, g_scriptDLL->TaskNumber(), withoutHandModify);
	GGame::g_game->script->HandDemoWithPause = withPause;
	GGame::g_game->script->HandDemoTrigger = false;
}

void GScript::IsHandDemoPlayed()
{
	bool32_t finished = GGame::g_game->MyInterface()->IsPlayBack(0) == false;
	g_scriptDLL->PUSH((void*)finished, VMType_BOOLEAN);
}

bool32_t GScript::SetSkeletonLoopFn(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	thing->SetSkeleton(GGame::g_game->script->LoopParam);
	return false;
}

void GScript::SetSkeleton()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          skeleton = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
		return;
	}
	if (thing->IsScriptContainer())
	{
		SCRIPT_OBJECT_TYPE objectType = thing->GetScriptObjectType();
		GGame::g_game->script->LoopParam = skeleton;
		if (g_scriptObjectDispatch[objectType].Loop != NULL)
		{
			g_scriptObjectDispatch[objectType].Loop(thing, SetSkeletonLoopFn, SCRIPT_OBJECT_TYPE_NONE, 0);
		}
		return;
	}
	thing->SetSkeleton(skeleton);
}

void GScript::IsSkeleton()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
		return;
	}
	bool32_t skeleton = thing->IsSkeleton();
	g_scriptDLL->PUSH((void*)skeleton, VMType_BOOLEAN);
}

void GScript::AddTargetPos()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
		return;
	}
	if (thing->IsParticleContainer())
	{
		((GParticleContainer*)thing)->AddTarget(pos);
	}
}

void GScript::AddTargetObject()
{
	GameThingWithPos* target = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
		return;
	}
	if (target != NULL && thing->IsParticleContainer())
	{
		((GParticleContainer*)thing)->AddTarget(target);
	}
}

bool32_t GScript::SetIndestructableLoopFn(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	bool32_t indestructible = GGame::g_game->script->LoopParam;
	thing->Flags = (thing->Flags & ~GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE) |
	               ((indestructible & 1) << GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE_BIT);
	return false;
}

void GScript::SetIndestructable()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          indestructible = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
		return;
	}
	if (thing->IsScriptContainer())
	{
		SCRIPT_OBJECT_TYPE objectType = thing->GetScriptObjectType();
		GGame::g_game->script->LoopParam = indestructible;
		if (g_scriptObjectDispatch[objectType].Loop != NULL)
		{
			g_scriptObjectDispatch[objectType].Loop(thing, SetIndestructableLoopFn, SCRIPT_OBJECT_TYPE_NONE, 0);
		}
		return;
	}
	thing->Flags = (thing->Flags & ~GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE) |
	               ((indestructible & 1) << GAME_THING_WITH_POS_FLAG_INDESTRUCTIBLE_BIT);
}

void GScript::SetSetOnFire()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          canBeSetOnFire = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
		return;
	}
	thing->GameThing::Flags = (thing->GameThing::Flags & ~GAME_THING_FLAG_FIREPROOF) |
	                          (((canBeSetOnFire == false) & 1) << GAME_THING_FLAG_FIREPROOF_BIT);
}

void GScript::SetHurtByFire()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          hurtByFire = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
		return;
	}
	thing->GameThing::Flags = (thing->GameThing::Flags & ~GAME_THING_FLAG_NO_BURN_DAMAGE) |
	                          (((hurtByFire == false) & 1) << GAME_THING_FLAG_NO_BURN_DAMAGE_BIT);
}

void GScript::ImmersionExists()
{
	GGame::g_game->MyInterface();
	g_scriptDLL->PUSH((void*)(ImmersionMouse != NULL), VMType_BOOLEAN);
}

void GScript::SetIntroBuilding()
{
	GGame::g_game->WaitForBuildingWood = g_scriptDLL->ULONG_POP();
}

void GScript::ObjectInfoBits()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
		return;
	}
	AnimatedStatic* statik = dynamic_cast<AnimatedStatic*>(thing);
	if (statik == NULL)
	{
		ScriptErrorMessage("Thing must be an animated static");
		return;
	}
	g_scriptDLL->FLOAT_PUSH((float)statik->CountGateStones());
}

void GScript::SetVortexParameters()
{
	GameThingWithPos* flockThing = NULL;
	uint32_t          flockId = g_scriptDLL->THING_OR_NULL_POP();
	if (flockId != 0)
	{
		flockThing = GetScriptGameThing(flockId);
	}
	float   domainRadius = g_scriptDLL->FLOAT_POP();
	float   flockDistance = g_scriptDLL->FLOAT_POP();
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GameThingWithPos* townThing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* vortexThing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	LandscapeVortex*  vortex = dynamic_cast<LandscapeVortex*>(vortexThing);
	Town*             town = dynamic_cast<Town*>(townThing);
	Flock*            flock = dynamic_cast<Flock*>(flockThing);
	SCRIPT_ASSERT(town != NULL && vortex != NULL, "Thing not valid");
	if (vortex != NULL)
	{
		vortex->SetTown(town);
		vortex->SetFlockParams(MapCoords(pos), flockDistance, domainRadius, flock);
	}
}

void GScript::SetHighlightProperties()
{
	DYK_CATEGORY      category = (DYK_CATEGORY)g_scriptDLL->ULONG_POP();
	uint32_t          scriptId = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && thing->IsScriptHighlight(), "Thing not valid");
	if (thing != NULL)
	{
		if (thing->IsScriptHighlight())
		{
			((ScriptHighlight*)thing)->SetScriptId(scriptId, category);
		}
	}
}

void GScript::ScriptIsHandDemoTrigger()
{
	g_scriptDLL->PUSH((void*)GGame::g_game->script->HandDemoTrigger, VMType_BOOLEAN);
	GGame::g_game->script->HandDemoTrigger = false;
}

void GScript::GetArsePosition()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	LHPoint           point(0.0f, 0.0f, 0.0f);
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
	}
	else if (thing->IsCreature())
	{
		point = *((Creature*)thing)->GetCreature3D()->GetAnusPos();
	}
	else
	{
		GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, point);
	}
	g_scriptDLL->POINT_PUSH(point);
}

void GScript::GetBellyPosition()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	LHPoint           point(0.0f, 0.0f, 0.0f);
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not found!");
	}
	else if (thing->IsCreature())
	{
		long bone = ((Creature*)thing)->GetCreature3D()->BellyBone;
		point = *((Creature*)thing)->GetCreature3D()->GetBonePos(bone);
	}
	else
	{
		GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, point);
	}
	g_scriptDLL->POINT_PUSH(point);
}

void GScript::GameThingCanViewCamera()
{
	float             angle = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && thing->IsObject(), "Thing not valid!");
	if (thing != NULL)
	{
		if (thing->IsObject())
		{
			GGame::g_game->GetCamera();
			LHPoint camera = *LH3DTech::GetCameraPosition();
			if (thing->IsCreature())
			{
				MapCoords coords(camera);
				bool32_t  looking =
					((Creature*)thing)->IsLookingTowardsPos(coords, (int)(SCRIPT_DEGREES_IN_CIRCLE / angle));
				g_scriptDLL->PUSH((void*)looking, VMType_BOOLEAN);
				return;
			}
			else
			{
				LHPoint pos;
				GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, pos);
				float    yAngle = ((Object*)thing)->GetYAngle();
				bool32_t canSee = GUtils::CanISeeThisPoint(&pos, yAngle, (angle * 0.5f) * DEGREES_TO_RADIANS, &camera);
				g_scriptDLL->PUSH((void*)canSee, VMType_BOOLEAN);
				return;
			}
		}
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

void GScript::SetTownDesireBoost()
{
	float             boost = g_scriptDLL->FLOAT_POP();
	TOWN_DESIRE_INFO  desire = (TOWN_DESIRE_INFO)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && thing->IsTown(), "Thing not valid!");
	SCRIPT_ASSERT(desire < TOWN_DESIRE_INFO_LAST && boost >= -1.0f && boost <= 1.0f, "Invalid Params");
	if (desire < TOWN_DESIRE_INFO_LAST && boost >= -1.0f && boost <= 1.0f && thing != NULL && thing->IsTown())
	{
		((Town*)thing)->desire.DesireBoost[desire] = boost;
		((Town*)thing)->desire.SortDesires();
	}
}

void GScript::ClearActorMind()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && thing->IsTown(), "Thing not valid!");
	if (thing != NULL)
	{
		if (((Living*)thing)->data_for_script_remind != NULL)
		{
			((Living*)thing)->data_for_script_remind->ToBeDeleted(false);
			((Living*)thing)->data_for_script_remind = NULL;
		}
	}
}

void GScript::EnterExitCitadel()
{
	if (g_scriptDLL->ULONG_POP())
	{
		GGame::g_game->GoInsideCitadel(TEMPLE_ROOM_WORLD, true);
		return;
	}
	GGame::g_game->LeaveInsideCitadel();
}

void GScript::SetObjectMana()
{
	float             mana = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && (thing->IsWorshipSite() || thing->IsSpellIcon()), "Thing not valid!");
	if (thing != NULL)
	{
		WorshipSite* site = NULL;
		if (thing->IsWorshipSite())
		{
			site = (WorshipSite*)thing;
		}
		else if (thing->IsSpellIcon())
		{
			site = thing->GetWorshipSite();
		}
		if (site != NULL)
		{
			site->ClearAllSpellIconsChantStores();
			site->ChantStore = mana;
		}
	}
}

void GScript::GetObjectMana()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && thing->IsWorshipSite(), "Thing not valid!");
	if (thing != NULL)
	{
		if (thing->IsWorshipSite())
		{
			g_scriptDLL->FLOAT_PUSH(((WorshipSite*)thing)->GetChantStore());
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::GetSacrificeTotal()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && thing->IsWorshipSite(), "Thing not valid!");
	if (thing != NULL)
	{
		if (thing->IsWorshipSite())
		{
			g_scriptDLL->FLOAT_PUSH(((WorshipSite*)thing)->GetSacrficeTotal());
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::SexIsMale()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL && thing->IsVillager(NULL))
	{
		g_scriptDLL->PUSH((void*)(((Villager*)thing)->GetInfo()->sex == SEX_MALE), VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
}

void GScript::SetBookmarkPosition()
{
	ScriptDLL* dll = g_scriptDLL;
	dll->COORD_POP();
	dll->COORD_POP();
	dll->COORD_POP();
	g_scriptDLL->ULONG_POP();
}

void GScript::SetScaffoldProperties()
{
	bool32_t          destroy = g_scriptDLL->ULONG_POP();
	float             value = g_scriptDLL->FLOAT_POP();
	ABODE_NUMBER      type = (ABODE_NUMBER)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid!");
		return;
	}
	SCRIPT_ASSERT(thing->IsScaffold(), "Thing must be scaffold");
	if (thing->IsScaffold())
	{
		Scaffold* scaffold = (Scaffold*)thing;
		scaffold->BuildingType = type;
		scaffold->SetScaffoldValue((int)value);
		scaffold->DestroyWhenFinished = destroy;
	}
}

void GScript::SetDisciple()
{
	int               unused = g_scriptDLL->ULONG_POP();
	VILLAGER_DISCIPLE disciple = (VILLAGER_DISCIPLE)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid!");
		return;
	}
	SCRIPT_ASSERT(thing->IsVillager(NULL), "Thing must be villager");
	if (thing->IsVillager(NULL))
	{
		((Villager*)thing)->SetVillagerDisciple(NULL, disciple, unused);
	}
}

void GScript::SetBuildWorshipSite()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          canBuild = g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(thing != NULL && (thing->IsTown() || thing->IsCitadelHeart()), "Must be town");
	if (thing != NULL)
	{
		if (thing->IsTown())
		{
			((Town*)thing)->CannotBuildWorshipSite = canBuild == false;
			if (canBuild)
			{
				((Town*)thing)->CheckAddWorshipSite();
				if (thing->GetPlayer() != NULL && thing->GetPlayer()->GetCitadel() != NULL)
				{
					thing->GetPlayer()->GetCitadel()->CannotBuildWorshipSite = canBuild == false;
					thing->GetPlayer()->GetCitadel()->FindOrCreateWorshipSite((Town*)thing);
				}
			}
		}
		else if (thing->IsCitadelHeart())
		{
			Citadel* citadel = thing->GetCitadel();
			if (citadel != NULL)
			{
				citadel->CannotBuildWorshipSite = canBuild == false;
			}
			if (canBuild)
			{
				((CitadelHeart*)thing)->AddAllWorshipSitesNeeded(citadel, 0.0f);
			}
		}
	}
}

void GScript::SetPlayerAlly()
{
	float    value = g_scriptDLL->FLOAT_POP();
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((int)g_scriptDLL->FLOAT_POP()));
	GPlayer* other = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((int)g_scriptDLL->FLOAT_POP()));
	if (other != NULL && player != NULL)
	{
		player->SetAllyValue(other, value);
	}
}

void GScript::GetPlayerAlly()
{
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((int)g_scriptDLL->FLOAT_POP()));
	GPlayer* other = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((int)g_scriptDLL->FLOAT_POP()));
	float    value = 0.0f;
	if (other != NULL && player != NULL)
	{
		value = player->GetAllyValue(other);
	}
	g_scriptDLL->FLOAT_PUSH(value);
}

void GScript::GetNoWindResistanceFlag()
{
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((int)g_scriptDLL->FLOAT_POP()));
	bool32_t noResistance = false;
	if (player != NULL)
	{
		noResistance = player->WindResistance;
	}
	g_scriptDLL->PUSH((void*)noResistance, VMType_BOOLEAN);
}

void GScript::SetNoWindResistanceFlag()
{
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((int)g_scriptDLL->FLOAT_POP()));
	bool32_t noResistance = g_scriptDLL->ULONG_POP();
	if (player != NULL)
	{
		player->WindResistance = noResistance;
	}
}

void GScript::SetObjectFadeIn()
{
	uint32_t          time = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object dead man!");
		return;
	}
	if (thing->IsCreature())
	{
		((Creature*)thing)->SetFizz(1.0f, 0.0f, false);
		((Creature*)thing)->SetFizz(0.0f, *(float*)&time, false);
		return;
	}
	ScriptErrorMessage("Not implemented yet - TODO JC");
}

void GScript::AffectedBySpell()
{
	MAGIC_TYPE        spell = (MAGIC_TYPE)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object dead man!");
	}
	else
	{
		SCRIPT_ASSERT(thing->IsCreature(), "Object must be a creature!");
		if (thing->IsCreature())
		{
			const GMagicCreatureSpellInfo* info =
				((const GMagicInfo*)GMagicInfo::Infos[spell])->AsMagicCreatureSpellInfo();
			if (info != NULL)
			{
				bool32_t active = ((Creature*)thing)->ReceiveSpell->IsCreatureSpellActive(info->SpellType);
				g_scriptDLL->PUSH((void*)active, VMType_BOOLEAN);
				return;
			}
		}
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

void GScript::SetMagicInObject()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	MAGIC_TYPE        magic = (MAGIC_TYPE)g_scriptDLL->ULONG_POP();
	bool32_t          add = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
		return;
	}
	SCRIPT_ASSERT(thing->IsTown(), "Object should be town");
	if (thing->IsTown())
	{
		if (add)
		{
			((Town*)thing)->AddMagicTypesHeld(magic);
			return;
		}
		((Town*)thing)->RemoveMagicTypesHeld(magic);
	}
}

void GScript::GetObjectAdultSize()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object should be alive!");
	}
	else
	{
		SCRIPT_ASSERT(thing->IsTown() || thing->IsAbode(), "Object should be town, or abode");
		if (thing->IsTown())
		{
			g_scriptDLL->FLOAT_PUSH((float)((Town*)thing)->stats.NumAdults);
			return;
		}
		if (thing->IsAbode())
		{
			g_scriptDLL->FLOAT_PUSH(((Abode*)thing)->AdultCount);
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::GetObjectCapacity()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object should be alive!");
	}
	else
	{
		SCRIPT_ASSERT(thing->IsTown() || thing->IsAbode(), "Object should be town, or abode");
		if (thing->IsTown())
		{
			g_scriptDLL->FLOAT_PUSH(
				(float)(int)(((Town*)thing)->stats.MaxVillagersInAbodes + ((Town*)thing)->stats.MaxChildrenInAbodes));
			return;
		}
		if (thing->IsAbode())
		{
			g_scriptDLL->FLOAT_PUSH((float)(((Abode*)thing)->GetInfo()->MaxChildrenInAbode +
			                                ((Abode*)thing)->GetInfo()->MaxVillagersInAbode));
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::GetObjectAdultCapacity()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object should be alive!");
	}
	else
	{
		SCRIPT_ASSERT(thing->IsTown() || thing->IsAbode(), "Object should be town, or abode");
		if (thing->IsTown())
		{
			g_scriptDLL->FLOAT_PUSH((float)((Town*)thing)->stats.MaxVillagersInAbodes);
			return;
		}
		if (thing->IsAbode())
		{
			g_scriptDLL->FLOAT_PUSH((float)((Abode*)thing)->GetInfo()->MaxVillagersInAbode);
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

#ifndef VERSION_BW1WCI
void GScript::SquareRoot()
{
	g_scriptDLL->FLOAT_PUSH(sqrtf(g_scriptDLL->FLOAT_POP()));
}
#endif

void GScript::SetPauseWeather()
{
	GWeather::ClimateActive = g_scriptDLL->ULONG_POP() != 0;
}

void GScript::SetStormCreation()
{
	GWeather::StormCreationActive = g_scriptDLL->ULONG_POP() != 0;
}

void GScript::KillStormsInArea()
{
	float   radius = g_scriptDLL->FLOAT_POP();
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	LH3DStorm::KillAllStormsInArea(pos, radius);
}

void GScript::InsideTemple()
{
	g_scriptDLL->PUSH((void*)GGame::g_game->IsInCitadel(), VMType_BOOLEAN);
}

void GScript::RestartThing()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object should be alive!");
		return;
	}
	if (thing->IsPuzzleGame())
	{
		PuzzleGame* game = dynamic_cast<PuzzleGame*>(thing);
		if (game != NULL)
		{
			game->ResetToStartConfig();
		}
	}
}

void GScript::GetTownWorshipDeaths()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && thing->IsTown(), "Town invalid!");
	if (thing != NULL)
	{
		if (thing->IsTown())
		{
			g_scriptDLL->FLOAT_PUSH((float)((Town*)thing)->GetDeathsFromWorshipping());
			return;
		}
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::ClearDialogue()
{
	GGame::g_game->help_system->ClearAllText();
}

void GScript::CloseDialogue()
{
	GGame::g_game->help_system->GetHelpText()->CloseDialogWindow();
	GGame::g_game->help_system->ClearAllText();
}

void GScript::GetHandState()
{
	g_scriptDLL->PUSH((void*)GGame::g_game->MyInterface()->GetHandState(), VMType_INT);
}

void GScript::MapScriptFunction()
{
	ScriptDLL* dll = g_scriptDLL;
	GSetup::ProcessOneMapLine(dll->STRING(dll->ULONG_POP()));
}

void GScript::GetPlayerTownTotal()
{
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((int)g_scriptDLL->FLOAT_POP()));
	g_scriptDLL->FLOAT_PUSH((float)player->towns.count);
}

void GScript::SetLandBalance()
{
	float value = g_scriptDLL->FLOAT_POP();
	float type = g_scriptDLL->FLOAT_POP();
	GLandBalance::Init((GLandBalance::LAND_BALANCE)(int)type, value, NULL);
}

void GScript::TownBalanceBeliefScale()
{
	float             scale = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && thing->IsTown(), "Town invalid!");
	if (thing != NULL)
	{
		if (thing->IsTown())
		{
			((Town*)thing)->BalanceBeliefScale = scale;
		}
	}
}

void GScript::SetCreatureInTemple()
{
	bool32_t inTemple = g_scriptDLL->ULONG_POP();
	CreatureRoom::CreatureInTemple = inTemple;
	::CreatureInTemple = inTemple;
}

void GScript::InstantSaveForScript()
{
	float slot = g_scriptDLL->FLOAT_POP();
#ifdef VERSION_BW1WCI
	GGame::g_game->SetPacket(PACKET_TYPE_INSTANT_SAVE, (uint16_t)slot, (uint16_t)0);
#else
	SaveGameRoom::InstantSaveGame((long)slot);
#endif
}

void GScript::SetObjectCarrying()
{
	CARRIED_OBJECT    carrying = (CARRIED_OBJECT)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && thing->IsVillager(NULL), "Villager invalid!");
	if (thing != NULL)
	{
		if (thing->IsVillager(NULL))
		{
			((Villager*)thing)->CarriedObjectType = carrying;
		}
	}
}

void GScript::TimeSinceObjectAttacked()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	float             seconds = MaxFloat;
	uint32_t          playerIndex = ConvertScriptPlayerToGamePlayer((int)g_scriptDLL->FLOAT_POP());
	GPlayer*          player = GGame::g_game->GetPlayer(playerIndex);
	if (player != NULL && thing != NULL && thing->IsTown())
	{
		if (((Town*)thing)->PlayerInteract[player->GetPlayerNumber()].Aggression > SCRIPT_ATTACKED_AGGRESSION)
		{
			seconds = ((float)(int)(GGame::g_game->data.GetGameTurn() -
			                        ((Town*)thing)->PlayerInteract[player->GetPlayerNumber()].LastDamageTurn)) *
			          GGameInfo::Info.MillisecondsPerGameTurn * SCRIPT_SECONDS_PER_MILLISECOND;
		}
	}
	g_scriptDLL->FLOAT_PUSH(seconds);
}

void GScript::GetTownAndVillagerHealthTotal()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL && thing->IsTown())
	{
		float total = ((Town*)thing)->GetTownAndVillagerHealthTotal();
		g_scriptDLL->FLOAT_PUSH(total);
		return;
	}
	ScriptErrorMessage("Invalid objects");
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

void GScript::AddForBuildingForTown()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* building = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL && building != NULL)
	{
		MultiMapFixed* fixed = building->CastMultiMapFixed();
		if (thing->IsTown() && fixed != NULL && fixed->GetBuildingSite() != NULL)
		{
			((Town*)thing)->AddBuildingSite(fixed->GetBuildingSite());
			return;
		}
	}
	ScriptErrorMessage("Invalid objects");
}

void GScript::GetTemplePosition()
{
	float    scriptPlayer = g_scriptDLL->FLOAT_POP();
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((int)scriptPlayer));
	if (player != NULL && player->GetCitadel() != NULL)
	{
		LHPoint point;
		GLandscape::ConvertMapCoordToLandscapePoint(player->GetCitadel()->Pos, point);
		g_scriptDLL->POINT_PUSH(point);
		return;
	}
	ScriptDLL* dll = g_scriptDLL;
	dll->COORD_PUSH(0.0f);
	dll->COORD_PUSH(0.0f);
	dll->COORD_PUSH(0.0f);
}

void GScript::GetTempleEntrancePosition()
{
	float    height = g_scriptDLL->FLOAT_POP();
	float    radius = g_scriptDLL->FLOAT_POP();
	float    scriptPlayer = g_scriptDLL->FLOAT_POP();
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((int)scriptPlayer));
	if (player != NULL && player->GetCitadel() != NULL)
	{
		LHPoint point;
		LHPoint door;
		GLandscape::ConvertMapCoordToLandscapePoint(player->GetCitadel()->Pos, point);
		CitadelHeart* heart = player->GetCitadel()->GetCitadelHeart();
		if (heart != NULL)
		{
			heart->Game3dObject->GetExtraPos(CITADEL_HEART_ENTRANCE_EXTRA_POS, &door);
			door -= point;
			door.Normalise();
			door *= radius;
			point += door;
			point.y += height;
		}
		g_scriptDLL->POINT_PUSH(point);
		return;
	}
	ScriptDLL* dll = g_scriptDLL;
	dll->COORD_PUSH(0.0f);
	dll->COORD_PUSH(0.0f);
	dll->COORD_PUSH(0.0f);
}

#ifndef VERSION_BW1W100
void GScript::CanSkipTutorial()
{
	g_scriptDLL->PUSH((void*)GGame::g_game->CanSkipTutorial, VMType_BOOLEAN);
}

void GScript::CanSkipTraining()
{
	g_scriptDLL->PUSH((void*)GGame::g_game->CanSkipCreatureTraining, VMType_BOOLEAN);
}

void GScript::IsKeepingOldCreature()
{
	g_scriptDLL->PUSH((void*)GGame::g_game->KeepingOldCreature, VMType_BOOLEAN);
}

void GScript::CurrentProfileHasCreature()
{
	bool32_t hasCreature = GGame::g_game->CurrentProfileHasACreature();
	g_scriptDLL->PUSH((void*)hasCreature, VMType_BOOLEAN);
}
#endif

#ifdef VERSION_BW1WCI
void GScript::SetObjectScore()
{
	float             score = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && thing->IsScriptHighlight(), "Highlight invalid!");
	if (thing != NULL)
	{
		if (thing->IsScriptHighlight())
		{
			ScriptHighlight* highlight = (ScriptHighlight*)thing;
			HIGHLIGHT_INFO   type = highlight->GetInfo()->GetType();
			SCRIPT_ASSERT(type == SCRIPT_HIGHLIGHT_INFO_SCOREBOARD || type == SCRIPT_HIGHLIGHT_INFO_SCOREBOARD_BIG,
			              "Should be a scoreboard");
			type = highlight->GetInfo()->GetType();
			if (type == SCRIPT_HIGHLIGHT_INFO_SCOREBOARD || type == SCRIPT_HIGHLIGHT_INFO_SCOREBOARD_BIG)
			{
				int value = (int)score;
				if (value < 0)
				{
					value = SCRIPT_SCORE_NONE;
				}
				highlight->ScoreBoardValue = value;
			}
		}
		else if (thing->IsDice())
		{
			((Die*)thing)->SetValue((int)score);
		}
		else
		{
			ScriptErrorMessage("Thing not dice or highlight");
		}
	}
}

void GScript::GetObjectScore()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && thing->IsScriptHighlight(), "Highlight invalid!");
	if (thing != NULL)
	{
		if (thing->IsScriptHighlight())
		{
			ScriptHighlight* highlight = (ScriptHighlight*)thing;
			HIGHLIGHT_INFO   type = highlight->GetInfo()->GetType();
			SCRIPT_ASSERT(type == SCRIPT_HIGHLIGHT_INFO_SCOREBOARD || type == SCRIPT_HIGHLIGHT_INFO_SCOREBOARD_BIG,
			              "Should be a scoreboard");
			type = highlight->GetInfo()->GetType();
			if (type == SCRIPT_HIGHLIGHT_INFO_SCOREBOARD || type == SCRIPT_HIGHLIGHT_INFO_SCOREBOARD_BIG)
			{
				g_scriptDLL->FLOAT_PUSH((float)highlight->GetScoreBoardValue());
			}
		}
		else if (thing->IsDice())
		{
			g_scriptDLL->FLOAT_PUSH((float)((Die*)thing)->GetValue());
		}
		else
		{
			ScriptErrorMessage("Thing not dice or highlight");
		}
	}
}

void GScript::DeleteFire()
{
	float   radius = g_scriptDLL->FLOAT_POP();
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	FireEffect::RemoveFiresInRadius(pos, radius);
}

void GScript::EpOfObject()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	float             index = g_scriptDLL->FLOAT_POP();
	SCRIPT_ASSERT(thing != NULL && thing->IsObject(), "thing invalid!");
	LHPoint pos;
	pos.z = 0.0f;
	pos.y = 0.0f;
	pos.x = 0.0f;
	if (thing != NULL && thing->IsObject())
	{
		LH3DObject* object = ((Object*)thing)->Game3dObject;
		if (object != NULL && object->GetExtraPos((long)index, &pos) != true)
		{
			pos.z = 0.0f;
			pos.y = 0.0f;
			pos.x = 0.0f;
		}
	}
	g_scriptDLL->POINT_PUSH(pos);
}

static LHPoint LandingPath[SCRIPT_LANDING_PATH_POINTS];
static int     LandingPathCount = 0;

// BW1WCI 00717940 BW1MCI119 null
void DrawLandingPath();

void DrawLandingPath()
{
	for (int i = 0; i < LandingPathCount - 1; i++)
	{
		uint8_t   red = GRand::LocalRand((LH3D_COLOR_CHANNEL_MAX + 1));
		uint8_t   green = GRand::LocalRand((LH3D_COLOR_CHANNEL_MAX + 1));
		uint8_t   blue = GRand::LocalRand((LH3D_COLOR_CHANNEL_MAX + 1));
		LH3DColor colour(red, green, blue, LH3D_COLOR_OPAQUE);
		LH3DLine::AddLine(LandingPath[i], LandingPath[i + 1], &colour, NULL);
	}
}

void GScript::GetObjectLandingPos()
{
	float             speed = g_scriptDLL->FLOAT_POP();
	ScriptDLL*        dll = g_scriptDLL;
	float             z = dll->COORD_POP();
	float             y = dll->COORD_POP();
	float             x = dll->COORD_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	LHPoint           start;
	if (thing != NULL)
	{
		GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, start);
		LHPoint velocity;
		velocity = LHPoint(x - start.x, y - start.y, z - start.z);
		SetPointLength(velocity, speed);
		LHPoint target(x, y, z);
		LHPoint direction = target - start;
		float   distance = direction.GetNorme();
		float   halfHeight = thing->GetHeight() * 0.5f;
		float   maxSpeed = PhysOb::MaximumVelocity;
		float   maxSpeedSquared = maxSpeed * maxSpeed;
		LandingPathCount = 0;
		float   lastCheck = SCRIPT_LANDING_FIRST_CHECK;
		LHPoint pos = start;
		for (float time = 0.0f; time < SCRIPT_LANDING_MAX_TIME; time += SCRIPT_LANDING_STEP)
		{
			float speedSquared = velocity.GetNormeSq();
			if (speedSquared > maxSpeedSquared)
			{
				velocity *= maxSpeed / sqrt(speedSquared);
			}
			pos += velocity * SCRIPT_LANDING_STEP;
			velocity.y -= (OBJECT_GRAVITY * SCRIPT_LANDING_STEP);
			if (lastCheck + SCRIPT_LANDING_CHECK_INTERVAL < time)
			{
				lastCheck = time;
				if (LH3DIsland::GetAltitude(pos) + halfHeight > pos.y)
				{
					pos.y = LH3DIsland::GetAltitude(pos);
					g_scriptDLL->POINT_PUSH(pos);
					return;
				}
			}
		}
	}
	g_scriptDLL->POINT_PUSH(LHPoint(start));
}

void GScript::SetObjectDieCheck()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	uint32_t          check = g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(thing != NULL && thing->IsDice(), "thing invalid!");
	if (thing != NULL)
	{
		if (thing->IsDice())
		{
			((Die*)thing)->Check = check;
		}
	}
}

void GScript::SetDolphinMove()
{
	LHPoint from;
	LHPoint to;
	g_scriptDLL->POINT_POP(to);
	g_scriptDLL->POINT_POP(from);
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	ScriptDolphin*    dolphin = dynamic_cast<ScriptDolphin*>(thing);
	if (dolphin == NULL)
	{
		ScriptErrorMessage("That's not a dolphin");
		return;
	}
	dolphin->MoveRandomlyBetween(MapCoords(from), MapCoords(to));
}

void GScript::InWidescreen()
{
	bool32_t widescreen = GGame::g_game->help_system->IsInScriptWideScreen();
	g_scriptDLL->PUSH((void*)widescreen, VMType_BOOLEAN);
}

void GScript::SetAffectedBySnow()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          affected = g_scriptDLL->ULONG_POP();
	if (thing != NULL && thing->IsObject())
	{
		LH3DObject* object = ((Object*)thing)->Game3dObject;
		if (object != NULL)
		{
			object->Flags2 = (object->Flags2 & ~LH3D_OBJECT_FLAGS2_NOT_AFFECTED_BY_SNOW) |
			                 (((affected == false) & 1) << LH3D_OBJECT_FLAGS2_NOT_AFFECTED_BY_SNOW_BIT);
		}
	}
}

void GScript::SetDolphinSpeed()
{
	float speed = g_scriptDLL->FLOAT_POP();
	ScriptDolphin::ScriptSpeed = speed;
}

void GScript::SetDolphinWait()
{
	float wait = g_scriptDLL->FLOAT_POP();
	ScriptDolphin::ScriptWait = wait;
}

void GScript::FireGun()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && thing->IsCannon(), "Thing not cannon");
	if (thing != NULL)
	{
		if (thing->IsCannon())
		{
			((Cannon*)thing)->Fire();
		}
	}
}

void GScript::SetGunAnglePitch()
{
	float             pitch = g_scriptDLL->FLOAT_POP();
	float             angle = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	SCRIPT_ASSERT(thing != NULL && thing->IsCannon(), "Thing not cannon");
	if (thing != NULL)
	{
		if (thing->IsCannon())
		{
			((Cannon*)thing)->SetOrientation(angle, pitch);
		}
	}
}

void GScript::SetCanBeLeashed()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          leashable = g_scriptDLL->ULONG_POP();
	if (thing != NULL)
	{
		((GameThing*)thing)->Flags = (((GameThing*)thing)->Flags & ~GAME_THING_FLAG_NOT_LEASHABLE) |
		                             ((leashable == false) << GAME_THING_FLAG_NOT_LEASHABLE_BIT);
	}
}

void GScript::SetBookMarkOnObject()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          bookmark = g_scriptDLL->ULONG_POP();
	if (thing != NULL && thing->IsObject())
	{
		Bookmark::SetBookMarkForObject((Object*)thing, !bookmark);
	}
}

void GScript::SetObjectColour()
{
	float             blue = g_scriptDLL->FLOAT_POP();
	float             green = g_scriptDLL->FLOAT_POP();
	float             red = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		LH3DColor colour;
		colour.b = (uint8_t)blue;
		colour.g = (uint8_t)green;
		colour.r = (uint8_t)red;
		colour.a = LH3D_COLOR_OPAQUE;
		thing->SetColour(colour);
	}
}

void GScript::DeleteFragmentsInRadius()
{
	float   radius = g_scriptDLL->FLOAT_POP();
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	LHLinkedNode<Fragment*>* node = GGame::g_game->GameLists.fragments.GetStart();
	while (node != NULL)
	{
		Fragment*                fragment = node->payload;
		LHLinkedNode<Fragment*>* next = node->next.Get();
		LHPoint                  fragmentPos;
		fragmentPos = fragment->GetPos().Get3DPoint();
		float dx = fragmentPos.x - pos.x;
		float dy = fragmentPos.y - pos.y;
		float dz = fragmentPos.z - pos.z;
		if ((float)sqrt(dz * dz + dy * dy + dx * dx) <= radius)
		{
			fragment->ToBeDeleted(false);
		}
		node = next;
	}
}

void GScript::DeleteFragmentsForObject()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		LHLinkedNode<Fragment*>* node = GGame::g_game->GameLists.fragments.GetStart();
		while (node != NULL)
		{
			LHLinkedNode<Fragment*>* next = node->next.Get();
			Fragment*                fragment = node->payload;
			if (fragment->Owner == thing)
			{
				fragment->ToBeDeleted(false);
			}
			node = next;
		}
	}
}

void GScript::SetFightLock()
{
	GGame::g_game->script->FightLock = g_scriptDLL->ULONG_POP();
}

void GScript::SetFightQueueOnly()
{
	GGame::g_game->script->FightQueueOnly = g_scriptDLL->ULONG_POP();
}

void GScript::ClearSpellsOnObject()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL && thing->IsCreature())
	{
		((Creature*)thing)->ReceiveSpell->TryFinishAllSpells();
	}
}

void GScript::SetObjectImmuneToSpells()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          immune = g_scriptDLL->ULONG_POP();
	if (thing != NULL && thing->IsCreature())
	{
		thing->SetImmuneToSpells(immune != false);
	}
}

void GScript::IsObjectImmuneToSpells()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		bool32_t immune = thing->IsImmuneToSpells();
		g_scriptDLL->PUSH((void*)immune, VMType_BOOLEAN);
	}
}
#endif
