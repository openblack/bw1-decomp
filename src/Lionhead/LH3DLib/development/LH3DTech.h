#ifndef BW1_DECOMP_LH3D_TECH_INCLUDED_H
#define BW1_DECOMP_LH3D_TECH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <math.h>   /* For tan */
#include <stdint.h> /* For uint32_t */

#include "LH3DCamera.h" /* For struct LH3DCamera */
#include "LH3DVertex.h" /* For struct Vertex3D, Vertex3DMT */
#include "LHCoord.h"    /* For struct LHCoord */
#include "LHPoint.h"    /* For struct Point2D */

// Forward Declares

struct LH3DColor;
struct LH3DMaterial;
struct LH3DTexture;
class LH3DObject;
struct LHMatrix;
struct LHPoint;
struct LHTimer;

#define LH3D_MAX_POINTS 0x2000

enum LH3D_PROJECT_RESULT
{
	LH3D_PROJECT_BEHIND_CAMERA = 0,
	LH3D_PROJECT_OFF_SCREEN = 1,
	LH3D_PROJECT_ON_SCREEN = 2,
};

#ifdef VERSION_BW1W100
struct InfoTransform
{
	float NearClip;
	struct
	{
		int x, y;
	} resolution;
	float AspectRatioXOverY;
	struct
	{
		float x, y;
	} HalfRes;
	struct
	{
		float x, y;
	} InvHalfRes;
	float InvHalfTanFovY;
	float InvHalfTanFovX;
	// The directions of the right and top edges of the view frustum, in camera space.
	struct
	{
		float x, y, z;
	} FrustumEdgeX, FrustumEdgeY; /* 0x28 */
};
#else
struct InfoTransform
{
	float          NearClip;
	struct LHCoord resolution;
	float          AspectRatioXOverY;
	struct Point2D HalfRes;
	struct Point2D InvHalfRes;
	float          InvHalfTanFovY;
	float          InvHalfTanFovX;
	// The directions of the right and top edges of the view frustum, in camera space.
	LHPoint FrustumEdgeX; /* 0x28 */
	LHPoint FrustumEdgeY; /* 0x34 */
};
#endif
static_assert(sizeof(InfoTransform) == 0x40, "Data type is of wrong size");

class LH3DTech
{
public:
	// One bit per frustum plane in the cached clip flags. ClipTriangle clips against the plane it is given and
	// carries on with the next ones.
	enum ClipCode
	{
		CLIP_CODE_NONE = 0x0,
		CLIP_CODE_BOTTOM = 0x2,
		CLIP_CODE_TOP = 0x4,
		CLIP_CODE_LEFT = 0x8,
		CLIP_CODE_RIGHT = 0x10,
		CLIP_CODE_NEAR = 0x20,
		CLIP_CODE_FRUSTUM = 0x3f,
		CLIP_CODE_PLANE = 0x800,
	};

	// The quarter of the ground plane the camera looks into, from the camera to its focus.
	enum VIEW_CONFIGURATION
	{
		VIEW_CONFIGURATION_PLUS_X_PLUS_Z = 0,
		VIEW_CONFIGURATION_MINUS_X_PLUS_Z = 1,
		VIEW_CONFIGURATION_MINUS_X_MINUS_Z = 2,
		VIEW_CONFIGURATION_PLUS_X_MINUS_Z = 3,
	};

