#ifndef BW1_DECOMP_SHOW_NEEDS_VISUALS_INCLUDED_H
#define BW1_DECOMP_SHOW_NEEDS_VISUALS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Object.h" /* For struct Object */

// Forward Declares

struct GShowNeedsInfo;
struct GameThing;
struct MapCoords;

struct ShowNeedsVisuals
{
  struct Object super;  /* 0x0 */
  int field_0x54;
  uint32_t field_0x58;
  uint32_t field_0x5c;
  struct GameThing* game_thing;  /* 0x60 */
  uint32_t field_0x64;
  uint32_t field_0x68;
  uint32_t field_0x6c;
  uint32_t field_0x70;
  uint32_t field_0x74;
  uint32_t field_0x78;
  uint32_t field_0x7c;
  uint32_t field_0x80;
  uint32_t field_0x84;
  uint32_t field_0x88;
  uint32_t field_0x8c;
  uint32_t field_0x90;
};
static_assert(sizeof(struct ShowNeedsVisuals) == 0x94, "Data type is of wrong size");

static struct ObjectVftable* const __vt__16ShowNeedsVisuals = (struct ObjectVftable* const)0x008ecaac;

// Constructors

// win1.41 00719d60 mac 10145700 ShowNeedsVisuals::ShowNeedsVisuals(const MapCoords&, GameThing*, const GShowNeedsInfo *)
struct ShowNeedsVisuals* __fastcall __ct__16ShowNeedsVisualsFRC9MapCoordsP9GameThingPC14GShowNeedsInfo(struct ShowNeedsVisuals* this, const void* edx, struct MapCoords* coords, struct GameThing* game_thing, struct GShowNeedsInfo* info);

// Override methods

// win1.41 00719e00 mac 10145510 ShowNeedsVisuals::CallVirtualFunctionsForCreation(const MapCoords &)
void __fastcall CallVirtualFunctionsForCreation__16ShowNeedsVisualsFRC9MapCoords(struct ShowNeedsVisuals* this, const void* edx, const struct MapCoords* coords) asm("?CallVirtualFunctionsForCreation@ShowNeedsVisuals@@UAEXABUMapCoords@@@Z");

#endif /* BW1_DECOMP_SHOW_NEEDS_VISUALS_INCLUDED_H */
