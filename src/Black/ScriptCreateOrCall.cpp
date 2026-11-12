#include "WhiteColour.h"
#include "MaxFloat.h"
#include "GameTimeConstants.h"
#include "CreatureAttitudeConstants.h"
#include "Script.h"
#include "Utils.h" /* For GAME_ANGLE_FULL_TURN */

#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetAltitude */
#include <Lionhead/LH3DLib/development/LH3DMath.h>   /* For TWO_PI */
#include <Lionhead/LH3DLib/development/LHPoint.h>    /* For struct LHPoint */
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>         /* For LHSPrintf */

#include "AbodeInfo.h"
#ifdef VERSION_BW1WCI
#include "Cannon.h"
#include "CitadelHeartInfo.h"
#include "Die.h"
#include "Dolphin.h"
#include "Field.h"
#include "FieldTypeInfo.h"
#include "Flowers.h"
#include "FlowersInfo.h"
#include "TownInfo.h"
#endif
#include "Animal.h"
#include "AnimalInfo.h"
#include "AnimatedStatic.h"
#include "AnimatedStaticInfo.h"
#include "Ball.h"
#include "BallInfo.h"
#include "Citadel.h"
#include "ContainerInfo.h"
#include "Creature.h"
#include "CreatureInfo.h"
#include "DeadTree.h"
#include "Feature.h"
#include "FeatureInfo.h"
#include "Flock.h"
#include "Game.h"
#include "Game3DObject.h"
#include "GameThingWithPos.h"
#include "GroupBehaviour.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "Landscape.h"
#include "Living.h"
#include "MagicFood.h"
#include "MagicVortex.h"
#include "MapCoords.h"
#include "Mist.h"
#include "MobileObject.h"
#include "MobileObjectInfo.h"
#include "MobileStatic.h"
#include "MobileStaticInfo.h"
#include "Object.h"
#include "OneOffSpellSeed.h"
#include "PhysicsObject.h"
#include "Player.h"
#include "Pot.h"
#include "PuzzleGame.h"
#include "Rand.h"
#include "Reward.h"
#include "RewardInfo.h"
#include "Scaffold.h"
#include "ScaffoldInfo.h"
#include "ScriptDLL.h"
#include "ScriptHighlight.h"
#include "ScriptHighlightInfo.h"
#include "ScriptMarker.h"
#include "ScriptTimer.h"
#include "SpellDispenser.h"
#include "StreetLantern.h"
#include "SpellIcon.h"
#include "TotemStatue.h"
#include "Town.h"
#include "TownCentre.h"
#include "Tree.h"
#include "TreeInfo.h"
#include "Villager.h"
#include "VillagerInfo.h"
#include "WeatherInfo.h"
#include "WeatherThing.h"
#include "Whale.h"

static uint32_t UnusedStatic = 0;

ScriptObjectDispatch GScript::g_scriptObjectDispatch[SCRIPT_OBJECT_TYPE_LAST] = {
	{NULL, NULL, NULL, NULL, NULL, NULL},             //
	{NULL, NULL, NULL, NULL, NULL, NULL},             //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL}, //
#ifdef VERSION_BW1W100
	{FindTownAtPos, FindTownNearPos, FindInTown, FindInTownNear, FindInTownNear, TownLoop}, //
	{NULL, NULL, FindInDance, FindInDanceNear, FindInDanceNear, DanceLoop},                 //
	{NULL, NULL, FindInFlock, FindInFlockNear, FindInFlockNear, FlockLoop},                 //
#else
	{FindTownAtPos, FindTownNearPos, FindInTown, FindInTownNear, FindInTownNotNear, TownLoop}, //
	{NULL, NULL, FindInDance, FindInDanceNear, FindInDanceNotNear, DanceLoop},                 //
	{NULL, NULL, FindInFlock, FindInFlockNear, FindInFlockNotNear, FlockLoop},                 //
#endif
	{FindCreatureAtPos, FindCreatureNearPos, NULL, NULL, NULL, NULL}, //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{NULL, NULL, NULL, NULL, NULL, NULL},                             //
	{NULL, NULL, NULL, NULL, NULL, NULL},                             //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
#ifdef VERSION_BW1WCI
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindCreatureAtPos, FindCreatureNearPos, NULL, NULL, NULL, NULL}, //
	{FindAtPos, FindNearPos, NULL, NULL, NULL, NULL},                 //
	{FindCreatureAtPos, FindCreatureNearPos, NULL, NULL, NULL, NULL}, //
	{NULL, NULL, NULL, NULL, NULL, NULL},                             //
#endif
};