	// BW1W120 00e839e0 BW1M119 013241a8 (LHCombined Release)
	static InfoTransform g_info_transform;
	// BW1W120 00ea1db8 BW1M119 012dbfc8 (LHCombined Release)
	static LH3DCamera g_camera;
	// BW1W120 00c3812c BW1M119 011d1504 (LHCombined Release)
	static float g_meter_width_screen_on_2;
	// BW1W120 00c38130 BW1M119 011d1508 (LHCombined Release)
	static float g_meter_height_screen_on_2;
	// BW1W120 00c38134 BW1M119 011d150c (LHCombined Release)
	static int g_delta_time;
	// BW1W120 00c38138 BW1M119 011d1510 (LHCombined Release)
	static bool32_t g_b_use_cull_mode;
	// BW1W120 00c3813c BW1M119 011d1514 (LHCombined Release)
	static float g_level_of_detail;
	// BW1W120 00ea1b78 BW1M119 012d3e80 (LHCombined Release)
	static LHTimer g_timer;
	// BW1W120 00ea9e40 BW1M119 012dc144 (LHCombined Release)
	static LHMatrix g_world_to_clipping;
	// BW1W120 00ea1d58 BW1M119 012dc114 (LHCombined Release)
	static LHMatrix g_copy_of_world_to_clipping;
	// BW1W120 00ea9ea0 BW1M119 012dbff0 (LHCombined Release)
	static LHMatrix* g_current_matrix;
	// BW1W120 00ea1d28 BW1M119 012dc0b4 (LHCombined Release)
	static LHMatrix g_world_to_camera;
	// BW1W120 00ea1cf8 BW1M119 012dc084 (LHCombined Release)
	static LHMatrix g_camera_to_world;
	// BW1W120 00ea9de0 BW1M119 012dc0e4 (LHCombined Release)
	static LHMatrix g_clipping_to_world;
	// BW1W120 00ea1cc8 BW1M119 012dc024 (LHCombined Release)
	static LHMatrix g_world_to_local;
	// BW1W120 00ea1c98 BW1M119 012dbff4 (LHCombined Release)
	static LHMatrix g_mist;
	// BW1W120 00ea9e90 BW1M119 012d3fa8 (LHCombined Release)
	static LHPoint g_sun_light;
	// BW1W120 inlined BW1M119 010e7360
	static float GetValueForZSorter(const LHPoint& point)
	{
		return (point.x - g_camera.pos.x) * (point.x - g_camera.pos.x) +
		       (point.y - g_camera.pos.y) * (point.y - g_camera.pos.y) +
		       (point.z - g_camera.pos.z) * (point.z - g_camera.pos.z);
	}
	// BW1W120 00ea9e70 BW1M119 012d3f90 (LHCombined Release)
	static LHPoint g_ambient_wind_direction;
	// BW1W120 00ea9ec0 BW1M119 012d3e68 (LHCombined Release)
	static uint32_t g_game_time_inc;
	// BW1W120 00ea9ebc BW1M119 012d3e6c (LHCombined Release)
	static int g_view_configuration;
	// BW1W120 00ea9eb0 BW1M119 012d3e78 (LHCombined Release)
	static int g_current_time;
	// BW1W120 00ea9eac BW1M119 012d3e7c (LHCombined Release)
	static int g_previous_time;
	// BW1W120 00e3b5e0 BW1M119 012dc1a8 (LHCombined Release)
	static unsigned long g_cache_flags[LH3D_MAX_POINTS];
	// BW1W120 00e437e0 BW1M119 012e41a8 (LHCombined Release)
	static Vertex3D g_cache_t_points[LH3D_MAX_POINTS];
	// BW1W120 00c2ab00 BW1M119 null
	static float g_max_screen[2];
	// BW1W120 00ea9eb4 BW1M119 012d3e74 (LHCombined Release)
	static bool32_t g_b_P3;
	// BW1W120 00ea9eb8 BW1M119 012d3e70 (LHCombined Release)
	static bool32_t g_clip_with_double_sided;
	// BW1W120 00ea9e10 BW1M119 012dc054 (LHCombined Release)
	static LHMatrix g_local_to_clipping;
	// BW1W120 00ea9e80 BW1M119 012d3f9c (LHCombined Release)
	static LHPoint g_sun_light_clipping;
	// BW1W120 00ea5de0 BW1M119 012d7fbc (LHCombined Release)
	static uint16_t g_list_indices[LH3D_MAX_POINTS];
	// BW1W120 00ea1de0 BW1M119 012d3fbc (LHCombined Release)
	static uint16_t g_list_indices_2[LH3D_MAX_POINTS];
	// BW1W120 00ea9ea4 BW1M119 012d3fb8 (LHCombined Release)
	static long g_index_count;
	// BW1W120 00ea9ea8 BW1M119 012d3fb4 (LHCombined Release)
	static uint16_t g_points_count;

