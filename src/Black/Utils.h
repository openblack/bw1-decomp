#ifndef BW1_DECOMP_UTILS_INCLUDED_H
#define BW1_DECOMP_UTILS_INCLUDED_H

#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/Enum.h> /* For enum TRIBE_TYPE */
#include <re_common.h>   /* For bool32_t */

// Forward Declares

class Abode;
struct JustMapXZ;
struct LH3DColor;
struct LHCoord;
struct LHPoint;
struct MapCoords;

// TODO: Owner unknown (no Mac symbol). Kept out of GUtils: a static data member here would
// shift the compiler-generated $S/$E numbering in every consumer (breaks Object.cpp).
// BW1W120 00da59fc
extern JustMapXZ MapXZDirections[4];

// TODO: original header unknown; Mac keeps the instantiation POWER<double> (BW1M119 0149f1d0).
// BW1W120 inlined BW1M119 01069710
template <class T> inline T POWER(T value, unsigned long power)
{
	T result = value;
	while (--power)
	{
		result *= value;
	}
	return result;
}

struct GUtils
{
	struct Circle
	{
		// BW1W120 0074eb40 BW1M119 015521d0
		static void DrawCircleOnMap(const MapCoords& centre, float radius, const LH3DColor& color, float param_4,
		                            int param_5);
	};

	// BW1W120 0074cca0 BW1M119 013d2a10
	static void SetupUtils();
	// BW1W120 0074ccb0 BW1M119 0104bfa0
	static void GetDistance(const MapCoords& param_1, const MapCoords& param_2);
	// BW1W120 0074cd70 BW1M119 0104bf00
	static float GetDistanceInMetres(const MapCoords& param_1, const MapCoords& param_2);
	// BW1W120 0074cde0 BW1M119 01036610
	static float GetDistance(const LHPoint& a, const LHPoint& b);
	// BW1W120 0074caf0 BW1M119 01076080
	static void __fastcall SetPointFromScreenPointAndDistance(LHCoord* coord, float distance, LHPoint* point);
	// BW1W120 0074cd50 BW1M119 null
	static float GetDistanceInMetres_0074cd50(const MapCoords& param_1, const MapCoords& param_2);
	// BW1W120 0074d200 BW1M119 010516f0
	static long GetAngleFromDXDZ(long dx, long dz);
	// BW1W120 0074d240 BW1M119 01051760
	static long GetAngleFromXZ(const MapCoords& param_1, const MapCoords& param_2);
	// BW1W120 0074d270 BW1M119 01013ec0
	static float Get3DAngleFromXZ(const MapCoords& param_1, const MapCoords& param_2);
	// BW1W120 0074d580 BW1M119 01064310
	static MapCoords GetPosFromAngle(float angle, float radius);
	// BW1W120 0074d7e0 BW1M119 0104c490
	static const JustMapXZ* Spiral(long& param_1, long& param_2);
	// BW1W120 0074d810 BW1M119 01024840
	static void SpiralIncrement(MapCoords& param_1, long& param_2, long& param_3, float param_4);
	// BW1W120 0074dc50 BW1M119 0104f6e0
	static float ConvertGameAngleTo3D(long angle);
	// BW1W120 0074dc80 BW1M119 0101b2e0
	static int ConvertDistance3DToGame(float distance);
	// BW1W120 0074dcc0 BW1M119 01034b90
	static float ConvertWholeDistanceToMeters(int param_1);
	// BW1W120 0074dce0 BW1M119 01590e30
	static int ConvertMetersToWholeDistance(float meters);
	// BW1W120 0074dd70 BW1M119 011a8630
	static Abode* FindClosestAbode(const MapCoords& pos, TRIBE_TYPE tribe_type, int param_3, int param_4, int param_5);
	// BW1W120 0074e2b0 BW1M119 013e5570
	static float ConvertGameAngleToScawenAngle(uint16_t angle);
	// BW1W120 0074e3a0 BW1M119 01180280
	static bool32_t FindNearestDrinkingWater(MapCoords& param_1, MapCoords& param_2, float max_dist);
	// BW1W120 0074f170 BW1M119 01069aa0
	static float SigmoidThreshold(float param_1, float param_2);
	// BW1W120 0074f210 BW1M119 01506a90
	static char* GetFilenameFromPath(char* path);
	// BW1W120 0074f250 BW1M119 012f8540
	static int GetPathFromPath(char* path, char* out);
	// BW1W120 0074f290 BW1M119 01069b80
	static float GetDistanceModifier(float param_1, float param_2);
	// BW1W120 0074f490 BW1M119 015079b0
	static uint32_t GetNumVillagersNear(const MapCoords& pos, unsigned long cells);
	// BW1W120 0074f520 BW1M119 010254b0
	static int GetMapCellSpiralSizeFromRadius(float param_1);
	// BW1W120 0074f540 BW1M119 010027b0
	static int GetIncrementSpiralSizeFromRadius(float param_1, float param_2);
	// BW1W120 0074d360 BW1M119 0151a5d0
	static float GetXByAngle(unsigned short angle, float distance);
	// BW1W120 0074d380 BW1M119 015962c0
	static float GetZByAngle(unsigned short angle, float distance);
	// BW1W120 0074d420 BW1M119 011685f0
	static int GetXByAngleMetersDistance(unsigned short angle, float distance);
	// BW1W120 0074d450 BW1M119 0116fc20
	static int GetZByAngleMetersDistance(unsigned short angle, float distance);
	// BW1W120 0074ce10 BW1M119 012f8450
	static int FastDistance(const MapCoords& param_1, const MapCoords& param_2);
	// BW1W120 0074ecc0 BW1M119 010f1390
	static void GetMidPoint(MapCoords& param_1, MapCoords& param_2, float param_3);
	// BW1W120 0074dc30 BW1M119 015a09e0
	static uint32_t ConvertAngle3DToGame(float param_1);
	// BW1W120 0074cf30 BW1M119 013d2e80
	static long VeryFastDistance(long x1, long z1, long x2, long z2);
};

// BW1W120 0074f620 BW1M119 inlined
float FUN_0074f620(uint32_t param_1);

#endif /* BW1_DECOMP_UTILS_INCLUDED_H */
