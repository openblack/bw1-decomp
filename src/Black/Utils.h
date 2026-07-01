#ifndef BW1_DECOMP_UTILS_INCLUDED_H
#define BW1_DECOMP_UTILS_INCLUDED_H

#include <stdint.h> /* For uint16_t, uint32_t */
#include <uchar.h> /* For char16_t */

// Forward Declares

struct JustMapXZ;
struct MapCoords;

struct GUtils
{
    // BW1W120 0074ccb0 BW1M100 100495f0 GUtils::GetDistance(MapCoords const &, MapCoords const &)
    static void GetDistance(const MapCoords& param_1, const MapCoords& param_2);
    // BW1W120 0074cd70 BW1M100 10049550 GUtils::GetDistanceInMetres(MapCoords const &, MapCoords const &)
    static float GetDistanceInMetres(const MapCoords& param_1, const MapCoords& param_2);
    // BW1W120 0074d200 BW1M100 1004ed70 GUtils::GetAngleFromDXDZ(long, long)
    static uint16_t GetAngleFromDXDZ(long dx, long dz);
    // BW1W120 0074d240 BW1M100 1004ede0 GUtils::GetAngleFromXZ(MapCoords const &, MapCoords const &)
    static uint16_t GetAngleFromXZ(const MapCoords& param_1, const MapCoords& param_2);
    // BW1W120 0074d270 BW1M100 100112f0 GUtils::Get3DAngleFromXZ(MapCoords const &, MapCoords const &)
    static float Get3DAngleFromXZ(const MapCoords& param_1, const MapCoords& param_2);
    // BW1W120 0074d580 BW1M100 10061ba0 GUtils::GetPosFromAngle(float, float)
    static MapCoords GetPosFromAngle(float angle, float radius);
    // BW1W120 0074d7e0 BW1M100 10049ad0 GUtils::Spiral(long &, long &)
    static JustMapXZ Spiral(int& param_1, int& param_2);
    // BW1W120 0074d810 BW1M100 10021cd0 GUtils::SpiralIncrement(MapCoords &, long &, long &, float)
    static void SpiralIncrement(MapCoords& param_1, int& param_2, int& param_3, float param_4);
    // BW1W120 0074dc50 BW1M100 1004cd50 GUtils::ConvertGameAngleTo3D(long)
    static float ConvertGameAngleTo3D(uint32_t angle);
    // BW1W120 0074dcc0 BW1M100 10032220 GUtils::ConvertWholeDistanceToMeters(long)
    static float ConvertWholeDistanceToMeters(int param_1);
    // BW1W120 0074e3a0 BW1M100 104fa7f0 GUtils::FindNearestDrinkingWater(MapCoords &, MapCoords &, float)
    static bool FindNearestDrinkingWater(MapCoords& param_1, MapCoords& param_2, float max_dist);
    // BW1W120 0074f170 BW1M100 10067300 GUtils::SigmoidThreshold(float, float)
    static float SigmoidThreshold(float param_1, float param_2);
    // BW1W120 0074f290 BW1M100 100673e0 GUtils::GetDistanceModifier(float float)
    static float GetDistanceModifier(float param_1, float param_2);
    // BW1W120 0074f520 BW1M100 10022930 GUtils::GetMapCellSpiralSizeFromRadius(float)
    static int GetMapCellSpiralSizeFromRadius(float param_1);
    // BW1W120 0074f540 BW1M100 100027c0 GUtils::GetIncrementSpiralSizeFromRadius(float, float)
    static int GetIncrementSpiralSizeFromRadius(float param_1, float param_2);
    // BW1W120 0074d420 BW1M100 1010b7d0 GUtils::GetXByAngleMetersDistance(unsigned short, float)
    static void GetXByAngleMetersDistance(unsigned short param_1, float param_2);
    // BW1W120 0074ce10 BW1M100 103cac30 GUtils::FastDistance(MapCoords const &, MapCoords const &)
    static int FastDistance(const MapCoords& param_1, const MapCoords& param_2);
    // BW1W120 0074ecc0 BW1M100 10109320 GUtils::GetMidPoint(MapCoords &, MapCoords &, float)
    static void GetMidPoint(MapCoords& param_1, MapCoords& param_2, float param_3);
    // BW1W120 0074dc30 BW1M100 1057b5b0 GUtils::ConvertAngle3DToGame(float)
    static uint32_t ConvertAngle3DToGame(float param_1);
};

// BW1W120 0074f620 BW1M100 inlined FUN_0074f620
float FUN_0074f620(uint32_t param_1);
// BW1W120 008300a0 BW1M100 1000f700 CHAR2WCHAR(char *)
char16_t* __cdecl CHAR2WCHAR__FPc(const char* param_1);

#endif /* BW1_DECOMP_UTILS_INCLUDED_H */
