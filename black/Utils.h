#ifndef BW1_DECOMP_UTILS_INCLUDED_H
#define BW1_DECOMP_UTILS_INCLUDED_H

#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint16_t, uint32_t */
#include <uchar.h> /* For char16_t */

// Forward Declares

struct JustMapXZ;
struct MapCoords;

// win1.41 00605cd0 mac inlined GUtils::GetDistanceInMetres_2(MapCoords const &, MapCoords const &)
float __cdecl GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2(const struct MapCoords* this, const struct MapCoords* other);
// win1.41 0074ccb0 mac 100495f0 GUtils::GetDistance(MapCoords const &, MapCoords const &)
void __cdecl GetDistance__6GUtilsFRC9MapCoordsRC9MapCoords(struct MapCoords* param_1, struct MapCoords* param_2);
// win1.41 0074cd70 mac 10049550 GUtils::GetDistanceInMetres(MapCoords const &, MapCoords const &)
float __cdecl GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords(struct MapCoords* param_1, struct MapCoords* param_2);
// win1.41 0074d200 mac 1004ed70 GUtils::GetAngleFromDXDZ(long, long)
uint16_t __cdecl GetAngleFromDXDZ__6GUtilsFll(long dx, long dz);
// win1.41 0074d240 mac 1004ede0 GUtils::GetAngleFromXZ(MapCoords const &, MapCoords const &)
uint16_t __cdecl GetAngleFromXZ__6GUtilsFRC9MapCoordsRC9MapCoords(struct MapCoords* param_1, struct MapCoords* param_2);
// win1.41 0074d270 mac 100112f0 GUtils::Get3DAngleFromXZ(MapCoords const &, MapCoords const &)
float __cdecl Get3DAngleFromXZ__6GUtilsFRC9MapCoordsRC9MapCoords(const struct MapCoords* param_1, const struct MapCoords* param_2);
// win1.41 0074d580 mac 10061ba0 GUtils::GetPosFromAngle(float, float)
struct MapCoords* __cdecl GetPosFromAngle__6GUtilsFff(struct MapCoords* coords, float angle, float radius);
// win1.41 0074d7e0 mac 10049ad0 GUtils::Spiral(long &, long &)
const struct JustMapXZ* __cdecl Spiral__6GUtilsFRlRl(int* param_1, int* param_2);
// win1.41 0074d810 mac 10021cd0 GUtils::SpiralIncrement(MapCoords &, long &, long &, float)
void __cdecl SpiralIncrement__6GUtilsFR9MapCoordsRlRlf(struct MapCoords* param_1, int* param_2, int* param_3, float param_4);
// win1.41 0074dc50 mac 1004cd50 GUtils::ConvertGameAngleTo3D(long)
float __cdecl ConvertGameAngleTo3D__6GUtilsFl(uint32_t angle);
// win1.41 0074dcc0 mac 10032220 GUtils::ConvertWholeDistanceToMeters(long)
float __cdecl ConvertWholeDistanceToMeters__6GUtilsFl(int param_1);
// win1.41 0074e3a0 mac 104fa7f0 GUtils::FindNearestDrinkingWater(MapCoords &, MapCoords &, float)
bool __cdecl FindNearestDrinkingWater__6GUtilsFR9MapCoordsR9MapCoordsf(struct MapCoords* param_1, struct MapCoords* param_2, float max_dist);
// win1.41 0074f170 mac 10067300 GUtils::SigmoidThreshold(float, float)
float __cdecl SigmoidThreshold__6GUtilsFff(float param_1, float param_2);
// win1.41 0074f290 mac 100673e0 GUtils::GetDistanceModifier(float float)
float __stdcall GetDistanceModifier__6GUtilsFff(float param_1, float param_2);
// win1.41 0074f520 mac 10022930 GUtils::GetMapCellSpiralSizeFromRadius(float)
int __stdcall GetMapCellSpiralSizeFromRadius__6GUtilsFf(float param_1);
// win1.41 0074f540 mac 100027c0 GUtils::GetIncrementSpiralSizeFromRadius(float, float)
int __stdcall GetIncrementSpiralSizeFromRadius__6GUtilsFff(float param_1, float param_2);
// win1.41 0074f620 mac inlined FUN_0074f620
float __cdecl FUN_0074f620(uint32_t param_1);
// win1.41 008300a0 mac 1000f700 CHAR2WCHAR(char *)
char16_t* __cdecl CHAR2WCHAR__FPc(const char* param_1);

#endif /* BW1_DECOMP_UTILS_INCLUDED_H */
