#include "HelpSystem.h"

#include <Lionhead/LH3DLib/development/Fish.h>
#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LH3DLib/development/LHPoint.h>

#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"

#include "Game.h"
#include "Interface.h"
#include "InterfaceCollide.h"
#include "InterfaceStatus.h"
#include "Landscape.h"
#include "Player.h"
#include "Script.h"
#include "ScriptDLL.h"
#include "Terrain.h"
#include "TerrainMaterialInfo.h"
#include "Town.h"
#include "TownDesireFlags.h"
#include "Villager.h"
#include "VillagerInfo.h"

#define QUERY_SCRIPTED_VILLAGER_TEXT 6120
#define QUERY_DEAD_VILLAGER_TEXT     3036
#define QUERY_FISH_TEXT              2850
#define QUERY_WATER_TEXT             2949

#define QUERY_SEA_LEVEL      0.15
#define QUERY_DESIRE_MAX     1.0f
#define QUERY_DESIRE_PERCENT 100.0f

uint32_t HelpSystem::RunNotInterestedMessage()
{
	return RunMessageSet(HELP_SYSTEM_MESSAGE_SET_NOT_INTERESTED, NULL);
}

void HelpSystem::GetHelpQueryOnGameThingWithPos(GameThingWithPos* thing)
{
	if (thing->IsVillager(NULL))
	{
		Villager* villager = (Villager*)thing;
		if (thing->Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT)
		{
			RunMessage(QUERY_SCRIPTED_VILLAGER_TEXT, QUERY_SCRIPTED_VILLAGER_TEXT, "MultiHelpJustTalkWithText");
			return;
		}
		if (!villager->IsDisciple() ||
		    GVillagerInfo::GetDiscipleInfo()[villager->DiscipleType].UsesNothingToDoState != true)
		{
			if (villager->IsDead())
			{
				RunMessage(QUERY_DEAD_VILLAGER_TEXT, QUERY_DEAD_VILLAGER_TEXT, "MultiHelpJustTalkWithText");
				return;
			}
			if (villager->IsAChild())
			{
				RunMessageSet(HELP_SYSTEM_MESSAGE_SET_CHILDREN, thing);
				return;
			}
			if (villager->IsVagrant())
			{
				RunMessageSet(HELP_SYSTEM_MESSAGE_SET_VAGRANT, thing);
				return;
			}
			if (villager->GetPlayer() != GGame::g_game->MyPlayer())
			{
				RunMessageSet(HELP_SYSTEM_MESSAGE_SET_NON_BELIEVER, thing);
				return;
			}
		}
	}
	else if (thing->IsWonder())
	{
		if (thing->GetPlayer() != GGame::g_game->MyPlayer())
		{
			RunMessageSet(HELP_SYSTEM_MESSAGE_SET_WONDER_GENERAL, thing);
			return;
		}
	}

	unsigned long firstText = thing->GetQueryFirstEnumText();
	unsigned long lastText = thing->GetQueryLastEnumText();
	if (firstText > HELP_TEXT_NONE)
	{
		if (thing->IsTownCentre() || thing->IsTotemStatue())
		{
			RunMessage(firstText, lastText, "HelpTown");
		}
		else if (thing->IsTownDesireFlag())
		{
			TownDesireFlags* flag = (TownDesireFlags*)thing;
			Town*            town = flag->GetTown();
			if (town != NULL)
			{
				float      desire = town->GetRawDesire(flag->DesireType) < QUERY_DESIRE_MAX
				                        ? town->GetRawDesire(flag->DesireType)
				                        : QUERY_DESIRE_MAX;
				ScriptDLL* script = GScript::g_scriptDLL;
				script->FLOAT_PUSH((float)flag->GetQueryStatEnumText());
				GScript::g_scriptDLL->FLOAT_PUSH(desire * QUERY_DESIRE_PERCENT);
				RunMessage(firstText, lastText, "HelpTownNeeds");
			}
			else
			{
				unsigned long statText = flag->GetQueryStatEnumText();
				RunMessage(statText, statText, "MultiHelpJustTalkWithText");
			}
		}
		else
		{
			RunMessage(firstText, lastText, "MultiHelpJustTalkWithText");
		}
	}
	else
	{
		RunNotInterestedMessage();
	}
}

void HelpSystem::GetHelpQueryAtPosition(const MapCoords& coords)
{
	if (coords.IsZero())
	{
		RunNotInterestedMessage();
		return;
	}
	LHPoint point;
	GLandscape::ConvertMapCoordToLandscapePoint(coords, point);
	if (FishRush::CollideWithFish(&point))
	{
		RunMessage(QUERY_FISH_TEXT, QUERY_FISH_TEXT, "MultiHelpJustTalkWithText");
		return;
	}
	if (point.y <= QUERY_SEA_LEVEL && LH3DIsland::GetCell(coords.MapX(), coords.MapZ()) != NULL)
	{
		RunMessage(QUERY_WATER_TEXT, QUERY_WATER_TEXT, "MultiHelpJustTalkWithText");
		return;
	}
	GTerrainMaterialInfo* material = Terrain::GetMaterialInfo(coords.MapX(), coords.MapZ());
	if (material->QueryFirstEnumText != HELP_TEXT_NONE)
	{
		RunMessage(material->QueryFirstEnumText, material->QueryLastEnumText, "MultiHelpJustTalkWithText");
		return;
	}
	RunNotInterestedMessage();
}

void HelpSystem::HelpQuery()
{
	GameThingWithPos* thing = GGame::g_game->MyInterface()->GetStatus()->GetFirstObjectInCurrentHand();
	if (thing == NULL)
	{
		thing = GGame::g_game->MyInterface()->interface_collide.object;
	}
	if (thing != NULL)
	{
		GetHelpQueryOnGameThingWithPos(thing);
	}
	else
	{
		GetHelpQueryAtPosition(GGame::g_game->MyInterface()->interface_collide.GetPos());
	}
}
