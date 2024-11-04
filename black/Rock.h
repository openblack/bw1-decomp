#ifndef BW1_DECOMP_ROCK_INCLUDED_H
#define BW1_DECOMP_ROCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uintptr_t */

#include "MobileStatic.h" /* For struct MobileStatic */
#include "MultiMapFixed.h" /* For struct MultiMapFixedVftable */

// Forward Declares

struct GMobileStaticInfo;
struct GPlayer;
struct MapCoords;
struct Object;

struct RockVftable
{
  struct MultiMapFixedVftable super;  /* 0x0 */
  uintptr_t field_0x90c;
};
static_assert(sizeof(struct RockVftable) == 0x910, "Data type is of wrong size");

struct Rock
{
  struct MobileStatic super;  /* 0x0 */
  uint32_t field_0x88;
  float field_0x8c;
  struct GPlayer* player;  /* 0x90 */
};
static_assert(sizeof(struct Rock) == 0x94, "Data type is of wrong size");

static struct RockVftable* const __vt__4Rock = (struct RockVftable* const)0x008e2100;

// Constructors

// win1.41 006e6f70 mac 1013dda0 Rock::Rock(MapCoords const &, GMobileStaticInfo const *, Object *, GPlayer *, float, float)
struct Rock* __fastcall __ct__4RockFRC9MapCoordsPC17GMobileStaticInfoP6ObjectP7GPlayerff(struct Rock* this, const void* edx, struct MapCoords* coords, struct GMobileStaticInfo* info, struct Object* param_3, struct GPlayer* param_4, float param_5, float param_6);

#endif /* BW1_DECOMP_ROCK_INCLUDED_H */
