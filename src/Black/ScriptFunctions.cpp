#include "WhiteColour.h"
#include "MaxFloat.h"
#include "MapCellConstants.h"
#include "GameTimeConstants.h"
#include "CreatureAttitudeConstants.h"
#include "Script.h"

#include <Lionhead/LH3DLib/development/LH3DAnim.h>   /* For LH3DAnim::GetPackedAnim */
#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DMath.h>   /* For PI_F */
#include <Lionhead/LH3DLib/development/LH3DText.h>   /* For CHAR2WCHAR */
#include <Lionhead/LH3DLib/development/LH3DTech.h>   /* For IsObjectOnScreen, IsPointOnScreen */
#include <Lionhead/LH3DLib/development/LHMatrix.h>   /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/LHPoint.h>    /* For struct LHPoint */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>         /* For UNICODE_sprintf */

#include "Alignment.h"
#include "Camera.h"
#include "ChallengeRoom.h"
#include "CitadelHeart.h"
#include "Creature.h"
#include "CreatureActionInfo.h"
#include "CreatureAgenda.h"
#include "CreatureMental.h"
#include "CreatureMentalBelief.h"
#include "CreatureMorph.h"
#include "CreaturePhysical.h"
#include "Flock.h"
#include "Game3DObject.h"
#include "Game.h"
#include "GameThingWithPos.h"
#include "HelpSystem.h"
#include "HelpText.h"
#include "Influence.h"
#include "Landscape.h"
#include "Living.h"
#include "LoadingScreen.h"
#include "MapCoords.h"
#include "MobileObject.h"
#include "Object.h"
#include "Player.h"
#include "PhysicsObject.h"
#include "PlayerComputer.h"
#include "PSysGlobal.h"
#include "PuzzleGame.h"
#include "Reaction.h"
#include "Rand.h"
#include "ScriptDLL.h"
#include "Temple.h"
#include "Town.h"
#include "Utils.h"
#include "Villager.h"
#include "WeatherThing.h"

// Text ids at or past this are not in the help text database.
#define SCRIPT_TEXT_ID_LIMIT 6974
// Most stack values a SNAPSHOT command can hand to its script.
#define SCRIPT_SNAPSHOT_MAX_VALUES 12
// Animations OVERRIDE_STATE_ANIMATION accepts: this version's anim pack is shorter than AllMeshes.h's list.
#define SCRIPT_ANIM_LIMIT 441
// The only text GET_ACTION_TEXT_FOR_OBJECT ever returns.
#define SCRIPT_ACTION_TEXT 828
// BUILD_BUILDING scales its desire by this before forcing the build.
#define SCRIPT_BUILD_DESIRE_SCALE 5.0f
// Metres per second squared, as SET_ID_TARGET aims its throws.
#define SCRIPT_GRAVITY (-9.81f)

// BW1W120 006f7bf0 BW1M119 01500100
void GScript::SetWideScreen()
{
	bool32_t widescreen = g_scriptDLL->ULONG_POP();
	uint32_t control = GGame::g_game->help_system->WideScreenControl;
	uint32_t task = g_scriptDLL->TaskNumber();
	if (widescreen && control == task)
	{
		ScriptErrorMessage("Script asking for Widescreen it has control of! Bad");
	}
	if (control == 0 || control == task)
	{
		GGame::g_game->help_system->SetWideScreen(widescreen, g_scriptDLL->TaskNumber());
	}
}

// BW1W120 006f7c70 BW1M119 014fff90
void GScript::RunTextWithNumber()
{
	HELP_TEXT_INTERACTION interaction = (HELP_TEXT_INTERACTION)g_scriptDLL->ULONG_POP();
	float                 number = g_scriptDLL->FLOAT_POP();
	uint32_t              text = g_scriptDLL->ULONG_POP();
	bool32_t              singleLine = g_scriptDLL->ULONG_POP();
	if (GGame::g_game->IsMultiplayerGame() && interaction)
	{
		ScriptErrorMessage("This is not multiplayer friendly yet!");
	}
	GGame::g_game->IsMultiplayerGame();
	if (text >= SCRIPT_TEXT_ID_LIMIT)
	{
		ScriptErrorMessage("Invalid text");
		text = 0;
	}
	if (singleLine || GGame::g_game->help_system->GetHelpText()->SingleLine)
	{
		GGame::g_game->help_system->ClearAllText();
	}
	GGame::g_game->help_system->GetHelpText()->SingleLine = singleLine;
	GGame::g_game->help_system->SendText(text, interaction, number, HELP_TEXT_NARRATOR_DEFAULT);
}

// BW1W120 006f7d60 BW1M119 014ffe40
void GScript::RunText()
{
	HELP_TEXT_INTERACTION interaction = (HELP_TEXT_INTERACTION)g_scriptDLL->ULONG_POP();
	uint32_t              text = g_scriptDLL->ULONG_POP();
	bool32_t              singleLine = g_scriptDLL->ULONG_POP();
	if (GGame::g_game->IsMultiplayerGame() && interaction)
	{
		ScriptErrorMessage("This is not multiplayer friendly yet!");
	}
	GGame::g_game->IsMultiplayerGame();
	if (text >= SCRIPT_TEXT_ID_LIMIT)
	{
		ScriptErrorMessage("Invalid text");
		text = 0;
	}
	if (singleLine || GGame::g_game->help_system->GetHelpText()->SingleLine)
	{
		GGame::g_game->help_system->ClearAllText();
	}
	GGame::g_game->help_system->GetHelpText()->SingleLine = singleLine;
	GGame::g_game->help_system->SendText(text, interaction, 0.0f, HELP_TEXT_NARRATOR_DEFAULT);
}

