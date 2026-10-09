#include "WhiteColour.h"
#include "GameTimeConstants.h"
#include "Script.h"

#include "AbodeInfo.h"
#include "AnimalInfo.h"
#include "CreatureInfo.h"
#include "FeatureInfo.h"
#include "FieldTypeInfo.h"
#include "MobileObjectInfo.h"
#include "MobileStaticInfo.h"
#include "PotInfo.h"
#include "RewardInfo.h"
#include "ScriptHighlightInfo.h"
#include "SpellSeedInfo.h"
#include "TotemStatueInfo.h"
#include "TreeInfo.h"
#include "TribeInfo.h"
#include "VillagerInfo.h"

#include "Abode.h"
#include "Creature.h"
#include "Dance.h"
#include "Field.h"
#include "Flock.h"
#include "Game.h"
#include "MagicVortex.h"
#include "OneOffSpellSeed.h"
#include "Player.h"
#include "PuzzleGame.h"
#include "ScriptDLL.h"
#include "Town.h"
#include "Utils.h"
#include "Villager.h"
#include "WorshipSite.h"

// fabricated: an unreferenced 4-byte .bss slot after SecondsPerYear and white; nothing names it,
// and this spelling is one that sorts after both.
static float Unused;

// The original name of this file is unknown: it has no __FILE__ string. It sits between
// ScriptDLL.cpp and ScriptFunctions.cpp and holds the search callbacks and the Find*/Loop
// entries of GScript::g_scriptObjectDispatch.

// The subtype scripts pass to match any subtype of the requested type.
#define SCRIPT_SUBTYPE_ANY SCRIPT_FIND_TYPE_ANY
// GetSubType's answer for a thing it cannot classify.
#define SCRIPT_SUBTYPE_INVALID 9999

// BW1W120 006f6d00 BW1M119 014f27d0
uint32_t GScript::GetSubType(GameThingWithPos* thing)
{
	uint32_t subtype;
	switch (thing->GetScriptObjectType())
	{
	case SCRIPT_OBJECT_TYPE_VILLAGER:
	case SCRIPT_OBJECT_TYPE_VILLAGER_CHILD:
		subtype = ((Villager*)thing)->GetInfo() - GVillagerInfo::GetInfo();
		break;
	case SCRIPT_OBJECT_TYPE_ANIMAL:
	case SCRIPT_OBJECT_TYPE_BIRD:
		subtype = (const GAnimalInfo*)((Object*)thing)->info - GAnimalInfo::GetInfo();
		break;
	case SCRIPT_OBJECT_TYPE_CREATURE:
		subtype = ((const CreatureInfo*)((Object*)thing)->info)->CreatureType;
		break;
	case SCRIPT_OBJECT_TYPE_STORE:
		subtype = (const GPotInfo*)((Object*)thing)->info - GPotInfo::GetInfo();
		break;
	case SCRIPT_OBJECT_TYPE_TREE:
		subtype = (const GTreeInfo*)((Object*)thing)->info - GTreeInfo::GetInfo();
		break;
	case SCRIPT_OBJECT_TYPE_ABODE:
	case SCRIPT_OBJECT_TYPE_SPELL_DISPENSER:
		subtype = ((Abode*)thing)->GetInfo() - GAbodeInfo::GetInfo();
		break;
	case SCRIPT_OBJECT_TYPE_FEATURE:
		subtype = (const GFeatureInfo*)((Object*)thing)->info - GFeatureInfo::GetInfo();
		break;
	case SCRIPT_OBJECT_TYPE_REWARD:
		subtype = (const GRewardInfo*)((Object*)thing)->info - GRewardInfo::GetInfo();
		break;
	case SCRIPT_OBJECT_TYPE_MOBILE_STATIC:
	case SCRIPT_OBJECT_TYPE_ROCK:
		subtype = (const GMobileStaticInfo*)((Object*)thing)->info - GMobileStaticInfo::GetInfo();
		break;
	case SCRIPT_OBJECT_TYPE_MOBILE_OBJECT:
	case SCRIPT_OBJECT_TYPE_POO:
	case SCRIPT_OBJECT_TYPE_WHALE:
	case SCRIPT_OBJECT_TYPE_ARK:
		subtype = ((MobileObject*)thing)->GetInfo() - GMobileObjectInfo::GetInfo();
		break;
	case SCRIPT_OBJECT_TYPE_VORTEX:
		subtype = ((LandscapeVortex*)thing)->type;
		break;
	case SCRIPT_OBJECT_TYPE_DEAD_TREE:
		ScriptErrorMessage("Not implemented");
		return SCRIPT_SUBTYPE_INVALID;
	case SCRIPT_OBJECT_TYPE_ONE_SHOT_SPELL: {
		OneOffSpellSeed* seed = thing->CastOneOffSpellSeed();
		if (seed != NULL)
		{
			subtype = seed->SeedType;
			break;
		}
	}
	case SCRIPT_OBJECT_TYPE_SPELL_SEED:
		subtype = (const GSpellSeedInfo*)((Object*)thing)->info - GSpellSeedInfo::GetInfo();
		break;
	case SCRIPT_OBJECT_TYPE_PUZZLE_GAME:
		subtype = ((PuzzleGame*)thing)->GameType;
		break;
	case SCRIPT_OBJECT_TYPE_FIELD:
		subtype = ((Field*)thing)->type_info - GFieldTypeInfo::GetInfo();
		break;
	case SCRIPT_OBJECT_TYPE_WORSHIP_SITE:
		subtype = ((WorshipSite*)thing)->tribe_info.Get() - GTribeInfo::GetInfo();
		break;
	case SCRIPT_OBJECT_TYPE_HIGHLIGHT:
		subtype = (const GScriptHighlightInfo*)((Object*)thing)->info - GScriptHighlightInfo::GetInfo();
		break;
	case SCRIPT_OBJECT_TYPE_TOTEM_STATUE:
		subtype = (const GTotemStatueInfo*)((Object*)thing)->info - GTotemStatueInfo::GetInfo();
		break;
	default:
		ScriptErrorMessage("Unknown type for search");
		return SCRIPT_SUBTYPE_INVALID;
	}
	return subtype;
}

