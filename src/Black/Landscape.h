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
    LH3DTexture* texture; /* 0x0 */
    LH3DMaterial* material;

    // Static methods

    // win1.41 inlined mac 100198f0 GLandscape::ConvertLandscapePointToMapCoord(LHPoint const &, MapCoords &)
    static void ConvertLandscapePointToMapCoord(const LHPoint* point, MapCoords* coords);
    // win1.41 inlined mac 106f5c34 GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(MapCoords const &, LHPoint &)
    static void ConvertAbsoluteMapCoordToLandscapePoint(const MapCoords* coords, LHPoint* point);
    // win1.41 005e3f60 mac 1001d960 GLandscape::PreDraw(void)
    static uint32_t PreDraw();
    // win1.41 00613750 mac 10048570 GLandscape::ConvertMapCoordToLandscapePoint(MapCoords const &)
    static LHPoint* ConvertMapCoordToLandscapePoint(const MapCoords* param_2, LHPoint* param_1);

    // Non-virtual methods

    // win1.41 005e42e0 mac 1004d770 GLandscape::Draw(void)
    void Draw();
    // win1.41 005e52e0 mac 10379f50 GLandscape::Open(char *)
    void Open(const char* path);
};

#endif /* BW1_DECOMP_LANDSCAPE_INCLUDED_H */