// BW1W120 006f7e40 BW1M119 014ffcd0
void GScript::TempText()
{
	static char16_t text[0x80];

	HELP_TEXT_INTERACTION interaction = (HELP_TEXT_INTERACTION)g_scriptDLL->ULONG_POP();
	ScriptDLL*            dll = g_scriptDLL;
	char*                 string = dll->STRING(dll->ULONG_POP());
	bool32_t              singleLine = g_scriptDLL->ULONG_POP();
	UNICODE_sprintf(text, L"%s", CHAR2WCHAR(string));
	ScriptErrorMessage("Development text being used in game!");
	if (string == NULL)
	{
		ScriptErrorMessage("Jonty - Invalid ptr");
	}
	if (GGame::g_game->IsMultiplayerGame() && interaction)
	{
		ScriptErrorMessage("This is not multiplayer friendly yet!");
	}
	GGame::g_game->IsMultiplayerGame();
	ScriptWarningMessage(string);
	if (singleLine || GGame::g_game->help_system->GetHelpText()->SingleLine)
	{
		GGame::g_game->help_system->ClearAllText();
	}
	GGame::g_game->help_system->GetHelpText()->SingleLine = singleLine;
	GGame::g_game->help_system->SendText(text, interaction, 0.0f, HELP_TEXT_NARRATOR_DEFAULT, 0);
}

// BW1W120 006f7f50 BW1M119 014ffb00
void GScript::TempTextWithNumber()
{
	static char16_t text[0x80];

	HELP_TEXT_INTERACTION interaction = (HELP_TEXT_INTERACTION)g_scriptDLL->ULONG_POP();
	float                 number = g_scriptDLL->FLOAT_POP();
	ScriptDLL*            dll = g_scriptDLL;
	char*                 string = dll->STRING(dll->ULONG_POP());
	bool32_t              singleLine = g_scriptDLL->ULONG_POP();
	UNICODE_sprintf(text, L"%s", CHAR2WCHAR(string));
	if (string == NULL)
	{
		ScriptErrorMessage("Jonty - Invalid ptr");
	}
	if (GGame::g_game->IsMultiplayerGame() && interaction)
	{
		ScriptErrorMessage("This is not multiplayer friendly yet!");
	}
	GGame::g_game->IsMultiplayerGame();
	if (singleLine || GGame::g_game->help_system->GetHelpText()->SingleLine)
	{
		GGame::g_game->help_system->ClearAllText();
	}
	GGame::g_game->help_system->GetHelpText()->SingleLine = singleLine;
	GGame::g_game->help_system->SendText(text, interaction, number, HELP_TEXT_NARRATOR_DEFAULT, 0);
}

// BW1W120 006f8060 BW1M119 01022e50
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
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	if (GGame::g_game->ViewMode == GAME_VIEW_MODE_INSIDE_CITADEL)
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
		return;
	}
	bool32_t onScreen = IsPointOnScreen(&point);
	g_scriptDLL->PUSH((void*)onScreen, VMType_BOOLEAN);
}

// BW1W120 006f8130 BW1M119 0102e650
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

// BW1W120 006f8260 BW1M119 014ff9a0
void GScript::TextRead()
{
	bool32_t read = GGame::g_game->help_system->IsTextRead();
	g_scriptDLL->PUSH((void*)read, VMType_BOOLEAN);
}

// BW1W120 006f8280 BW1M119 014ff8e0
int GScript::SetStateLoopFunction(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	Living* living = dynamic_cast<Living*>(thing);
	if (living != NULL)
	{
		SetScriptState(living, GGame::g_game->script->LoopValue);
	}
	return 0;
}

// BW1W120 006f82c0 BW1M119 014ff870
void GScript::SetScriptFlyingState(Living* living, uint32_t state)
{
	living->action.SetState(LIVING_ACTION_INDEX_PREVIOUS, (VILLAGER_STATES)state);
}

// BW1W120 006f82e0 BW1M119 014ff710
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
			creature->ScriptPlayStaticAnimation(anim, 10.0f);
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