// BW1W120 006f6fa0 BW1M119 014f26e0
int GScript::FindGeneralCheck(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if (thing->GetScriptObjectType() == type)
	{
		if (subtype != SCRIPT_SUBTYPE_ANY)
		{
			uint32_t thingSubtype = GetSubType(thing);
			if (thingSubtype != SCRIPT_SUBTYPE_INVALID)
			{
				return subtype == thingSubtype;
			}
		}
		else
		{
			return true;
		}
	}
	return false;
}

// BW1W120 006f6ff0 BW1M119 014f25c0
int GScript::FindCheckPoisoned(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if (thing->IsPoisoned() && FindGeneralCheck(thing, type, subtype))
	{
		return true;
	}
	return false;
}

// BW1W120 006f7030 BW1M119 014f24a0
int GScript::FindCheckNotPoisoned(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if (!thing->IsPoisoned() && FindGeneralCheck(thing, type, subtype))
	{
		return true;
	}
	return false;
}

// BW1W120 006f7070 BW1M119 01013fc0
int GScript::FindNearGeneralCheck(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if (FindGeneralCheck(thing, type, subtype))
	{
		float distance;
		if (thing->IsWorshipSite())
		{
			distance =
				GUtils::GetDistanceInMetres(GGame::g_game->script->FindPos, ((WorshipSite*)thing)->GetTotemPos());
		}
		else
		{
			distance = GUtils::GetDistanceInMetres(GGame::g_game->script->FindPos, thing->Pos);
		}
		if (distance <= GGame::g_game->script->FindRadius)
		{
			return true;
		}
	}
	return false;
}

// BW1W120 006f7100 BW1M119 014f22b0
int GScript::FindFireNearGeneralCheck(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if (thing->IsOnFire(NULL))
	{
		float distance;
		if (thing->IsWorshipSite())
		{
			distance =
				GUtils::GetDistanceInMetres(GGame::g_game->script->FindPos, ((WorshipSite*)thing)->GetTotemPos());
		}
		else
		{
			distance = GUtils::GetDistanceInMetres(GGame::g_game->script->FindPos, thing->Pos);
		}
		if (distance <= GGame::g_game->script->FindRadius)
		{
			return true;
		}
	}
	return false;
}

// BW1W120 006f7190 BW1M119 014f2130
int GScript::FindGeneralNotNearCheck(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if (FindGeneralCheck(thing, type, subtype))
	{
		float distance;
		if (thing->IsWorshipSite())
		{
			distance =
				GUtils::GetDistanceInMetres(GGame::g_game->script->FindPos, ((WorshipSite*)thing)->GetTotemPos());
		}
		else
		{
			distance = GUtils::GetDistanceInMetres(GGame::g_game->script->FindPos, thing->Pos);
		}
		if (distance > GGame::g_game->script->FindRadius)
		{
			return true;
		}
	}
	return false;
}

