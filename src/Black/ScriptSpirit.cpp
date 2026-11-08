#include "WhiteColour.h"
#include "Script.h"

#include <windows.h>
#include <Lionhead/LH3DLib/development/LHCoord.h> /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>       /* For LHSys::TheSystem */
#include <chlasm/HelpDudeAnim.h>                  /* For enum ANIMLIST */

#include "Alignment.h"
#include "Game.h"
#include "HelpSystem.h"
#include "Player.h"
#include "Rand.h"
#include "ScriptConstants.h"
#include "ScriptDLL.h"

#define SCRIPT_SPIRIT_RANDOM_RANGE      100
#define SCRIPT_SPIRIT_RANDOM_EVIL_ABOVE 50

HELP_SPIRIT_TYPE GScript::ConvertScriptSpiritToHelpSpirit(SCRIPT_SPIRIT_TYPE spirit)
{
	switch (spirit)
	{
	case SCRIPT_SPIRIT_TYPE_EVIL:
		return HELP_SPIRIT_TYPE_EVIL;
	case SCRIPT_SPIRIT_TYPE_ALIGNMENT:
		return GAlignment::GetDiscreteAlignmentValue(GGame::g_game->MyPlayer()->GetAlignmentValue()) < ALIGNMENT_NEUTRAL
		           ? HELP_SPIRIT_TYPE_EVIL
		           : HELP_SPIRIT_TYPE_GOOD;
	case SCRIPT_SPIRIT_TYPE_ANTI_ALIGNMENT:
		return GAlignment::GetDiscreteAlignmentValue(GGame::g_game->MyPlayer()->GetAlignmentValue()) >=
		               ALIGNMENT_NEUTRAL
		           ? HELP_SPIRIT_TYPE_EVIL
		           : HELP_SPIRIT_TYPE_GOOD;
	case SCRIPT_SPIRIT_TYPE_RANDOM:
		return GRand::LocalRand(SCRIPT_SPIRIT_RANDOM_RANGE) > SCRIPT_SPIRIT_RANDOM_EVIL_ABOVE ? HELP_SPIRIT_TYPE_EVIL
		                                                                                      : HELP_SPIRIT_TYPE_GOOD;
	}
	return HELP_SPIRIT_TYPE_GOOD;
}

void GScript::SpiritEject()
{
	HELP_SPIRIT_TYPE spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	GGame::g_game->help_system->SpiritEject(spirit, g_scriptDLL->GetCurrentTaskScriptType() == VMScriptType_Help);
}

void GScript::ScriptSpiritAppear()
{
	HELP_SPIRIT_TYPE spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	GGame::g_game->help_system->SpiritEject(spirit, true);
}

void GScript::SpiritHome()
{
	HELP_SPIRIT_TYPE spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	GGame::g_game->help_system->SpiritHome(spirit, g_scriptDLL->GetCurrentTaskScriptType() == VMScriptType_Help);
}

void GScript::ScriptSpiritDisappear()
{
	HELP_SPIRIT_TYPE spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	GGame::g_game->help_system->SpiritHome(spirit, true);
}

void GScript::SpiritPointAtPos()
{
	bool32_t inWorld = g_scriptDLL->ULONG_POP();
	LHPoint  point;
	g_scriptDLL->POINT_POP(point);
	HELP_SPIRIT_TYPE spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	GGame::g_game->help_system->SpiritPoint(spirit, point, inWorld);
}

void GScript::SpiritPointAtGameThing()
{
	bool32_t          inWorld = g_scriptDLL->ULONG_POP();
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	HELP_SPIRIT_TYPE  spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	SCRIPT_ASSERT(thing != NULL, "Object no longer valid");
	if (thing != NULL)
	{
		GGame::g_game->help_system->SpiritPoint(spirit, thing, inWorld);
	}
}

void GScript::SpiritLookAtGameThing()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	HELP_SPIRIT_TYPE  spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	SCRIPT_ASSERT(thing != NULL, "Object no longer valid");
	if (thing != NULL)
	{
		GGame::g_game->help_system->SpiritLook(spirit, thing);
	}
}

void GScript::StartSpiritControl()
{
	uint32_t controller = GGame::g_game->help_system->DialogueControlTask;
	uint32_t task = g_scriptDLL->TaskNumber();
	if (controller != SCRIPT_TASK_NONE)
	{
		if (controller == task)
		{
			ScriptErrorMessage("Script Asking For Dialogue Control It already has! - Dangerous");
			g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
			return;
		}
		if (g_scriptDLL->GetScriptType(controller) == VMScriptType_Help &&
		    g_scriptDLL->GetCurrentTaskScriptType() == VMScriptType_Script)
		{
			StopHelpScripts();
			controller = GGame::g_game->help_system->DialogueControlTask;
		}
	}
	else
	{
		GGame::g_game->help_system->SpiritHome(HELP_SPIRIT_TYPE_GOOD, false);
		GGame::g_game->help_system->SpiritHome(HELP_SPIRIT_TYPE_EVIL, false);
	}
	if (controller == SCRIPT_TASK_NONE)
	{
		GGame::g_game->help_system->DialogueControlRequest(task);
#ifdef VERSION_BW1WCI
		GGame::g_game->help_system->ScriptTextThing = NULL;
#endif
		g_scriptDLL->PUSH((void*)true, VMType_BOOLEAN);
	}
	else
	{
		g_scriptDLL->PUSH((void*)false, VMType_BOOLEAN);
	}
}