// BW1W120 006f8370 BW1M119 014ff590
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
		GGame::g_game->script->LoopValue = state;
		SCRIPT_OBJECT_TYPE type = thing->GetScriptObjectType();
		if (g_scriptObjectDispatch[type - 1].Loop != NULL)
		{
			g_scriptObjectDispatch[type - 1].Loop(thing, SetStateLoopFunction, SCRIPT_OBJECT_TYPE_NONE, 0);
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

// BW1W120 006f8460 BW1M119 014ff4a0
int GScript::SetStatePosLoopFunction(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	Villager* villager = dynamic_cast<Villager*>(thing);
	if (villager != NULL)
	{
		MapCoords coords(GGame::g_game->script->FocusPos);
		villager->ScriptWanderCentre.Init(coords);
	}
	return 0;
}

// BW1W120 006f84c0 BW1M119 014ff2b0
void GScript::SetScriptStatePos()
{
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    pos;
	pos.z = dll->COORD_POP();
	pos.y = dll->COORD_POP();
	pos.x = dll->COORD_POP();
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
		if (g_scriptObjectDispatch[type - 1].Loop != NULL)
		{
			g_scriptObjectDispatch[type - 1].Loop(thing, SetStatePosLoopFunction, SCRIPT_OBJECT_TYPE_NONE, 0);
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

// BW1W120 006f8600 BW1M119 014ff1e0
int GScript::SetStateFloatLoopFunction(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	Villager* villager = dynamic_cast<Villager*>(thing);
	if (villager != NULL)
	{
		float radius = GGame::g_game->script->FindRadius;
		villager->ScriptWanderRadius = radius;
	}
	return 0;
}

// BW1W120 006f8640 BW1M119 014ff070
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
		if (g_scriptObjectDispatch[type - 1].Loop != NULL)
		{
			g_scriptObjectDispatch[type - 1].Loop(thing, SetStateFloatLoopFunction, SCRIPT_OBJECT_TYPE_NONE, 0);
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

// BW1W120 006f8730 BW1M119 014fef90
int GScript::SetStateULLoopFunction(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
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
	return 0;
}

// BW1W120 006f8770 BW1M119 014fedd0
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
		if (g_scriptObjectDispatch[type - 1].Loop != NULL)
		{
			g_scriptObjectDispatch[type - 1].Loop(thing, SetStateULLoopFunction, SCRIPT_OBJECT_TYPE_NONE, 0);
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

// BW1W120 006f88a0 BW1M119 0104d150
void GScript::GetPosition()
{
	LHPoint           point;
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing no longer valid");
	}
	if (thing != NULL)
	{
		if (thing->IsFlock())
		{
			Flock*  flock = (Flock*)thing;
			Living* leader = flock->leader != NULL ? flock->leader->payload : NULL;
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
	ScriptDLL* dll = g_scriptDLL;
	dll->COORD_PUSH(point.x);
	dll->COORD_PUSH(point.y);
	dll->COORD_PUSH(point.z);
}

// BW1W120 006f8a00 BW1M119 014fea60
void GScript::SetPosition()
{
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    pos;
	pos.z = dll->COORD_POP();
	pos.y = dll->COORD_POP();
	pos.x = dll->COORD_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing no longer valid");
	}
	if (thing != NULL)
	{
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
						creature->ForceMoveMapObjectWithoutWalking(coords);
					}
					else
					{
						object->MoveMapObject(coords);
						if (object->Game3dObject != NULL)
						{
							float       scale = object->GetScale();
							float       yAngle = object->GetYAngle();
							LH3DObject* object3d = object->Game3dObject;
							LHPoint     point;
							GLandscape::ConvertMapCoordToLandscapePoint(coords, point);
							object3d->SetPosition(point, yAngle, scale);
						}
						object->coords = object->Pos;
						if (object->IsLiving() && (thing->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT))
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

// BW1W120 006f8ca0 BW1M119 01045680
void GScript::GetDistance()
{
	// The coordinates are popped as raw 32-bit values and only read as floats when the two points
	// are built, after all six pops.
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
	if (distance < 0.5f)
	{
		g_scriptDLL->FLOAT_PUSH(0.0f);
		return;
	}
	g_scriptDLL->FLOAT_PUSH(distance);
}

// BW1W120 006f8da0 BW1M119 010151e0
void GScript::Random()
{
	float max = g_scriptDLL->FLOAT_POP();
	float min = g_scriptDLL->FLOAT_POP();
#line 682 "C:\\dev\\MP\\Black\\ScriptFunctions.cpp"
	float value = (float)(int)(GRand::GameFloatRand(max - min + 1.0f, __FILE__, __LINE__) + min);
	g_scriptDLL->PUSH(*(void**)&value, VMType_FLOAT);
}

// BW1W120 006f8e20 BW1M119 014fe780
void GScript::RandomULONG()
{
	uint32_t max = g_scriptDLL->ULONG_POP();
	uint32_t min = g_scriptDLL->ULONG_POP();
#line 697
	uint32_t value = GRand::GameRand(max - min + 1, __FILE__, __LINE__) + min;
	g_scriptDLL->PUSH((void*)value, VMType_INT);
}

// BW1W120 006f8e80 BW1M119 014fe4c0
void GScript::MoveGameThing()
{
	float      speed = g_scriptDLL->FLOAT_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    pos;
	pos.z = dll->COORD_POP();
	pos.y = dll->COORD_POP();
	pos.x = dll->COORD_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing no longer valid");
		return;
	}
	if (thing->IsCreature())
	{
		Creature* creature = dynamic_cast<Creature*>(thing);
		if (creature == NULL)
		{
			ScriptErrorMessage("no creature for script");
		}
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
		((GComputerPlayer*)thing)->ForceComputerPlayerToMoveToPointAndPause(pos, 60.0f);
		return;
	}
	ScriptErrorMessage("Jonty - Thing must be living to move it!");
	thing->SetPos(MapCoords(pos));
}

// BW1W120 006f9090 BW1M119 014fe420
int GScript::SetFocusLoopFn(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t param_3)
{
	((Object*)thing)->SetFocus(GGame::g_game->script->FocusPos);
	return 0;
}

// BW1W120 006f90b0 BW1M119 0102e4a0
void GScript::SetFocus()
{
	ScriptDLL*         dll = g_scriptDLL;
	LHPoint            pos;
	GameThingWithPos*  thing;
	Object*            object;
	SCRIPT_OBJECT_TYPE objectType;

	pos.z = dll->COORD_POP();
	pos.y = dll->COORD_POP();
	pos.x = dll->COORD_POP();
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
		if (g_scriptObjectDispatch[objectType - 1].Loop == NULL)
		{
			return;
		}
		g_scriptObjectDispatch[objectType - 1].Loop(thing, SetFocusLoopFn, SCRIPT_OBJECT_TYPE_NONE, 0);
		return;
	}
	object = dynamic_cast<Object*>(thing);
	if (object != NULL)
	{
		if (object->IsCreature())
		{
			object->SetControlledByScript(1);
		}
		object->SetFocus(pos);
		return;
	}
	ScriptErrorMessage("Jonty - Thing must be living to face position!");
}

// BW1W120 006f91f0 BW1M119 014fe210
void GScript::SetFocusOnObject()
{
	GameThingWithPos* target = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL || target == NULL)
	{
		ScriptErrorMessage("Thing not found!");
	}
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

// BW1W120 006f92d0 BW1M119 014fdfa0
void GScript::DeleteObject()
{
	uint32_t          mode = g_scriptDLL->ULONG_POP();
	uint32_t          id = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* thing = GetScriptGameThing(id);
	if (thing == NULL)
	{
		return;
	}
	if (thing->IsPuzzleGame())
	{
		RemoveScriptGameThing(id);
		((PuzzleGame*)thing)->FullDelete(0);
		return;
	}
	switch (mode)
	{
	case SCRIPT_DELETE_MODE_NORMAL:
		thing->ToBeDeleted(0);
		break;
	case SCRIPT_DELETE_MODE_FADE:
		if (thing->IsObject())
		{
			Creature* creature;
			if (thing->IsCreature() && (creature = dynamic_cast<Creature*>((Object*)thing)) != NULL)
			{
				creature->SetFizz(1.0f, 2.0f, true);
			}
			else
			{
				GoolooGooloo((Object*)thing);
				thing->ToBeDeleted(0);
			}
		}
		break;
	case SCRIPT_DELETE_MODE_EXPLODE:
		if (thing->IsObject())
		{
			PSysGlobal::ExplodeObjectMesh((Object*)thing, false);
			thing->ToBeDeleted(0);
		}
		break;
	case SCRIPT_DELETE_MODE_TEMPLE_EXPLODE:
		if (thing->IsObject())
		{
			CitadelHeart* heart = dynamic_cast<CitadelHeart*>(thing);
			if (heart != NULL)
			{
				if (heart->field_0xb8)
				{
					PSysGlobal::ExplodeObjectMesh(heart, heart->Pos.GetLHPoint(), 80.0f, 3.0f, false);
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

// BW1W120 006f94a0 BW1M119 014fdde0
void GScript::UpdateSnapShotDetails()
{
	SnapShotData data;
	data.ScriptName = NULL;
	data.Success = 0.0f;
	data.Alignment = 0.0f;
	data.Challenge = static_cast<ScriptChallengeEnums>(g_scriptDLL->ULONG_POP());
	int takePicture = g_scriptDLL->ULONG_POP();
	data.HelpText = g_scriptDLL->ULONG_POP();
	data.Alignment = g_scriptDLL->FLOAT_POP();
	CLAMP(data.Alignment, -1.0f, 1.0f);
	data.Success = g_scriptDLL->FLOAT_POP();
	CLAMP(data.Success, 0.0f, 1.0f);
	ScriptDLL* dll = g_scriptDLL;
	data.Focus.z = dll->COORD_POP();
	data.Focus.y = dll->COORD_POP();
	data.Focus.x = dll->COORD_POP();
	dll = g_scriptDLL;
	data.Position.z = dll->COORD_POP();
	data.Position.y = dll->COORD_POP();
	data.Position.x = dll->COORD_POP();
	GGame::g_game->temple->UpdateChallenge(data, 0, NULL, NULL, takePicture);
}

// BW1W120 006f9640 BW1M119 014fdc20
void GScript::UpdateSnapShot()
{
	SnapShotData data;
	VMType       types[SCRIPT_SNAPSHOT_MAX_VALUES];
	void*        values[SCRIPT_SNAPSHOT_MAX_VALUES];
	data.ScriptName = NULL;
	data.Success = 0.0f;
	data.Alignment = 0.0f;
	data.Challenge = static_cast<ScriptChallengeEnums>(g_scriptDLL->ULONG_POP());
	uint32_t count = g_scriptDLL->ULONG_POP();
	if (count >= SCRIPT_SNAPSHOT_MAX_VALUES)
	{
		ScriptErrorMessage("Paul - number of stack objects is too big.");
	}
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
	GGame::g_game->temple->UpdateChallenge(data, count, values, types, false);
}

// BW1W120 006f97b0 BW1M119 014fda00
void GScript::SnapShot()
{
	SnapShotData data;
	VMType       types[SCRIPT_SNAPSHOT_MAX_VALUES];
	void*        values[SCRIPT_SNAPSHOT_MAX_VALUES];
	data.ScriptName = NULL;
	data.Success = 0.0f;
	data.Alignment = 0.0f;
	data.Challenge = static_cast<ScriptChallengeEnums>(g_scriptDLL->ULONG_POP());
	uint32_t count = g_scriptDLL->ULONG_POP();
	if (count > SCRIPT_SNAPSHOT_MAX_VALUES)
	{
		ScriptErrorMessage("Paul - number of stack objects is too big.");
	}
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
	dll = g_scriptDLL;
	data.Focus.z = dll->COORD_POP();
	data.Focus.y = dll->COORD_POP();
	data.Focus.x = dll->COORD_POP();
	dll = g_scriptDLL;
	data.Position.z = dll->COORD_POP();
	data.Position.y = dll->COORD_POP();
	data.Position.x = dll->COORD_POP();
	data.Type = g_scriptDLL->ULONG_POP();
	GGame::g_game->temple->UpdateChallenge(data, count, values, types, true);
}

// BW1W120 006f99c0 BW1M119 014fd8f0
void GScript::UpdateAlignment()
{
	GPlayer* player = GGame::g_game->GetPlayer(g_scriptDLL->ULONG_POP());
	float    change = g_scriptDLL->FLOAT_POP();
	if (!(change >= -1.0f && change <= 1.0f))
	{
		ScriptErrorMessage("Alignment out of range");
	}
	if (change >= -1.0f && change <= 1.0f)
	{
		player->alignment->CrudeUpdate(change);
	}
}

// BW1W120 006f9a60 BW1M119 014fd860
void GScript::GetAlignment()
{
	float alignment = GGame::g_game->GetPlayer(g_scriptDLL->ULONG_POP())->GetAlignmentValue();
	g_scriptDLL->PUSH(*(void**)&alignment, VMType_FLOAT);
}

// BW1W120 006f9aa0 BW1M119 014fd720
void GScript::CreateInfluenceOnObject()
{
	int               anti = g_scriptDLL->ULONG_POP();
	GPlayer*          player = GGame::g_game->GetPlayer(g_scriptDLL->ULONG_POP());
	float             radius = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("thing not valid");
	}
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

// BW1W120 006f9b60 BW1M119 014fd5c0
void GScript::CreateInfluenceOnPos()
{
	int        anti = g_scriptDLL->ULONG_POP();
	GPlayer*   player = GGame::g_game->GetPlayer(g_scriptDLL->ULONG_POP());
	float      radius = g_scriptDLL->FLOAT_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    pos;
	pos.z = dll->COORD_POP();
	pos.y = dll->COORD_POP();
	pos.x = dll->COORD_POP();
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

// BW1W120 006f9c60 BW1M119 010336a0
void GScript::GetInfluence()
{
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    pos;
	pos.z = dll->COORD_POP();
	pos.y = dll->COORD_POP();
	pos.x = dll->COORD_POP();
	uint32_t anti = g_scriptDLL->ULONG_POP();
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((int)g_scriptDLL->FLOAT_POP()));
	float influence = Influence::CalculatePlayerInfluence(MapCoords(pos), player, 0, INFL_CALC_TYPE_DEFAULT, anti == 0);
	g_scriptDLL->FLOAT_PUSH(influence);
}

// BW1W120 006f9d30 BW1M119 014fd480
void GScript::GetPlayedPercentage()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing no longer valid");
	}
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

// BW1W120 006f9dc0 BW1M119 010149f0
void GScript::HasPlayed()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing no longer valid");
	}
	if (thing != NULL)
	{
		if (thing->IsCreature())
		{
			Creature* creature = (Creature*)thing;
			if (creature != NULL)
			{
				CreatureAgenda& agenda = creature->mind->agenda;
				bool32_t        finished;
				if (agenda.plans[0].IsValid() && agenda.SubActionAgenda.IsValid() &&
				    creature->mind->agenda.plans[0].creature_action != CREATURE_IDLE)
				{
					finished = FALSE;
				}
				else
				{
					finished = TRUE;
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
			Villager* villager = dynamic_cast<Villager*>(thing);
			if (villager != NULL)
			{
				bool32_t complete = villager->IsScriptAnimationComplete();
				g_scriptDLL->PUSH((void*)complete, VMType_BOOLEAN);
				return;
			}
			bool32_t inScript = (uint8_t)((Living*)thing)->GetFinalState() == VILLAGER_STATE_IN_SCRIPT;
			g_scriptDLL->PUSH((void*)inScript, VMType_BOOLEAN);
			return;
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
		ScriptErrorMessage("Thing not living");
	}
	g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
}

// BW1W120 006f9f50 BW1M119 014fd1c0
void GScript::OverrideStateAnimation()
{
	int               anim = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (!(anim > 0 && anim < SCRIPT_ANIM_LIMIT))
	{
		ScriptErrorMessage("Invalid animation forced");
	}
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
#line 1217
		living->data_for_script_remind = new (__FILE__, __LINE__) DataForScriptRemind();
	}
	living->data_for_script_remind->KeepThatInMind(living);
	living->data_for_script_remind->field_0x44 = 0;
	living->data_for_script_remind->field_0x3c = anim;
}

// BW1W120 006fa070 BW1M119 014fd110
void GScript::CreateReaction()
{
	uint32_t          reaction = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("no reaction for thing");
	}
	if (thing != NULL)
	{
		Reaction::CreateReaction(thing, (uint8_t)reaction, NULL, 0);
	}
}

// BW1W120 006fa0d0 BW1M119 014fd080
int GScript::RemoveAllReactionsLoopFn(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	Reaction::RemoveAllReactionsInitiatedByObject(thing);
	return 0;
}

// BW1W120 006fa0e0 BW1M119 014fcf90
void GScript::RemoveReaction()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("no reaction for thing");
	}
	if (thing != NULL)
	{
		if (thing->IsScriptContainer())
		{
			SCRIPT_OBJECT_TYPE objectType = thing->GetScriptObjectType();
			if (g_scriptObjectDispatch[objectType - 1].Loop != NULL)
			{
				g_scriptObjectDispatch[objectType - 1].Loop(thing, RemoveAllReactionsLoopFn, SCRIPT_OBJECT_TYPE_NONE,
				                                            0);
			}
			return;
		}
		Reaction::RemoveAllReactionsInitiatedByObject(thing);
	}
}

// BW1W120 006fa160 BW1M119 014fcef0
int GScript::RemoveAllReactionsOfTypeLoopFn(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	Reaction::RemoveAllReactionsOfTypeInitiatedByObject(thing, (REACTION)GGame::g_game->script->LoopValue);
	return 0;
}

// BW1W120 006fa180 BW1M119 014fcdc0
void GScript::RemoveReactionsOfType()
{
	REACTION          reaction = (REACTION)g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("no reaction for thing");
	}
	if (thing != NULL)
	{
		if (thing->IsScriptContainer())
		{
			SCRIPT_OBJECT_TYPE objectType = thing->GetScriptObjectType();
			GGame::g_game->script->LoopValue = reaction;
			if (g_scriptObjectDispatch[objectType - 1].Loop != NULL)
			{
				g_scriptObjectDispatch[objectType - 1].Loop(thing, RemoveAllReactionsOfTypeLoopFn,
				                                            SCRIPT_OBJECT_TYPE_NONE, 0);
			}
			return;
		}
		Reaction::RemoveAllReactionsOfTypeInitiatedByObject(thing, reaction);
	}
}

// BW1W120 006fa220 BW1M119 014fcc70
void GScript::GetTargetObject()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("no object");
	}
	if (thing == NULL)
	{
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature != NULL)
	{
		CreatureBelief* belief = creature->mind->agenda.plans[0].ObjectToActOn;
		if (belief != NULL)
		{
			GameThingWithPos* target = belief->Pointer;
			if (target == NULL)
			{
				ScriptErrorMessage("Richard: strange. No pointer for belief");
			}
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

// BW1W120 006fa2c0 BW1M119 014fcb80
void GScript::DesireIs()
{
	uint32_t          desire = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	Creature*         creature = dynamic_cast<Creature*>(thing);
	if (creature != NULL)
	{
		g_scriptDLL->PUSH(
			(void*)(desire == CreatureActionInfo::GetInfo()[creature->mind->agenda.plans[0].creature_action].Desire),
			VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH(NULL, VMType_BOOLEAN);
}

// BW1W120 006fa350 BW1M119 014fca50
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
	else
	{
		point.x = 0.0f;
		point.y = 0.0f;
		point.z = 0.0f;
	}
	ScriptDLL* dll = g_scriptDLL;
	dll->COORD_PUSH(point.x);
	dll->COORD_PUSH(point.y);
	dll->COORD_PUSH(point.z);
}

// BW1W120 006fa430 BW1M119 014fc9e0
void GScript::GetActionTextForObject()
{
	g_scriptDLL->PUSH((void*)SCRIPT_ACTION_TEXT, VMType_INT);
}

// BW1W120 006fa450 BW1M119 01006a90
void GScript::AddReference()
{
	IncrementScriptReference(g_scriptDLL->THING_OR_NULL_POP());
}

// BW1W120 006fa470 BW1M119 01005410
void GScript::RemoveReference()
{
	DecrementScriptReference(g_scriptDLL->THING_OR_NULL_POP());
}

// BW1W120 006fa490 BW1M119 014fc750
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
		if (!thing->IsWeather())
		{
			ScriptErrorMessage("Jonty-Weather properties on non weather object");
		}
		// Both builds repeat the test once more and drop the result.
		thing->IsWeather();
		if (thing->IsWeather())
		{
			((WeatherThing*)thing)->SetProperties(temperature, rainfall, snowfall, overcast, fallSpeed);
		}
	}
}

// BW1W120 006fa570 BW1M119 014fc640
void GScript::SetTimeFadeProperties()
{
	float             fade = g_scriptDLL->FLOAT_POP();
	float             time = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		if (!thing->IsWeather())
		{
			ScriptErrorMessage("Jonty-Weather properties on non weather object");
		}
		thing->IsWeather();
		if (thing->IsWeather())
		{
			((WeatherThing*)thing)->SetTimes(time, fade);
		}
	}
}

// BW1W120 006fa600 BW1M119 014fc500
void GScript::SetCloudProperties()
{
	float             height = g_scriptDLL->FLOAT_POP();
	float             shade = g_scriptDLL->FLOAT_POP();
	float             clouds = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		if (!thing->IsWeather())
		{
			ScriptErrorMessage("Jonty-Weather properties on non weather object");
		}
		thing->IsWeather();
		if (thing->IsWeather())
		{
			((WeatherThing*)thing)->SetClouds(shade, (int)clouds, height);
		}
	}
}

// BW1W120 006fa6b0 BW1M119 014fc3c0
void GScript::SetLightningProperties()
{
	float             forkMax = g_scriptDLL->FLOAT_POP();
	float             forkMin = g_scriptDLL->FLOAT_POP();
	float             sheetMax = g_scriptDLL->FLOAT_POP();
	float             sheetMin = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL)
	{
		if (!thing->IsWeather())
		{
			ScriptErrorMessage("Jonty-Weather properties on non weather object");
		}
		thing->IsWeather();
		if (thing->IsWeather())
		{
			((WeatherThing*)thing)->SetLightning(sheetMin, sheetMax, forkMin, forkMax);
		}
	}
}

// BW1W120 006fa770 BW1M119 014fc0e0
void GScript::SetVelocityHeadingSpeed()
{
	float      speed = g_scriptDLL->FLOAT_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    heading;
	heading.z = dll->COORD_POP();
	heading.y = dll->COORD_POP();
	heading.x = dll->COORD_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		return;
	}
	LHPoint pos;
	LHPoint velocity;
	GLandscape::ConvertMapCoordToLandscapePoint(thing->Pos, pos);
	velocity = heading - pos;
	velocity.SetSize(speed);
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
#line 1535
		spin.x = (GRand::GameFloatRand(200.0f, __FILE__, __LINE__) - 100.0f) / 100.0f;
		spin.y = (GRand::GameFloatRand(200.0f, __FILE__, __LINE__) - 100.0f) / 100.0f;
		spin.z = (GRand::GameFloatRand(200.0f, __FILE__, __LINE__) - 100.0f) / 100.0f;
		object->InitialisePhysics(velocity, spin, NULL, true, NULL);
		return;
	}
	ScriptErrorMessage("Thing not an object or weather for Physics");
}