void GScript::Call()
{
	bool32_t excludeScripted = g_scriptDLL->ULONG_POP();
	LHPoint  pos;
	g_scriptDLL->POINT_POP(pos);
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	if (type <= SCRIPT_OBJECT_TYPE_NONE || type >= SCRIPT_OBJECT_TYPE_LAST)
	{
		ScriptErrorMessage(LHSPrintf("Invalid type=%d", type));
	}
	if (type > SCRIPT_OBJECT_TYPE_NONE && type < SCRIPT_OBJECT_TYPE_LAST)
	{
		MapCoords                               coords(pos);
		ScriptObjectDispatch::FindAtPosFunction find = g_scriptObjectDispatch[type].FindAtPos;
		if (find != NULL)
		{
			GameThingWithPos* thing;
			if (excludeScripted)
			{
				thing = (GameThingWithPos*)find(coords, FindGeneralCheckExcludingScriptObjects, type, subtype);
			}
			else
			{
				thing = (GameThingWithPos*)find(coords, FindGeneralCheck, type, subtype);
			}
			if (thing != NULL)
			{
				uint32_t id = AddScriptGameThing(thing, false);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				return;
			}
			ScriptWarningMessage("Thing not found");
		}
		else
		{
			ScriptErrorMessage(LHSPrintf("No find function for type=%d", type));
		}
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CallNear()
{
	bool32_t excludeScripted = g_scriptDLL->ULONG_POP();
	float    radius = g_scriptDLL->FLOAT_POP();
	LHPoint  pos;
	g_scriptDLL->POINT_POP(pos);
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	if (type <= SCRIPT_OBJECT_TYPE_NONE || type >= SCRIPT_OBJECT_TYPE_LAST)
	{
		ScriptErrorMessage(LHSPrintf("Invalid type=%d", type));
	}
	if (type > SCRIPT_OBJECT_TYPE_NONE && type < SCRIPT_OBJECT_TYPE_LAST)
	{
		MapCoords                                 coords(pos);
		ScriptObjectDispatch::FindNearPosFunction find = g_scriptObjectDispatch[type].FindNearPos;
		if (find != NULL)
		{
			GameThingWithPos* thing;
			if (excludeScripted)
			{
				thing =
					(GameThingWithPos*)find(coords, FindNearGeneralCheckExcludingScriptObjects, type, subtype, radius);
			}
			else
			{
				thing = (GameThingWithPos*)find(coords, FindNearGeneralCheck, type, subtype, radius);
			}
			if (thing != NULL)
			{
				uint32_t id = AddScriptGameThing(thing, false);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				return;
			}
			ScriptWarningMessage("Thing not found");
		}
		else
		{
			ScriptErrorMessage(LHSPrintf("No find function for type=%d", type));
		}
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CallNearInState()
{
	bool32_t excludeScripted = g_scriptDLL->ULONG_POP();
	float    radius = g_scriptDLL->FLOAT_POP();
	LHPoint  pos;
	g_scriptDLL->POINT_POP(pos);
	uint32_t           state = g_scriptDLL->ULONG_POP();
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	if (type <= SCRIPT_OBJECT_TYPE_NONE || type >= SCRIPT_OBJECT_TYPE_LAST)
	{
		ScriptErrorMessage(LHSPrintf("Invalid type=%d", type));
	}
	if (type > SCRIPT_OBJECT_TYPE_NONE && type < SCRIPT_OBJECT_TYPE_LAST)
	{
		MapCoords coords(pos);
		if (g_scriptObjectDispatch[type].FindNearPos != NULL)
		{
#ifdef VERSION_BW1WCI
			GGame::g_game->script->LoopState = state;
#else
			GGame::g_game->script->LoopValue = state;
#endif
			GameThingWithPos* thing;
			if (excludeScripted)
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[type].FindNearPos(
					coords, FindNearInStateCheckExcludingScriptObjects, type, subtype, radius);
			}
			else
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[type].FindNearPos(coords, FindNearInStateCheck, type,
				                                                                    subtype, radius);
			}
			if (thing != NULL)
			{
				uint32_t id = AddScriptGameThing(thing, false);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				return;
			}
			ScriptWarningMessage("Thing not found");
		}
		else
		{
			ScriptErrorMessage(LHSPrintf("No find function for type=%d", type));
		}
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

GameThingWithPos* GScript::CreateScriptThing(const LHPoint& pos, SCRIPT_OBJECT_TYPE type, uint32_t subtype,
                                             float y_angle, float scale)
{
	GameThingWithPos* thing = NULL;
	Villager*         villager;
	MapCoords         coords(pos);
	bool              valid = subtype != SCRIPT_FIND_TYPE_ANY || type == SCRIPT_OBJECT_TYPE_TIMER ||
	                          type == SCRIPT_OBJECT_TYPE_SPELL_DISPENSER || type == SCRIPT_OBJECT_TYPE_WHALE ||
	                          type == SCRIPT_OBJECT_TYPE_ARK || type == SCRIPT_OBJECT_TYPE_MARKER ||
	                          type == SCRIPT_OBJECT_TYPE_BALL || type == SCRIPT_OBJECT_TYPE_POO ||
	                          type == SCRIPT_OBJECT_TYPE_SCAFFOLD
#ifdef VERSION_BW1WCI
	             || type == SCRIPT_OBJECT_TYPE_DIE || type == SCRIPT_OBJECT_TYPE_DOLPHIN ||
	             type == SCRIPT_OBJECT_TYPE_CANNON || type == SCRIPT_OBJECT_TYPE_FEMALE_CREATURE
#endif
		;
	SCRIPT_ASSERT(valid, "Trying to create an invalid sub_type");
	if (!valid)
	{
		return NULL;
	}
#ifdef VERSION_BW1WCI
	if (type != SCRIPT_OBJECT_TYPE_MARKER &&
	    (type != SCRIPT_OBJECT_TYPE_MOBILE_STATIC || subtype == MOBILE_STATIC_INFO_COUNTRY_LANTERN ||
	     subtype == MOBILE_STATIC_INFO_STREET_LANTERN || subtype == MOBILE_STATIC_INFO_BONFIRE))
#else
	if (type != SCRIPT_OBJECT_TYPE_MARKER && type != SCRIPT_OBJECT_TYPE_MOBILE_STATIC)
#endif
	{
		coords.SetAltitude(0.0f);
	}
	switch (type)
	{
	case SCRIPT_OBJECT_TYPE_MARKER:
		thing = ScriptMarker::Create(coords);
		break;
	case SCRIPT_OBJECT_TYPE_HIGHLIGHT:
		ScriptErrorMessage("Highlight has it's own unique create function");
		break;
	case SCRIPT_OBJECT_TYPE_TIMER:
		thing = ScriptTimer::Create((float)subtype);
		break;
	case SCRIPT_OBJECT_TYPE_FEATURE:
		thing = Feature::Create(coords, &GFeatureInfo::GetInfo()[subtype], y_angle, scale, 1.0f, false);
		break;
	case SCRIPT_OBJECT_TYPE_VILLAGER: {
		const GVillagerInfo* info = &GVillagerInfo::GetInfo()[subtype];
		villager = Villager::Create(coords, info, info->TeenAge + 1, false);
		thing = villager;
		villager->SetAge(info->TeenAge + 1);
		SetScriptState(villager, VILLAGER_STATE_IN_SCRIPT);
		break;
	}
	case SCRIPT_OBJECT_TYPE_VILLAGER_CHILD: {
		villager = Villager::Create(coords, &GVillagerInfo::GetInfo()[subtype], VILLAGER_SCRIPT_CHILD_AGE, false);
		thing = villager;
		villager->SetAge(VILLAGER_SCRIPT_CHILD_AGE);
		SetScriptState(villager, VILLAGER_STATE_IN_SCRIPT);
		break;
	}
	case SCRIPT_OBJECT_TYPE_ANIMAL:
	case SCRIPT_OBJECT_TYPE_BIRD: {
		Animal* animal = Animal::CreateFromType(coords, &GAnimalInfo::GetInfo()[subtype], NULL, 0);
		Flock*  flock = animal->flock.Get();
		flock->DomainRadius = FLOCK_SCRIPT_ANIMAL_DOMAIN_RADIUS;
		flock->FlockDistance = FLOCK_SCRIPT_ANIMAL_DISTANCE;
		animal->SetTownIfNearby(ANIMAL_SCRIPT_TOWN_RADIUS);
		SetScriptState(animal, VILLAGER_STATE_IN_SCRIPT);
		thing = animal;
		break;
	}
	case SCRIPT_OBJECT_TYPE_MOBILE_OBJECT:
		thing = MobileObject::Create(coords, &GMobileObjectInfo::GetInfo()[subtype], NULL, y_angle, scale);
		break;
	case SCRIPT_OBJECT_TYPE_SCAFFOLD:
		thing = Scaffold::Create(coords, GScaffoldInfo::GetInfo(), NULL, NULL, y_angle, scale);
		break;
	case SCRIPT_OBJECT_TYPE_REWARD:
		thing = Reward::Create(coords, &GRewardInfo::GetInfo()[subtype], NULL, (int)y_angle, scale, 1.0f, NULL);
		break;
	case SCRIPT_OBJECT_TYPE_MOBILE_STATIC:
	case SCRIPT_OBJECT_TYPE_ROCK:
#ifdef VERSION_BW1WCI
		if (GMobileStaticInfo::GetInfo()[subtype].BaseOnlyType == MOBILE_STATIC_INFO_SINGING_STONE_BASE)
		{
			thing = GBaseOnly::Create(coords, &GMobileStaticInfo::GetInfo()[subtype], y_angle, scale);
		}
		else if (subtype == MOBILE_STATIC_INFO_COUNTRY_LANTERN || subtype == MOBILE_STATIC_INFO_STREET_LANTERN)
		{
			thing = GStreetLantern::Create(coords, &GMobileStaticInfo::GetInfo()[subtype], scale);
		}
#else
		if (subtype == MOBILE_STATIC_INFO_SINGING_STONE_BASE)
		{
			thing = GBaseOnly::Create(coords, &GMobileStaticInfo::GetInfo()[MOBILE_STATIC_INFO_SINGING_STONE_BASE]);
		}
		else if (subtype == MOBILE_STATIC_INFO_COUNTRY_LANTERN || subtype == MOBILE_STATIC_INFO_STREET_LANTERN)
		{
			thing = GStreetLantern::Create(coords, &GMobileStaticInfo::GetInfo()[subtype]);
		}
#endif
		else
		{
			thing = MobileStatic::Create(coords, &GMobileStaticInfo::GetInfo()[subtype], NULL, NULL, y_angle, scale);
		}
		break;
	case SCRIPT_OBJECT_TYPE_CREATURE: {
#ifdef VERSION_BW1WCI
		Creature* creature = Creature::Create(coords, &CreatureInfo::GetInfo()[subtype], NULL, false);
#else
		Creature* creature = Creature::Create(coords, &CreatureInfo::GetInfo()[subtype], NULL);
#endif
		creature->ReactionsEnabled = false;
		thing = creature;
		break;
	}
#ifdef VERSION_BW1WCI
	case SCRIPT_OBJECT_TYPE_DUMB_CREATURE: {
		Creature* creature = Creature::Create(coords, &CreatureInfo::GetInfo()[subtype], NULL, true);
		thing = creature;
		creature->ReactionsEnabled = false;
		creature->SetControlledByScript(true);
		break;
	}
	case SCRIPT_OBJECT_TYPE_FEMALE_CREATURE: {
		Creature* creature = Creature::CreateFemale(coords, &CreatureInfo::GetInfo()[CREATURE_TYPE_TIGER], NULL, true);
		thing = creature;
		creature->ReactionsEnabled = false;
		creature->SetControlledByScript(true);
		break;
	}
#endif
	case SCRIPT_OBJECT_TYPE_DEAD_TREE:
		thing = DeadTree::Create(coords, &GTreeInfo::GetInfo()[subtype], NULL, 1.0f, 0.0f, 0.0f, 0.0f, NULL);
		break;
	case SCRIPT_OBJECT_TYPE_TREE:
		thing = Tree::Create(coords, &GTreeInfo::GetInfo()[subtype], NULL, scale, y_angle, scale);
		break;
	case SCRIPT_OBJECT_TYPE_WEATHER_THING:
		thing = WeatherThing::Create(coords, &GWeatherInfo::GetInfo()[subtype], WEATHER_SCRIPT_INNER_RADIUS,
		                             WEATHER_SCRIPT_OUTER_RADIUS, WEATHER_SCRIPT_HEIGHT);
		break;
	case SCRIPT_OBJECT_TYPE_STORE: {
		Pot* pot = MagicResource::Create(MapCoords(coords), NULL, (RESOURCE_TYPE)subtype, 1, NULL);
		if (pot != NULL)
		{
			pot->PlayAddResourceSound(coords, (RESOURCE_TYPE)subtype, 1);
			thing = pot;
		}
		break;
	}
	case SCRIPT_OBJECT_TYPE_VORTEX:
		thing = LandscapeVortex::Create(coords, (VORTEX_TYPE)subtype, MAGIC_VORTEX_SCRIPT_RADIUS);
		break;
	case SCRIPT_OBJECT_TYPE_POO:
		thing = MobileObject::Create(coords, &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_LUMP_OF_POO], NULL,
		                             y_angle, scale);
		break;
	case SCRIPT_OBJECT_TYPE_WHALE:
		thing = Whale::Create(coords, &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_WHALE], NULL, y_angle, scale);
		break;
	case SCRIPT_OBJECT_TYPE_ARK:
		thing =
			MobileObject::Create(coords, &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_ARK], NULL, y_angle, scale);
		break;
	case SCRIPT_OBJECT_TYPE_BALL: {
		thing = Ball::Create(coords, GBallInfo::GetInfo(), 0, BALL_SCRIPT_RADIUS, BALL_SCRIPT_HEIGHT);
		Town* town = Town::GetNearestTownToPos(coords, TRIBE_TYPE_NONE, ABODE_TYPE_ANY, MaxFloat);
		if (town != NULL)
		{
			Object* ball = dynamic_cast<Object*>(thing);
			if (ball != NULL)
			{
				town->AddPlaythingIfNoneThere(ball);
			}
		}
		else
		{
			ScriptErrorMessage("Ball Created but unable to add it to a town.");
		}
		break;
	}
	case SCRIPT_OBJECT_TYPE_ONE_SHOT_SPELL:
		thing = OneOffSpellSeed::Create(coords, (SPELL_SEED_TYPE)subtype, POWER_UP_TYPE_NONE, 1.0f);
		break;
	case SCRIPT_OBJECT_TYPE_ONE_SHOT_SPELL_IN_HAND:
		thing = OneOffSpellSeed::CreateSpellIntoHand(GGame::g_game->MyInterface()->GetStatus(),
		                                             (SPELL_SEED_TYPE)subtype, POWER_UP_TYPE_NONE, 1.0f);
		break;
	case SCRIPT_OBJECT_TYPE_PUZZLE_GAME:
		thing = PuzzleGame::Create(coords, (SCRIPT_PUZZLE_GAME_TYPE)subtype,
		                           (uint16_t)((y_angle * GAME_ANGLE_FULL_TURN) / TWO_PI), scale);
		break;
	case SCRIPT_OBJECT_TYPE_TOTEM:
		thing = PuzzleTotem::Create(coords, &GAbodeInfo::GetInfo()[subtype], NULL, y_angle, scale, 1.0f, false);
		break;
	case SCRIPT_OBJECT_TYPE_SPELL_DISPENSER:
		thing = SpellDispenser::Create(coords, &GAbodeInfo::GetInfo()[subtype], NULL, y_angle, scale, 1.0f, 0);
		break;
#ifdef VERSION_BW1WCI
	case SCRIPT_OBJECT_TYPE_FIELD:
		thing = Field::Create(coords, &GFieldTypeInfo::GetInfo()[subtype], NULL, y_angle, scale, 0);
		break;
	case SCRIPT_OBJECT_TYPE_SPECIAL_FIELD:
		thing = SpecialField::Create(coords, &GFieldTypeInfo::GetInfo()[subtype], NULL, y_angle, scale, 0);
		break;
#endif
	case SCRIPT_OBJECT_TYPE_ANIMATED_STATIC:
		thing = AnimatedStatic::Create(coords, &GAnimatedStaticInfo::GetInfo()[subtype], y_angle, scale, 1.0f, false);
		break;
#ifdef VERSION_BW1WCI
	case SCRIPT_OBJECT_TYPE_ABODE:
		thing = Abode::Create(coords, &GAbodeInfo::GetInfo()[subtype], NULL, y_angle, scale, 0, 0, 1.0f, 0, 1);
		break;
	case SCRIPT_OBJECT_TYPE_DIE:
		thing = Die::Create(coords, y_angle, scale);
		break;
	case SCRIPT_OBJECT_TYPE_DOLPHIN:
		thing = ScriptDolphin::Create(coords, &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_DOLPHIN], y_angle, scale);
		break;
	case SCRIPT_OBJECT_TYPE_CANNON:
		thing = Cannon::Create(coords, &GMobileStaticInfo::GetInfo()[MOBILE_STATIC_INFO_WATER_CANNON],
		                       &GMobileStaticInfo::GetInfo()[MOBILE_STATIC_INFO_WATER_CANNON_AMMO], 0.0f,
		                       CANNON_SCRIPT_SCALE);
		break;
	case SCRIPT_OBJECT_TYPE_FLOWERS:
		thing = Flowers::Create(coords, &GFlowersInfo::GetInfo()[subtype], y_angle, scale);
		break;
#endif
	default:
		ScriptErrorMessage("Invalid create type");
		break;
	}
	Object* object = dynamic_cast<Object*>(thing);
	if (thing != NULL)
	{
		if (object == NULL || object->CanBecomeAPhysicsObject())
		{
			thing->PhysicsEditorCreate(type == SCRIPT_OBJECT_TYPE_MOBILE_STATIC);
			if (object != NULL && object->Game3dObject != NULL)
			{
				object->MoveMapObject(object->Pos);
				float objectScale = object->GetScale();
				float objectAngle = object->GetYAngle();
				SetPositionOnMap(object->Game3dObject, object->Pos, objectAngle, objectScale);
			}
		}
		thing->SetScriptNameOfCreate(g_scriptDLL->TaskName());
	}
	return thing;
}

