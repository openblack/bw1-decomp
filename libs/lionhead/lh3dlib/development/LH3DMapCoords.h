#ifndef BW1_DECOMP_LH3D_MAP_COORDS_INCLUDED_H
#define BW1_DECOMP_LH3D_MAP_COORDS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint16_t, uint32_t */

struct LH3DMapCoordsSplit
{
  uint16_t cell;  /* 0x0 */
  uint16_t map;
};
static_assert(sizeof(struct LH3DMapCoordsSplit) == 0x4, "Data type is of wrong size");

union LH3DMapCoordsFull
{
  int32_t full;
  struct LH3DMapCoordsSplit split;
};
static_assert(sizeof(union LH3DMapCoordsFull) == 0x4, "Data type is of wrong size");

struct LH3DMapCoords
{
  union LH3DMapCoordsFull x;  /* 0x0 */
  union LH3DMapCoordsFull z;
  float altitude;
};
static_assert(sizeof(struct LH3DMapCoords) == 0xc, "Data type is of wrong size");

// Non-virtual methods

// win1.41 inlined mac 1006a8c0 LH3DMapCoords::AddToMapX(void) const
void __fastcall AddToMapX__13LH3DMapCoordsFs(struct LH3DMapCoords* this, const void* edx, uint16_t x) asm("?AddToMapX@LH3DMapCoords@@QAEXF@Z");
// win1.41 inlined mac 1006a880 LH3DMapCoords::AddToMapZ(void) const
void __fastcall AddToMapZ__13LH3DMapCoordsFs(struct LH3DMapCoords* this, const void* edx, uint16_t z) asm("?AddToMapZ@LH3DMapCoords@@QAEXF@Z");
// win1.41 inlined mac inlined LH3DMapCoords::CentreOnMap(void)
void __fastcall CentreOnMap__13LH3DMapCoordsFv(struct LH3DMapCoords* this) asm("?CentreOnMap@LH3DMapCoords@@QAEXXZ");
// win1.41 inlined mac inlined LH3DMapCoords::SetFractionX(short)
void __fastcall SetCellX__13LH3DMapCoordsFs(struct LH3DMapCoords* this, const void* edx, uint16_t x) asm("?SetCellX@LH3DMapCoords@@QAEXF@Z");
// win1.41 inlined mac inlined LH3DMapCoords::SetFractionZ(short)
void __fastcall SetCellZ__13LH3DMapCoordsFs(struct LH3DMapCoords* this, const void* edx, uint16_t z) asm("?SetCellZ@LH3DMapCoords@@QAEXF@Z");
// win1.41 inlined mac 10049a90 LH3DMapCoords::MapX(void) const
uint16_t __fastcall MapX__13LH3DMapCoordsCFv(const struct LH3DMapCoords* this) asm("?MapX@LH3DMapCoords@@QBEGXZ");
// win1.41 inlined mac 100499b0 LH3DMapCoords::MapZ(void) const
uint16_t __fastcall MapZ__13LH3DMapCoordsCFv(const struct LH3DMapCoords* this) asm("?MapZ@LH3DMapCoords@@QBEGXZ");
// win1.41 inlined mac 100456f0 LH3DMapCoords::WholeX(void) const
uint32_t __fastcall WholeX__13LH3DMapCoordsCFv(const struct LH3DMapCoords* this) asm("?WholeX@LH3DMapCoords@@QBEIXZ");
// win1.41 inlined mac 10045a60 LH3DMapCoords::WholeZ(void) const
uint32_t __fastcall WholeZ__13LH3DMapCoordsCFv(const struct LH3DMapCoords* this) asm("?WholeZ@LH3DMapCoords@@QBEIXZ");
// win1.41 inlined mac inlined LH3DMapCoords::SetMapX(short) const
void __fastcall SetMapX__13LH3DMapCoordsCFs(struct LH3DMapCoords* this, const void* edx, uint16_t x) asm("?SetMapX@LH3DMapCoords@@QBEXF@Z");
// win1.41 inlined mac inlined LH3DMapCoords::SetMapZ(short) const
void __fastcall SetMapZ__13LH3DMapCoordsCFs(struct LH3DMapCoords* this, const void* edx, uint16_t z) asm("?SetMapZ@LH3DMapCoords@@QBEXF@Z");
// win1.41 inlined mac 1004ae60 LH3DMapCoords::SetWholeX(int)
void __fastcall SetWholeX__13LH3DMapCoordsFl(struct LH3DMapCoords* this, const void* edx, int x) asm("?SetWholeX@LH3DMapCoords@@QAEXJ@Z");
// win1.41 inlined mac 1004aea0 LH3DMapCoords::SetWholeZ(int)
void __fastcall SetWholeZ__13LH3DMapCoordsFl(struct LH3DMapCoords* this, const void* edx, int z) asm("?SetWholeZ@LH3DMapCoords@@QAEXJ@Z");
// win1.41 inlined mac 1004aee0 LH3DMapCoords::SetAltitude(float)
void __fastcall SetAltitude__13LH3DMapCoordsFf(struct LH3DMapCoords* this, const void* edx, float altitude) asm("?SetAltitude@LH3DMapCoords@@QAEXM@Z");
// win1.41 0054b820 mac inlined LH3DMapCoords::SetZero(void)
void __fastcall SetZero__13LH3DMapCoordsFv(struct LH3DMapCoords* this) asm("?SetZero@LH3DMapCoords@@QAEXXZ");

#endif /* BW1_DECOMP_LH3D_MAP_COORDS_INCLUDED_H */
