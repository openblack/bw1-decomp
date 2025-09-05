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

// win1.41 008ec9a8 mac 1075b608 ShowNeeds::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__9ShowNeeds asm("??_R4ShowNeeds@@6B@");

// win1.41 008ec9ac mac 1075b610 ShowNeeds::`vftable'
extern const struct GameThingVftable __vt__9ShowNeeds asm("??_7ShowNeeds@@6B@");

// Static methods

// win1.41 00719b60 mac 10145cd0 ShowNeeds::Create(GameThingWithPos *)
struct ShowNeeds* __cdecl Create__9ShowNeedsFP16GameThingWithPos(struct GameThingWithPos* game_thing);

// Constructors

// win1.41 00719ab0 mac 10145e60 ShowNeeds::ShowNeeds(GameThingWithPos *)
struct ShowNeeds* __fastcall __ct__9ShowNeedsFP16GameThingWithPos(struct ShowNeeds* this, const void* edx, struct GameThingWithPos* game_thing);

#endif /* BW1_DECOMP_SHOW_NEEDS_INCLUDED_H */
