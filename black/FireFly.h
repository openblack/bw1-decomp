#ifndef BW1_DECOMP_FIRE_FLY_INCLUDED_H
#define BW1_DECOMP_FIRE_FLY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "MapCoords.h" /* For struct MapCoords */
#include "Object.h" /* For struct Object */

// Forward Declares

struct LH3DSprite;

struct FireFly
{
  struct Object super;  /* 0x0 */
  uint32_t field_0x54;
  struct LH3DSprite* sprite;
  uint32_t field_0x5c;
  struct MapCoords field_0x60;
  struct MapCoords field_0x6c;
  struct MapCoords field_0x78;
  uint8_t field_0x84[0xc];
  uint32_t field_0x90;
  uint32_t field_0x94;
  uint32_t field_0x98;
  float field_0x9c;
  float field_0xa0;
  float field_0xa4;
  float field_0xa8;
  float field_0xac;
  float field_0xb0;
  float field_0xb4;
  float field_0xb8;
  float field_0xbc;
  uint8_t field_0xc0;
};
static_assert(sizeof(struct FireFly) == 0xc4, "Data type is of wrong size");

static struct ObjectVftable* const __vt__7FireFly = (struct ObjectVftable* const)0x008da4f8;

// Static methods

// win1.41 0052a200 mac 100d9f20 FireFly::Create(MapCoords const &)
struct FireFly* __cdecl Create__7FireFlyFRC9MapCoords(struct MapCoords* coord);

// Constructors

// win1.41 0052a280 mac 100d9e20 FireFly::FireFly(const MapCoords&)
struct FireFly* __fastcall __ct__7FireFlyFRC9MapCoords(struct FireFly* this, const void* edx, struct MapCoords* coords);
// win1.41 0052a340 mac 100d9e04 FireFly::FireFly(void)
struct FireFly* __fastcall __ct__7FireFlyFv(struct FireFly* this);

DECLARE_LH_LIST_HEAD(FireFly);

#endif /* BW1_DECOMP_FIRE_FLY_INCLUDED_H */