// BW1W120 006fa9e0 BW1M119 014fc020
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

// BW1W120 006faa40 BW1M119 null
void GScript::EndGameSpeedForTask(uint32_t task)
{
	if (GameSpeedTask == task)
	{
		ActualEndGameSpeed();
	}
}

// BW1W120 006faa60 BW1M119 014fbf20
void GScript::ActualEndGameSpeed()
{
	if (GGame::g_game->GetCamera() != NULL)
	{
		GGame::g_game->GetCamera()->SetScriptSlomoControl(false);
	}
	GGame::g_game->SetSpeed(1.0f);
	GGame::g_game->script->GameSpeedTask = 0;
}

// BW1W120 006faab0 BW1M119 014fbe90
void GScript::EndGameSpeed()
{
	uint32_t owner = GGame::g_game->script->GameSpeedTask;
	uint32_t task = g_scriptDLL->TaskNumber();
	if (owner == 0 || owner == task)
	{
		ActualEndGameSpeed();
	}
}

// BW1W120 006faae0 BW1M119 014fbde0
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

// BW1W120 006fab30 BW1M119 014fbd20
void GScript::BuildBuilding()
{
	float      desire = g_scriptDLL->FLOAT_POP() * SCRIPT_BUILD_DESIRE_SCALE;
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    pos;
	pos.z = dll->COORD_POP();
	pos.y = dll->COORD_POP();
	pos.x = dll->COORD_POP();
	Town::ForceBuildingOfPlannedAtPos(MapCoords(pos), desire);
}

