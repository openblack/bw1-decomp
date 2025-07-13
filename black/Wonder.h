#ifndef BW1_DECOMP_WONDER_INCLUDED_H
#define BW1_DECOMP_WONDER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Abode.h" /* For struct Abode */

// Forward Declares

struct GAbodeInfo;
struct MapCoords;
struct Town;

struct Wonder
{
  struct Abode super;  /* 0x0 */
  float power;  /* 0xc4 */
};
static_assert(sizeof(struct Wonder) == 0xc8, "Data type is of wrong size");

static struct MultiMapFixedVftable* const __vt__6Wonder = (struct MultiMapFixedVftable* const)0x008df96c;

// Static methods

// win1.41 00778e80 mac 101619e0 Wonder::Create(const MapCoords&, const GAbodeInfo*, Town*, float, float, float, int)
struct Wonder* __cdecl Create__6WonderFRC9MapCoordsPC10GAbodeInfoP4Townfffi(const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float y_angle, float scale, float food, int wood);

// Constructors

// win1.41 00778e00 mac 10161c40 Wonder::Wonder(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
struct Wonder* __fastcall __ct__6WonderFRC9MapCoordsPC10GAbodeInfoP4Townfffi(struct Wonder* this, const void* edx, const struct MapCoords* coords, const struct GAbodeInfo* info, struct Town* town, float y_angle, float scale, float food, int wood);

// Non-virtual methods

// win1.41 00779060 mac inlined Wonder::SetZero(void)
void __fastcall SetZero__6WonderFv(struct Wonder* this) asm("?SetZero@Wonder@@QAEXXZ");

// Override methods

// win1.41 00779160 mac 101613c0 Wonder::CallVirtualFunctionsForCreation(const MapCoords&)
void __fastcall CallVirtualFunctionsForCreation__6WonderFRC9MapCoords(struct Wonder* this, const void* edx, const struct MapCoords* coords);

#endif /* BW1_DECOMP_WONDER_INCLUDED_H */
