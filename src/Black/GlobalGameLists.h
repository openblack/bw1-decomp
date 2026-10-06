#ifndef BW1_DECOMP_GLOBAL_GAME_LISTS_INCLUDED_H
#define BW1_DECOMP_GLOBAL_GAME_LISTS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For class LHLinkedList */
#include <Lionhead/LHLib/ver5.0/LHListHead.h>   /* For struct LHListHead */

#include "Base.h" /* For struct Base */

// Forward Declares

class AnimatedStatic;
class Ball;
class BigForest;
class BuildingSite;
class Dance;
struct EarthQuake;
class Field;
class FireEffect;
class FireFly;
class FishFarm;
class Flock;
class Forest;
class Fragment;
class GArena;
class GBaseInfo;
class GClimate;
class GFootpath;
class GFootpathFinder;
class GParticleContainer;
class GPlayer;
class GStream;
class GStreetLantern;
class GStreetLight;
class GWaterfall;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class InfluenceRing;
class Living;
class MagicFireBall;
class MapShield;
class Mist;
class MobileObject;
class MultiMapFixed;
class Object;
class PileFood;
class PuzzleGame;
class Reaction;
class Reward;
class ScriptHighlight;
class SoundTag;
class Spell;
class Town;
class TownArtifact;
class TownCentre;
class Tree;
class Villager;
class WayPoint;
class WeatherThing;
class Whale;

class GlobalGameLists : public Base
{
public:
	GlobalGameLists() {}
	LHListHead<Ball>                balls;
	LHListHead<Forest>              forests;
	LHListHead<Living>              LivingList;
	LHListHead<Spell>               spells;
	LHListHead<GParticleContainer>  ParticleContainers;
	LHListHead<Dance>               dances;
	LHListHead<Reaction>            reactions;
	LHLinkedList<MobileObject*>     MobileObjects;
	LHLinkedList<GFootpathFinder*>  footpath_finder;
	LHListHead<EarthQuake>          earthquakes;
	LHListHead<Villager>            VillagersWithoutTown;
	LHListHead<Field>               fields;
	LHListHead<FishFarm>            FishFarms;
	LHListHead<FireEffect>          FireEffects;
	LHListHead<SoundTag>            SoundTags;
	LHListHead<Mist>                mist;
	LHListHead<GStreetLight>        StreetLights;
	LHListHead<GStreetLantern>      StreetLanterns;
	LHListHead<PileFood>            FoodPiles;
	LHLinkedList<Flock*>            flocks;
	LHListHead<InfluenceRing>       InfluenceRingList;
	LHListHead<WeatherThing>        WeatherThings;
	LHListHead<GStream>             streams;
	LHListHead<GFootpath>           footpaths;
	LHListHead<GWaterfall>          waterfalls;
	LHListHead<WayPoint>            waypoints;
	LHListHead<GArena>              arenas;
	LHLinkedList<Town*>             TownList;
	LHLinkedList<GameThingWithPos*> game_thing_with_pos;
	LHListHead<ScriptHighlight>     ScriptHighlights;
	LHListHead<MagicFireBall>       MagicFireBalls;
	LHListHead<MapShield>           MapShields;
	LHLinkedList<BuildingSite*>     BuildingSites;
	LHLinkedList<MultiMapFixed*>    multi_map_fixed;
	LHLinkedList<AnimatedStatic*>   AnimatedStatics;
	LHListHead<GPlayer>             players;
	LHLinkedList<Reward*>           rewards;
	LHLinkedList<Object*>           objects;
	LHLinkedList<Tree*>             trees;
	LHListHead<BigForest>           BigForests;
	LHListHead<GBaseInfo>           BaseInfos;
	LHLinkedList<GClimate*>         climates;
	LHLinkedList<TownCentre*>       TownCentres;
	LHListHead<Whale>               whales;
	LHListHead<FireFly>             FireFlies;
	LHListHead<PuzzleGame>          puzzle_game;
	LHListHead<GameThing>           GameThings;
	LHLinkedList<TownArtifact*>     TownArtifacts;
	LHLinkedList<Fragment*>         fragments;

	// Override methods