// BW1W120 006fabc0 BW1M119 014fbc60
void GScript::SetAffectedByWind()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          affected = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Invalid thing");
	}
	if (thing != NULL)
	{
		thing->SetAffectedByWind(affected);
	}
}

// BW1W120 006fac20 BW1M119 014fbbd0
void GScript::IsWideScreenTransitionFinished()
{
	bool32_t finished = !GGame::g_game->help_system->IsInWideScreenTransition();
	g_scriptDLL->PUSH((void*)finished, VMType_BOOLEAN);
}

// BW1W120 006fac50 BW1M119 014fba90
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
	if (thing == NULL)
	{
		ScriptErrorMessage("No thing for resource");
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

// BW1W120 006fad10 BW1M119 014fb920
void GScript::AddResource()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	uint32_t          amount = (int)g_scriptDLL->FLOAT_POP();
	RESOURCE_TYPE     type = (RESOURCE_TYPE)g_scriptDLL->ULONG_POP();
	if (thing != NULL)
	{
		Object* object = dynamic_cast<Object*>(thing);
		if (object != NULL)
		{
			g_scriptDLL->FLOAT_PUSH((float)object->AddResource(type, amount, NULL, false, NULL, 0));
			return;
		}
		ScriptErrorMessage("Not object for resource");
	}
	if (thing == NULL)
	{
		ScriptErrorMessage("No thing for resource");
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

// BW1W120 006fae00 BW1M119 014fb7c0
void GScript::RemoveResource()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	uint32_t          amount = (int)g_scriptDLL->FLOAT_POP();
	RESOURCE_TYPE     type = (RESOURCE_TYPE)g_scriptDLL->ULONG_POP();
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
	if (thing == NULL)
	{
		ScriptErrorMessage("No thing for resource");
	}
	g_scriptDLL->FLOAT_PUSH(0.0f);
}

// BW1W120 006faef0 BW1M119 014fb4e0
void GScript::GetTargetRelativePos()
{
	float      angle = g_scriptDLL->FLOAT_POP();
	float      distance = g_scriptDLL->FLOAT_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    target;
	target.z = dll->COORD_POP();
	target.y = dll->COORD_POP();
	target.x = dll->COORD_POP();
	dll = g_scriptDLL;
	LHPoint origin;
	origin.z = dll->COORD_POP();
	origin.y = dll->COORD_POP();
	origin.x = dll->COORD_POP();
	LHPoint direction;
	direction = target - origin;
	direction.FastNormalizeInline();
	LHMatrix rotation;
	rotation.SetRotationY(angle * (PI_F / 180.0f));
	rotation.TransformPoint(direction);
	direction = target + direction * distance;
	// The pointer converts to a temporary point through LHPoint(const LHPoint*).
	g_scriptDLL->POINT_PUSH(&direction);
}

// BW1W120 006fb150 BW1M119 014fb3a0
void GScript::GetScriptState()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing invalid");
	}
	if (thing != NULL)
	{
		if (thing->IsLiving())
		{
			VILLAGER_STATES state = ((Living*)thing)->GetFinalState();
			g_scriptDLL->PUSH((void*)(uint8_t)state, VMType_INT);
			return;
		}
		if (thing->IsPuzzleGame())
		{
			uint32_t status = ((PuzzleGame*)thing)->GetPuzzleGameStatus();
			g_scriptDLL->PUSH((void*)status, VMType_INT);
			return;
		}
		ScriptErrorMessage("Thing not a known type for functions");
	}
	g_scriptDLL->PUSH(NULL, VMType_INT);
}