	// BW1W120 00818c60 BW1M119 010bffa0 (LHCombined Release)
	static void __fastcall RenderInitialization(long width, long height);
	// BW1W120 00819030 BW1M119 010bfe40 (LHCombined Release)
	static void __fastcall UpdateViewPort(long width, long height);
	// BW1W120 008190d0 BW1M119 0100c5c0 (LHCombined Release)
	static uint32_t __fastcall ProjectPoint(LHPoint* point, int* x, int* y);
#ifndef VERSION_BW1W100
	// BW1W120 00819230 BW1M119 010bfc40 (LHCombined Release)
	static uint32_t __fastcall ProjectPoint(LHPoint* point, float* x, float* y);
#endif
	// BW1W120 00819390 BW1M119 01037930 (LHCombined Release)
	static uint32_t __fastcall ProjectPoint(LHPoint* point, int* x, int* y, float* depth);
	// BW1W120 00819490 BW1M119 010bf9b0 (LHCombined Release)
	static uint32_t __fastcall ProjectPoint(LHPoint* point, float* x, float* y, float* depth);
	// BW1W120 008195b0 BW1M119 01011be0 (LHCombined Release)
	static void __fastcall ChangeFov(float fov);
	// BW1W120 00819690 BW1M119 01011e40 (LHCombined Release)
	static void __fastcall UpdateWorldToCamera(LHMatrix& matrix, LHPoint& position, LHPoint& focus, bool set_look_at);
	// BW1W120 inlined BW1M119 01095480
	static uint32_t GetDeltaTime();
	// BW1W120 inlined BW1M119 01038930
	static int GetGameTimeInc() { return g_game_time_inc; }
	// BW1W120 inlined BW1M119 01049620
	static float GetNearClipping() { return g_info_transform.NearClip; }
	// BW1W120 inlined BW1M119 01037d60 (LHCombined Release)
	static uint16_t GetPointCount() { return g_points_count; }
	// BW1W120 inlined BW1M119 01037da0 (LHCombined Release)
	static long GetIndiceCount() { return g_index_count; }
	// BW1W120 inlined BW1M119 01037de0 (LHCombined Release)
	static Vertex3D* GetCachePoints() { return g_cache_t_points; }
	// BW1W120 inlined BW1M119 0109c430 (LHCombined Release)
	static Vertex3DMT* GetCachePointsMT() { return (Vertex3DMT*)g_cache_t_points; }
	// BW1W120 inlined BW1M119 0109c470 (LHCombined Release)
	static unsigned long* GetCacheFlags() { return g_cache_flags; }
	// BW1W120 inlined BW1M119 01037e20 (LHCombined Release)
	static uint16_t* GetIndiceList() { return g_list_indices; }
	// BW1W120 inlined BW1M119 0102c1a0 (LHCombined Release)
	static Vertex3D* GetPointeurTPoint(long index) { return &g_cache_t_points[index]; }
	// BW1W120 inlined BW1M119 010bed00 (LHCombined Release)
	static Vertex3DMT* GetPointeurTPointMT(long index) { return &((Vertex3DMT*)g_cache_t_points)[index]; }
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
	// BW1W120 inlined BW1M119 010101b0 (LHCombined Release)
	static LHPoint* GetTargetVector() { return &g_camera.LookAtVector; }
	// BW1W120 inlined BW1M119 01020d00
	static LHPoint GetSun() { return g_sun_light; }
	// BW1W120 007ace30 BW1M119 01022500 (LHCombined Release)
	static LHPoint GetClippingSun();
	// BW1W120 00819920 BW1M119 01034f90 (LHCombined Release)
	static void __fastcall UpdateCamera(const LHPoint& position, const LHPoint& focus);
	// BW1W120 00819f50 BW1M119 010beec0 (LHCombined Release)
	static void __fastcall UpdateCamera(const LHPoint& position, const LHPoint& focus, LHMatrix& matrix);
	// BW1W120 0081a760 BW1M119 0102c690 (LHCombined Release)
	static void __fastcall ClipTriangle(uint16_t a, uint16_t b, uint16_t c, ClipCode code);
	// BW1W120 0081aab0 BW1M119 010bed50 (LHCombined Release)
	static void __fastcall ClipTriangleMT(uint16_t a, uint16_t b, uint16_t c, ClipCode code);
	// BW1W120 0081adf0 BW1M119 010be860 (LHCombined Release)
	static void __fastcall IntersectMT(ClipCode code, uint16_t inside, uint16_t outside, uint16_t out_index);
	// BW1W120 0081b370 BW1M119 0101b840 (LHCombined Release)
	static void __fastcall Get3DPointFromScreen(const LHCoord& screen, LHPoint& point, float distance);
	// BW1W120 0081b450 BW1M119 01037ba0 (LHCombined Release)
	static void __fastcall TransformProjectFlagClipping(Vertex3D* out, unsigned long* clip_flags, LHPoint* points,
	                                                    long count);
	// BW1W120 0081b5f0 BW1M119 010be620 (LHCombined Release)
	static void __fastcall TransformProject(Vertex3D* out, LHPoint* points, long count);
#ifndef VERSION_BW1W100
	// BW1W120 0081b6a0 BW1M119 010be410 (LHCombined Release)
	static void __fastcall ClipAndDrawLine(uint16_t a, uint16_t b, ClipCode code);
	// BW1W120 0081b860 BW1M119 010bdfe0 (LHCombined Release)
	static void __fastcall ClipLine(uint16_t a, uint16_t b);
#endif
	// BW1W120 0081b9c0 BW1M119 0102f990 (LHCombined Release)
	static void __fastcall ClipAndDrawLines(int num_lines, LHPoint* positions, unsigned long* colors, float* uvs,
	                                        LH3DMaterial* material);
	// BW1W120 0081bc10 BW1M119 010bd280 (LHCombined Release)
	static void __fastcall Draw3DWorldTriangle_(long num_points, LHPoint* positions, LH3DColor* colors,
	                                            long num_triangles, long* indices, bool32_t world_coords,
	                                            LH3DMaterial* material);
	// BW1W120 0081c090 BW1M119 0102ea40 (LHCombined Release)
	static void __fastcall Draw3DWorldTriangle(long num_points, LHPoint* positions, LH3DColor* colors, float* uvs,
	                                           long num_triangles, long* indices, LH3DMaterial* material,
	                                           bool32_t keep_current_matrix);
	// BW1W120 0081c5c0 BW1M119 010337e0 (LHCombined Release)
	static void __fastcall Draw3DScreenTriangle(long num_points, LHPoint* positions, LH3DColor* colors, float* uvs,
	                                            long num_indices, long* indices, LH3DMaterial* material,
	                                            bool32_t keep_current_matrix);
	// BW1W120 0081c780 BW1M119 010bccc0 (LHCombined Release)
	static void __fastcall Draw3DWorldTriangleSpecular(long num_points, LHPoint* positions, LH3DColor* colors,
	                                                   float* uvs, long num_triangles, long* indices,
	                                                   LH3DMaterial* material);
#ifndef VERSION_BW1W100
	// BW1W120 0081ccd0 BW1M119 010bc780 (LHCombined Release)
	static void __fastcall Draw3DWorldTriangleMT(long num_points, LHPoint* positions, LH3DColor* colors, float* uvs,
	                                             float* uvs2, long num_triangles, long* indices, LH3DMaterial* material,
	                                             LH3DMaterial* material2);
#endif
	// BW1W120 0081d2c0 BW1M119 010bc060 (LHCombined Release)
	static void __fastcall ClipTriangleWithPlane(uint16_t a, uint16_t b, uint16_t c);
	// BW1W120 0081d4f0 BW1M119 010bbd30 (LHCombined Release)
	static void __fastcall ClipTriangleInBuild(uint16_t a, uint16_t b, uint16_t c);
	// BW1W120 0081d790 BW1M119 010bb7b0 (LHCombined Release)
	static void __fastcall IntersectWithPlane(uint16_t inside, uint16_t outside, uint16_t out_index);
	// BW1W120 0081dd90 BW1M119 0102bd40 (LHCombined Release)
	static void __fastcall Intersect(ClipCode code, uint16_t inside, uint16_t outside, uint16_t out_index);
	// BW1W120 0081e1f0 BW1M119 0101c120 (LHCombined Release)
	static LHPoint SetSun(const LHPoint& sun);
#ifndef VERSION_BW1W100
	// BW1W120 0081e310 BW1M119 010bb530 (LHCombined Release)
	static void __fastcall SyncPentium3();
#endif
};

