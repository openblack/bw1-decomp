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
	LH3DTexture*  texture; /* 0x0 */
	LH3DMaterial* material;

	// Static methods

	// BW1W120 inlined BW1M100 100198f0 GLandscape::ConvertLandscapePointToMapCoord(LHPoint const &, MapCoords &)
	static void ConvertLandscapePointToMapCoord(const LHPoint* point, MapCoords* coords);
	// BW1W120 inlined BW1M100 106f5c34 GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(MapCoords const &, LHPoint &)
	static void ConvertAbsoluteMapCoordToLandscapePoint(const MapCoords* coords, LHPoint* point);
	// BW1W120 005e3f60 BW1M100 1001d960 GLandscape::PreDraw(void)
	static uint32_t PreDraw();
	// BW1W120 00613750 BW1M100 10048570 GLandscape::ConvertMapCoordToLandscapePoint(MapCoords const &)
	static LHPoint ConvertMapCoordToLandscapePoint(const MapCoords& param_2);

	// Non-virtual methods

	// BW1W120 005e42e0 BW1M100 1004d770 GLandscape::Draw(void)
	void Draw();
	// BW1W120 005e52e0 BW1M100 10379f50 GLandscape::Open(char *)
	void Open(const char* path);
};

#endif /* BW1_DECOMP_LANDSCAPE_INCLUDED_H */