// BW1W120 006f7220 BW1M119 014f2030
void* GScript::FindAtPos(const MapCoords& pos, int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                         SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	GGame::g_game->script->FindPos = pos;
	GGame::g_game->script->FindRadius = 1.0f;
	return pos.FindNearForScript(callback, type, subtype, 1.0f);
}

// BW1W120 006f7280 BW1M119 0101c220
void* GScript::FindNearPos(const MapCoords& pos,
                           int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                           SCRIPT_OBJECT_TYPE type, uint32_t subtype, float radius)
{
	GGame::g_game->script->FindPos = pos;
	GGame::g_game->script->FindRadius = radius;
	return pos.FindNearForScript(callback, type, subtype, radius);
}

// BW1W120 006f72e0 BW1M119 014f1e90
Town* GScript::FindPlayerTownAtPos(const MapCoords& pos, float radius, GPlayer* player)
{
	float nearestDistance = radius;
	Town* nearest = NULL;
	FOREACH_LH_LIST_HEAD(Town, town, player->towns)
	{
		float distance = GUtils::GetDistanceInMetres(pos, town->Pos);
		if (distance <= nearestDistance)
		{
			nearestDistance = distance;
			nearest = town;
		}
	}
	return nearest;
}

// BW1W120 006f7340 BW1M119 014f1de0
void* GScript::FindTownAtPos(const MapCoords& pos,
                             int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                             SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	return FindTownNearPos(pos, callback, type, subtype, 10.0f);
}

// BW1W120 006f7370 BW1M119 014f1d40
void* GScript::FindTownNearPos(const MapCoords& pos,
                               int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                               SCRIPT_OBJECT_TYPE type, uint32_t subtype, float radius)
{
	return pos.GetNearestTown(radius);
}

// BW1W120 006f7380 BW1M119 014f1c30
void* GScript::FindCreatureAtPos(const MapCoords& pos,
                                 int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                                 SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	for (LHLinkedNode<Creature*>* node = Creature::CreatureList.GetStart(); node != NULL; node = node->next.Get())
	{
		Creature* creature = node->payload;
		if (GUtils::GetDistanceInMetres(pos, creature->Pos) <= 1.0f)
		{
			return creature;
		}
	}
	return NULL;
}

// BW1W120 006f73c0 BW1M119 014f1af0
void* GScript::FindCreatureNearPos(const MapCoords& pos,
                                   int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                                   SCRIPT_OBJECT_TYPE type, uint32_t subtype, float radius)
{
	for (LHLinkedNode<Creature*>* node = Creature::CreatureList.GetStart(); node != NULL; node = node->next.Get())
	{
		Creature* creature = node->payload;
		if (((const CreatureInfo*)creature->info)->CreatureType == subtype &&
		    GUtils::GetDistanceInMetres(pos, creature->Pos) <= radius)
		{
			return creature;
		}
	}
	return NULL;
}

// BW1W120 006f7410 BW1M119 014f1a10
void* GScript::FindInTown(GameThingWithPos* thing,
                          int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                          SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if (type == SCRIPT_OBJECT_TYPE_VILLAGER || type == SCRIPT_OBJECT_TYPE_VILLAGER_CHILD)
	{
		return ((Town*)thing)->FindVillager(callback, type, subtype);
	}
	if (type == SCRIPT_OBJECT_TYPE_ANIMAL)
	{
		return ((Town*)thing)->FindAnimal(callback, type, subtype);
	}
	if (type == SCRIPT_OBJECT_TYPE_STORE)
	{
		return ((Town*)thing)->GetStoragePit();
	}
	ScriptErrorMessage("Looking for strange type in Town");
	return NULL;
}

// BW1W120 006f7470 BW1M119 014f18c0
void* GScript::FindInTownNear(GameThingWithPos* thing,
                              int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                              SCRIPT_OBJECT_TYPE type, uint32_t subtype, const MapCoords& pos, float radius)
{
	GGame::g_game->script->FindPos = pos;
	GGame::g_game->script->FindRadius = radius;
	if (type == SCRIPT_OBJECT_TYPE_VILLAGER || type == SCRIPT_OBJECT_TYPE_VILLAGER_CHILD)
	{
		return ((Town*)thing)->FindVillager(callback, type, subtype);
	}
	if (type == SCRIPT_OBJECT_TYPE_ANIMAL)
	{
		return ((Town*)thing)->FindAnimal(callback, type, subtype);
	}
	ScriptErrorMessage("Looking for strange type in Town");
	return NULL;
}

