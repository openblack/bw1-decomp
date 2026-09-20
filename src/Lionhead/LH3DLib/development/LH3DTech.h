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
struct InfoTransform;
struct LHTimer;

class LH3DTech
{
public:
	// Original Mac imported names; storage remains extracted.
	static InfoTransform g_info_transform; // 00e839e4
	static LHPoint       g_camera;         // 00ea1db8
	static uint32_t      g_delta_time;     // 00c38134
	// BW1W120 00ea1b78. Original Mac import g_timer__8LH3DTech; no timer storage here.
	static LHTimer g_timer;
	// BW1W120 00ea9e40. Projection-scaled world-to-camera matrix, including the depth row.
	static LHMatrix g_world_to_clipping;
	// BW1W120 inlined BW1M100 100c7e50 LH3DTech::GetValueForZSorter(const LHPoint&)
	static float GetValueForZSorter(const LHPoint& point)
	{
		float x = point.x - g_camera.x;
		float y = point.y - g_camera.y;
		float z = point.z - g_camera.z;
		return x * x + y * y + z * z;
	}
	// BW1W120 00ea9e70. Original Mac symbol: g_ambient_wind_direction__8LH3DTech.
	static LHPoint g_ambient_wind_direction;
	// BW1W120 00ea9ec0. Original Mac symbol: g_game_time_inc__8LH3DTech.
	static uint32_t g_game_time_inc;
	// BW1W120 00819030 BW1M100 100c0920 LH3DTech::UpdateViewPort(long, long)
	static void UpdateViewPort(long width, long height);
	// BW1W120 00819390 BW1M100 100376f0 LH3DTech::ProjectPoint(LHPoint*, int*, int*, float*)
	static uint32_t ProjectPoint(LHPoint* point, int* x, int* y, float* depth);
	// BW1W120 008195b0 BW1M100 10011b20 LH3DTech::ChangeFov(float)
	static void ChangeFov(float fov);
	// BW1W120 00819690 BW1M100 10011d80 LH3DTech::UpdateWorldToCamera(LHMatrix&, LHPoint&, LHPoint&, bool)
	static void UpdateWorldToCamera(LHMatrix& matrix, LHPoint& position, LHPoint& focus, bool param_4);
	// BW1W120 inlined BW1M100 10093230 LH3DTech::GetDeltaTime(void)
	static uint32_t GetDeltaTime();
	// BW1W120 00819920 BW1M100 10034c10 LH3DTech::UpdateCamera(const LHPoint&, const LHPoint&)
	static void UpdateCamera(const LHPoint& position, const LHPoint& focus);
	// BW1W120 00818c60 BW1M100 100c0a80 LH3DTech::RenderInitialization(long, long)
	static void RenderInitialization(long width, long height);
	// BW1W120 0081c5c0 BW1M100 100337d0 LH3DTech::Draw3DScreenTriangle(long, LHPoint*, LH3DColor*, float*, long, long*, LH3DMaterial*, int)
	static void __fastcall Draw3DScreenTriangle(long num_points, LHPoint* positions, LH3DColor* colors, float* uvs,
	                                            long num_indices, long* indices, LH3DMaterial* material, int param_8);
	// BW1W120 0081c090 BW1M100 1002e9a0 LH3DTech::Draw3DWorldTriangle(long, LHPoint*, LH3DColor*, float*, long, long*, LH3DMaterial*, int)
	static void __fastcall Draw3DWorldTriangle(long num_points, LHPoint* positions, LH3DColor* colors, float* uvs,
	                                           long num_triangles, long* indices, LH3DMaterial* material, int param_8);
	// BW1W120 0081b370 BW1M100 1001b740 LH3DTech::Get3DPointFromScreen(const LHCoord&, LHPoint&, float)
	static void __fastcall Get3DPointFromScreen(const LHCoord& screen, LHPoint& point, float distance);
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

// BW1W120 0081bbd0 BW1M100 100be300 Report3D(const char*, ...)
void __cdecl Report3D__FPCce(const char* fmt, ...);

#endif /* BW1_DECOMP_LH3D_TECH_INCLUDED_H */
