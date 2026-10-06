#include "GameTimeConstants.h"
#include "GlobalGameLists.h"

#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LH3DLib/development/LH3DStorm.h>     /* For LH3DStorm::ReallyKillAll */

#include "ColourConstants.h"    /* For White */
#include "LandscapeConstants.h" /* For LandscapeExtent */

#include "Game.h"       /* For GGame */
#include "GameOSFile.h" /* For GameOSFile */
#include "PuzzleGame.h" /* For PuzzleGame::AppliedMapPos */
#include "Script.h"     /* For GScript::DeleteAllScriptCreatedGameThings */
#include "Waterfall.h"  /* For GWaterfall::DesignedWaterFallNeedsReset */

static float unused;

void GlobalGameLists::DeleteAll() {}

void GlobalGameLists::CleanUpBeforeReset()
{
	FOREACH_LH_LIST_HEAD(Dance, dance, GGame::g_game->GameLists.dances)
	{
		dance->CleanUpBeforeReset();
	}
}

void GlobalGameLists::Process()
{
	Field* field;
	for (field = NULL; (field = fields.GetNext(field)) != NULL;)
	{
		field->Process();
	}
	FishFarm* farm;
	for (farm = NULL; (farm = FishFarms.GetNext(farm)) != NULL;)
	{
		farm->Process();
	}
	for (Object* object = objects.GetHead(); object;)
	{
		Object* next = objects.FindNext(object);
		object->MoveAlongPath();
		object = next;
	}
	FOREACH_LH_LIST_HEAD(Mist, mist, GGame::g_game->GameLists.mist)
	{
		mist->Process();
	}
	FOREACH_LH_LIST_HEAD(PileFood, food, GGame::g_game->GameLists.FoodPiles)
	{
		food->ProcessPileFood();
	}
	FOREACH_LH_LIST_HEAD(PuzzleGame, game, GGame::g_game->GameLists.puzzle_game)
	{
		game->Process();
	}
	PuzzleGame::AppliedMapPos = LH3DMapCoords();
	for (LHLinkedNode<GFootpathFinder*>* node = footpath_finder.head.Get(); node != NULL;)
	{
		LHLinkedNode<GFootpathFinder*>* next = node->next.Get();
		node->payload->GameTurnProcess();
		node = next;
	}
	for (TownArtifact* artifact = TownArtifacts.GetHead(); artifact;)
	{
		TownArtifact* next = TownArtifacts.FindNext(artifact);
		artifact->Validate();
		artifact = next;
	}
}

void GlobalGameLists::Dump()
{
	FOREACH_LH_LIST_HEAD(Ball, ball, balls)
	{
		ball->Dump();
	}
	FOREACH_LH_LIST_HEAD(Forest, forest, forests)
	{
		forest->Dump();
	}
	FOREACH_LH_LIST_HEAD(Living, living, LivingList)
	{
		living->Dump();
	}
}

