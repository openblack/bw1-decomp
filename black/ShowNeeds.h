#ifndef BW1_DECOMP_SHOW_NEEDS_INCLUDED_H
#define BW1_DECOMP_SHOW_NEEDS_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct GameThingWithPos;
struct ShowNeedsVisuals;

struct ShowNeeds
{
  struct GameThing super;  /* 0x0 */
  struct GameThingWithPos* thing;  /* 0x14 */
  struct ShowNeedsVisuals* visuals[0x3];
};
static_assert(sizeof(struct ShowNeeds) == 0x24, "Data type is of wrong size");

static struct GameThingVftable* const __vt__9ShowNeeds = (struct GameThingVftable* const)0x008ec9ac;

// Static methods

// win1.41 00719b60 mac 10145cd0 ShowNeeds::Create(GameThingWithPos *)
struct ShowNeeds* __cdecl Create__9ShowNeedsFP16GameThingWithPos(struct GameThingWithPos* game_thing);

// Constructors

// win1.41 00719ab0 mac 10145e60 ShowNeeds::ShowNeeds(GameThingWithPos *)
struct ShowNeeds* __fastcall __ct__9ShowNeedsFP16GameThingWithPos(struct ShowNeeds* this, const void* edx, struct GameThingWithPos* game_thing);

#endif /* BW1_DECOMP_SHOW_NEEDS_INCLUDED_H */