// What the camera takes from grosse_merde_pos and grosse_merde_foc instead of what it is given.
enum GROSSE_MERDE
{
	GROSSE_MERDE_OFF = 0,
	GROSSE_MERDE_FOCUS = 1,
	GROSSE_MERDE_POSITION_AND_FOCUS = 2,
};

// Shared by several units, so extern: static gives each unit a zeroed copy; LH3DTech.cpp inits it before g_sun_light.
// BW1W120 00ea1c88 BW1M119 012dbfbc (LHCombined Release)
extern LHPoint DEFAULT_SUN;

// Set by LHScreen when one of the display devices is a 3dfx Voodoo.
// BW1W120 00ea9e9c BW1M119 012dc174 (LHCombined Release)
extern bool32_t g_b_any_voodoo;
// BW1W120 0081bbd0 BW1M119 010bd5b0 (LHCombined Release)
void __cdecl Report3D__FPCce(const char* fmt, ...);
// BW1W120 0081f1a0 BW1M119 01013fc0 (LHCombined Release)
int IsObjectOnScreen(LH3DObject* object);
// BW1W120 0081f1d0 BW1M119 01005310 (LHCombined Release)
int IsPointOnScreen(LHPoint* point);

#endif /* BW1_DECOMP_LH3D_TECH_INCLUDED_H */