// BW1W120 006fb1f0 BW1M119 01030770
void GScript::GetLandHeight()
{
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    pos;
	pos.z = dll->COORD_POP();
	pos.y = dll->COORD_POP();
	pos.x = dll->COORD_POP();
	LandCell* cell = LH3DIsland::GetCell((long)(pos.x / 10.0f), (long)(pos.z / 10.0f));
	uint8_t   cellAltitude = cell != NULL ? cell->altitude : 0;
	if (cellAltitude == 0)
	{
		float invalid = -10.0f;
		g_scriptDLL->PUSH(*(void**)&invalid, VMType_FLOAT);
		return;
	}
	float altitude = LH3DIsland::GetAltitude(pos);
	g_scriptDLL->PUSH(*(void**)&altitude, VMType_FLOAT);
}

// BW1W120 006fb320 BW1M119 014fb250
void GScript::LoadMap()
{
	ScriptDLL* dll = g_scriptDLL;
	char*      path = dll->STRING(dll->ULONG_POP());
	LoadingScreen::Active = true;
	LoadingScreen::Time = 0;
	GGame::LoadingFrameEnabled = 2;
	RenderLoadingFrame(true);
	GGame::g_game->LoadMap(path);
	GGame::LoadingFrameEnabled = 0;
}

// BW1W120 006fb380 BW1M119 014fb180
void GScript::ReleaseActorFromScript()
{
	uint32_t          id = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* thing = GetScriptGameThing(id);
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
	}
	if (thing != NULL)
	{
		if (thing->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)
		{
			ReleaseControlFromScript(thing, id, 1);
		}
		if (thing->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)
		{
			ScriptErrorMessage("Thing should be released! PANIC-GEt ME!");
		}
	}
}