void GScript::EndSpiritControl()
{
	uint32_t controller = GGame::g_game->help_system->DialogueControlTask;
	if (controller == g_scriptDLL->TaskNumber())
	{
		bool32_t disappear = g_scriptDLL->GetCurrentTaskScriptType() == VMScriptType_Help;
		GGame::g_game->help_system->SpiritHome(HELP_SPIRIT_TYPE_GOOD, disappear);
		GGame::g_game->help_system->SpiritHome(HELP_SPIRIT_TYPE_EVIL, disappear);
		GGame::g_game->help_system->ReleaseDialogueControl(g_scriptDLL->TaskNumber());
#ifdef VERSION_BW1WCI
		GGame::g_game->script->PlayVillagerSounds = true;
#endif
		GGame::g_game->script->PlayCreatureSounds = true;
		GGame::g_game->script->LastMusicWord = 0;
#ifdef VERSION_BW1WCI
		GGame::g_game->help_system->ScriptTextThing = NULL;
#endif
	}
}

void GScript::IsSpiritFree()
{
	bool32_t ready = !GGame::g_game->help_system->IsDialogueControlled();
	g_scriptDLL->PUSH((void*)ready, VMType_BOOLEAN);
}

void GScript::StopSpiritPointing()
{
	HELP_SPIRIT_TYPE spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	GGame::g_game->help_system->StopSpiritPointing(spirit);
}

void GScript::StopSpiritLooking()
{
	HELP_SPIRIT_TYPE spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	GGame::g_game->help_system->StopSpiritLooking(spirit);
}

void GScript::SpiritLookAtPosition()
{
	LHPoint point;
	g_scriptDLL->POINT_POP(point);
	HELP_SPIRIT_TYPE spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	GGame::g_game->help_system->SpiritLook(spirit, point);
}

void GScript::SpiritPlayAnim()
{
	float            speed = g_scriptDLL->FLOAT_POP();
	ANIMLIST         anim = (ANIMLIST)g_scriptDLL->ULONG_POP();
	float            y = g_scriptDLL->FLOAT_POP();
	float            x = g_scriptDLL->FLOAT_POP();
	HELP_SPIRIT_TYPE spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	SCRIPT_ASSERT(anim >= ANIM_STAND && anim <= ANIM_LAST, "Invalid enum");
	SCRIPT_ASSERT(y >= 0.0f && y <= 1.0f, "Invalid Y");
	SCRIPT_ASSERT(x >= 0.0f && x <= 1.0f, "Invalid X");
	GGame::g_game->help_system->SpiritPlayAnim(spirit, x, y, anim, speed);
}

#ifdef VERSION_BW1WCI
void GScript::SpiritPlayAnimInWorld()
{
	float   speed = g_scriptDLL->FLOAT_POP();
	LHPoint point;
	g_scriptDLL->POINT_POP(point);
	ANIMLIST         anim = (ANIMLIST)g_scriptDLL->ULONG_POP();
	HELP_SPIRIT_TYPE spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	SCRIPT_ASSERT(anim >= ANIM_STAND && anim <= ANIM_LAST, "Invalid enum");
	GGame::g_game->help_system->SpiritPlayAnimInWorld(spirit, point, anim, speed);
}
#endif

void GScript::SpiritPlayed()
{
	HELP_SPIRIT_TYPE spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	bool32_t         played = !GGame::g_game->help_system->IsSpiritPlayingAnim(spirit);
	g_scriptDLL->PUSH((void*)played, VMType_BOOLEAN);
}

void GScript::ClingSpirit()
{
	float            y = g_scriptDLL->FLOAT_POP();
	float            x = g_scriptDLL->FLOAT_POP();
	HELP_SPIRIT_TYPE spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	SCRIPT_ASSERT(y >= 0.0f && y <= 1.0f, "Invalid Y");
	SCRIPT_ASSERT(x >= 0.0f && x <= 1.0f, "Invalid X");
	GGame::g_game->help_system->SpiritCling(spirit, x, y);
}

void GScript::FlySpirit()
{
	float            y = g_scriptDLL->FLOAT_POP();
	float            x = g_scriptDLL->FLOAT_POP();
	HELP_SPIRIT_TYPE spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	SCRIPT_ASSERT(y >= 0.0f && y <= 1.0f, "Invalid Y");
	SCRIPT_ASSERT(x >= 0.0f && x <= 1.0f, "Invalid X");
	GGame::g_game->help_system->SpiritFly(spirit, x, y);
}

void GScript::SpiritSpeaks()
{
	uint32_t         text = g_scriptDLL->ULONG_POP();
	HELP_SPIRIT_TYPE spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	if (text >= SCRIPT_TEXT_ID_LIMIT)
	{
		text = 0;
	}
	bool32_t speaks = HelpSystem::GetSpiritWhoTalks(text) == spirit;
	g_scriptDLL->PUSH((void*)speaks, VMType_BOOLEAN);
}

void GScript::ScriptSpiritScreenPoint()
{
	float            y = g_scriptDLL->FLOAT_POP();
	float            x = g_scriptDLL->FLOAT_POP();
	HELP_SPIRIT_TYPE spirit = ConvertScriptSpiritToHelpSpirit((SCRIPT_SPIRIT_TYPE)g_scriptDLL->ULONG_POP());
	SCRIPT_ASSERT(y >= 0.0f && y <= 1.0f, "Invalid Y");
	SCRIPT_ASSERT(x >= 0.0f && x <= 1.0f, "Invalid X");
	LHCoord coord((long)(LHSys::TheSystem.screen.width * x), (long)(LHSys::TheSystem.screen.height * y));
	GGame::g_game->help_system->SpiritPoint(spirit, coord);
}
