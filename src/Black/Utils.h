#ifndef BW1_DECOMP_UTILS_INCLUDED_H
#define BW1_DECOMP_UTILS_INCLUDED_H

#include <stdint.h> /* For uint16_t, uint32_t */
#include <uchar.h> /* For char16_t */

// Forward Declares

struct GUtils;
struct JustMapXZ;
struct MapCoords;

// BW1W120 00605cd0 BW1M100 inlined GUtils::GetDistanceInMetres_2(MapCoords const &, MapCoords const &)
float __cdecl GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords_2(const struct MapCoords* this, const struct MapCoords* other);
// BW1W120 0074ccb0 BW1M100 100495f0 GUtils::GetDistance(MapCoords const &, MapCoords const &)
void __cdecl GetDistance__6GUtilsFRC9MapCoordsRC9MapCoords(struct MapCoords* param_1, struct MapCoords* param_2) asm("?GetDistance@GUtils@@SAXABUMapCoords@@0@Z");
// BW1W120 0074cd70 BW1M100 10049550 GUtils::GetDistanceInMetres(MapCoords const &, MapCoords const &)
float __cdecl GetDistanceInMetres__6GUtilsFRC9MapCoordsRC9MapCoords(struct MapCoords* param_1, struct MapCoords* param_2) asm("?GetDistanceInMetres@GUtils@@SAMABUMapCoords@@0@Z");
// BW1W120 0074d200 BW1M100 1004ed70 GUtils::GetAngleFromDXDZ(long, long)
uint16_t __cdecl GetAngleFromDXDZ__6GUtilsFll(long dx, long dz) asm("?GetAngleFromDXDZ@GUtils@@SAGJJ@Z");
// BW1W120 0074d240 BW1M100 1004ede0 GUtils::GetAngleFromXZ(MapCoords const &, MapCoords const &)
uint16_t __cdecl GetAngleFromXZ__6GUtilsFRC9MapCoordsRC9MapCoords(struct MapCoords* param_1, struct MapCoords* param_2) asm("?GetAngleFromXZ@GUtils@@SAGABUMapCoords@@0@Z");
// BW1W120 0074d270 BW1M100 100112f0 GUtils::Get3DAngleFromXZ(MapCoords const &, MapCoords const &)
float __cdecl Get3DAngleFromXZ__6GUtilsFRC9MapCoordsRC9MapCoords(const struct MapCoords* param_1, const struct MapCoords* param_2) asm("?Get3DAngleFromXZ@GUtils@@SAMABUMapCoords@@0@Z");
// BW1W120 0074d580 BW1M100 10061ba0 GUtils::GetPosFromAngle(float, float)
struct MapCoords* __cdecl GetPosFromAngle__6GUtilsFff(struct MapCoords* coords, float angle, float radius) asm("?GetPosFromAngle@GUtils@@SAPAUMapCoords@@MM@Z");
// BW1W120 0074d7e0 BW1M100 10049ad0 GUtils::Spiral(long &, long &)
const struct JustMapXZ* __cdecl Spiral__6GUtilsFRlRl(int* param_1, int* param_2) asm("?Spiral@GUtils@@SAPBUJustMapXZ@@AAJ0@Z");
// BW1W120 0074d810 BW1M100 10021cd0 GUtils::SpiralIncrement(MapCoords &, long &, long &, float)
void __cdecl SpiralIncrement__6GUtilsFR9MapCoordsRlRlf(struct MapCoords* param_1, int* param_2, int* param_3, float param_4) asm("?SpiralIncrement@GUtils@@SAXAAUMapCoords@@AAJ1M@Z");
// BW1W120 0074dc50 BW1M100 1004cd50 GUtils::ConvertGameAngleTo3D(long)
float __cdecl ConvertGameAngleTo3D__6GUtilsFl(uint32_t angle) asm("?ConvertGameAngleTo3D@GUtils@@SAMJ@Z");
// BW1W120 0074dcc0 BW1M100 10032220 GUtils::ConvertWholeDistanceToMeters(long)
float __cdecl ConvertWholeDistanceToMeters__6GUtilsFl(int param_1) asm("?ConvertWholeDistanceToMeters@GUtils@@SAMJ@Z");
// BW1W120 0074e3a0 BW1M100 104fa7f0 GUtils::FindNearestDrinkingWater(MapCoords &, MapCoords &, float)
bool __cdecl FindNearestDrinkingWater__6GUtilsFR9MapCoordsR9MapCoordsf(struct MapCoords* param_1, struct MapCoords* param_2, float max_dist) asm("?FindNearestDrinkingWater@GUtils@@SA_NAAUMapCoords@@0M@Z");
// BW1W120 0074f170 BW1M100 10067300 GUtils::SigmoidThreshold(float, float)
float __cdecl SigmoidThreshold__6GUtilsFff(float param_1, float param_2) asm("?SigmoidThreshold@GUtils@@SAMMM@Z");
// BW1W120 0074f290 BW1M100 100673e0 GUtils::GetDistanceModifier(float float)
float __stdcall GetDistanceModifier__6GUtilsFff(float param_1, float param_2);
// BW1W120 0074f520 BW1M100 10022930 GUtils::GetMapCellSpiralSizeFromRadius(float)
int __stdcall GetMapCellSpiralSizeFromRadius__6GUtilsFf(float param_1);
// BW1W120 0074f540 BW1M100 100027c0 GUtils::GetIncrementSpiralSizeFromRadius(float, float)
int __stdcall GetIncrementSpiralSizeFromRadius__6GUtilsFff(float param_1, float param_2);
// BW1W120 0074d420 BW1M100 1010b7d0 GUtils::GetXByAngleMetersDistance(unsigned short, float)
void __cdecl GetXByAngleMetersDistance__6GUtilsFUsf(struct GUtils* this, unsigned short param_1, float param_2) asm("?GetXByAngleMetersDistance@GUtils@@SAXGM@Z");
// BW1W120 0074ce10 BW1M100 103cac30 GUtils::FastDistance(MapCoords const &, MapCoords const &)
int __cdecl FastDistance__6GUtilsFRC9MapCoordsRC9MapCoords(struct GUtils* this, const struct MapCoords* param_1, const struct MapCoords* param_2) asm("?FastDistance@GUtils@@SAHABUMapCoords@@0@Z");
// BW1W120 0074ecc0 BW1M100 10109320 GUtils::GetMidPoint(MapCoords &, MapCoords &, float)
void __cdecl GetMidPoint__6GUtilsFR9MapCoordsR9MapCoordsf(struct GUtils* this, struct MapCoords* param_1, struct MapCoords* param_2, float param_3) asm("?GetMidPoint@GUtils@@SAXAAUMapCoords@@0M@Z");
// BW1W120 0074dc30 BW1M100 1057b5b0 GUtils::ConvertAngle3DToGame(float)
uint32_t __cdecl ConvertAngle3DToGame__6GUtilsFf(struct GUtils* this, float param_1) asm("?ConvertAngle3DToGame@GUtils@@SAIM@Z");
// BW1W120 0074f620 BW1M100 inlined FUN_0074f620
float __cdecl FUN_0074f620(uint32_t param_1);
// BW1W120 008300a0 BW1M100 1000f700 CHAR2WCHAR(char *)
char16_t* __cdecl CHAR2WCHAR__FPc(const char* param_1);

#endif /* BW1_DECOMP_UTILS_INCLUDED_H */