// BW1W120 006fb3e0 BW1M119 014fb0d0
void GScript::SetMoveable()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          moveable = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
	}
	if (thing != NULL)
	{
		thing->Flags = (thing->Flags & ~GAME_THING_WITH_POS_FLAG_IMMOVABLE) | (((moveable == FALSE) & 1) << 12);
	}
}

// BW1W120 006fb450 BW1M119 014fb020
void GScript::SetPickupable()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          pickupable = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
	}
	if (thing != NULL)
	{
		thing->Flags =
			(thing->Flags & ~GAME_THING_WITH_POS_FLAG_CANNOT_BE_PICKED_UP) | (((pickupable == FALSE) & 1) << 13);
	}
}

// BW1W120 006fb4c0 BW1M119 014faf50
void GScript::IsOnFire()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
	}
	if (thing != NULL)
	{
		bool32_t onFire = thing->IsOnFire(NULL);
		g_scriptDLL->PUSH((void*)onFire, VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

// BW1W120 006fb520 BW1M119 014fae80
void GScript::IsPoisoned()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
	}
	if (thing != NULL)
	{
		bool32_t poisoned = thing->IsPoisoned();
		g_scriptDLL->PUSH((void*)poisoned, VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

// BW1W120 006fb580 BW1M119 014fadd0
int GScript::CountPoisonedFunction(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if (thing->IsPoisoned())
	{
		GGame::g_game->script->LoopCount++;
	}
	return 0;
}

// BW1W120 006fb5b0 BW1M119 014fac60
void GScript::GetPoisonedSize()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
	}
	if (thing != NULL)
	{
		SCRIPT_OBJECT_TYPE objectType = thing->GetScriptObjectType();
		if (g_scriptObjectDispatch[objectType - 1].Loop != NULL)
		{
			GGame::g_game->script->LoopCount = 0;
			g_scriptObjectDispatch[objectType - 1].Loop(thing, CountPoisonedFunction, SCRIPT_OBJECT_TYPE_NONE, 0);
			g_scriptDLL->FLOAT_PUSH((float)GGame::g_game->script->LoopCount);
			return;
		}
		ScriptErrorMessage("No Loop funtion for type");
	}
	float none = 0.0f;
	g_scriptDLL->PUSH(*(void**)&none, VMType_FLOAT);
}

// BW1W120 006fb680 BW1M119 014fabc0
int GScript::SetPoisonedLoopFn(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	((Object*)thing)->SetPoisoned(GGame::g_game->script->LoopParam);
	return 0;
}

// BW1W120 006fb6a0 BW1M119 014faa50
void GScript::SetPoisoned()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	int               poisoned = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
	}
	if (thing != NULL)
	{
		if (thing->IsScriptContainer())
		{
			SCRIPT_OBJECT_TYPE objectType = thing->GetScriptObjectType();
			GGame::g_game->script->LoopParam = poisoned;
			if (g_scriptObjectDispatch[objectType - 1].Loop != NULL)
			{
				g_scriptObjectDispatch[objectType - 1].Loop(thing, SetPoisonedLoopFn, SCRIPT_OBJECT_TYPE_NONE, 0);
			}
			return;
		}
		Object* object = dynamic_cast<Object*>(thing);
		if (object == NULL)
		{
			ScriptErrorMessage("Thing not object");
		}
		if (object != NULL)
		{
			object->SetPoisoned(poisoned);
		}
	}
}

