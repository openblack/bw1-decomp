#ifndef BW1_DECOMP_WINDMILL_INCLUDED_H
#define BW1_DECOMP_WINDMILL_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Abode.h" /* For struct Abode */

// Forward Declares

struct GAbodeInfo;
struct MapCoords;
struct Town;

struct Windmill
{
  struct Abode super;  /* 0x0 */
};
static_assert(sizeof(struct Windmill) == 0xc4, "Data type is of wrong size");

// win1.41 008aa8e0 mac 1073c6e0 Windmill::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__8Windmill asm("??_R4Windmill@@6B@");

// win1.41 008aa8e4 mac 1073c6e8 Windmill::`vftable'
extern const struct AbodeVftable __vt__8Windmill asm("??_7Windmill@@6B@");

// Static methods

// win1.41 00405890 mac 10199b40 Windmill::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, unsigned long, unsigned long, float, int, int)
struct Windmill* __cdecl Create__8WindmillFRC9MapCoordsPC10GAbodeInfoP4Townfffi(const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float y_angle, float scale, float food, int wood) asm("?Create@Windmill@@SAPAVAbode@@ABUMapCoords@@PBVGAbodeInfo@@PAVTown@@MMMH@Z");

#endif /* BW1_DECOMP_WINDMILL_INCLUDED_H */
