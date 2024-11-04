#ifndef BW1_DECOMP_FOOTPATH_FINDER_INCLUDED_H
#define BW1_DECOMP_FOOTPATH_FINDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lhall/released/headers/RPHolder.h> /* For struct RPHolder */
#include <lhall/released/headers/RPlan.h> /* For struct RPlan */
#include <lionhead/lhlib/VER5.0/LHLinkedList.h> /* For DECLARE_LH_LINKED_LIST */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct GFootpath;
struct GFootpathNode;
struct GameOSFile;
struct GameThingWithPos;

struct GFootpathFinder
{
  struct GameThing super;  /* 0x0 */
  struct RPHolder holder;  /* 0x14 */
  struct RPlan plan;  /* 0x64040 */
  struct GameThingWithPos* gamethingwithpos_start;  /* 0x640b4 */
  struct GameThingWithPos* gamethingwithpos_dest;
  struct GFootpath* footpath_0x7c;
  struct GFootpathNode* start_node;  /* 0x640c0 */
  struct GFootpathNode* dest_node;
};
static_assert(sizeof(struct GFootpathFinder) == 0x640c8, "Data type is of wrong size");

static struct GameThingVftable* __vt__15GFootpathFinder = (struct GameThingVftable*)0x008de2e0;

// Constructors

// win1.41 inlined mac inlined GFootpathFinder::GFootpathFinder(void)
struct GFootpathFinder* __fastcall __ct__15GFootpathFinderFv(struct GFootpathFinder* this);

// Non-virtual methods

// win1.41 00539040 mac 100e7dc0 GFootpathFinder::GameTurnProcess(void)
void __fastcall GameTurnProcess__15GFootpathFinderFv(struct GFootpathFinder* this);
// win1.41 00539240 mac 100e7760 GFootpathFinder::Done(void)
void __fastcall Done__15GFootpathFinderFv(struct GFootpathFinder* this);
// win1.41 005392f0 mac 100e7150 GFootpathFinder::Init(void)
void __fastcall Init__15GFootpathFinderFv(struct GFootpathFinder* this);

// Override methods

// win1.41 005390e0 mac 100e7ce0 GFootpathFinder::Load(GameOSFile &)
uint32_t __fastcall Load__15GFootpathFinderFR10GameOSFile(struct GFootpathFinder* this, const void* edx, struct GameOSFile* file);

DECLARE_LH_LINKED_LIST(GFootpathFinder);

#endif /* BW1_DECOMP_FOOTPATH_FINDER_INCLUDED_H */
