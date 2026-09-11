#ifndef BW1_DECOMP_LH3D_TECH_INCLUDED_H
#define BW1_DECOMP_LH3D_TECH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHCoord.h" /* For struct LHCoord */
#include "LHPoint.h" /* For struct Point2D */

// Forward Declares

struct LH3DColor;
struct LH3DMaterial;
struct LHMatrix;
struct LHPoint;

class LH3DTech
{
public:
	// BW1W120 00ea9e70. Original Mac symbol: g_ambient_wind_direction__8LH3DTech.
	static LHPoint g_ambient_wind_direction;
	// BW1W120 00ea9ec0. Original Mac symbol: g_game_time_inc__8LH3DTech.
	static uint32_t g_game_time_inc;
	// BW1W120 00819030 BW1M100 100c0920 LH3DTech::UpdateViewPort(long, long)
	static void UpdateViewPort(long width, long height);
	// BW1W120 00819390 BW1M100 10be2a38 LH3DTech::ProjectPoint(LHPoint *, int *, int *, float *)
	static uint32_t ProjectPoint(LHPoint* point, int* x, int* y, float* depth);
	// BW1W120 008195b0 BW1M100 10011b20 LH3DTech::ChangeFov(float)
	static void ChangeFov(float fov);
	// BW1W120 00819690 BW1M100 10011d80 LH3DTech::UpdateWorldToCamera(LHMatrix &, LHPoint &, LHPoint &, bool)
	static void UpdateWorldToCamera(LHMatrix& matrix, LHPoint& position, LHPoint& focus, bool param_4);
	// BW1W120 inlined BW1M100 10093230 LH3DTech::GetDeltaTime(void)
	static uint32_t GetDeltaTime();
	// BW1W120 00819920 BW1M100 10034c10 LH3DTech::UpdateCamera(LHPoint const &, LHPoint const &)
	static void UpdateCamera(const LHPoint& position, const LHPoint& focus);
	// BW1W120 00818c60 BW1M100 100c0a80 LH3DTech::RenderInitialization(long, long)
	static void RenderInitialization(long width, long height);
	// BW1W120 0081c5c0 BW1M100 100337d0 LH3DTech::Draw3DScreenTriangle(long, LHPoint *, LH3DColor *, float *, long, long *, LH3DMaterial *, int)
	static void Draw3DScreenTriangle(long num_points, LHPoint* positions, LH3DColor* colors, float* uvs,
	                                 long num_indices, long* indices, LH3DMaterial* material, int param_8);
};

struct InfoTransform
{
	struct LHCoord resolution; /* 0x0 */
	float          AspectRatioXOverY;
	struct Point2D HalfRes;
	struct Point2D InvHalfRes; /* 0x14 */
	float          InvHalfTanFovY;
	float          InvHalfTanFovX; /* 0x20 */
	float          CosHalfFovSqr;
	float          field_0x28;
	float          CosHalfFov;
	float          field_0x30;
	float          InvAspectSqrHypoInvTimesInvAspect;
	float          InvAspectSqrHypoInv;
};
static_assert(sizeof(InfoTransform) == 0x3c, "Data type is of wrong size");

// BW1W120 0081bbd0 BW1M100 100be300 Report3D(char const *,...)
void __cdecl Report3D__FPCce(const char* fmt, ...);

#endif /* BW1_DECOMP_LH3D_TECH_INCLUDED_H */