// BW1W120 006f7500 BW1M119 014f1820
void* GScript::FindInFlock(GameThingWithPos* thing,
                           int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                           SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	return ((Flock*)thing)->FindLiving(callback, type, subtype);
}

// BW1W120 006f7520 BW1M119 014f1780
void* GScript::FindInDance(GameThingWithPos* thing,
                           int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                           SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	return ((Dance*)thing)->FindLiving(callback, type, subtype);
}

// BW1W120 006f7540 BW1M119 null
void* GScript::FindInAbode(GameThingWithPos* thing,
                           int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                           SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if (type == SCRIPT_OBJECT_TYPE_VILLAGER || type == SCRIPT_OBJECT_TYPE_VILLAGER_CHILD)
	{
		return ((Abode*)thing)->FindVillager(callback, type, subtype);
	}
	return NULL;
}

// BW1W120 006f7570 BW1M119 014f1670
void* GScript::FindInFlockNear(GameThingWithPos* thing,
                               int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                               SCRIPT_OBJECT_TYPE type, uint32_t subtype, const MapCoords& pos, float radius)
{
	GGame::g_game->script->FindPos = pos;
	GGame::g_game->script->FindRadius = radius;
	return ((Flock*)thing)->FindLiving(callback, type, subtype);
}

// BW1W120 006f75c0 BW1M119 014f1560
void* GScript::FindInDanceNear(GameThingWithPos* thing,
                               int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                               SCRIPT_OBJECT_TYPE type, uint32_t subtype, const MapCoords& pos, float radius)
{
	GGame::g_game->script->FindPos = pos;
	GGame::g_game->script->FindRadius = radius;
	return ((Dance*)thing)->FindLiving(callback, type, subtype);
}

// BW1W120 006f7610 BW1M119 null
void* GScript::FindInAbodeNear(GameThingWithPos* thing,
                               int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                               SCRIPT_OBJECT_TYPE type, uint32_t subtype, const MapCoords& pos, float radius)
{
	GGame::g_game->script->FindPos = pos;
	GGame::g_game->script->FindRadius = radius;
	if (type == SCRIPT_OBJECT_TYPE_VILLAGER || type == SCRIPT_OBJECT_TYPE_VILLAGER_CHILD)
	{
		return ((Abode*)thing)->FindVillager(callback, type, subtype);
	}
	return NULL;
}

// BW1W120 006f7670 BW1M119 014f1440
void* GScript::FindInFlockNotNear(GameThingWithPos* thing,
                                  int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                                  SCRIPT_OBJECT_TYPE type, uint32_t subtype, const MapCoords& pos, float radius)
{
	GGame::g_game->script->FindPos = pos;
	GGame::g_game->script->FindRadius = radius;
	return ((Flock*)thing)->FindLiving(callback, type, subtype);
}

// BW1W120 006f76c0 BW1M119 014f1320
void* GScript::FindInDanceNotNear(GameThingWithPos* thing,
                                  int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                                  SCRIPT_OBJECT_TYPE type, uint32_t subtype, const MapCoords& pos, float radius)
{
	GGame::g_game->script->FindPos = pos;
	GGame::g_game->script->FindRadius = radius;
	return ((Dance*)thing)->FindLiving(callback, type, subtype);
}

// BW1W120 006f7710 BW1M119 014f11c0
void* GScript::FindInTownNotNear(GameThingWithPos* thing,
                                 int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                                 SCRIPT_OBJECT_TYPE type, uint32_t subtype, const MapCoords& pos, float radius)
{
	GGame::g_game->script->FindPos = pos;
	GGame::g_game->script->FindRadius = radius;
	if (type == SCRIPT_OBJECT_TYPE_VILLAGER || type == SCRIPT_OBJECT_TYPE_VILLAGER_CHILD)
	{
		return ((Town*)thing)->FindVillager(callback, type, subtype);
	}
	if (type == SCRIPT_OBJECT_TYPE_ANIMAL)
	{
		return ((Town*)thing)->FindAnimal(callback, type, subtype);
	}
	ScriptErrorMessage("Looking for strange type in Town");
	return NULL;
}

// BW1W120 006f77a0 BW1M119 null
void* GScript::FindInAbodeNotNear(GameThingWithPos* thing,
                                  int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                                  SCRIPT_OBJECT_TYPE type, uint32_t subtype, const MapCoords& pos, float radius)
{
	GGame::g_game->script->FindPos = pos;
	GGame::g_game->script->FindRadius = radius;
	if (type == SCRIPT_OBJECT_TYPE_VILLAGER || type == SCRIPT_OBJECT_TYPE_VILLAGER_CHILD)
	{
		return ((Abode*)thing)->FindVillager(callback, type, subtype);
	}
	return NULL;
}

