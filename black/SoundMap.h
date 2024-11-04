#ifndef BW1_DECOMP_SOUND_MAP_INCLUDED_H
#define BW1_DECOMP_SOUND_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */

#include "Base.h" /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

struct GSoundMap
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0xc][0xe];
  uint16_t field_0xb0;
  uint32_t field_0xb4[0xe];
  struct LHPoint field_0xec;
  struct MapCoords field_0xf8;
  uint8_t field_0xfc[0xc];  /* 0x104 */
};
static_assert(sizeof(struct GSoundMap) == 0x110, "Data type is of wrong size");

static struct BaseVftable* const __vt__9GSoundMap = (struct BaseVftable* const)0x008df7a0;

// Constructors

// win1.41 0054b9d0 mac inlined GSoundMap::GSoundMap(void)
struct GSoundMap* __fastcall __ct__9GSoundMapFv(struct GSoundMap* this);

#endif /* BW1_DECOMP_SOUND_MAP_INCLUDED_H */
