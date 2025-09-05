#ifndef BW1_DECOMP_TOTEM_INCLUDED_H
#define BW1_DECOMP_TOTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Abode.h" /* For struct Abode */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct GAbodeInfo;
struct Town;

struct Totem
{
  struct Abode super;  /* 0x0 */
  struct MapCoords field_0xc4;
  struct MapCoords field_0xd0;
  uint32_t field_0xdc;
  uint32_t field_0xe0;
};
static_assert(sizeof(struct Totem) == 0xe4, "Data type is of wrong size");

// win1.41 008ef578 mac 10755f88 Totem::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__5Totem asm("??_R4Totem@@6B@");

// win1.41 008ef57c mac 10755fc8 Totem::`vftable'
extern const struct AbodeVftable __vt__5Totem asm("??_7Totem@@6B@");

// Constructors

// win1.41 00737390 mac 105435b0 Totem::Totem(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
struct Totem* __fastcall __ct__5TotemFRC9MapCoordsPC10GAbodeInfoP4Townfffi(struct Totem* this, const void* edx, const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float param_4, float param_5, float param_6, int param_7);

#endif /* BW1_DECOMP_TOTEM_INCLUDED_H */
