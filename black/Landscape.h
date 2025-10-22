#ifndef BW1_DECOMP_LANDSCAPE_INCLUDED_H
#define BW1_DECOMP_LANDSCAPE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

struct LH3DMaterial;
struct LH3DTexture;
struct LHPoint;
struct MapCoords;

struct GLandscape
{
  struct LH3DTexture* texture;  /* 0x0 */
  struct LH3DMaterial* material;
};
static_assert(sizeof(struct GLandscape) == 0x8, "Data type is of wrong size");

// Static methods

// win1.41 inlined mac 100198f0 GLandscape::ConvertLandscapePointToMapCoord(LHPoint const &, MapCoords &)
void __cdecl ConvertLandscapePointToMapCoord__10GLandscapeFRC7LHPointR9MapCoords(const struct LHPoint* point, struct MapCoords* coords) asm("?ConvertLandscapePointToMapCoord@GLandscape@@SAXABULHPoint@@AAUMapCoords@@@Z");
// win1.41 inlined mac 106f5c34 GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(MapCoords const &, LHPoint &)
void __cdecl ConvertAbsoluteMapCoordToLandscapePoint__10GLandscapeFRC9MapCoordsR7LHPoint(const struct MapCoords* coords, struct LHPoint* point) asm("?ConvertAbsoluteMapCoordToLandscapePoint@GLandscape@@SAXABUMapCoords@@AAULHPoint@@@Z");
// win1.41 005e3f60 mac 1001d960 GLandscape::PreDraw(void)
uint32_t __cdecl PreDraw__10GLandscapeFv(void) asm("?PreDraw@GLandscape@@SAIXZ");
// win1.41 00613750 mac 10048570 GLandscape::ConvertMapCoordToLandscapePoint(MapCoords const &)
struct LHPoint* __cdecl ConvertMapCoordToLandscapePoint__10GLandscapeFRC9MapCoordsR7LHPoint(const struct MapCoords* param_2, struct LHPoint* param_1) asm("?ConvertMapCoordToLandscapePoint@GLandscape@@SAPAULHPoint@@ABUMapCoords@@AAU2@@Z");

// Non-virtual methods

// win1.41 005e42e0 mac 1004d770 GLandscape::Draw(void)
void __fastcall Draw__10GLandscapeFv(struct GLandscape* this) asm("?Draw@GLandscape@@QAEIXZ");
// win1.41 005e52e0 mac 10379f50 GLandscape::Open(char *)
void __fastcall Open__10GLandscapeFPc(struct GLandscape* this, const void* edx, const char* path) asm("?Open@GLandscape@@QAEXPAD@Z");

#endif /* BW1_DECOMP_LANDSCAPE_INCLUDED_H */
