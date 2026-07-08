#ifndef BW1_DECOMP_GLOBAL_GAME_LISTS_INCLUDED_H
#define BW1_DECOMP_GLOBAL_GAME_LISTS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimatedStatic.h"    /* For struct AnimatedStatic */
#include "Arena.h"             /* For struct GArena */
#include "Artifact.h"          /* For struct TownArtifact */
#include "Ball.h"              /* For struct Ball */
#include "Base.h"              /* For struct Base */
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
#include "PuzzleGame.h"        /* For struct PuzzleGame */
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
#include "Waterfall.h"         /* For struct GWaterfall */
#include "WayPoint.h"          /* For struct Waypoint */
#include "WeatherThing.h"      /* For struct WeatherThing */
#include "Whale.h"             /* For struct Whale */

class GlobalGameLists : public Base
{
public:
	LHListHead<Ball>               balls;   /* 0x8 */
	LHListHead<Forest>             forests; /* 0x10 */
	LHListHead<Living>             living_list;
	LHListHead<Spell>              spells; /* 0x20 */
	LHListHead<GParticleContainer> particle_containers;
	LHListHead<Dance>              dances; /* 0x30 */
	LHListHead<Reaction>           reactions;
	LHLinkedList<MobileObject>     mobile_objects; /* 0x40 */
	LHLinkedList<GFootpathFinder>  footpath_finder;
	LHListHead<EarthQuake>         earthquakes; /* 0x50 */
	LHListHead<Villager>           villagers_without_town;
	LHListHead<Field>              fields; /* 0x60 */
	LHListHead<FishFarm>           fish_farms;
	LHListHead<FireEffect>         fire_effects; /* 0x70 */
	LHListHead<SoundTag>           sound_tags;
	LHListHead<Mist>               mist; /* 0x80 */
	LHListHead<GStreetLight>       street_lights;
	LHListHead<GStreetLantern>     street_lanterns; /* 0x90 */
	LHListHead<PileFood>           food_piles;
	LHLinkedList<Flock>            flocks; /* 0xa0 */
	LHListHead<InfluenceRing>      influence_ring_list;
	LHListHead<WeatherThing>       weather_things; /* 0xb0 */
	LHListHead<GStream>            streams;
	LHListHead<GFootpath>          footpaths; /* 0xc0 */
	LHListHead<GWaterfall>         waterfalls;
	LHListHead<Waypoint>           waypoints; /* 0xd0 */
	LHListHead<GArena>             arenas;
	LHLinkedList<Town>             town_list; /* 0xe0 */
	LHLinkedList<GameThingWithPos> game_thing_with_pos;
	LHListHead<ScriptHighlight>    script_highlights; /* 0xf0 */
	LHListHead<MagicFireBall>      magic_fire_balls;
	LHListHead<MapShield>          map_shields; /* 0x100 */
	LHLinkedList<BuildingSite>     building_sites;
	LHLinkedList<MultiMapFixed>    multi_map_fixed; /* 0x110 */
	LHLinkedList<AnimatedStatic>   animated_statics;
	LHListHead<GPlayer>            players; /* 0x120 */
	LHLinkedList<Reward>           rewards;
	LHLinkedList<Object>           objects; /* 0x130 */
	LHLinkedList<Tree>             trees;
	LHListHead<BigForest>          big_forests; /* 0x140 */
	LHListHead<GBaseInfo>          base_infos;
	LHLinkedList<GClimate>         climates; /* 0x150 */
	LHLinkedList<TownCentre>       town_centres;
	LHListHead<Whale>              whales; /* 0x160 */
	LHListHead<FireFly>            fire_flies;
	LHListHead<PuzzleGame>         puzzle_game; /* 0x170 */
	LHListHead<GameThing>          game_things;
	LHLinkedList<TownArtifact>     town_artifacts; /* 0x180 */
	LHLinkedList<Fragment>         fragments;

	// Override methods

	// BW1W120 0054b970 BW1M100 10547350 GlobalGameLists::_dt(void)
	virtual ~GlobalGameLists();
	// BW1W120 005914d0 BW1M100 10336280 GlobalGameLists::Dump(void)
	virtual void Dump();

	// Non-virtual methods

	// BW1W120 00591370 BW1M100 10059120 GlobalGameLists::Process(void)
	void Process();
};

#endif /* BW1_DECOMP_GLOBAL_GAME_LISTS_INCLUDED_H */
