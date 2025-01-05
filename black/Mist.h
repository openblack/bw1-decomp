#ifndef BW1_DECOMP_MIST_INCLUDED_H
#define BW1_DECOMP_MIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

struct MapCoords;
struct MistListNode;

struct Mist
{
  struct GameThingWithPos super;  /* 0x0 */
  uint32_t field_0x28;
  float field_0x2c;
  uint32_t field_0x30;
  float field_0x34;
  uint8_t field_0x38[0x14];
  uint32_t field_0x4c;
  struct Mist* next;  /* 0x50 */
};
static_assert(sizeof(struct Mist) == 0x54, "Data type is of wrong size");

static struct GameThingWithPosVftable* const __vt__4Mist = (struct GameThingWithPosVftable* const)0x008eb640;

// Constructors

// win1.41 00606270 mac 101056c0 Mist::Mist(MapCoords const &, float, unsigned long, float)
struct MistListNode* __fastcall __ct__4MistFRC9MapCoordsfUlf(struct Mist* this, const void* edx, struct MapCoords* coords, float param_3, uint32_t param_4, float param_5);

DECLARE_LH_LIST_HEAD(Mist);

#endif /* BW1_DECOMP_MIST_INCLUDED_H */