// BW1W120 006fb780 BW1M119 014fa930
void GScript::SetOnFire()
{
	float             temperature = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	bool32_t          onFire = g_scriptDLL->ULONG_POP();
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
	}
	if (thing != NULL)
	{
		Object* object = dynamic_cast<Object*>(thing);
		if (object == NULL)
		{
			ScriptErrorMessage("Thing not object");
		}
		if (object != NULL)
		{
			if (onFire)
			{
				object->SetOnFire(temperature);
				return;
			}
			object->SetTemperature(object->Pos.GetTemperature(), NULL);
		}
	}
}

// BW1W120 006fb840 BW1M119 014fa840
void GScript::SetTemperature()
{
	float             temperature = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
	}
	if (thing != NULL)
	{
		Object* object = dynamic_cast<Object*>(thing);
		if (object == NULL)
		{
			ScriptErrorMessage("Thing not object");
		}
		if (object != NULL)
		{
			object->SetTemperature(temperature, NULL);
		}
	}
}

// BW1W120 006fb8c0 BW1M119 014fa550
void GScript::SetIdTarget()
{
	float      time = g_scriptDLL->FLOAT_POP();
	LHPoint    gravity(0.0f, SCRIPT_GRAVITY, 0.0f);
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    target;
	target.z = dll->COORD_POP();
	target.y = dll->COORD_POP();
	target.x = dll->COORD_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
	}
	if (!(time > 0.0f))
	{
		ScriptErrorMessage("Invalid time");
	}
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
#line 2049
	spin.x = (GRand::GameFloatRand(200.0f, __FILE__, __LINE__) - 100.0f) / 100.0f;
	spin.y = (GRand::GameFloatRand(200.0f, __FILE__, __LINE__) - 100.0f) / 100.0f;
	spin.z = (GRand::GameFloatRand(200.0f, __FILE__, __LINE__) - 100.0f) / 100.0f;
	if (object->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS)
	{
		PhysicsObject* physics = PhysicsObject::SearchForPhysicsObject(object);
		if (physics != NULL)
		{
			physics->Physics.Velocity = velocity;
			physics->Physics.Inertia = 0.0f;
		}
		return;
	}
	PhysicsInitialisation physics = object->InitialisePhysics(velocity, spin, NULL, true, NULL);
	if (physics.Physics != NULL)
	{
		physics.Physics->Physics.Inertia = 0.0f;
	}
}

// BW1W120 006fbb50 BW1M119 014fa3e0
void GScript::SetWalkPath()
{
	float             end = g_scriptDLL->FLOAT_POP();
	float             start = g_scriptDLL->FLOAT_POP();
	SCRIPT_PATH       path = (SCRIPT_PATH)g_scriptDLL->ULONG_POP();
	int               reverse = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
	}
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

// BW1W120 006fbc50 BW1M119 014fa2f0
void GScript::GetWalkPathPercentage()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Thing not valid");
	}
	if (thing != NULL && thing->IsLiving())
	{
		float percentage = ((Living*)thing)->GetWalkPathPercentage();
		g_scriptDLL->PUSH(*(void**)&percentage, VMType_FLOAT);
		return;
	}
	float done = 1.0f;
	g_scriptDLL->PUSH(*(void**)&done, VMType_FLOAT);
}

// BW1W120 006fbcd0 BW1M119 014fa1b0
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
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
	}
	if (thing != NULL)
	{
		bool32_t isOfType = FindGeneralCheck(thing, type, subtype);
		g_scriptDLL->PUSH((void*)isOfType, VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}

// BW1W120 006fbd80 BW1M119 014fa100
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

// BW1W120 006fbdc0 BW1M119 014fa050
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

// BW1W120 006fbe00 BW1M119 014f9fe0
void GScript::ClearHitObject()
{
	GGame::g_game->script->SetHitObject(NULL, NULL);
}

// BW1W120 006fbe20 BW1M119 01026720
void GScript::IsHitObject()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing == NULL)
	{
		ScriptErrorMessage("Object no longer valid");
	}
	if (thing != NULL)
	{
		g_scriptDLL->PUSH((void*)(GGame::g_game->script->HitObject == thing), VMType_BOOLEAN);
		return;
	}
	g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
}
