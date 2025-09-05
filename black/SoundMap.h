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

// win1.41 008df79c mac 109d7980 GSoundMap::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__9GSoundMap asm("??_R4GSoundMap@@6B@");

// win1.41 008df7a0 mac 109d7988 GSoundMap::`vftable'
extern const struct BaseVftable __vt__9GSoundMap asm("??_7GSoundMap@@6B@");

// Constructors

// win1.41 0054b9d0 mac inlined GSoundMap::GSoundMap(void)
struct GSoundMap* __fastcall __ct__9GSoundMapFv(struct GSoundMap* this);

#endif /* BW1_DECOMP_SOUND_MAP_INCLUDED_H */
