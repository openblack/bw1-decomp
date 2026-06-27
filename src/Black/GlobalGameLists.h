#ifndef BW1_DECOMP_GLOBAL_GAME_LISTS_INCLUDED_H
#define BW1_DECOMP_GLOBAL_GAME_LISTS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimatedStatic.h" /* For struct AnimatedStatic */
#include "Arena.h" /* For struct GArena */
#include "Artifact.h" /* For struct TownArtifact */
#include "Ball.h" /* For struct Ball */
#include "Base.h" /* For struct Base */
#include "BaseInfo.h" /* For struct GBaseInfo */
#include "BigForest.h" /* For struct BigForest */
#include "BuildingSite.h" /* For struct BuildingSite */
#include "Climate.h" /* For struct GClimate */
#include "Dance.h" /* For struct Dance */
#include "EarthQuake.h" /* For struct EarthQuake */
#include "Field.h" /* For struct Field */
#include "FireEffect.h" /* For struct FireEffect */
#include "FireFly.h" /* For struct FireFly */
#include "FishFarm.h" /* For struct FishFarm */
#include "Flock.h" /* For struct Flock */
#include "Footpath.h" /* For struct GFootpath */
#include "FootpathFinder.h" /* For struct GFootpathFinder */
#include "Forest.h" /* For struct Forest */
#include "Fragment.h" /* For struct Fragment */
#include "GameThing.h" /* For struct GameThing */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "Influence.h" /* For struct InfluenceRing */
#include "Living.h" /* For struct Living */
#include "MagicFireBall.h" /* For struct MagicFireBall */
#include "MapShield.h" /* For struct MapShield */
#include "Mist.h" /* For struct Mist */
#include "MobileObject.h" /* For struct MobileObject */
#include "MultiMapFixed.h" /* For struct MultiMapFixed */
#include "Object.h" /* For struct Object */
#include "ParticleContainer.h" /* For struct GParticleContainer */
#include "PileFood.h" /* For struct PileFood */
#include "Player.h" /* For struct GPlayer */
#include "PuzzleGame.h" /* For struct PuzzleGame */
#include "Reaction.h" /* For struct Reaction */
#include "Reward.h" /* For struct Reward */
#include "ScriptHighlight.h" /* For struct ScriptHighlight */
#include "SoundTag.h" /* For struct SoundTag */
#include "Spell.h" /* For struct Spell */
#include "Stream.h" /* For struct GStream */
#include "StreetLantern.h" /* For struct GStreetLantern */
#include "StreetLight.h" /* For struct GStreetLight */
#include "Town.h" /* For struct Town */
#include "TownCentre.h" /* For struct TownCentre */
#include "Tree.h" /* For struct Tree */
#include "Villager.h" /* For struct Villager */
#include "Waterfall.h" /* For struct GWaterfall */
#include "WayPoint.h" /* For struct Waypoint */
#include "WeatherThing.h" /* For struct WeatherThing */
#include "Whale.h" /* For struct Whale */

class GlobalGameLists: public Base
{
public:
    LHListHead__Ball balls; /* 0x8 */
    LHListHead__Forest forests; /* 0x10 */
    LHListHead__Living living_list;
    LHListHead__Spell spells; /* 0x20 */
    LHListHead__GParticleContainer particle_containers;
    LHListHead__Dance dances; /* 0x30 */
    LHListHead__Reaction reactions;
    LHLinkedList__MobileObject mobile_objects; /* 0x40 */
    LHLinkedList__GFootpathFinder footpath_finder;
    LHListHead__EarthQuake earthquakes; /* 0x50 */
    LHListHead__Villager villagers_without_town;
    LHListHead__Field fields; /* 0x60 */
    LHListHead__FishFarm fish_farms;
    LHListHead__FireEffect fire_effects; /* 0x70 */
    LHListHead__SoundTag sound_tags;
    LHListHead__Mist mist; /* 0x80 */
    LHListHead__GStreetLight street_lights;
    LHListHead__GStreetLantern street_lanterns; /* 0x90 */
    LHListHead__PileFood food_piles;
    LHLinkedList__Flock flocks; /* 0xa0 */
    LHListHead__InfluenceRing influence_ring_list;
    LHListHead__WeatherThing weather_things; /* 0xb0 */
    LHListHead__GStream streams;
    LHListHead__GFootpath footpaths; /* 0xc0 */
    LHListHead__GWaterfall waterfalls;
    LHListHead__Waypoint waypoints; /* 0xd0 */
    LHListHead__GArena arenas;
    LHLinkedList__Town town_list; /* 0xe0 */
    LHLinkedList__GameThingWithPos game_thing_with_pos;
    LHListHead__ScriptHighlight script_highlights; /* 0xf0 */
    LHListHead__MagicFireBall magic_fire_balls;
    LHListHead__MapShield map_shields; /* 0x100 */
    LHLinkedList__BuildingSite building_sites;
    LHLinkedList__MultiMapFixed multi_map_fixed; /* 0x110 */
    LHLinkedList__AnimatedStatic animated_statics;
    LHListHead__GPlayer players; /* 0x120 */
    LHLinkedList__Reward rewards;
    LHLinkedList__Object objects; /* 0x130 */
    LHLinkedList__Tree trees;
    LHListHead__BigForest big_forests; /* 0x140 */
    LHListHead__GBaseInfo base_infos;
    LHLinkedList__GClimate climates; /* 0x150 */
    LHLinkedList__TownCentre town_centres;
    LHListHead__Whale whales; /* 0x160 */
    LHListHead__FireFly fire_flies;
    LHListHead__PuzzleGame puzzle_game; /* 0x170 */
    LHListHead__GameThing game_things;
    LHLinkedList__TownArtifact town_artifacts; /* 0x180 */
    LHLinkedList__Fragment fragments;

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