void GScript::CreateThing()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(type > SCRIPT_OBJECT_TYPE_NONE && type < SCRIPT_OBJECT_TYPE_LAST, "Invalid type");
	if (type > SCRIPT_OBJECT_TYPE_NONE && type < SCRIPT_OBJECT_TYPE_LAST)
	{
		GameThingWithPos* thing = CreateScriptThing(pos, type, subtype, 0.0f, 1.0f);
		if (thing != NULL)
		{
			uint32_t id = AddScriptGameThing(thing, true);
			g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
			thing->SetScriptNameOfCreate(g_scriptDLL->TaskName());
			return;
		}
		ScriptErrorMessage("Thing not created");
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CreateHighlight()
{
#ifdef VERSION_BW1WCI
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	HIGHLIGHT_INFO highlightType = (HIGHLIGHT_INFO)g_scriptDLL->ULONG_POP();
	uint32_t       scriptId = g_scriptDLL->ULONG_POP();
#else
	uint32_t scriptId = g_scriptDLL->ULONG_POP();
	LHPoint  pos;
	g_scriptDLL->POINT_POP(pos);
	HIGHLIGHT_INFO highlightType = (HIGHLIGHT_INFO)g_scriptDLL->ULONG_POP();
#endif
	ScriptHighlight* highlight =
		ScriptHighlight::Create(MapCoords(pos), &GScriptHighlightInfo::GetInfo()[highlightType], scriptId, 0.0f, 1.0f);
	if (highlight != NULL)
	{
		uint32_t id = AddScriptGameThing(highlight, true);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		highlight->SetScriptNameOfCreate(g_scriptDLL->TaskName());
	}
	else
	{
		ScriptErrorMessage("Highlight not created");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

#ifdef VERSION_BW1WCI
void GScript::CreateTempleForPlayer()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	uint32_t playerNumber = (uint32_t)g_scriptDLL->FLOAT_POP();
	Citadel* citadel = Citadel::CreateCitadel(MapCoords(pos), GCitadelHeartInfo::GetInfo(), playerNumber, 0.0f, 1.0f);
	if (citadel != NULL)
	{
		uint32_t id = AddScriptGameThing(citadel, true);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		citadel->SetScriptNameOfCreate(g_scriptDLL->TaskName());
	}
	else
	{
		ScriptErrorMessage("Citadel not created");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}
#endif

void GScript::CreateTimer()
{
	float        seconds = g_scriptDLL->FLOAT_POP();
	ScriptTimer* timer = ScriptTimer::Create(seconds);
	if (timer != NULL)
	{
		uint32_t id = AddScriptGameThing(timer, true);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		timer->SetScriptNameOfCreate(g_scriptDLL->TaskName());
	}
	else
	{
		ScriptErrorMessage("Thing not created");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

void GScript::CreateMist()
{
	uint32_t heightRatio = g_scriptDLL->ULONG_POP();
	float    alpha = g_scriptDLL->FLOAT_POP();
	float    blue = g_scriptDLL->FLOAT_POP();
	float    green = g_scriptDLL->FLOAT_POP();
	float    red = g_scriptDLL->FLOAT_POP();
	float    scale = g_scriptDLL->FLOAT_POP();
	LHPoint  pos;
	g_scriptDLL->POINT_POP(pos);
	float heightScale = 1.0f / *(float*)&heightRatio;
	Mist* mist = Mist::Create(MapCoords(pos), scale, (uint8_t)red, (uint8_t)blue, (uint8_t)green,
	                          (uint8_t)(alpha * MIST_OPACITY_RANGE), heightScale);
	if (mist != NULL)
	{
		uint32_t id = AddScriptGameThing(mist, true);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		mist->SetScriptNameOfCreate(g_scriptDLL->TaskName());
	}
	else
	{
		ScriptErrorMessage("Thing not created");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

void GScript::PopulateContainer()
{
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	uint32_t           count = (uint32_t)g_scriptDLL->FLOAT_POP();
	uint32_t           containerId = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos*  container = GetScriptGameThing(containerId);
	if (type <= SCRIPT_OBJECT_TYPE_NONE || type >= SCRIPT_OBJECT_TYPE_LAST)
	{
		ScriptErrorMessage(LHSPrintf("Invalid type=%d", type));
	}
	bool32_t valid = type > SCRIPT_OBJECT_TYPE_NONE && type < SCRIPT_OBJECT_TYPE_LAST;
	if (!valid)
	{
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
		return;
	}
	if (container == NULL)
	{
		ScriptErrorMessage("Container not valid");
		return;
	}
	float   spread = count * SCRIPT_POPULATE_SPREAD_PER_ITEM + SCRIPT_POPULATE_SPREAD_MINIMUM;
	LHPoint centre;
	GLandscape::ConvertMapCoordToLandscapePoint(container->Pos, centre);
	for (uint32_t i = 0; i < count; i++)
	{
		float   offsetX = (GAME_FLOAT_RAND(FILELINE(579, 672), spread + spread)) - spread;
		float   offsetY = (GAME_FLOAT_RAND(FILELINE(580, 673), spread + spread)) - spread;
		LHPoint pos;
		pos = centre;
		pos.x += offsetX;
		pos.y += offsetY;
		GameThingWithPos* thing = CreateScriptThing(pos, type, subtype, 0.0f, 1.0f);
		if (thing != NULL)
		{
			if (thing->IsLiving())
			{
				uint32_t id = AddScriptGameThing(thing, true);
				if (container->IsDance())
				{
					((GroupBehaviour*)container)->FindDanceGroup((Living*)thing);
					SetScriptState((Living*)thing, VILLAGER_STATE_IN_DANCE);
					IncrementScriptReference(id);
				}
				else
				{
					if (container->IsFlock())
					{
						if (!((Flock*)container)->AddLivingToFlock((Living*)thing))
						{
							ScriptErrorMessage("Living already in Flock");
						}
						SetScriptState((Living*)thing, VILLAGER_STATE_MOVE_IN_FLOCK);
						IncrementScriptReference(id);
					}
					else
					{
						ScriptErrorMessage("Not implemented - Thing not added to id");
						return;
					}
				}
			}
			else
			{
				SCRIPT_ASSERT(thing->IsLiving(), "Created Thing Not Living");
				thing->ToBeDeleted(false);
				return;
			}
		}
		else
		{
			ScriptErrorMessage("Could not create thing for populate");
			return;
		}
	}
}

void GScript::CreateFlock()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	MapCoords coords(pos);
	Flock*    flock =
		NEW(FILELINE(646, 739)) Flock(coords, (const GFlockInfo*)&GContainerInfo::GetInfo()[CONTAINER_INFO_FLOCK],
	                                  GGame::g_game->GetNeutralPlayer(), FLOCK_MAGIC);
	if (flock == NULL)
	{
		ScriptErrorMessage("Thing not created");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
	else
	{
		uint32_t id = AddScriptGameThing(flock, true);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		flock->SetScriptNameOfCreate(g_scriptDLL->TaskName());
	}
}

void GScript::CallFromId()
{
	bool32_t           excludeScripted = g_scriptDLL->ULONG_POP();
	GameThingWithPos*  container = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	if (container != NULL)
	{
		ScriptObjectDispatch::FindInFunction find = g_scriptObjectDispatch[container->GetScriptObjectType()].FindIn;
		if (find != NULL)
		{
			GameThingWithPos* thing;
			if (excludeScripted)
			{
				thing = (GameThingWithPos*)find(container, FindGeneralCheckExcludingScriptObjects, type, subtype);
			}
			else
			{
				thing = (GameThingWithPos*)find(container, FindGeneralCheck, type, subtype);
			}
			if (thing != NULL)
			{
				uint32_t id = AddScriptGameThing(thing, false);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				return;
			}
		}
		else
		{
			ScriptErrorMessage("Cannot look in object");
		}
	}
	ScriptWarningMessage("Cannot find in");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::GetObjectFlock()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL && thing->IsLiving())
	{
		uint32_t id = AddScriptGameThing(((Living*)thing)->flock.Get(), false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
	}
	else
	{
		ScriptErrorMessage("Cannot find flock");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

void GScript::CallInNear()
{
	bool32_t excludeScripted = g_scriptDLL->ULONG_POP();
	float    radius = g_scriptDLL->FLOAT_POP();
	LHPoint  pos;
	g_scriptDLL->POINT_POP(pos);
	GameThingWithPos*  container = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	if (container != NULL)
	{
		SCRIPT_OBJECT_TYPE containerType = container->GetScriptObjectType();
		if (g_scriptObjectDispatch[containerType].FindInNear != NULL)
		{
			GameThingWithPos* thing;
			if (excludeScripted)
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[containerType].FindInNear(
					container, FindNearGeneralCheckExcludingScriptObjects, type, subtype, MapCoords(pos), radius);
			}
			else
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[containerType].FindInNear(
					container, FindNearGeneralCheck, type, subtype, MapCoords(pos), radius);
			}
			if (thing != NULL)
			{
				uint32_t id = AddScriptGameThing(thing, false);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				return;
			}
		}
		else
		{
			ScriptErrorMessage("Cannot look in object");
		}
	}
	ScriptWarningMessage(LHSPrintf("Cannot find in Near. %d.%d", type, subtype));
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CallInNotNear()
{
	bool32_t excludeScripted = g_scriptDLL->ULONG_POP();
	float    radius = g_scriptDLL->FLOAT_POP();
	LHPoint  pos;
	g_scriptDLL->POINT_POP(pos);
	GameThingWithPos*  container = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	if (container != NULL)
	{
		SCRIPT_OBJECT_TYPE containerType = container->GetScriptObjectType();
		if (g_scriptObjectDispatch[containerType].FindInNotNear != NULL)
		{
			GameThingWithPos* thing;
			if (excludeScripted)
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[containerType].FindInNotNear(
					container, FindGeneralNotNearCheckExcludingScriptObjects, type, subtype, MapCoords(pos), radius);
			}
			else
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[containerType].FindInNotNear(
					container, FindGeneralNotNearCheck, type, subtype, MapCoords(pos), radius);
			}
			if (thing != NULL)
			{
				uint32_t id = AddScriptGameThing(thing, false);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				return;
			}
		}
		else
		{
			ScriptErrorMessage("Cannot look in object");
		}
	}
	ScriptWarningMessage("Cannot find in Near");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::GetObjectHandOver()
{
	GameThingWithPos* thing = GGame::g_game->MyInterface()->interface_collide.object;
	SCRIPT_ASSERT(!GGame::g_game->IsMultiplayerGame(), "This is not multiplayer friendly yet!");
	if (thing != NULL)
	{
		uint32_t id = AddScriptGameThing(thing, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
	}
	else
	{
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

void GScript::GetHeldObject()
{
	Object* object = GGame::g_game->MyInterface()->GetStatus()->GetFirstObjectInCurrentHand();
	SCRIPT_ASSERT(!GGame::g_game->IsMultiplayerGame(), "This is not multiplayer friendly yet!");
	if (object != NULL)
	{
		uint32_t id = AddScriptGameThing(object, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
	}
	else
	{
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

void GScript::CallPoisonedFromId()
{
	bool32_t           excludeScripted = g_scriptDLL->ULONG_POP();
	GameThingWithPos*  container = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	if (container != NULL)
	{
		ScriptObjectDispatch::LoopFunction loop = g_scriptObjectDispatch[container->GetScriptObjectType()].Loop;
		if (loop != NULL)
		{
			GameThingWithPos* thing;
			if (excludeScripted)
			{
				thing = (GameThingWithPos*)loop(container, FindCheckPoisonedExcludingScriptObjects, type, subtype);
			}
			else
			{
				thing = (GameThingWithPos*)loop(container, FindCheckPoisoned, type, subtype);
			}
			if (thing != NULL)
			{
				uint32_t id = AddScriptGameThing(thing, false);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				return;
			}
		}
		else
		{
			ScriptErrorMessage("Cannot look in object");
		}
	}
	ScriptWarningMessage("Cannot find poisoned in");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CallNotPoisonedFromId()
{
	bool32_t           excludeScripted = g_scriptDLL->ULONG_POP();
	GameThingWithPos*  container = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	if (container != NULL)
	{
		ScriptObjectDispatch::LoopFunction loop = g_scriptObjectDispatch[container->GetScriptObjectType()].Loop;
		if (loop != NULL)
		{
			GameThingWithPos* thing;
			if (excludeScripted)
			{
				thing = (GameThingWithPos*)loop(container, FindCheckNotPoisonedExcludingScriptObjects, type, subtype);
			}
			else
			{
				thing = (GameThingWithPos*)loop(container, FindCheckNotPoisoned, type, subtype);
			}
			if (thing != NULL)
			{
				uint32_t id = AddScriptGameThing(thing, false);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				return;
			}
		}
		else
		{
			ScriptErrorMessage("Cannot look in object");
		}
	}
	ScriptWarningMessage("Cannot find not poisoned in");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::GetNearestTownOfPlayer()
{
	float   radius = g_scriptDLL->FLOAT_POP();
	float   scriptPlayer = g_scriptDLL->FLOAT_POP();
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	uint32_t playerIndex = ConvertScriptPlayerToGamePlayer((uint32_t)scriptPlayer);
	GPlayer* player = GGame::g_game->GetPlayer((uint32_t)(float)playerIndex);
	Town*    town = FindPlayerTownAtPos(MapCoords(pos), radius, player);
	if (town == NULL)
	{
		ScriptErrorMessage("Did not find town");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
	else
	{
		uint32_t id = AddScriptGameThing(town, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
	}
}

void GScript::CreateReward()
{
	bool32_t immediate = g_scriptDLL->ULONG_POP();
	LHPoint  pos;
	g_scriptDLL->POINT_POP(pos);
	REWARD_OBJECT_INFO type = (REWARD_OBJECT_INFO)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(type > REWARD_OBJECT_INFO_NONE && type < REWARD_OBJECT_INFO_LAST, "Invalid type");
	if (type > REWARD_OBJECT_INFO_NONE && type < REWARD_OBJECT_INFO_LAST)
	{
		Reward* reward = Reward::Create(MapCoords(pos), &GRewardInfo::GetInfo()[type], GGame::g_game->MyPlayer(),
		                                immediate == false, 0.0f, 1.0f, NULL);
		if (reward != NULL)
		{
			uint32_t id = AddScriptGameThing(reward, true);
			g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
			reward->SetScriptNameOfCreate(g_scriptDLL->TaskName());
			return;
		}
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CreateRewardInTown()
{
	bool32_t immediate = g_scriptDLL->ULONG_POP();
	LHPoint  pos;
	g_scriptDLL->POINT_POP(pos);
	GameThingWithPos*  thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	REWARD_OBJECT_INFO type = (REWARD_OBJECT_INFO)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(type > REWARD_OBJECT_INFO_NONE && type < REWARD_OBJECT_INFO_LAST, "Invalid type");
	if (type > REWARD_OBJECT_INFO_NONE && type < REWARD_OBJECT_INFO_LAST)
	{
		SCRIPT_ASSERT(thing != NULL && thing->IsTown(), "Thing not valid");
		if (thing != NULL)
		{
			if (thing->IsTown())
			{
				Reward* reward =
					Reward::Create(MapCoords(pos), &GRewardInfo::GetInfo()[type], GGame::g_game->MyPlayer(),
				                   immediate == false, 0.0f, 1.0f, (Town*)thing);
				if (reward != NULL)
				{
					uint32_t id = AddScriptGameThing(reward, true);
					g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
					thing->SetScriptNameOfCreate(g_scriptDLL->TaskName());
					return;
				}
			}
		}
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CreateWithAngleAndScale()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	float              scale = g_scriptDLL->FLOAT_POP();
	float              angle = g_scriptDLL->FLOAT_POP() * DEGREES_TO_RADIANS;
	if (type <= SCRIPT_OBJECT_TYPE_NONE || type >= SCRIPT_OBJECT_TYPE_LAST)
	{
		ScriptErrorMessage(LHSPrintf("Invalid type=%d", type));
	}
	if (type > SCRIPT_OBJECT_TYPE_NONE && type < SCRIPT_OBJECT_TYPE_LAST)
	{
		GameThingWithPos* thing = CreateScriptThing(pos, type, subtype, angle, scale);
		if (thing != NULL)
		{
			uint32_t id = AddScriptGameThing(thing, true);
			thing->SetScriptNameOfCreate(g_scriptDLL->TaskName());
			g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
			return;
		}
		ScriptErrorMessage("Thing not created");
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CreateRandomVillagerOfTribe()
{
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	TRIBE_TYPE tribe = (TRIBE_TYPE)g_scriptDLL->ULONG_POP();
	uint32_t   index = tribe * VILLAGER_INFOS_PER_TRIBE + GAME_RAND(FILELINE(1077, 1170), VILLAGER_INFOS_PER_TRIBE);
	const GVillagerInfo* info = &GVillagerInfo::GetInfo()[index];
	Villager*            villager = Villager::Create(MapCoords(pos), info, info->TeenAge, false);
	if (villager != NULL)
	{
		uint32_t id = AddScriptGameThing(villager, true);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		villager->SetScriptNameOfCreate(g_scriptDLL->TaskName());
	}
	else
	{
		ScriptErrorMessage("Villager not created");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

void GScript::GetTownWithId()
{
	uint32_t townId = (uint32_t)g_scriptDLL->FLOAT_POP();
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		for (Town* town = player->towns.head; town != NULL; town = town->next)
		{
			if (town->ID == townId)
			{
				uint32_t id = AddScriptGameThing(town, false);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				return;
			}
		}
	}
	ScriptErrorMessage("Town not found");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::GetBuildingInTown()
{
	bool32_t          matchRequired = g_scriptDLL->ULONG_POP();
	float             percentBuilt = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* town = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	ABODE_NUMBER      number = (ABODE_NUMBER)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(town->IsTown(), "Must be town");
	if (town->IsTown())
	{
		Abode* abode = ((Town*)town)->FindAbodeNumber(number, percentBuilt, matchRequired);
		if (abode != NULL)
		{
			uint32_t id = AddScriptGameThing(abode, false);
			g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
			return;
		}
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CallFlying()
{
	bool32_t excludeScripted = g_scriptDLL->ULONG_POP();
	float    radius = g_scriptDLL->FLOAT_POP();
	LHPoint  pos;
	g_scriptDLL->POINT_POP(pos);
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	GGame::g_game->script->FindRadius = radius;
	GLandscape::ConvertLHPointToMapCoord(pos, GGame::g_game->script->FindPos);
	Object* thing;
	if (excludeScripted)
	{
		thing = PhysicsObject::FindObject(FindNearGeneralCheckExcludingScriptObjects, type, subtype);
	}
	else
	{
		thing = PhysicsObject::FindObject(FindNearGeneralCheck, type, subtype);
	}
	if (thing != NULL)
	{
		uint32_t id = AddScriptGameThing(thing, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
	}
	else
	{
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

void GScript::GetObjectClicked()
{
	GameThingWithPos* thing = GGame::g_game->MyInterface()->GetLastRClickedObject();
	if (thing != NULL)
	{
		uint32_t id = AddScriptGameThing(thing, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
	}
	else
	{
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

void GScript::GetTotemStatue()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL && thing->IsTownCentre())
	{
		GameThingWithPos* statue = ((TownCentre*)thing)->totem_statue.Get();
		if (statue != NULL)
		{
			uint32_t id = AddScriptGameThing(statue, false);
			g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
			return;
		}
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

bool32_t GScript::FindNearDeadLivingCheck(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	return (thing->IsAnimal() || thing->IsVillager(NULL)) && thing->IsLiving() && ((Living*)thing)->IsDead();
}

void GScript::GetDeadLiving()
{
	float   radius = g_scriptDLL->FLOAT_POP();
	LHPoint pos;
	g_scriptDLL->POINT_POP(pos);
	GGame::g_game->script->FindRadius = radius;
	GLandscape::ConvertLHPointToMapCoord(pos, GGame::g_game->script->FindPos);
	GameThingWithPos* thing = (GameThingWithPos*)FindNearPos(GGame::g_game->script->FindPos, FindNearDeadLivingCheck,
	                                                         SCRIPT_OBJECT_TYPE_NONE, 0, radius);
	if (thing != NULL)
	{
		uint32_t id = AddScriptGameThing(thing, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
	}
	else
	{
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

void GScript::GetSpellIconFromTemple()
{
	GameThingWithPos* temple = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	MAGIC_TYPE        magic = (MAGIC_TYPE)g_scriptDLL->ULONG_POP();
	SCRIPT_ASSERT(temple != NULL && temple->IsCitadelHeart(), "Invalid Temple");
	if (temple != NULL)
	{
		if (temple->IsCitadelHeart())
		{
			Citadel* citadel = temple->GetCitadel();
			if (citadel != NULL)
			{
				SpellIcon* icon = citadel->FindSpellIcon(magic);
				if (icon != NULL)
				{
					uint32_t id = AddScriptGameThing(icon, false);
					g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
					return;
				}
			}
		}
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

#ifdef VERSION_BW1WCI
void GScript::CreateTown()
{
	TRIBE_TYPE tribe = (TRIBE_TYPE)g_scriptDLL->ULONG_POP();
	uint32_t   id = 0;
	LHPoint    pos;
	g_scriptDLL->POINT_POP(pos);
	GPlayer* player = GGame::g_game->GetPlayer(ConvertScriptPlayerToGamePlayer((uint32_t)g_scriptDLL->FLOAT_POP()));
	for (LHLinkedNode<Town*>* node = GGame::g_game->GameLists.TownList.head.Get(); node != NULL;
	     node = node->next.Get())
	{
		if (id <= node->payload->ID)
		{
			id = node->payload->ID + 1;
		}
	}
	Town* town = NEW(1408) Town(MapCoords(pos), GTownInfo::GetInfo(), player, tribe, NULL, id, false);
	if (town != NULL)
	{
		town->Uninhabitable = true;
		uint32_t scriptId = AddScriptGameThing(town, true);
		g_scriptDLL->PUSH((void*)scriptId, VMType_OBJECT);
		town->SetScriptNameOfCreate(g_scriptDLL->TaskName());
	}
	else
	{
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
	}
}

void GScript::CallBuildingWoodPile()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL && thing->IsAbode())
	{
		BuildingSite* site = ((Abode*)thing)->building_site;
		if (site != NULL)
		{
			Pot* pile = site->GetPileWood(*(const MapCoords*)NULL);
			if (pile != NULL)
			{
				uint32_t id = AddScriptGameThing(pile, false);
				g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
				return;
			}
		}
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}
#endif
