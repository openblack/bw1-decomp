#include "WhiteColour.h"
#include "MaxFloat.h"
#include "GameTimeConstants.h"
#include "CreatureAttitudeConstants.h"
#include "Script.h"

#include <Lionhead/LH3DLib/development/LH3DIsland.h>
#include <Lionhead/LHLog/ver4.0/LHSPrintf.h>

#include "Abode.h"
#include "AbodeInfo.h"
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
#include "GroupBehaviour.h"
#include "Interface.h"
#include "InterfaceStatus.h"
#include "Landscape.h"
#include "MagicFood.h"
#include "MagicVortex.h"
#include "Mist.h"
#include "MobileObject.h"
#include "MobileObjectInfo.h"
#include "MobileStatic.h"
#include "MobileStaticInfo.h"
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
#include "TotemStatue.h"
#include "Town.h"
#include "TownCentre.h"
#include "Tree.h"
#include "TreeInfo.h"
#include "Utils.h"
#include "Villager.h"
#include "VillagerInfo.h"
#include "WeatherInfo.h"
#include "WeatherThing.h"
#include "Whale.h"
#include "WorshipSpellIcon.h"

#define FILEPATH "C:\\dev\\MP\\Black\\ScriptCreateOrCall.cpp"

#define SCRIPT_CHILD_AGE                  10
#define SCRIPT_ANIMAL_FLOCK_DOMAIN_RADIUS 2
#define SCRIPT_ANIMAL_FLOCK_DISTANCE      1
#define SCRIPT_ANIMAL_TOWN_DISTANCE       500.0f

const double PopulateMinRadius = 4.0;

