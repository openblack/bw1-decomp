#ifndef BW1_DECOMP_LH3D_TECH_INCLUDED_H
#define BW1_DECOMP_LH3D_TECH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <math.h>   /* For tan */
#include <stdint.h> /* For uint32_t */

#include "LH3DCamera.h" /* For struct LH3DCamera */
#include "LHCoord.h"    /* For struct LHCoord */
#include "LHPoint.h"    /* For struct Point2D */

// Forward Declares

struct LH3DColor;
struct LH3DMaterial;
class LH3DObject;
struct LHMatrix;
struct LHPoint;
struct LHTimer;

struct InfoTransform
{
	float          NearClip;
	struct LHCoord resolution;
	float          AspectRatioXOverY;
	struct Point2D HalfRes;
	struct Point2D InvHalfRes;
	float          InvHalfTanFovY;
	float          InvHalfTanFovX;
	float          CosHalfFovSqr;
	float          field_0x2c;
	float          CosHalfFov;
	float          field_0x34;
	float          InvAspectSqrHypoInvTimesInvAspect;
	float          InvAspectSqrHypoInv;
};
static_assert(sizeof(InfoTransform) == 0x40, "Data type is of wrong size");

class LH3DTech
{
public:
	static InfoTransform g_info_transform; // 00e839e0
	static LH3DCamera    g_camera;         // 00ea1db8
	static int           g_delta_time;     // 00c38134
	// BW1W120 00c3812c BW1M119 011d1504 (LHCombined Release)
	static float g_meter_width_screen_on_2;
	// BW1W120 00c38130 BW1M119 011d1508 (LHCombined Release)
	static float g_meter_height_screen_on_2;
	// BW1W120 00ea1b78 BW1M119 012d3e80 (LHCombined Release)
	static LHTimer g_timer;
	// BW1W120 00ea9e40 BW1M119 012dc144 (LHCombined Release)
	static LHMatrix g_world_to_clipping;
	// BW1W120 00ea1d28 BW1M119 012dc0b4 (LHCombined Release)
	static LHMatrix g_world_to_camera;
	// BW1W120 00ea9ea0 BW1M119 012dbff0 (LHCombined Release)
	static LHMatrix* g_current_matrix;
	// BW1W120 inlined BW1M119 010e7360
	static float GetValueForZSorter(const LHPoint& point)
	{
		float z = point.z - g_camera.pos.z;
		float y = point.y - g_camera.pos.y;
		float x = point.x - g_camera.pos.x;
		return x * x + y * y + z * z;
	}
	// Original Mac symbol: g_ambient_wind_direction__8LH3DTech.
	// BW1W120 00ea9e70 BW1M119 012d3f90 (LHCombined Release)
	static LHPoint g_ambient_wind_direction;
	// Original Mac symbol: g_game_time_inc__8LH3DTech.
	// BW1W120 00ea9ec0 BW1M119 012d3e68 (LHCombined Release)
	static uint32_t g_game_time_inc;
	// BW1W120 00819030 BW1M119 010bfe40 (LHCombined Release)
	static void UpdateViewPort(long width, long height);
	// BW1W120 00819390 BW1M119 01037930 (LHCombined Release)
	static uint32_t __fastcall ProjectPoint(LHPoint* point, int* x, int* y, float* depth);
	// BW1W120 008190d0 BW1M119 0100c5c0 (LHCombined Release)
	static uint32_t __fastcall ProjectPoint(LHPoint* point, int* x, int* y);
	// BW1W120 008195b0 BW1M119 01011be0 (LHCombined Release)
	static void ChangeFov(float fov);
	// BW1W120 00819690 BW1M119 01011e40 (LHCombined Release)
	static void __fastcall UpdateWorldToCamera(LHMatrix& matrix, LHPoint& position, LHPoint& focus, bool param_4);
	// BW1W120 inlined BW1M119 01095480
	static uint32_t GetDeltaTime();
	// BW1W120 inlined BW1M119 01038930
	static int GetGameTimeInc() { return g_game_time_inc; }
	// BW1W120 inlined BW1M119 01049620
	static float GetNearClipping() { return g_info_transform.NearClip; }
	// BW1W120 inlined BW1M119 inlined
	static void SetNearClipping(float near_clipping)
	{
		g_info_transform.NearClip = near_clipping;
		SetMeterScreen();
	}
	// BW1W120 inlined BW1M119 01009df0 (LHCombined Release)
	static void SetMeterScreen()
	{
		g_meter_width_screen_on_2 = (float)tan(g_camera.fov * 0.5f) * g_info_transform.NearClip;
		g_meter_height_screen_on_2 = g_meter_width_screen_on_2 / g_info_transform.AspectRatioXOverY;
	}
	// BW1W120 0045a7f0 BW1M119 010318a0
	static LHPoint* GetCameraPosition() { return &g_camera.pos; }
	// BW1W120 inlined BW1M119 01025530
	static LHPoint* GetCameraTarget() { return &g_camera.foc; }
	// BW1W120 00819920 BW1M119 01034f90 (LHCombined Release)
	static void UpdateCamera(const LHPoint& position, const LHPoint& focus);
	// BW1W120 00818c60 BW1M119 010bffa0 (LHCombined Release)
	static void RenderInitialization(long width, long height);
	// BW1W120 0081c5c0 BW1M119 010337e0 (LHCombined Release)
	static void __fastcall Draw3DScreenTriangle(long num_points, LHPoint* positions, LH3DColor* colors, float* uvs,
	                                            long num_indices, long* indices, LH3DMaterial* material, int param_8);
	// BW1W120 0081c090 BW1M119 0102ea40 (LHCombined Release)
	static void __fastcall Draw3DWorldTriangle(long num_points, LHPoint* positions, LH3DColor* colors, float* uvs,
	                                           long num_triangles, long* indices, LH3DMaterial* material, int param_8);
	// BW1W120 0081b370 BW1M119 0101b840 (LHCombined Release)
	static void __fastcall Get3DPointFromScreen(const LHCoord& screen, LHPoint& point, float distance);
};

// BW1W120 0081bbd0 BW1M119 010bd5b0 (LHCombined Release)
void __cdecl Report3D__FPCce(const char* fmt, ...);
// BW1W120 0081f1a0 BW1M119 01013fc0 (LHCombined Release)
int IsObjectOnScreen(LH3DObject* object);
// BW1W120 0081f1d0 BW1M119 01005310 (LHCombined Release)
int IsPointOnScreen(LHPoint* point);

#endif /* BW1_DECOMP_LH3D_TECH_INCLUDED_H */