// BW1W120 006f7800 BW1M119 014f10d0
int GScript::LoopFnCheck(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if (GGame::g_game->script->LoopSetControlledByScript)
	{
		thing->SetControlledByScript(true);
	}
	return GGame::g_game->script->LoopCallback(thing, type, subtype);
}

// BW1W120 006f7850 BW1M119 014f1010
void* GScript::TownLoop(GameThingWithPos* thing,
                        int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                        SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	GGame::g_game->script->LoopCallback = callback;
	return ((Town*)thing)->FindVillager(LoopFnCheck, type, subtype);
}

// BW1W120 006f7880 BW1M119 null
void* GScript::AbodeLoop(GameThingWithPos* thing,
                         int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                         SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	GGame::g_game->script->LoopCallback = callback;
	return ((Abode*)thing)->FindVillager(LoopFnCheck, type, subtype);
}

// BW1W120 006f78b0 BW1M119 014f0f50
void* GScript::FlockLoop(GameThingWithPos* thing,
                         int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                         SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	GGame::g_game->script->LoopCallback = callback;
	return ((Flock*)thing)->FindLiving(LoopFnCheck, type, subtype);
}

// BW1W120 006f78e0 BW1M119 014f0e90
void* GScript::DanceLoop(GameThingWithPos* thing,
                         int(__cdecl* callback)(GameThingWithPos*, SCRIPT_OBJECT_TYPE, uint32_t),
                         SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	GGame::g_game->script->LoopCallback = callback;
	return ((Dance*)thing)->FindLiving(LoopFnCheck, type, subtype);
}

// BW1W120 006f7910 BW1M119 014f0d70
void GScript::IsFireNear()
{
	float      radius = g_scriptDLL->COORD_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	GGame::g_game->script->FindPos = MapCoords(point);
	GGame::g_game->script->FindRadius = radius;
	bool32_t found = GGame::g_game->script->FindPos.FindNearForScript(FindFireNearGeneralCheck, SCRIPT_OBJECT_TYPE_NONE,
	                                                                  0, radius) != NULL;
	g_scriptDLL->PUSH((void*)found, (VMType)6);
}

// BW1W120 006f79f0 BW1M119 014f0c50
int GScript::FindGeneralCheckExcludingScriptObjects(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if (!thing->IsInScript())
	{
		return FindGeneralCheck(thing, type, subtype);
	}
	return false;
}

// BW1W120 006f7a20 BW1M119 01022750
int GScript::FindNearGeneralCheckExcludingScriptObjects(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type,
                                                        uint32_t subtype)
{
	if (!thing->IsInScript())
	{
		return FindNearGeneralCheck(thing, type, subtype);
	}
	return false;
}

// BW1W120 006f7a50 BW1M119 014f0b20
int GScript::FindGeneralNotNearCheckExcludingScriptObjects(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type,
                                                           uint32_t subtype)
{
	if (!thing->IsInScript())
	{
		return FindGeneralNotNearCheck(thing, type, subtype);
	}
	return false;
}

// BW1W120 006f7a80 BW1M119 014f0a40
int GScript::FindCheckPoisonedExcludingScriptObjects(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if (!thing->IsInScript())
	{
		return FindCheckPoisoned(thing, type, subtype);
	}
	return false;
}

// BW1W120 006f7ab0 BW1M119 014f0950
int GScript::FindCheckNotPoisonedExcludingScriptObjects(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type,
                                                        uint32_t subtype)
{
	if (!thing->IsInScript())
	{
		return FindCheckNotPoisoned(thing, type, subtype);
	}
	return false;
}

// BW1W120 006f7ae0 BW1M119 014f0800
int GScript::FindNearInStateCheck(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if (thing->IsLiving() && FindGeneralCheck(thing, type, subtype) &&
	    (uint8_t)((Living*)thing)->GetFinalState() == GGame::g_game->script->LoopValue)
	{
		return true;
	}
	return false;
}

// BW1W120 006f7b40 BW1M119 014f0710
int GScript::FindNearInStateCheckExcludingScriptObjects(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type,
                                                        uint32_t subtype)
{
	if (!thing->IsInScript())
	{
		return FindNearInStateCheck(thing, type, subtype);
	}
	return false;
}