	// BW1W120 0054b970 BW1M119 010d5300
	virtual ~GlobalGameLists();
	// BW1W120 005914d0 BW1M119 0133e730
	virtual void Dump();

	// Non-virtual methods

	// BW1W120 00591330 BW1M119 0133e860
	void DeleteAll();
	// BW1W120 00591340 BW1M119 null
	void CleanUpBeforeReset();
	// BW1W120 00591370 BW1M119 0105bdf0
	void Process();
	// BW1W120 00591520 BW1M119 0133cb30
	void ClearMap();
	// BW1W120 00591ab0 BW1M119 null
	void ClearMapStage(bool32_t finished);
	// BW1W120 00591ac0 BW1M119 0133a800
	uint32_t Save(GameOSFile& file);
	// BW1W120 00592040 BW1M119 01335a60
	uint32_t Load(GameOSFile& file);
};

// GlobalGameLists itself only needs the element types declared, and its own TU has to see it
// before any element header: MSVC6 emits LHListHead/LHLinkedList members in the order their
// specialisations were created, and GlobalGameList.cpp's target follows this member order. The
// element headers follow for the many consumers that reach them through Game.h. PuzzleGame.h and
// Waterfall.h stay out: their static data members would bump the $S/$E counter in every one of
// those TUs.
#include "AnimatedStatic.h"    /* For struct AnimatedStatic */
#include "Arena.h"             /* For struct GArena */
#include "Artifact.h"          /* For struct TownArtifact */
#include "Ball.h"              /* For struct Ball */
#include "BaseInfo.h"          /* For struct GBaseInfo */
#include "BigForest.h"         /* For struct BigForest */
#include "BuildingSite.h"      /* For struct BuildingSite */
#include "Climate.h"           /* For struct GClimate */
#include "Dance.h"             /* For struct Dance */
#include "EarthQuake.h"        /* For struct EarthQuake */
#include "Field.h"             /* For struct Field */
#include "FireEffect.h"        /* For struct FireEffect */
#include "FireFly.h"           /* For struct FireFly */
#include "FishFarm.h"          /* For struct FishFarm */
#include "Flock.h"             /* For struct Flock */
#include "Footpath.h"          /* For struct GFootpath */
#include "FootpathFinder.h"    /* For struct GFootpathFinder */
#include "Forest.h"            /* For struct Forest */
#include "Fragment.h"          /* For struct Fragment */
#include "GameThing.h"         /* For struct GameThing */
#include "GameThingWithPos.h"  /* For struct GameThingWithPos */
#include "Influence.h"         /* For struct InfluenceRing */
#include "Living.h"            /* For struct Living */
#include "MagicFireBall.h"     /* For struct MagicFireBall */
#include "MapShield.h"         /* For struct MapShield */
#include "Mist.h"              /* For struct Mist */
#include "MobileObject.h"      /* For struct MobileObject */
#include "MultiMapFixed.h"     /* For struct MultiMapFixed */
#include "Object.h"            /* For struct Object */
#include "ParticleContainer.h" /* For struct GParticleContainer */
#include "PileFood.h"          /* For struct PileFood */
#include "Player.h"            /* For struct GPlayer */
#include "Reaction.h"          /* For struct Reaction */
#include "Reward.h"            /* For struct Reward */
#include "ScriptHighlight.h"   /* For struct ScriptHighlight */
#include "SoundTag.h"          /* For struct SoundTag */
#include "Spell.h"             /* For struct Spell */
#include "Stream.h"            /* For struct GStream */
#include "StreetLantern.h"     /* For struct GStreetLantern */
#include "StreetLight.h"       /* For struct GStreetLight */
#include "Town.h"              /* For struct Town */
#include "TownCentre.h"        /* For struct TownCentre */
#include "Tree.h"              /* For struct Tree */
#include "Villager.h"          /* For struct Villager */
#include "WayPoint.h"          /* For struct WayPoint */
#include "WeatherThing.h"      /* For struct WeatherThing */
#include "Whale.h"             /* For struct Whale */

#endif /* BW1_DECOMP_GLOBAL_GAME_LISTS_INCLUDED_H */