void GlobalGameLists::ClearMap()
{
	GWaterfall::DesignedWaterFallNeedsReset = TRUE;
	ClearMapStage(FALSE);
	LivingList.ToBeDeletedAvailable();
	for (Tree* tree = trees.GetHead(); tree;)
	{
		Tree* next = trees.FindNext(tree);
		if ((tree->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
		{
			tree->ToBeDeleted(0);
		}
		tree = next;
	}
	forests.ToBeDeletedAvailable();
	for (Town* town = TownList.GetHead(); town;)
	{
		Town* next = TownList.FindNext(town);
		town->ToBeDeleted(0);
		town = next;
	}
	for (BuildingSite* site = BuildingSites.GetHead(); site;)
	{
		BuildingSite* next = BuildingSites.FindNext(site);
		site->ToBeDeleted(0);
		site = next;
	}
	footpaths.ToBeDeletedEachLinked();
	MultiMapFixed* fixed;
	while ((fixed = multi_map_fixed.GetHead()) != NULL)
	{
		if ((fixed->GameThing::Flags & GAME_THING_FLAG_UNAVAILABLE) == 0)
		{
			fixed->ToBeDeleted(0);
		}
	}
	reactions.ToBeDeletedAvailable();
	FireEffects.ToBeDeletedAvailable();
	for (AnimatedStatic* animated = AnimatedStatics.GetHead(); animated;)
	{
		AnimatedStatic* next = AnimatedStatics.FindNext(animated);
		animated->ToBeDeleted(0);
		animated = next;
	}
	balls.ToBeDeletedAvailable();
	spells.ToBeDeletedAvailable();
	ParticleContainers.ToBeDeletedAvailable();
	dances.ToBeDeletedAvailable();
	arenas.ToBeDeletedAvailable();
	VillagersWithoutTown.ToBeDeletedAvailable();
	fields.ToBeDeletedAvailable();
	FishFarms.ToBeDeletedAvailable();
	FireFlies.ToBeDeletedAvailable();
	puzzle_game.ToBeDeletedAvailable();
	MagicFireBalls.ToBeDeletedAvailable();
	MapShields.ToBeDeletedAvailable();
	SoundTags.DeleteEach();
	mist.ToBeDeletedAvailable();
	StreetLights.ToBeDeletedAvailable();
	StreetLanterns.ToBeDeletedAvailable();
	FoodPiles.ToBeDeletedAvailable();
	InfluenceRingList.ToBeDeletedAvailable();
	WeatherThings.ToBeDeletedAvailable();
	for (TownArtifact* artifact = TownArtifacts.GetHead(); artifact;)
	{
		TownArtifact* next = TownArtifacts.FindNext(artifact);
		if (artifact->IsAvailable())
		{
			artifact->ToBeDeleted(0);
		}
		artifact = next;
	}
	for (Fragment* fragment = fragments.GetHead(); fragment;)
	{
		Fragment* next = fragments.FindNext(fragment);
		if (fragment->IsAvailable())
		{
			fragment->ToBeDeleted(0);
		}
		fragment = next;
	}
	GScript::DeleteAllScriptCreatedGameThings();
	ScriptHighlights.ToBeDeletedAvailable();
	for (GameThingWithPos* thing = game_thing_with_pos.GetHead(); thing;)
	{
		GameThingWithPos* next = game_thing_with_pos.FindNext(thing);
		thing->ToBeDeleted(0);
		thing = next;
	}
	streams.ToBeDeletedEachLinked();
	waypoints.ToBeDeletedAvailable();
	waterfalls.ToBeDeletedAvailable();
	BigForests.ToBeDeletedAvailable();
	for (Flock* flock = flocks.GetHead(); flock;)
	{
		Flock* next = flocks.FindNext(flock);
		flock->ToBeDeleted(0);
		flock = next;
	}
	for (MobileObject* mobile = MobileObjects.GetHead(); mobile;)
	{
		MobileObject* next = MobileObjects.FindNext(mobile);
		mobile->ToBeDeleted(0);
		mobile = next;
	}
	for (Reward* reward = rewards.GetHead(); reward;)
	{
		Reward* next = rewards.FindNext(reward);
		reward->ToBeDeleted(0);
		reward = next;
	}
	for (Object* object = objects.GetHead(); object;)
	{
		Object* next = objects.FindNext(object);
		object->ToBeDeleted(0);
		object = next;
	}
	for (GClimate* climate = climates.GetHead(); climate;)
	{
		GClimate* next = climates.FindNext(climate);
		climate->ToBeDeleted(0);
		climate = next;
	}
	GGame::g_game->climate = NULL;
	LH3DStorm::ReallyKillAll();
	footpath_finder.ToBeDeletedAll();
	GGame::g_game->map.Clean();
	ClearMapStage(TRUE);
}

void GlobalGameLists::ClearMapStage(bool32_t finished) {}

uint32_t GlobalGameLists::Save(GameOSFile& file)
{
	file.WriteSafe(StreetLights);
	file.WriteSafe(StreetLanterns);
	file.WriteSafe(rewards);
	file.WriteSafe(balls);
	file.WriteSafe(forests);
	file.WriteSafe(LivingList);
	file.WriteSafe(spells);
	file.WriteSafe(ParticleContainers);
	file.WriteSafe(dances);
	file.WriteSafe(reactions);
	file.WriteSafe(MobileObjects);
	file.WriteSafe(VillagersWithoutTown);
	file.WriteSafe(fields);
	file.WriteSafe(FishFarms);
	file.WriteSafe(FireEffects);
	file.WriteSafe(FireFlies);
	file.WriteSafe(puzzle_game);
	file.WriteSafe(MagicFireBalls);
	file.WriteSafe(MapShields);
	file.WriteSafe(mist);
	file.WriteSafe(FoodPiles);
	file.WriteSafe(flocks);
	file.WriteSafe(InfluenceRingList);
	file.WriteSafe(WeatherThings);
	file.WriteSafe(ScriptHighlights);
	file.WriteSafe(game_thing_with_pos);
	file.WriteSafe(streams);
	file.WriteSafe(waypoints);
	file.WriteSafe(footpaths);
	file.WriteSafe(waterfalls);
	file.WriteSafe(arenas);
	file.WriteSafe(TownList);
	file.WriteSafe(BuildingSites);
	file.WriteSafe(multi_map_fixed);
	file.WriteSafe(AnimatedStatics);
	file.WriteSafe(objects);
	file.WriteSafe(trees);
	file.WriteSafe(BigForests);
	file.WriteSafe(climates);
	file.WriteSafe(TownCentres);
	file.WriteSafe(whales);
	file.WriteSafe(TownArtifacts);
	file.WriteSafe(fragments);
	file.WriteSafe(footpath_finder);
	return TRUE;
}

uint32_t GlobalGameLists::Load(GameOSFile& file)
{
	file.ReadSafe(StreetLights);
	file.ReadSafe(StreetLanterns);
	file.ReadSafe(rewards);
	file.ReadSafe(balls);
	file.ReadSafe(forests);
	file.ReadSafe(LivingList);
	file.ReadSafe(spells);
	file.ReadSafe(ParticleContainers);
	file.ReadSafe(dances);
	file.ReadSafe(reactions);
	file.ReadSafe(MobileObjects);
	file.ReadSafe(VillagersWithoutTown);
	file.ReadSafe(fields);
	file.ReadSafe(FishFarms);
	file.ReadSafe(FireEffects);
	file.ReadSafe(FireFlies);
	file.ReadSafe(puzzle_game);
	file.ReadSafe(MagicFireBalls);
	file.ReadSafe(MapShields);
	file.ReadSafe(mist);
	file.ReadSafe(FoodPiles);
	file.ReadSafe(flocks);
	file.ReadSafe(InfluenceRingList);
	file.ReadSafe(WeatherThings);
	file.ReadSafe(ScriptHighlights);
	file.ReadSafe(game_thing_with_pos);
	file.ReadSafe(streams);
	file.ReadSafe(waypoints);
	file.ReadSafe(footpaths);
	file.ReadSafe(waterfalls);
	file.ReadSafe(arenas);
	file.ReadSafe(TownList);
	file.ReadSafe(BuildingSites);
	file.ReadSafe(multi_map_fixed);
	file.ReadSafe(AnimatedStatics);
	file.ReadSafe(objects);
	file.ReadSafe(trees);
	file.ReadSafe(BigForests);
	file.ReadSafe(climates);
	file.ReadSafe(TownCentres);
	file.ReadSafe(whales);
	file.ReadSafe(TownArtifacts);
	file.ReadSafe(fragments);
	file.ReadSafe(footpath_finder);
	return TRUE;
}