void GScript::Call()
{
	bool32_t   excluding = g_scriptDLL->ULONG_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	uint32_t subtype = g_scriptDLL->ULONG_POP();
	int      type = g_scriptDLL->ULONG_POP();
	if (type <= SCRIPT_OBJECT_TYPE_NONE || type >= SCRIPT_OBJECT_TYPE_LAST)
	{
		ScriptErrorMessage(LHSPrintf("Invalid type=%d", type));
	}
	if (type > SCRIPT_OBJECT_TYPE_NONE && type < SCRIPT_OBJECT_TYPE_LAST)
	{
		MapCoords coords(point);
		if (g_scriptObjectDispatch[type - 1].FindAtPos != NULL)
		{
			GameThingWithPos* thing;
			if (excluding)
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[type - 1].FindAtPos(
					coords, FindGeneralCheckExcludingScriptObjects, (SCRIPT_OBJECT_TYPE)type, subtype);
			}
			else
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[type - 1].FindAtPos(
					coords, FindGeneralCheck, (SCRIPT_OBJECT_TYPE)type, subtype);
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
	bool32_t   excluding = g_scriptDLL->ULONG_POP();
	float      radius = g_scriptDLL->FLOAT_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	uint32_t subtype = g_scriptDLL->ULONG_POP();
	int      type = g_scriptDLL->ULONG_POP();
	if (type <= SCRIPT_OBJECT_TYPE_NONE || type >= SCRIPT_OBJECT_TYPE_LAST)
	{
		ScriptErrorMessage(LHSPrintf("Invalid type=%d", type));
	}
	if (type > SCRIPT_OBJECT_TYPE_NONE && type < SCRIPT_OBJECT_TYPE_LAST)
	{
		MapCoords coords(point);
		if (g_scriptObjectDispatch[type - 1].FindNearPos != NULL)
		{
			GameThingWithPos* thing;
			if (excluding)
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[type - 1].FindNearPos(
					coords, FindNearGeneralCheckExcludingScriptObjects, (SCRIPT_OBJECT_TYPE)type, subtype, radius);
			}
			else
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[type - 1].FindNearPos(
					coords, FindNearGeneralCheck, (SCRIPT_OBJECT_TYPE)type, subtype, radius);
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
	bool32_t   excluding = g_scriptDLL->ULONG_POP();
	float      radius = g_scriptDLL->FLOAT_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	uint32_t state = g_scriptDLL->ULONG_POP();
	uint32_t subtype = g_scriptDLL->ULONG_POP();
	int      type = g_scriptDLL->ULONG_POP();
	if (type <= SCRIPT_OBJECT_TYPE_NONE || type >= SCRIPT_OBJECT_TYPE_LAST)
	{
		ScriptErrorMessage(LHSPrintf("Invalid type=%d", type));
	}
	if (type > SCRIPT_OBJECT_TYPE_NONE && type < SCRIPT_OBJECT_TYPE_LAST)
	{
		MapCoords coords(point);
		if (g_scriptObjectDispatch[type - 1].FindNearPos != NULL)
		{
			GGame::g_game->script->LoopValue = state;
			GameThingWithPos* thing;
			if (excluding)
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[type - 1].FindNearPos(
					coords, FindNearInStateCheckExcludingScriptObjects, (SCRIPT_OBJECT_TYPE)type, subtype, radius);
			}
			else
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[type - 1].FindNearPos(
					coords, FindNearInStateCheck, (SCRIPT_OBJECT_TYPE)type, subtype, radius);
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

GameThingWithPos* GScript::CreateScriptThing(const LHPoint& point, SCRIPT_OBJECT_TYPE type, uint32_t subtype,
                                             float angle, float scale)
{
	GameThingWithPos* thing = NULL;
	MapCoords         coords(point);
	if (subtype == SCRIPT_FIND_TYPE_ANY && type != SCRIPT_OBJECT_TYPE_TIMER &&
	    type != SCRIPT_OBJECT_TYPE_SPELL_DISPENSER && type != SCRIPT_OBJECT_TYPE_WHALE &&
	    type != SCRIPT_OBJECT_TYPE_ARK && type != SCRIPT_OBJECT_TYPE_MARKER && type != SCRIPT_OBJECT_TYPE_BALL &&
	    type != SCRIPT_OBJECT_TYPE_POO && type != SCRIPT_OBJECT_TYPE_SCAFFOLD)
	{
		ScriptErrorMessage("Trying to create an invalid sub_type");
		return NULL;
	}
	if (type != SCRIPT_OBJECT_TYPE_MARKER && type != SCRIPT_OBJECT_TYPE_MOBILE_STATIC)
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
		thing = Feature::Create(coords, &GFeatureInfo::GetInfo()[subtype], angle, scale, 1.0f, false);
		break;
	case SCRIPT_OBJECT_TYPE_VILLAGER: {
		const GVillagerInfo* info = &GVillagerInfo::GetInfo()[subtype];
		Villager*            villager = Villager::Create(coords, info, info->TeenAge + 1, false);
		villager->SetAge(info->TeenAge + 1);
		SetScriptState(villager, VILLAGER_STATE_IN_SCRIPT);
		thing = villager;
		break;
	}
	case SCRIPT_OBJECT_TYPE_VILLAGER_CHILD: {
		Villager* villager = Villager::Create(coords, &GVillagerInfo::GetInfo()[subtype], SCRIPT_CHILD_AGE, false);
		villager->SetAge(SCRIPT_CHILD_AGE);
		SetScriptState(villager, VILLAGER_STATE_IN_SCRIPT);
		thing = villager;
		break;
	}
	case SCRIPT_OBJECT_TYPE_ANIMAL:
	case SCRIPT_OBJECT_TYPE_BIRD: {
		Animal* animal = Animal::CreateFromType(coords, &GAnimalInfo::GetInfo()[subtype], NULL, 0);
		Flock*  flock = animal->flock.Get();
		flock->DomainRadius = SCRIPT_ANIMAL_FLOCK_DOMAIN_RADIUS;
		flock->FlockDistance = SCRIPT_ANIMAL_FLOCK_DISTANCE;
		animal->SetTownIfNearby(SCRIPT_ANIMAL_TOWN_DISTANCE);
		SetScriptState(animal, VILLAGER_STATE_IN_SCRIPT);
		thing = animal;
		break;
	}
	case SCRIPT_OBJECT_TYPE_MOBILE_OBJECT:
		thing = MobileObject::Create(coords, &GMobileObjectInfo::GetInfo()[subtype], NULL, angle, scale);
		break;
	case SCRIPT_OBJECT_TYPE_SCAFFOLD:
		thing = Scaffold::Create(coords, GScaffoldInfo::GetInfo(), NULL, NULL, angle, scale);
		break;
	case SCRIPT_OBJECT_TYPE_REWARD:
		thing = Reward::Create(coords, &GRewardInfo::GetInfo()[subtype], NULL, angle, scale, 1.0f, NULL);
		break;
	case SCRIPT_OBJECT_TYPE_MOBILE_STATIC:
	case SCRIPT_OBJECT_TYPE_ROCK:
		if (subtype == MOBILE_STATIC_INFO_SINGING_STONE_BASE)
		{
			thing = GBaseOnly::Create(coords, &GMobileStaticInfo::GetInfo()[MOBILE_STATIC_INFO_SINGING_STONE_BASE]);
		}
		else if (subtype == MOBILE_STATIC_INFO_COUNTRY_LANTERN || subtype == MOBILE_STATIC_INFO_STREET_LANTERN)
		{
			thing = GStreetLantern::Create(coords, &GMobileStaticInfo::GetInfo()[subtype]);
		}
		else
		{
			thing = MobileStatic::Create(coords, &GMobileStaticInfo::GetInfo()[subtype], NULL, NULL, angle, scale);
		}
		break;
	case SCRIPT_OBJECT_TYPE_CREATURE: {
		Creature* creature = Creature::Create(coords, &CreatureInfo::GetInfo()[subtype], NULL);
		creature->ReactionsEnabled = false;
		thing = creature;
		break;
	}
	case SCRIPT_OBJECT_TYPE_DEAD_TREE:
		thing = DeadTree::Create(coords, &GTreeInfo::GetInfo()[subtype], NULL, 1.0f, 0.0f, 0.0f, 0.0f, NULL);
		break;
	case SCRIPT_OBJECT_TYPE_TREE:
		thing = Tree::Create(coords, &GTreeInfo::GetInfo()[subtype], NULL, scale, angle, scale);
		break;
	case SCRIPT_OBJECT_TYPE_WEATHER_THING:
		thing = WeatherThing::Create(coords, &GWeatherInfo::GetInfo()[subtype], 100.0f, 300.0f, 100.0f);
		break;
	case SCRIPT_OBJECT_TYPE_STORE: {
		RESOURCE_TYPE resourceType = (RESOURCE_TYPE)subtype;
		MapCoords     pos = coords;
		Pot*          pot = MagicResource::Create(pos, NULL, resourceType, 1, NULL);
		if (pot != NULL)
		{
			pot->PlayAddResourceSound(coords, resourceType, 1);
			thing = pot;
		}
		break;
	}
	case SCRIPT_OBJECT_TYPE_VORTEX:
		thing = LandscapeVortex::Create(coords, (VORTEX_TYPE)subtype, 50.0f);
		break;
	case SCRIPT_OBJECT_TYPE_POO:
		thing = MobileObject::Create(coords, &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_LUMP_OF_POO], NULL, angle,
		                             scale);
		break;
	case SCRIPT_OBJECT_TYPE_WHALE:
		thing = Whale::Create(coords, &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_WHALE], NULL, angle, scale);
		break;
	case SCRIPT_OBJECT_TYPE_ARK:
		thing = MobileObject::Create(coords, &GMobileObjectInfo::GetInfo()[MOBILE_OBJECT_INFO_ARK], NULL, angle, scale);
		break;
	case SCRIPT_OBJECT_TYPE_BALL: {
		thing = Ball::Create(coords, GBallInfo::GetInfo(), 0, 6.0f, 4.0f);
		Town* town = Town::GetNearestTownToPos(coords, TRIBE_TYPE_NONE, ABODE_TYPE_ANY, MaxFloat);
		if (town != NULL)
		{
			Object* object = dynamic_cast<Object*>(thing);
			if (object != NULL)
			{
				town->AddPlaythingIfNoneThere(object);
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
	case SCRIPT_OBJECT_TYPE_ONE_SHOT_SPELL_IN_HAND: {
		GInterfaceStatus* status = GGame::g_game->MyInterface()->status;
		thing = OneOffSpellSeed::CreateSpellIntoHand(status, (SPELL_SEED_TYPE)subtype, POWER_UP_TYPE_NONE, 1.0f);
		break;
	}
	case SCRIPT_OBJECT_TYPE_PUZZLE_GAME:
		thing = PuzzleGame::Create(coords, (SCRIPT_PUZZLE_GAME_TYPE)subtype, (angle * 2048.0f) / TWO_PI, scale);
		break;
	case SCRIPT_OBJECT_TYPE_TOTEM:
		thing = PuzzleTotem::Create(coords, &GAbodeInfo::GetInfo()[subtype], NULL, angle, scale, 1.0f, 0);
		break;
	case SCRIPT_OBJECT_TYPE_SPELL_DISPENSER:
		thing = SpellDispenser::Create(coords, &GAbodeInfo::GetInfo()[subtype], NULL, angle, scale, 1.0f, 0);
		break;
	case SCRIPT_OBJECT_TYPE_ANIMATED_STATIC:
		thing = AnimatedStatic::Create(coords, &GAnimatedStaticInfo::GetInfo()[subtype], angle, scale, 1.0f, 0);
		break;
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
				float yAngle = object->GetYAngle();
				SetPositionOnMap(object->Game3dObject, object->Pos, yAngle, objectScale);
			}
		}
		thing->SetScriptNameOfCreate(g_scriptDLL->TaskName());
	}
	return thing;
}

void GScript::CreateThing()
{
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	uint32_t subtype = g_scriptDLL->ULONG_POP();
	int      type = g_scriptDLL->ULONG_POP();
	if (type <= SCRIPT_OBJECT_TYPE_NONE || type >= SCRIPT_OBJECT_TYPE_LAST)
	{
		ScriptErrorMessage("Invalid type");
	}
	if (type > SCRIPT_OBJECT_TYPE_NONE && type < SCRIPT_OBJECT_TYPE_LAST)
	{
		GameThingWithPos* thing = CreateScriptThing(point, (SCRIPT_OBJECT_TYPE)type, subtype, 0.0f, 1.0f);
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
	uint32_t   param_3 = g_scriptDLL->ULONG_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	uint32_t         subtype = g_scriptDLL->ULONG_POP();
	ScriptHighlight* highlight =
		ScriptHighlight::Create(MapCoords(point), &GScriptHighlightInfo::Infos[subtype], param_3, 0.0f, 1.0f);
	if (highlight != NULL)
	{
		uint32_t id = AddScriptGameThing(highlight, true);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		highlight->SetScriptNameOfCreate(g_scriptDLL->TaskName());
		return;
	}
	ScriptErrorMessage("Highlight not created");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CreateTimer()
{
	float        seconds = g_scriptDLL->FLOAT_POP();
	ScriptTimer* timer = ScriptTimer::Create(seconds);
	if (timer != NULL)
	{
		uint32_t id = AddScriptGameThing(timer, true);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		timer->SetScriptNameOfCreate(g_scriptDLL->TaskName());
		return;
	}
	ScriptErrorMessage("Thing not created");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CreateMist()
{
	float      inverseHeightRatio = 1.0f / g_scriptDLL->FLOAT_POP();
	float      transparency = g_scriptDLL->FLOAT_POP();
	float      blue = g_scriptDLL->FLOAT_POP();
	float      green = g_scriptDLL->FLOAT_POP();
	float      red = g_scriptDLL->FLOAT_POP();
	float      scale = g_scriptDLL->FLOAT_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	Mist* mist = Mist::Create(MapCoords(point), scale, red, blue, green, transparency * 255.0f, inverseHeightRatio);
	if (mist != NULL)
	{
		uint32_t id = AddScriptGameThing(mist, true);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		mist->SetScriptNameOfCreate(g_scriptDLL->TaskName());
		return;
	}
	ScriptErrorMessage("Thing not created");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::PopulateContainer()
{
	uint32_t          subtype = g_scriptDLL->ULONG_POP();
	int               type = g_scriptDLL->ULONG_POP();
	uint32_t          count = g_scriptDLL->FLOAT_POP();
	uint32_t          containerId = g_scriptDLL->THING_OR_NULL_POP();
	GameThingWithPos* container = GetScriptGameThing(containerId);
	if (type <= SCRIPT_OBJECT_TYPE_NONE || type >= SCRIPT_OBJECT_TYPE_LAST)
	{
		ScriptErrorMessage(LHSPrintf("Invalid type=%d", type));
	}
	if ((type > SCRIPT_OBJECT_TYPE_NONE && type < SCRIPT_OBJECT_TYPE_LAST) == false)
	{
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
		return;
	}
	if (container == NULL)
	{
		ScriptErrorMessage("Container not valid");
		return;
	}
	float   radius = count * 0.1 + PopulateMinRadius;
	LHPoint centre;
	GLandscape::ConvertMapCoordToLandscapePoint(container->Pos, centre);
	for (uint32_t i = 0; i < count; i++)
	{
		float   dx = GRand::GameFloatRand(radius * 2, FILEPATH, 579) - radius;
		float   dz = (GRand::GameFloatRand(radius * 2, FILEPATH, 580)) - radius;
		LHPoint point;
		point = centre;
		point.x += dx;
		point.y += dz;
		GameThingWithPos* thing = CreateScriptThing(point, (SCRIPT_OBJECT_TYPE)type, subtype, 0.0f, 1.0f);
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
				else if (container->IsFlock())
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
			else
			{
				if (!thing->IsLiving())
				{
					ScriptErrorMessage("Created Thing Not Living");
				}
				thing->IsLiving();
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
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	MapCoords coords(point);
	Flock*    flock =
		new (FILEPATH, 646) Flock(coords, (const GFlockInfo*)&GContainerInfo::GetInfo()[CONTAINER_INFO_FLOCK],
	                              GGame::g_game->GetNeutralPlayer(), FLOCK_MAGIC);
	if (flock == NULL)
	{
		ScriptErrorMessage("Thing not created");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
		return;
	}
	uint32_t id = AddScriptGameThing(flock, true);
	g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
	flock->SetScriptNameOfCreate(g_scriptDLL->TaskName());
}

void GScript::CallFromId()
{
	bool32_t           excluding = g_scriptDLL->ULONG_POP();
	GameThingWithPos*  container = GetScriptGameThing(g_scriptDLL->ULONG_POP());
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	if (container != NULL)
	{
		SCRIPT_OBJECT_TYPE containerType = container->GetScriptObjectType();
		if (g_scriptObjectDispatch[containerType - 1].FindIn != NULL)
		{
			GameThingWithPos* thing;
			if (excluding)
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[containerType - 1].FindIn(
					container, FindGeneralCheckExcludingScriptObjects, type, subtype);
			}
			else
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[containerType - 1].FindIn(container, FindGeneralCheck,
				                                                                            type, subtype);
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
		return;
	}
	ScriptErrorMessage("Cannot find flock");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CallInNear()
{
	bool32_t   excluding = g_scriptDLL->ULONG_POP();
	float      radius = g_scriptDLL->FLOAT_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	GameThingWithPos*  container = GetScriptGameThing(g_scriptDLL->ULONG_POP());
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	if (container != NULL)
	{
		SCRIPT_OBJECT_TYPE containerType = container->GetScriptObjectType();
		if (g_scriptObjectDispatch[containerType - 1].FindInNear != NULL)
		{
			GameThingWithPos* thing;
			if (excluding)
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[containerType - 1].FindInNear(
					container, FindNearGeneralCheckExcludingScriptObjects, type, subtype, MapCoords(point), radius);
			}
			else
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[containerType - 1].FindInNear(
					container, FindNearGeneralCheck, type, subtype, MapCoords(point), radius);
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
	bool32_t   excluding = g_scriptDLL->ULONG_POP();
	float      radius = g_scriptDLL->FLOAT_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	GameThingWithPos*  container = GetScriptGameThing(g_scriptDLL->ULONG_POP());
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	if (container != NULL)
	{
		SCRIPT_OBJECT_TYPE containerType = container->GetScriptObjectType();
		if (g_scriptObjectDispatch[containerType - 1].FindInNotNear != NULL)
		{
			GameThingWithPos* thing;
			if (excluding)
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[containerType - 1].FindInNotNear(
					container, FindGeneralNotNearCheckExcludingScriptObjects, type, subtype, MapCoords(point), radius);
			}
			else
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[containerType - 1].FindInNotNear(
					container, FindGeneralNotNearCheck, type, subtype, MapCoords(point), radius);
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
	Object* object = GGame::g_game->MyInterface()->interface_collide.object;
	if (GGame::g_game->IsMultiplayerGame())
	{
		ScriptErrorMessage("This is not multiplayer friendly yet!");
	}
	GGame::g_game->IsMultiplayerGame();
	if (object != NULL)
	{
		uint32_t id = AddScriptGameThing(object, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		return;
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::GetHeldObject()
{
	Object* object = GGame::g_game->MyInterface()->status->GetFirstObjectInCurrentHand();
	if (GGame::g_game->IsMultiplayerGame())
	{
		ScriptErrorMessage("This is not multiplayer friendly yet!");
	}
	GGame::g_game->IsMultiplayerGame();
	if (object != NULL)
	{
		uint32_t id = AddScriptGameThing(object, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		return;
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CallPoisonedFromId()
{
	bool32_t           excluding = g_scriptDLL->ULONG_POP();
	GameThingWithPos*  container = GetScriptGameThing(g_scriptDLL->ULONG_POP());
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	if (container != NULL)
	{
		SCRIPT_OBJECT_TYPE containerType = container->GetScriptObjectType();
		if (g_scriptObjectDispatch[containerType - 1].Loop != NULL)
		{
			GameThingWithPos* thing;
			if (excluding)
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[containerType - 1].Loop(
					container, FindCheckPoisonedExcludingScriptObjects, type, subtype);
			}
			else
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[containerType - 1].Loop(container, FindCheckPoisoned,
				                                                                          type, subtype);
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
	bool32_t           excluding = g_scriptDLL->ULONG_POP();
	GameThingWithPos*  container = GetScriptGameThing(g_scriptDLL->ULONG_POP());
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	if (container != NULL)
	{
		SCRIPT_OBJECT_TYPE containerType = container->GetScriptObjectType();
		if (g_scriptObjectDispatch[containerType - 1].Loop != NULL)
		{
			GameThingWithPos* thing;
			if (excluding)
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[containerType - 1].Loop(
					container, FindCheckNotPoisonedExcludingScriptObjects, type, subtype);
			}
			else
			{
				thing = (GameThingWithPos*)g_scriptObjectDispatch[containerType - 1].Loop(
					container, FindCheckNotPoisoned, type, subtype);
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
	float      radius = g_scriptDLL->FLOAT_POP();
	float      player = g_scriptDLL->FLOAT_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	player = ConvertScriptPlayerToGamePlayer(player);
	Town* town = FindPlayerTownAtPos(MapCoords(point), radius, GGame::g_game->GetPlayer(player));
	if (town == NULL)
	{
		ScriptErrorMessage("Did not find town");
		g_scriptDLL->PUSH(NULL, VMType_OBJECT);
		return;
	}
	uint32_t id = AddScriptGameThing(town, false);
	g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
}

void GScript::CreateReward()
{
	bool32_t   param_4 = g_scriptDLL->ULONG_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	int type = g_scriptDLL->ULONG_POP();
	if (type <= REWARD_OBJECT_INFO_NONE || type >= REWARD_OBJECT_INFO_LAST)
	{
		ScriptErrorMessage("Invalid type");
	}
	if (type > REWARD_OBJECT_INFO_NONE && type < REWARD_OBJECT_INFO_LAST)
	{
		Reward* reward = Reward::Create(MapCoords(point), &GRewardInfo::GetInfo()[type], GGame::g_game->MyPlayer(),
		                                !param_4, 0.0f, 1.0f, NULL);
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
	bool32_t   param_4 = g_scriptDLL->ULONG_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	GameThingWithPos* town = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	int               type = g_scriptDLL->ULONG_POP();
	if (type <= REWARD_OBJECT_INFO_NONE || type >= REWARD_OBJECT_INFO_LAST)
	{
		ScriptErrorMessage("Invalid type");
	}
	if (type > REWARD_OBJECT_INFO_NONE && type < REWARD_OBJECT_INFO_LAST)
	{
		if (town == NULL || !town->IsTown())
		{
			ScriptErrorMessage("Thing not valid");
		}
		if (town != NULL)
		{
			town->IsTown();
			if (town->IsTown())
			{
				Reward* reward = Reward::Create(MapCoords(point), &GRewardInfo::GetInfo()[type],
				                                GGame::g_game->MyPlayer(), !param_4, 0.0f, 1.0f, (Town*)town);
				if (reward != NULL)
				{
					uint32_t id = AddScriptGameThing(reward, true);
					g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
					town->SetScriptNameOfCreate(g_scriptDLL->TaskName());
					return;
				}
			}
		}
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::CreateWithAngleAndScale()
{
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	uint32_t subtype = g_scriptDLL->ULONG_POP();
	int      type = g_scriptDLL->ULONG_POP();
	float    scale = g_scriptDLL->FLOAT_POP();
	float    angle = g_scriptDLL->FLOAT_POP() * (PI_F / 180.0f);
	if (type <= SCRIPT_OBJECT_TYPE_NONE || type >= SCRIPT_OBJECT_TYPE_LAST)
	{
		ScriptErrorMessage(LHSPrintf("Invalid type=%d", type));
	}
	if (type > SCRIPT_OBJECT_TYPE_NONE && type < SCRIPT_OBJECT_TYPE_LAST)
	{
		GameThingWithPos* thing = CreateScriptThing(point, (SCRIPT_OBJECT_TYPE)type, subtype, angle, scale);
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
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	uint32_t       tribe = g_scriptDLL->ULONG_POP();
	GVillagerInfo* info =
		&GVillagerInfo::GetInfo()[tribe * VILLAGER_NUMBER_LAST + GRand::GameRand(VILLAGER_NUMBER_LAST, FILEPATH, 1077)];
	Villager* villager = Villager::Create(MapCoords(point), info, info->TeenAge, false);
	if (villager != NULL)
	{
		uint32_t id = AddScriptGameThing(villager, true);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		villager->SetScriptNameOfCreate(g_scriptDLL->TaskName());
		return;
	}
	ScriptErrorMessage("Villager not created");
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::GetTownWithId()
{
	uint32_t id = g_scriptDLL->FLOAT_POP();
	for (GPlayer* player = GGame::g_game->GetNextPlayerAndNeutral(NULL); player != NULL;
	     player = GGame::g_game->GetNextPlayerAndNeutral(player))
	{
		FOREACH_LH_LIST_HEAD(Town, town, player->towns)
		{
			if (town->ID == id)
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
	int               param_3 = g_scriptDLL->ULONG_POP();
	float             percentBuilt = g_scriptDLL->FLOAT_POP();
	GameThingWithPos* town = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	ABODE_NUMBER      number = (ABODE_NUMBER)g_scriptDLL->ULONG_POP();
	if (!town->IsTown())
	{
		ScriptErrorMessage("Must be town");
	}
	town->IsTown();
	if (town->IsTown())
	{
		Abode* abode = ((Town*)town)->FindAbodeNumber(number, percentBuilt, param_3);
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
	bool32_t   excluding = g_scriptDLL->ULONG_POP();
	float      radius = g_scriptDLL->FLOAT_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	uint32_t           subtype = g_scriptDLL->ULONG_POP();
	SCRIPT_OBJECT_TYPE type = (SCRIPT_OBJECT_TYPE)g_scriptDLL->ULONG_POP();
	GGame::g_game->script->FindRadius = radius;
	MapCoords& pos = GGame::g_game->script->FindPos;
	pos.SetX(point.x);
	pos.SetZ(point.z);
	pos.SetAltitude(point.y - LH3DIsland::GetAltitude(point));
	Object* object;
	if (excluding)
	{
		object = PhysicsObject::FindObject(FindNearGeneralCheckExcludingScriptObjects, type, subtype);
	}
	else
	{
		object = PhysicsObject::FindObject(FindNearGeneralCheck, type, subtype);
	}
	if (object != NULL)
	{
		uint32_t id = AddScriptGameThing(object, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		return;
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::GetObjectClicked()
{
	GameThingWithPos* thing = GGame::g_game->MyInterface()->GetLastRClickedObject();
	if (thing != NULL)
	{
		uint32_t id = AddScriptGameThing(thing, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		return;
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::GetTotemStatue()
{
	GameThingWithPos* thing = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	if (thing != NULL && thing->IsTownCentre())
	{
		TotemStatue* statue = ((TownCentre*)thing)->totem_statue.Get();
		if (statue != NULL)
		{
			uint32_t id = AddScriptGameThing(statue, false);
			g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
			return;
		}
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

int GScript::FindNearDeadLivingCheck(GameThingWithPos* thing, SCRIPT_OBJECT_TYPE type, uint32_t subtype)
{
	if ((thing->IsAnimal() || thing->IsVillager(NULL)) && thing->IsLiving() && ((Living*)thing)->IsDead())
	{
		return true;
	}
	return false;
}

void GScript::GetDeadLiving()
{
	float      radius = g_scriptDLL->FLOAT_POP();
	ScriptDLL* dll = g_scriptDLL;
	LHPoint    point;
	point.z = dll->COORD_POP();
	point.y = dll->COORD_POP();
	point.x = dll->COORD_POP();
	GGame::g_game->script->FindRadius = radius;
	MapCoords& pos = GGame::g_game->script->FindPos;
	pos.SetX(point.x);
	pos.SetZ(point.z);
	pos.SetAltitude(point.y - LH3DIsland::GetAltitude(point));
	GameThingWithPos* thing = (GameThingWithPos*)FindNearPos(GGame::g_game->script->FindPos, FindNearDeadLivingCheck,
	                                                         SCRIPT_OBJECT_TYPE_NONE, 0, radius);
	if (thing != NULL)
	{
		uint32_t id = AddScriptGameThing(thing, false);
		g_scriptDLL->PUSH((void*)id, VMType_OBJECT);
		return;
	}
	g_scriptDLL->PUSH(NULL, VMType_OBJECT);
}

void GScript::GetSpellIconFromTemple()
{
	GameThingWithPos* temple = GetScriptGameThing(g_scriptDLL->THING_OR_NULL_POP());
	MAGIC_TYPE        type = (MAGIC_TYPE)g_scriptDLL->ULONG_POP();
	if (temple == NULL || !temple->IsCitadelHeart())
	{
		ScriptErrorMessage("Invalid Temple");
	}
	if (temple != NULL)
	{
		temple->IsCitadelHeart();
		if (temple->IsCitadelHeart())
		{
			Citadel* citadel = temple->GetCitadel();
			if (citadel != NULL)
			{
				WorshipSpellIcon* icon = citadel->FindSpellIcon(type);
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
