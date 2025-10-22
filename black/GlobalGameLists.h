#ifndef BW1_DECOMP_GLOBAL_GAME_LISTS_INCLUDED_H
#define BW1_DECOMP_GLOBAL_GAME_LISTS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

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

struct GlobalGameLists
{
  struct Base super;  /* 0x0 */
  struct LHListHead__Ball balls;
  struct LHListHead__Forest forests;  /* 0x10 */
  struct LHListHead__Living living_list;
  struct LHListHead__Spell spells;  /* 0x20 */
  struct LHListHead__GParticleContainer particle_containers;
  struct LHListHead__Dance dances;  /* 0x30 */
  struct LHListHead__Reaction reactions;
  struct LHLinkedList__MobileObject mobile_objects;  /* 0x40 */
  struct LHLinkedList__GFootpathFinder footpath_finder;
  struct LHListHead__EarthQuake earthquakes;  /* 0x50 */
  struct LHListHead__Villager villagers_without_town;
  struct LHListHead__Field fields;  /* 0x60 */
  struct LHListHead__FishFarm fish_farms;
  struct LHListHead__FireEffect fire_effects;  /* 0x70 */
  struct LHListHead__SoundTag sound_tags;
  struct LHListHead__Mist mist;  /* 0x80 */
  struct LHListHead__GStreetLight street_lights;
  struct LHListHead__GStreetLantern street_lanterns;  /* 0x90 */
  struct LHListHead__PileFood food_piles;
  struct LHLinkedList__Flock flocks;  /* 0xa0 */
  struct LHListHead__InfluenceRing influence_ring_list;
  struct LHListHead__WeatherThing weather_things;  /* 0xb0 */
  struct LHListHead__GStream streams;
  struct LHListHead__GFootpath footpaths;  /* 0xc0 */
  struct LHListHead__GWaterfall waterfalls;
  struct LHListHead__Waypoint waypoints;  /* 0xd0 */
  struct LHListHead__GArena arenas;
  struct LHLinkedList__Town town_list;  /* 0xe0 */
  struct LHLinkedList__GameThingWithPos game_thing_with_pos;
  struct LHListHead__ScriptHighlight script_highlights;  /* 0xf0 */
  struct LHListHead__MagicFireBall magic_fire_balls;
  struct LHListHead__MapShield map_shields;  /* 0x100 */
  struct LHLinkedList__BuildingSite building_sites;
  struct LHLinkedList__MultiMapFixed multi_map_fixed;  /* 0x110 */
  struct LHLinkedList__AnimatedStatic animated_statics;
  struct LHListHead__GPlayer players;  /* 0x120 */
  struct LHLinkedList__Reward rewards;
  struct LHLinkedList__Object objects;  /* 0x130 */
  struct LHLinkedList__Tree trees;
  struct LHListHead__BigForest big_forests;  /* 0x140 */
  struct LHListHead__GBaseInfo base_infos;
  struct LHLinkedList__GClimate climates;  /* 0x150 */
  struct LHLinkedList__TownCentre town_centres;
  struct LHListHead__Whale whales;  /* 0x160 */
  struct LHListHead__FireFly fire_flies;
  struct LHListHead__PuzzleGame puzzle_game;  /* 0x170 */
  struct LHListHead__GameThing game_things;
  struct LHLinkedList__TownArtifact town_artifacts;  /* 0x180 */
  struct LHLinkedList__Fragment fragments;
};
static_assert(sizeof(struct GlobalGameLists) == 0x190, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bec390 mac inlined GlobalGameLists::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15GlobalGameLists asm("??_R0?AVGlobalGameLists@@@8");
// win1.41 009ad0b0 mac inlined GlobalGameLists::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15GlobalGameLists asm("??_R1A@?0A@A@GlobalGameLists@@8");
// win1.41 009ad0c8 mac inlined GlobalGameLists::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15GlobalGameLists asm("??_R2GlobalGameLists@@8");
// win1.41 009ad0d8 mac inlined GlobalGameLists::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15GlobalGameLists asm("??_R3GlobalGameLists@@8");

// Non-virtual methods

// win1.41 00591370 mac 10059120 GlobalGameLists::Process(void)
void __fastcall Process__15GlobalGameListsFv(struct GlobalGameLists* this) asm("?Process@GlobalGameLists@@QAEXXZ");

// Override methods

// win1.41 0054b970 mac 10547350 GlobalGameLists::_dt(void)
void __fastcall __dt__15GlobalGameListsFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGlobalGameLists@@UAEPAXI@Z");
// win1.41 005914d0 mac 10336280 GlobalGameLists::Dump(void)
void __fastcall Dump__15GlobalGameListsFv(struct Base* this) asm("?Dump@GlobalGameLists@@UAEXXZ");

#endif /* BW1_DECOMP_GLOBAL_GAME_LISTS_INCLUDED_H */
