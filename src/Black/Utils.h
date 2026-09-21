#ifndef BW1_DECOMP_UTILS_INCLUDED_H
#define BW1_DECOMP_UTILS_INCLUDED_H

#include <stdint.h> /* For uint16_t, uint32_t */

#include <re_common.h> /* For bool32_t */

// Forward Declares

struct JustMapXZ;
struct MapCoords;

struct GUtils
{
	// BW1W120 0074cca0 BW1M119 013d2a10
	static void SetupUtils();
	// BW1W120 0074ccb0 BW1M119 0104bfa0
	static void GetDistance(const MapCoords& param_1, const MapCoords& param_2);
	// BW1W120 0074cd70 BW1M119 0104bf00
	static float GetDistanceInMetres(const MapCoords& param_1, const MapCoords& param_2);
	// BW1W120 0074d200 BW1M119 010516f0
	static uint16_t GetAngleFromDXDZ(long dx, long dz);
	// BW1W120 0074d240 BW1M119 01051760
	static uint16_t GetAngleFromXZ(const MapCoords& param_1, const MapCoords& param_2);
	// BW1W120 0074d270 BW1M119 01013ec0
	static float Get3DAngleFromXZ(const MapCoords& param_1, const MapCoords& param_2);
	// BW1W120 0074d580 BW1M119 01064310
	static MapCoords GetPosFromAngle(float angle, float radius);
	// BW1W120 0074d7e0 BW1M119 0104c490
	static JustMapXZ Spiral(int& param_1, int& param_2);
	// BW1W120 0074d810 BW1M119 01024840
	static void SpiralIncrement(MapCoords& param_1, int& param_2, int& param_3, float param_4);
	// BW1W120 0074dc50 BW1M119 0104f6e0
	static float ConvertGameAngleTo3D(uint32_t angle);
	// BW1W120 0074dcc0 BW1M119 01034b90
	static float ConvertWholeDistanceToMeters(int param_1);
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
	// BW1W120 0074f520 BW1M119 010254b0
	static int GetMapCellSpiralSizeFromRadius(float param_1);
	// BW1W120 0074f540 BW1M119 010027b0
	static int GetIncrementSpiralSizeFromRadius(float param_1, float param_2);
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
};

// BW1W120 0074f620 BW1M119 inlined
float FUN_0074f620(uint32_t param_1);

#endif /* BW1_DECOMP_UTILS_INCLUDED_H */
