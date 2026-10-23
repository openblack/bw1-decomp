#include "LH3DTech.h"

#include <stdarg.h> /* For va_list */
#include <stdio.h>  /* For vsprintf */

#include "LH3DRender.h" /* For LH3DRender */

#include <Lionhead/LHLib/ver5.0/LHSystem.h>  /* For LHSys */
#include <Lionhead/LHLib/ver5.0/LHTimer.inl> /* For LHTimer */

#include "LH3DCameraChecker.h" /* For LH3DCameraChecker */
#include "LH3DInBuild.h"       /* For LH3DInBuild */
#include "LH3DMath.h"          /* For LH3DMath */
#include "LH3DObject.h"        /* For LH3DObject */
#include "LH3DP3.h"            /* For LH3DP3 */
#include "LH3DPrimitive.h"     /* For LH3DPrimitive */
#include "LHMatrix.h"          /* For LHMatrix */
#include "LHRandom.h"          /* For Random */

#define LH3D_TECH_DEFAULT_FOV        1.2217305f
#define LH3D_TECH_DEFAULT_NEAR_CLIP  3.5f
#define LH3D_TECH_DEFAULT_CAMERA_POS 20.0f
#define LH3D_TECH_REPORT_SIZE        0x800
#define LH3D_TECH_COLOR_BLEND_MAX    0xff
#define LH3D_TECH_COLOR_BLEND_SCALE  255.0f
#define LH3D_TECH_MIN_LOOK           0.0001f
#define LH3D_TECH_PLANE_EPSILON      0.0001f

#ifndef VERSION_BW1W100
// BW1W120 00818b80 BW1M119 null
void TestVertexBuffer();
#endif

// BW1W120 0081b7a0 BW1M119 0102f530 (LHCombined Release)
void NewClipLine(uint16_t a, uint16_t b, unsigned long code);

// BW1W120 0081d1b0 BW1M119 010bc340 (LHCombined Release)
void AddEdge(long a, long b);

static inline int FloatToInt(float value)
{
	int  result;
	int* resultPtr = &result;
	__asm
	{
		fld value
		mov edx, resultPtr
		fistp dword ptr [edx]
	}
	return result;
}

static inline unsigned long BlendColor(unsigned long a, unsigned long b, int blend, int inverse)
{
	return ((a & 0xff0000) * blend + (b & 0xff0000) * inverse & 0xff0000ff |
	        (a & 0xff) * blend + (b & 0xff) * inverse & 0xff00 |
	        (a & 0xff00) * blend + (b & 0xff00) * inverse & 0xff0000) >>
	           8 |
	       ((a >> 8 & 0xff0000) * blend + (b >> 8 & 0xff0000) * inverse & 0xff000000);
}

static inline unsigned long LerpChannel(unsigned long a, unsigned long b, float t, float one_minus_t)
{
	return FloatToInt(a * one_minus_t + b * t);
}

static inline void LerpColors(Vertex3D* result, const Vertex3D* in, const Vertex3D* out, float t, float one_minus_t)
{
	unsigned long a_r = RGBA_GETRED(in->color);
	unsigned long b_r = RGBA_GETRED(out->color);
	unsigned long a_g = RGBA_GETGREEN(in->color);
	unsigned long b_g = RGBA_GETGREEN(out->color);
	unsigned long a_b = RGBA_GETBLUE(in->color);
	unsigned long b_b = RGBA_GETBLUE(out->color);
	unsigned long a_a = RGBA_GETALPHA(in->color);
	unsigned long b_a = RGBA_GETALPHA(out->color);
	result->color = RGBA_MAKE(LerpChannel(a_r, b_r, t, one_minus_t), LerpChannel(a_g, b_g, t, one_minus_t),
	                          LerpChannel(a_b, b_b, t, one_minus_t), LerpChannel(a_a, b_a, t, one_minus_t));
	a_r = RGBA_GETRED(in->specular);
	b_r = RGBA_GETRED(out->specular);
	a_g = RGBA_GETGREEN(in->specular);
	b_g = RGBA_GETGREEN(out->specular);
	a_b = RGBA_GETBLUE(in->specular);
	b_b = RGBA_GETBLUE(out->specular);
	a_a = RGBA_GETALPHA(in->specular);
	b_a = RGBA_GETALPHA(out->specular);
	result->specular = RGBA_MAKE(LerpChannel(a_r, b_r, t, one_minus_t), LerpChannel(a_g, b_g, t, one_minus_t),
	                             LerpChannel(a_b, b_b, t, one_minus_t), LerpChannel(a_a, b_a, t, one_minus_t));
}

static inline void SetScaled(LHMatrix& matrix, const LHMatrix& source, float x, float y, float z)
{
	matrix.m[0] = source.m[0] * x;
	matrix.m[3] = source.m[3] * x;
	matrix.m[6] = source.m[6] * x;
	matrix.m[9] = source.m[9] * x;
	matrix.m[1] = source.m[1] * y;
	matrix.m[4] = source.m[4] * y;
	matrix.m[7] = source.m[7] * y;
	matrix.m[10] = source.m[10] * y;
	matrix.m[2] = source.m[2] * z;
	matrix.m[5] = source.m[5] * z;
	matrix.m[8] = source.m[8] * z;
	matrix.m[11] = source.m[11] * z;
}

static inline float NormSq(const LHPoint& p)
{
	float pz = p.z;
	float py = p.y;
	float px = p.x;
	float sum = pz * pz;
	sum += py * py;
	sum += px * px;
	return sum;
}

LH3DObject*   merde_focus;
int           g_b_grosse_merde;
LH3DMaterial* g_material_smooth;
uint32_t      LH3DTech::g_game_time_inc;
int           LH3DTech::g_view_configuration;
bool32_t      LH3DTech::g_clip_with_double_sided;
bool32_t      LH3DTech::g_b_P3;
int           LH3DTech::g_current_time;
int           LH3DTech::g_previous_time;
uint16_t      LH3DTech::g_points_count;
long          LH3DTech::g_index_count;
LHMatrix*     LH3DTech::g_current_matrix;
bool32_t      g_b_any_voodoo;

static inline void OrderSunDirections()
{
	(void)LH3DTech::g_sun_light;
	(void)LH3DTech::g_sun_light_clipping;
	(void)LH3DTech::g_ambient_wind_direction;
}

#ifdef VERSION_BW1W100
InfoTransform LH3DTech::g_info_transform;
#endif
LHMatrix LH3DTech::g_world_to_clipping;
LHMatrix LH3DTech::g_local_to_clipping;
LHMatrix LH3DTech::g_clipping_to_world;
uint16_t LH3DTech::g_list_indices[LH3D_MAX_POINTS];
uint16_t LH3DTech::g_list_indices_2[LH3D_MAX_POINTS];
#ifdef VERSION_BW1W100
Vertex3D      LH3DTech::g_cache_t_points[LH3D_MAX_POINTS];
unsigned long LH3DTech::g_cache_flags[LH3D_MAX_POINTS];
#endif
LH3DCamera LH3DTech::g_camera;
LHMatrix   g_mat_paper;
LHMatrix   LH3DTech::g_copy_of_world_to_clipping;
LHMatrix   LH3DTech::g_world_to_camera;
LHMatrix   LH3DTech::g_camera_to_world;
LHMatrix   LH3DTech::g_world_to_local;
LHMatrix   LH3DTech::g_mist;
LHPoint    DEFAULT_SUN(-500000.0f, 500000.0f, -500000.0f);
LHPoint    LH3DTech::g_sun_light(DEFAULT_SUN);
LHPoint    LH3DTech::g_sun_light_clipping(0.0f, 1.0f, 0.0f);
LHPoint    LH3DTech::g_ambient_wind_direction(1.0f, 0.0f, 0.0f);
LHTimer    LH3DTech::g_timer;

#ifdef VERSION_BW1W100
float LH3DTech::g_max_screen[2] = {639.0f, 479.0f};
#endif
float    LH3DTech::g_meter_width_screen_on_2 = 1.0f;
float    LH3DTech::g_meter_height_screen_on_2 = 1.0f;
int      LH3DTech::g_delta_time = 1;
bool32_t LH3DTech::g_b_use_cull_mode = true;
float    LH3DTech::g_level_of_detail = 1.0f;

static inline float GetPlaneDistance(const Vertex3D* vertex)
{
	LHPoint point(vertex->x, vertex->y, vertex->rhw);
	LH3DTech::g_clipping_to_world.TransformPoint(point);
	return LH3DPrimitive::g_clipping_plane_world.Normal * point + LH3DPrimitive::g_clipping_plane_world.Distance;
}

static inline void SetPlane(LHPlane& plane, const LHPoint& normal, const LHPoint* point)
{
	plane.Normal.x = normal.x;
	plane.Normal.y = normal.y;
	plane.Normal.z = normal.z;
	plane.Distance = -(normal.DotProduct(point));
}

#ifndef VERSION_BW1W100
void TestVertexBuffer()
{
	Report3D__FPCce("Avant.\n");
	D3DVERTEXBUFFERDESC desc;
	memset(&desc, 0, sizeof(desc));
	desc.dwSize = sizeof(desc);
	desc.dwCaps = 0;
	desc.dwFVF = D3DFVF_TLVERTEX;
	desc.dwNumVertices = LH3D_MAX_POINTS;
	IDirect3DVertexBuffer* buffer = NULL;
	IDirect3D3*            d3d = NULL;
	LHSys::TheSystem.screen.PDirectDraw->QueryInterface(IID_IDirect3D3, (void**)&d3d);
	d3d->CreateVertexBuffer(&desc, &buffer, 0, NULL);
	d3d->Release();
	D3DVERTEXBUFFERDESC check;
	memset(&check, 0, sizeof(check));
	check.dwSize = sizeof(check);
	buffer->GetVertexBufferDesc(&check);
	void* data = NULL;
	buffer->Lock(0, &data, NULL);
	buffer->Unlock();
	Report3D__FPCce("Apres.\n");
}
#endif

void __fastcall LH3DTech::RenderInitialization(long width, long height)
{
	g_timer.Start();
	g_world_to_clipping.SetIdentity();
	g_copy_of_world_to_clipping.SetIdentity();
	g_clipping_to_world.SetInverse(g_world_to_clipping);
	g_world_to_camera.SetIdentity();
	g_camera_to_world.SetIdentity();
	g_mist.SetIdentity();
	g_local_to_clipping.SetIdentity();
	g_current_matrix = &g_world_to_clipping;
	g_info_transform.NearClip = LH3D_TECH_DEFAULT_NEAR_CLIP;
	SetMeterScreen();
	UpdateViewPort(width, height);
	g_camera.pos.Set(LH3D_TECH_DEFAULT_CAMERA_POS, LH3D_TECH_DEFAULT_CAMERA_POS, LH3D_TECH_DEFAULT_CAMERA_POS);
	g_camera.foc.Set(0.0f, 0.0f, 0.0f);
	UpdateCamera(g_camera.pos, g_camera.foc);
	g_material_smooth = LH3DRender::CreateMaterial((LH3DMaterial::RenderMode)0, NULL);
}

void __fastcall LH3DTech::UpdateViewPort(long width, long height)
{
	g_info_transform.resolution.x = width;
	g_info_transform.resolution.y = height;
	g_info_transform.HalfRes.x = (float)width * 0.5f;
	g_info_transform.HalfRes.y = (float)height * 0.5f;
	g_info_transform.InvHalfRes.x = 1.0f / g_info_transform.HalfRes.x;
	g_info_transform.InvHalfRes.y = 1.0f / g_info_transform.HalfRes.y;
	g_info_transform.AspectRatioXOverY = (float)width / (float)height;
	ChangeFov(LH3D_TECH_DEFAULT_FOV);
	g_max_screen[0] = (float)(width - 1);
	g_max_screen[1] = (float)(height - 1);
}

uint32_t __fastcall LH3DTech::ProjectPoint(LHPoint* point, int* x, int* y)
{
	float w = g_world_to_clipping.m[2] * point->x + g_world_to_clipping.m[5] * point->y +
	          g_world_to_clipping.m[8] * point->z + g_world_to_clipping.m[11];
	if (w < g_info_transform.NearClip)
	{
		return LH3D_PROJECT_BEHIND_CAMERA;
	}
	float rhw = 1.0f / w;
	float sy = (1.0f - (g_world_to_clipping.m[1] * point->x + g_world_to_clipping.m[4] * point->y +
	                    g_world_to_clipping.m[7] * point->z + g_world_to_clipping.m[10]) *
	                       rhw) *
	           g_info_transform.HalfRes.y;
	*x = (int)(((g_world_to_clipping.m[0] * point->x + g_world_to_clipping.m[3] * point->y +
	             g_world_to_clipping.m[6] * point->z + g_world_to_clipping.m[9]) *
	                rhw +
	            1.0f) *
	           g_info_transform.HalfRes.x);
	*y = (int)sy;
	if (*x < 0 || *y < 0 || *x >= g_info_transform.resolution.x || *y >= g_info_transform.resolution.y)
	{
		return LH3D_PROJECT_OFF_SCREEN;
	}
	if (*x < 0)
	{
		*x = 0;
	}
	else if (*x > g_max_screen[0])
	{
		*x = (int)g_max_screen[0];
	}
	if (*y < 0)
	{
		*y = 0;
	}
	else if (*y > g_max_screen[1])
	{
		*y = (int)g_max_screen[1];
	}
	return LH3D_PROJECT_ON_SCREEN;
}

#ifndef VERSION_BW1W100
uint32_t __fastcall LH3DTech::ProjectPoint(LHPoint* point, float* x, float* y)
{
	float w = g_world_to_clipping.m[2] * point->x + g_world_to_clipping.m[5] * point->y +
	          g_world_to_clipping.m[8] * point->z + g_world_to_clipping.m[11];
	if (w < g_info_transform.NearClip)
	{
		return LH3D_PROJECT_BEHIND_CAMERA;
	}
	float rhw = 1.0f / w;
	float sy = (1.0f - (g_world_to_clipping.m[1] * point->x + g_world_to_clipping.m[4] * point->y +
	                    g_world_to_clipping.m[7] * point->z + g_world_to_clipping.m[10]) *
	                       rhw) *
	           g_info_transform.HalfRes.y;
	*x = ((g_world_to_clipping.m[0] * point->x + g_world_to_clipping.m[3] * point->y +
	       g_world_to_clipping.m[6] * point->z + g_world_to_clipping.m[9]) *
	          rhw +
	      1.0f) *
	     g_info_transform.HalfRes.x;
	*y = sy;
	if (*x < 0.0f || *y < 0.0f || *x >= g_info_transform.resolution.x || *y >= g_info_transform.resolution.y)
	{
		return LH3D_PROJECT_OFF_SCREEN;
	}
	if (*x < 0.0f)
	{
		*x = 0.0f;
	}
	else if (*x > g_max_screen[0])
	{
		*x = g_max_screen[0];
	}
	if (*y < 0.0f)
	{
		*y = 0.0f;
	}
	else if (*y > g_max_screen[1])
	{
		*y = g_max_screen[1];
	}
	return LH3D_PROJECT_ON_SCREEN;
}
#endif

uint32_t __fastcall LH3DTech::ProjectPoint(LHPoint* point, int* x, int* y, float* depth)
{
	float cx = g_world_to_clipping.m[0] * point->x + g_world_to_clipping.m[3] * point->y +
	           g_world_to_clipping.m[6] * point->z + g_world_to_clipping.m[9];
	float cy = g_world_to_clipping.m[1] * point->x + g_world_to_clipping.m[4] * point->y +
	           g_world_to_clipping.m[7] * point->z + g_world_to_clipping.m[10];
	float w = g_world_to_clipping.m[2] * point->x + g_world_to_clipping.m[5] * point->y +
	          g_world_to_clipping.m[8] * point->z + g_world_to_clipping.m[11];
	*depth = w;
	if (w < g_info_transform.NearClip)
	{
		return LH3D_PROJECT_BEHIND_CAMERA;
	}
	float rhw = 1.0f / w;
	float sy = (1.0f - cy * rhw) * g_info_transform.HalfRes.y;
	*x = (int)((cx * rhw + 1.0f) * g_info_transform.HalfRes.x);
	*y = (int)sy;
	if (*x < 0 || *y < 0 || *x >= g_info_transform.resolution.x || *y >= g_info_transform.resolution.y)
	{
		return LH3D_PROJECT_OFF_SCREEN;
	}
	return LH3D_PROJECT_ON_SCREEN;
}

uint32_t __fastcall LH3DTech::ProjectPoint(LHPoint* point, float* x, float* y, float* depth)
{
	float cx = g_world_to_clipping.m[0] * point->x + g_world_to_clipping.m[3] * point->y +
	           g_world_to_clipping.m[6] * point->z + g_world_to_clipping.m[9];
	float cy = g_world_to_clipping.m[1] * point->x + g_world_to_clipping.m[4] * point->y +
	           g_world_to_clipping.m[7] * point->z + g_world_to_clipping.m[10];
	float w = g_world_to_clipping.m[2] * point->x + g_world_to_clipping.m[5] * point->y +
	          g_world_to_clipping.m[8] * point->z + g_world_to_clipping.m[11];
	*depth = w;
	if (w < g_info_transform.NearClip)
	{
		return LH3D_PROJECT_BEHIND_CAMERA;
	}
	float rhw = 1.0f / w;
	cy = (1.0f - cy * rhw) * g_info_transform.HalfRes.y;
	*x = (cx * rhw + 1.0f) * g_info_transform.HalfRes.x;
	*y = cy;
	if (*x < 0.0f || *y < 0.0f || *x >= g_info_transform.resolution.x || *y >= g_info_transform.resolution.y)
	{
		return LH3D_PROJECT_OFF_SCREEN;
	}
	return LH3D_PROJECT_ON_SCREEN;
}

void __fastcall LH3DTech::ChangeFov(float fov)
{
	g_camera.fov = fov;
	float tangent = (float)tan(fov * 0.5f);
	float inverse = 1.0f / tangent;
	g_info_transform.InvHalfTanFovY = inverse;
	g_info_transform.InvHalfTanFovX = g_info_transform.AspectRatioXOverY * inverse;
#ifdef VERSION_BW1W100
	float scale_x = 1.0f / (float)sqrt(tangent * tangent + 1.0f);
	g_info_transform.FrustumEdgeX.x = scale_x * tangent;
	g_info_transform.FrustumEdgeX.y = 0.0f;
	g_info_transform.FrustumEdgeX.z = scale_x;
	float tangent_y = tangent / g_info_transform.AspectRatioXOverY;
	float scale_y = 1.0f / (float)sqrt(tangent_y * tangent_y + 1.0f);
	g_info_transform.FrustumEdgeY.x = 0.0f;
	g_info_transform.FrustumEdgeY.y = scale_y * tangent_y;
	g_info_transform.FrustumEdgeY.z = scale_y;
#else
	g_info_transform.FrustumEdgeX.Set(tangent, 0.0f, 1.0f);
	g_info_transform.FrustumEdgeX.Normalise();
	float tangent_y = tangent / g_info_transform.AspectRatioXOverY;
	g_info_transform.FrustumEdgeY.Set(0.0f, tangent_y, 1.0f);
	g_info_transform.FrustumEdgeY.Normalise();
#endif
	g_meter_width_screen_on_2 = (float)tan(g_camera.fov * 0.5f) * GetNearClipping();
	g_meter_height_screen_on_2 = g_meter_width_screen_on_2 / g_info_transform.AspectRatioXOverY;
}

LHPoint grosse_merde_foc, grosse_merde_pos;

void __fastcall LH3DTech::UpdateWorldToCamera(LHMatrix& matrix, LHPoint& position, LHPoint& focus, bool set_look_at)
{
	LHPoint look;
	look.x = focus.x - position.x;
	look.y = focus.y - position.y;
	look.z = focus.z - position.z;
	if (fabs(look.x) < LH3D_TECH_MIN_LOOK && fabs(look.z) < LH3D_TECH_MIN_LOOK)
	{
		look.x = look.x > 0.0f ? LH3D_TECH_MIN_LOOK : -LH3D_TECH_MIN_LOOK;
	}
	look.Normalise();
	if (set_look_at)
	{
		g_camera.LookAtVector.Set(look);
	}
	static LHPoint up(0.0f, 1.0f, 0.0f);
	float          dot = up.DotProductInline(look);
	LHPoint        right(up.x - dot * look.x, up.y - dot * look.y, up.z - dot * look.z);
	right.Normalise();
	LHPoint side;
	side.CrossProduct(right, look);
	matrix.m[0] = side.x;
	matrix.m[3] = side.y;
	matrix.m[6] = side.z;
	matrix.m[1] = right.x;
	matrix.m[4] = right.y;
	matrix.m[7] = right.z;
	matrix.m[2] = look.x;
	matrix.m[5] = look.y;
	matrix.m[8] = look.z;
	matrix.m[9] = -position.x * matrix.m[0] - position.y * matrix.m[3] - position.z * matrix.m[6];
	matrix.m[10] = -position.x * matrix.m[1] - position.y * matrix.m[4] - position.z * matrix.m[7];
	matrix.m[11] = -position.x * matrix.m[2] - position.y * matrix.m[5] - position.z * matrix.m[8];
}

void __fastcall LH3DTech::UpdateCamera(const LHPoint& position, const LHPoint& focus)
{
	static LHPoint up(0.0f, 1.0f, 0.0f);
	LHPoint        pos;
	LHPoint        foc;
	pos = position;
	foc = focus;
	if (g_b_grosse_merde)
	{
		if (g_b_grosse_merde == GROSSE_MERDE_POSITION_AND_FOCUS)
		{
			pos = grosse_merde_pos;
			foc = grosse_merde_foc;
		}
		else if (g_b_grosse_merde == GROSSE_MERDE_FOCUS)
		{
			foc = grosse_merde_foc;
		}
	}
	if (merde_focus)
	{
		foc = merde_focus->matrix.GetPos();
	}
	LH3DCameraChecker::AdjustCameraPosTarget(&pos, &foc);
	g_camera.pos = pos;
	g_camera.foc = foc;
	UpdateWorldToCamera(g_world_to_camera, pos, foc, true);

	g_mist.m[0] = g_world_to_camera.m[0];
	g_mist.m[3] = g_world_to_camera.m[3];
	g_mist.m[6] = g_world_to_camera.m[6];
	g_mist.m[1] = -g_world_to_camera.m[2];
	g_mist.m[4] = -g_world_to_camera.m[5];
	g_mist.m[7] = -g_world_to_camera.m[8];
	g_mist.m[2] = g_world_to_camera.m[1];
	g_mist.m[5] = g_world_to_camera.m[4];
	g_mist.m[8] = g_world_to_camera.m[7];
	g_mist.m[9] = g_mist.m[10] = g_mist.m[11] = 0.0f;
	g_mist.SetInverse();

	SetScaled(g_world_to_clipping, g_world_to_camera, g_info_transform.InvHalfTanFovY, g_info_transform.InvHalfTanFovX,
	          1.0f);
	g_clipping_to_world.SetInverse(g_world_to_clipping);
	g_copy_of_world_to_clipping.Set(g_world_to_clipping);

	if (g_camera.pos.z < g_camera.foc.z)
	{
		if (g_camera.pos.x < g_camera.foc.x)
		{
			g_view_configuration = VIEW_CONFIGURATION_PLUS_X_PLUS_Z;
		}
		else
		{
			g_view_configuration = VIEW_CONFIGURATION_MINUS_X_PLUS_Z;
		}
	}
	else if (g_camera.pos.x > g_camera.foc.x)
	{
		g_view_configuration = VIEW_CONFIGURATION_MINUS_X_MINUS_Z;
	}
	else
	{
		g_view_configuration = VIEW_CONFIGURATION_PLUS_X_MINUS_Z;
	}

	LHPoint normal(LH3DPrimitive::g_clipping_plane_world.Normal.x, LH3DPrimitive::g_clipping_plane_world.Normal.y,
	               LH3DPrimitive::g_clipping_plane_world.Normal.z);
	LHPoint point =
		LH3DPrimitive::g_clipping_plane_world.Normal *
		(-LH3DPrimitive::g_clipping_plane_world.Distance / ((NormSq(LH3DPrimitive::g_clipping_plane_world.Normal))));
	NormSq(normal);
	g_world_to_camera.TransformVector(normal);
	g_world_to_camera.TransformPoint(point);
	SetPlane(LH3DPrimitive::g_clipping_plane_camera, normal, &point);

	{
		LHPoint camera_pos;
		LHPoint camera_foc;
		camera_pos = g_camera.pos;
		camera_foc = g_camera.foc;
		g_mat_paper.SetRotationY((LH3DMath::GetYAngle(&camera_pos, &camera_foc)) + HALF_PI_F);
	}

	g_sun_light_clipping = g_sun_light;
	g_world_to_clipping.TransformPoint(g_sun_light_clipping);
	LH3DRender::SetD3DMatrix(LH3DRender::g_d3d_world2view, g_world_to_camera);
	LH3DRender::D3DDevice->SetTransform(D3DTRANSFORMSTATE_VIEW, &LH3DRender::g_d3d_world2view);
	g_camera_to_world.SetInverse(g_world_to_camera);
}

void __fastcall LH3DTech::UpdateCamera(const LHPoint& position, const LHPoint& focus, LHMatrix& matrix)
{
	static LHPoint up(0.0f, 1.0f, 0.0f);
	LHPoint        pos;
	LHPoint        foc;
	pos = position;
	foc = focus;
	if (g_b_grosse_merde)
	{
		if (g_b_grosse_merde == GROSSE_MERDE_POSITION_AND_FOCUS)
		{
			pos = grosse_merde_pos;
			foc = grosse_merde_foc;
		}
	}
	if (merde_focus)
	{
		foc = merde_focus->matrix.GetPos();
	}
	LH3DCameraChecker::AdjustCameraPosTarget(&pos, &foc);
	g_camera.pos = pos;
	g_camera.foc = foc;
	float temp;
	temp = matrix.m[2];
	matrix.m[2] = matrix.m[1];
	matrix.m[1] = temp;
	temp = matrix.m[5];
	matrix.m[5] = matrix.m[4];
	matrix.m[4] = temp;
	temp = matrix.m[8];
	matrix.m[8] = matrix.m[7];
	matrix.m[7] = temp;
	temp = matrix.m[2];
	matrix.m[2] = matrix.m[6];
	matrix.m[6] = temp;
	temp = matrix.m[5];
	matrix.m[5] = matrix.m[7];
	matrix.m[7] = temp;
	temp = matrix.m[1];
	matrix.m[1] = matrix.m[3];
	matrix.m[3] = temp;
	temp = matrix.m[6];
	matrix.m[6] = matrix.m[3];
	matrix.m[3] = temp;
	temp = matrix.m[7];
	matrix.m[7] = matrix.m[4];
	matrix.m[4] = temp;
	temp = matrix.m[8];
	matrix.m[8] = matrix.m[5];
	matrix.m[5] = temp;
	matrix.m[2] = -matrix.m[2];
	matrix.m[5] = -matrix.m[5];
	matrix.m[8] = -matrix.m[8];
	matrix.NormaliseMatrixOnly();
	UpdateWorldToCamera(g_world_to_camera, pos, foc, true);
	g_world_to_camera.SetMatrixOnly(matrix);
	g_world_to_camera.m[9] =
		-g_world_to_camera.m[0] * pos.x - g_world_to_camera.m[3] * pos.y - g_world_to_camera.m[6] * pos.z;
	g_world_to_camera.m[10] =
		-g_world_to_camera.m[1] * pos.x - g_world_to_camera.m[4] * pos.y - g_world_to_camera.m[7] * pos.z;
	g_world_to_camera.m[11] =
		-g_world_to_camera.m[2] * pos.x - g_world_to_camera.m[5] * pos.y - g_world_to_camera.m[8] * pos.z;

	g_mist.m[0] = g_world_to_camera.m[0];
	g_mist.m[3] = g_world_to_camera.m[3];
	g_mist.m[6] = g_world_to_camera.m[6];
	g_mist.m[1] = -g_world_to_camera.m[2];
	g_mist.m[4] = -g_world_to_camera.m[5];
	g_mist.m[7] = -g_world_to_camera.m[8];
	g_mist.m[2] = g_world_to_camera.m[1];
	g_mist.m[5] = g_world_to_camera.m[4];
	g_mist.m[8] = g_world_to_camera.m[7];
	g_mist.m[9] = g_mist.m[10] = g_mist.m[11] = 0.0f;
	g_mist.SetInverse();

	SetScaled(g_world_to_clipping, g_world_to_camera, g_info_transform.InvHalfTanFovY, g_info_transform.InvHalfTanFovX,
	          1.0f);
	g_clipping_to_world.SetInverse(g_world_to_clipping);
	g_copy_of_world_to_clipping.Set(g_world_to_clipping);

	if (g_camera.pos.z < g_camera.foc.z)
	{
		if (g_camera.pos.x < g_camera.foc.x)
		{
			g_view_configuration = VIEW_CONFIGURATION_PLUS_X_PLUS_Z;
		}
		else
		{
			g_view_configuration = VIEW_CONFIGURATION_MINUS_X_PLUS_Z;
		}
	}
	else if (g_camera.pos.x > g_camera.foc.x)
	{
		g_view_configuration = VIEW_CONFIGURATION_MINUS_X_MINUS_Z;
	}
	else
	{
		g_view_configuration = VIEW_CONFIGURATION_PLUS_X_MINUS_Z;
	}

	NormSq(LH3DPrimitive::g_clipping_plane_world.Normal);
	LHPoint normal = LH3DPrimitive::g_clipping_plane_world.Normal * 1.0f;
	float   scale =
		(-LH3DPrimitive::g_clipping_plane_world.Distance / ((NormSq(LH3DPrimitive::g_clipping_plane_world.Normal))));
	LHPoint point = LH3DPrimitive::g_clipping_plane_world.Normal * scale;
	NormSq(normal);
	g_world_to_camera.TransformVector(normal);
	g_world_to_camera.TransformPoint(point);
	SetPlane(LH3DPrimitive::g_clipping_plane_camera, normal, &point);

	{
		LHPoint camera_pos;
		LHPoint camera_foc;
		camera_pos = g_camera.pos;
		camera_foc = g_camera.foc;
		g_mat_paper.SetRotationY((LH3DMath::GetYAngle(&camera_pos, &camera_foc)) + HALF_PI_F);
	}

	(void)(LH3DRender::g_d3d_world2view._11 + LH3DRender::g_d3d_world2view._12 + LH3DRender::g_d3d_world2view._13 +
	       LH3DRender::g_d3d_world2view._14 + LH3DRender::g_d3d_world2view._21 + LH3DRender::g_d3d_world2view._22 +
	       LH3DRender::g_d3d_world2view._23 + LH3DRender::g_d3d_world2view._24 + LH3DRender::g_d3d_world2view._31);
	g_sun_light_clipping = g_sun_light;
	g_world_to_clipping.TransformPoint(g_sun_light_clipping);
	NormSq(normal);
	LH3DRender::SetD3DMatrix(LH3DRender::g_d3d_world2view, g_world_to_camera);
	LH3DRender::D3DDevice->SetTransform(D3DTRANSFORMSTATE_VIEW, &LH3DRender::g_d3d_world2view);
	g_camera_to_world.SetInverse(g_world_to_camera);
}

inline bool32_t IsFrontFacing(uint16_t a, uint16_t b, uint16_t c)
{
	Vertex3D* points = LH3DTech::g_cache_t_points;
	return (points[c].y - points[a].y) * (points[b].x - points[a].x) -
	           (points[b].y - points[a].y) * (points[c].x - points[a].x) >
	       0.0f;
}

inline void AddTriangle(uint16_t a, uint16_t b, uint16_t c)
{
	LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
	LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
	LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
}

inline void AddVisibleTriangle(uint16_t a, uint16_t b, uint16_t c)
{
	if (LH3DTech::g_clip_with_double_sided || IsFrontFacing(a, b, c))
	{
		AddTriangle(a, b, c);
	}
}

static inline void Unproject(Vertex3DMT* vertex, const Vertex3DMT* projected)
{
	vertex->uv = projected->uv;
	vertex->uv2 = projected->uv2;
	vertex->color = projected->color;
	vertex->rhw = LH3DTech::GetNearClipping() / projected->rhw;
	vertex->x =
		(projected->x - LH3DTech::g_info_transform.HalfRes.x) * LH3DTech::g_info_transform.InvHalfRes.x * vertex->rhw;
	vertex->y =
		(LH3DTech::g_info_transform.HalfRes.y - projected->y) * LH3DTech::g_info_transform.InvHalfRes.y * vertex->rhw;
	vertex->specular = projected->specular;
}

static inline void Unproject(Vertex3D* vertex, const Vertex3D* projected)
{
	vertex->uv = projected->uv;
	vertex->color = projected->color;
	vertex->rhw = LH3DTech::GetNearClipping() / projected->rhw;
	vertex->x =
		(projected->x - LH3DTech::g_info_transform.HalfRes.x) * LH3DTech::g_info_transform.InvHalfRes.x * vertex->rhw;
	vertex->y =
		(LH3DTech::g_info_transform.HalfRes.y - projected->y) * LH3DTech::g_info_transform.InvHalfRes.y * vertex->rhw;
	vertex->specular = projected->specular;
}

static inline void LerpCoordinates(Vertex3DMT* result, const Vertex3DMT* in, const Vertex3DMT* out, float t,
                                   float one_minus_t)
{
	result->x = out->x * t + in->x * one_minus_t;
	result->y = in->y * one_minus_t + out->y * t;
	result->rhw = in->rhw * one_minus_t + out->rhw * t;
	result->uv.x = in->uv.x * one_minus_t + out->uv.x * t;
	result->uv.y = in->uv.y * one_minus_t + out->uv.y * t;
	result->uv2.x = in->uv2.x * one_minus_t + out->uv2.x * t;
	result->uv2.y = in->uv2.y * one_minus_t + out->uv2.y * t;
}

static inline void LerpCoordinates(Vertex3D* result, const Vertex3D* in, const Vertex3D* out, float t,
                                   float one_minus_t)
{
	result->x = out->x * t + in->x * one_minus_t;
	result->y = in->y * one_minus_t + out->y * t;
	result->rhw = in->rhw * one_minus_t + out->rhw * t;
	result->uv.x = in->uv.x * one_minus_t + out->uv.x * t;
	result->uv.y = in->uv.y * one_minus_t + out->uv.y * t;
}

static inline unsigned long GetRemainingClipFlags(LH3DTech::ClipCode code, const Vertex3D* vertex)
{
	unsigned long flags = LH3DTech::CLIP_CODE_NONE;
	switch (code)
	{
	case LH3DTech::CLIP_CODE_NEAR:
		if (vertex->x > vertex->rhw)
		{
			flags = LH3DTech::CLIP_CODE_RIGHT;
		}
	case LH3DTech::CLIP_CODE_RIGHT:
		if (-vertex->rhw > vertex->x)
		{
			flags |= LH3DTech::CLIP_CODE_LEFT;
		}
	case LH3DTech::CLIP_CODE_LEFT:
		if (vertex->y > vertex->rhw)
		{
			flags |= LH3DTech::CLIP_CODE_TOP;
		}
	case LH3DTech::CLIP_CODE_TOP:
		if (-vertex->rhw > vertex->y)
		{
			flags |= LH3DTech::CLIP_CODE_BOTTOM;
		}
	}
	return flags;
}

static inline void SetClipFlags(unsigned long* flags, const Vertex3D* vertex)
{
	if (vertex->rhw < LH3DTech::g_info_transform.NearClip)
	{
		*flags = LH3DTech::CLIP_CODE_NEAR;
	}
	else
	{
		*flags = LH3DTech::CLIP_CODE_NONE;
	}
	if (vertex->x > vertex->rhw)
	{
		*flags |= LH3DTech::CLIP_CODE_RIGHT;
	}
	else if (-vertex->rhw > vertex->x)
	{
		*flags |= LH3DTech::CLIP_CODE_LEFT;
	}
	if (vertex->y > vertex->rhw)
	{
		*flags |= LH3DTech::CLIP_CODE_TOP;
	}
	else if (-vertex->rhw > vertex->y)
	{
		*flags |= LH3DTech::CLIP_CODE_BOTTOM;
	}
}

void __fastcall LH3DTech::ClipTriangle(uint16_t a, uint16_t b, uint16_t c, ClipCode code)
{
#ifndef VERSION_BW1W100
	if (g_b_P3)
	{
		LH3DP3::ClipTriangleWrapper(a, b, c, code);
		return;
	}
#endif
	if (code == CLIP_CODE_NONE)
	{
		AddVisibleTriangle(a, b, c);
		return;
	}
	if (g_cache_flags[a] & code)
	{
		if (g_cache_flags[b] & code)
		{
			if (g_cache_flags[c] & code)
			{
				return;
			}
			uint16_t n = g_points_count;
			uint16_t n1 = g_points_count + 1;
			g_points_count += 2;
			Intersect(code, c, a, n);
			Intersect(code, c, b, n1);
			code = (ClipCode)((uint32_t)code >> 1);
			ClipTriangle(c, n, n1, code);
		}
		else
		{
			uint16_t n = g_points_count;
			uint16_t n1 = g_points_count + 1;
			g_points_count += 2;
			if (g_cache_flags[c] & code)
			{
				Intersect(code, b, a, n);
				Intersect(code, b, c, n1);
				code = (ClipCode)((uint32_t)code >> 1);
				ClipTriangle(n, b, n1, code);
			}
			else
			{
				Intersect(code, b, a, n);
				Intersect(code, c, a, n1);
				code = (ClipCode)((uint32_t)code >> 1);
				ClipTriangle(n, b, c, code);
				ClipTriangle(n, c, n1, code);
			}
		}
	}
	else if (g_cache_flags[b] & code)
	{
		uint16_t n = g_points_count;
		uint16_t n1 = g_points_count + 1;
		g_points_count += 2;
		if (g_cache_flags[c] & code)
		{
			Intersect(code, a, b, n);
			Intersect(code, a, c, n1);
			code = (ClipCode)((uint32_t)code >> 1);
			ClipTriangle(a, n, n1, code);
		}
		else
		{
			Intersect(code, a, b, n);
			Intersect(code, c, b, n1);
			code = (ClipCode)((uint32_t)code >> 1);
			ClipTriangle(a, n, c, code);
			ClipTriangle(n, n1, c, code);
		}
	}
	else if (g_cache_flags[c] & code)
	{
		uint16_t n = g_points_count;
		uint16_t n1 = g_points_count + 1;
		g_points_count += 2;
		Intersect(code, a, c, n);
		Intersect(code, b, c, n1);
		code = (ClipCode)((uint32_t)code >> 1);
		ClipTriangle(n, a, b, code);
		ClipTriangle(n, b, n1, code);
	}
	else if (g_cache_flags[a] | g_cache_flags[b] | g_cache_flags[c])
	{
		code = (ClipCode)((uint32_t)code >> 1);
		ClipTriangle(a, b, c, code);
	}
	else
	{
		AddVisibleTriangle(a, b, c);
	}
}

inline void AddTriangleMT(uint16_t a, uint16_t b, uint16_t c)
{
	if (!LH3DTech::g_clip_with_double_sided)
	{
		Vertex3DMT* points = LH3DTech::GetCachePointsMT();
		if ((points[c].y - points[a].y) * (points[b].x - points[a].x) -
		        (points[b].y - points[a].y) * (points[c].x - points[a].x) <=
		    0.0f)
		{
			return;
		}
	}
	LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
	LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
	LH3DTech::g_list_indices[LH3DTech::g_index_count++] = c;
}

void __fastcall LH3DTech::ClipTriangleMT(uint16_t a, uint16_t b, uint16_t c, ClipCode code)
{
	if (code == CLIP_CODE_NONE)
	{
		AddTriangleMT(a, b, c);
		return;
	}
	if (g_cache_flags[a] & code)
	{
		if (g_cache_flags[b] & code)
		{
			if (g_cache_flags[c] & code)
			{
				return;
			}
			uint16_t n = g_points_count;
			uint16_t n1 = g_points_count + 1;
			g_points_count += 2;
			IntersectMT(code, c, a, n);
			IntersectMT(code, c, b, n1);
			code = (ClipCode)((uint32_t)code >> 1);
			ClipTriangleMT(c, n, n1, code);
		}
		else
		{
			uint16_t n = g_points_count;
			uint16_t n1 = g_points_count + 1;
			g_points_count += 2;
			if (g_cache_flags[c] & code)
			{
				IntersectMT(code, b, a, n);
				IntersectMT(code, b, c, n1);
				code = (ClipCode)((uint32_t)code >> 1);
				ClipTriangleMT(n, b, n1, code);
			}
			else
			{
				IntersectMT(code, b, a, n);
				IntersectMT(code, c, a, n1);
				code = (ClipCode)((uint32_t)code >> 1);
				ClipTriangleMT(n, b, c, code);
				ClipTriangleMT(n, c, n1, code);
			}
		}
	}
	else if (g_cache_flags[b] & code)
	{
		uint16_t n = g_points_count;
		uint16_t n1 = g_points_count + 1;
		g_points_count += 2;
		if (g_cache_flags[c] & code)
		{
			IntersectMT(code, a, b, n);
			IntersectMT(code, a, c, n1);
			code = (ClipCode)((uint32_t)code >> 1);
			ClipTriangleMT(a, n, n1, code);
		}
		else
		{
			IntersectMT(code, a, b, n);
			IntersectMT(code, c, b, n1);
			code = (ClipCode)((uint32_t)code >> 1);
			ClipTriangleMT(a, n, c, code);
			ClipTriangleMT(n, n1, c, code);
		}
	}
	else if (g_cache_flags[c] & code)
	{
		uint16_t n = g_points_count;
		uint16_t n1 = g_points_count + 1;
		g_points_count += 2;
		IntersectMT(code, a, c, n);
		IntersectMT(code, b, c, n1);
		code = (ClipCode)((uint32_t)code >> 1);
		ClipTriangleMT(n, a, b, code);
		ClipTriangleMT(n, b, n1, code);
	}
	else if (g_cache_flags[a] | g_cache_flags[b] | g_cache_flags[c])
	{
		code = (ClipCode)((uint32_t)code >> 1);
		ClipTriangleMT(a, b, c, code);
	}
	else
	{
		AddTriangleMT(a, b, c);
	}
}

void __fastcall LH3DTech::IntersectMT(ClipCode code, uint16_t inside, uint16_t outside, uint16_t out_index)
{
	Vertex3DMT* out = GetPointeurTPointMT(outside);
	Vertex3DMT* result = GetPointeurTPointMT(out_index);
	Vertex3DMT* in;
	Vertex3DMT  unprojected;
	if ((g_cache_flags[inside] & CLIP_CODE_FRUSTUM) == CLIP_CODE_NONE)
	{
		Unproject(&unprojected, GetPointeurTPointMT(inside));
		in = &unprojected;
	}
	else
	{
		in = GetPointeurTPointMT(inside);
	}

	float in_distance;
	float out_distance;
	switch (code)
	{
	case CLIP_CODE_NEAR:
		in_distance = in->rhw - g_info_transform.NearClip;
		out_distance = out->rhw - g_info_transform.NearClip;
		break;
	case CLIP_CODE_LEFT:
		in_distance = in->rhw + in->x;
		out_distance = out->rhw + out->x;
		break;
	case CLIP_CODE_RIGHT:
		in_distance = in->rhw - in->x;
		out_distance = out->rhw - out->x;
		break;
	case CLIP_CODE_TOP:
		in_distance = in->rhw - in->y;
		out_distance = out->rhw - out->y;
		break;
	case CLIP_CODE_BOTTOM:
		in_distance = in->rhw + in->y;
		out_distance = out->rhw + out->y;
		break;
	}

	float t = in_distance / (in_distance - out_distance);
	float one_minus_t = 1.0f - t;
	LerpCoordinates(result, in, out, t, one_minus_t);
	LerpColors(result, in, out, t, one_minus_t);

	unsigned long flags = GetRemainingClipFlags(code, result);
	g_cache_flags[out_index] = flags;
	if (flags == CLIP_CODE_NONE)
	{
		result->rhw = 1.0f / result->rhw;
		result->x = (result->rhw * result->x + 1.0f) * g_info_transform.HalfRes.x;
		if (result->x < 0.0f)
		{
			result->x = 0.0f;
		}
		else if (result->x > g_max_screen[0])
		{
			result->x = g_max_screen[0];
		}
		result->y = g_info_transform.HalfRes.y - result->rhw * result->y * g_info_transform.HalfRes.y;
		if (result->y < 0.0f)
		{
			result->y = 0.0f;
		}
		else if (result->y > g_max_screen[1])
		{
			result->y = g_max_screen[1];
		}
		result->rhw = result->rhw * g_info_transform.NearClip;
		result->z = 1.0f - result->rhw;
	}
}

void __fastcall LH3DTech::Get3DPointFromScreen(const LHCoord& screen, LHPoint& point, float distance)
{
	float x = ((float)screen.x - g_info_transform.HalfRes.x) * g_meter_width_screen_on_2 / g_info_transform.HalfRes.x;
	float y = (g_info_transform.HalfRes.y - (float)screen.y) * g_meter_height_screen_on_2 / g_info_transform.HalfRes.y;
	float z = GetNearClipping();
	if (distance != 0.0f)
	{
		float scale = distance / z;
		x *= scale;
		y *= scale;
		z = distance;
	}
	point.x = g_world_to_camera.m[0] * x + g_world_to_camera.m[1] * y + g_world_to_camera.m[2] * z;
	point.y = g_world_to_camera.m[3] * x + g_world_to_camera.m[4] * y + g_world_to_camera.m[5] * z;
	point.z = g_world_to_camera.m[6] * x + g_world_to_camera.m[7] * y + g_world_to_camera.m[8] * z;
	point.Add(g_camera.pos);
}

void __fastcall LH3DTech::TransformProjectFlagClipping(Vertex3D* out, unsigned long* clip_flags, LHPoint* points,
                                                       long count)
{
	for (long i = 0; i < count; i++)
	{
		out->x = points->x * g_current_matrix->m[0] + points->y * g_current_matrix->m[3] +
		         points->z * g_current_matrix->m[6] + g_current_matrix->m[9];
		out->y = points->x * g_current_matrix->m[1] + points->y * g_current_matrix->m[4] +
		         points->z * g_current_matrix->m[7] + g_current_matrix->m[10];
		out->rhw = points->x * g_current_matrix->m[2] + points->y * g_current_matrix->m[5] +
		           points->z * g_current_matrix->m[8] + g_current_matrix->m[11];
		SetClipFlags(clip_flags, out);
		if (*clip_flags == CLIP_CODE_NONE)
		{
			out->rhw = 1.0f / out->rhw;
			out->x = (out->rhw * out->x + 1.0f) * g_info_transform.HalfRes.x;
			if (out->x < 0.0f)
			{
				out->x = 0.0f;
			}
			else if (out->x > g_max_screen[0])
			{
				out->x = g_max_screen[0];
			}
			out->y = g_info_transform.HalfRes.y - out->rhw * out->y * g_info_transform.HalfRes.y;
			if (out->y < 0.0f)
			{
				out->y = 0.0f;
			}
			else if (out->y > g_max_screen[1])
			{
				out->y = g_max_screen[1];
			}
			out->rhw = g_info_transform.NearClip * out->rhw;
			out->z = 1.0f - out->rhw;
		}
		clip_flags++;
		out++;
		points++;
	}
}

void __fastcall LH3DTech::TransformProject(Vertex3D* out, LHPoint* points, long count)
{
	while (count--)
	{
		float x = points->x;
		float y = points->y;
		float z = points->z;
		out->rhw = 1.0f / (g_current_matrix->m[2] * x + g_current_matrix->m[5] * y + g_current_matrix->m[8] * z +
		                   g_current_matrix->m[11]);
		out->x = ((g_current_matrix->m[0] * x + g_current_matrix->m[3] * y + g_current_matrix->m[6] * z +
		           g_current_matrix->m[9]) *
		              out->rhw +
		          1.0f) *
		         g_info_transform.HalfRes.x;
		out->y = (1.0f - (g_current_matrix->m[1] * x + g_current_matrix->m[4] * y + g_current_matrix->m[7] * z +
		                  g_current_matrix->m[10]) *
		                     out->rhw) *
		         g_info_transform.HalfRes.y;
		out++;
		points++;
	}
}

#ifndef VERSION_BW1W100
void __fastcall LH3DTech::ClipAndDrawLine(uint16_t a, uint16_t b, ClipCode code)
{
	while (code != CLIP_CODE_NONE)
	{
		if (g_cache_flags[a] & code)
		{
			if (g_cache_flags[b] & code)
			{
				return;
			}
			uint16_t n = g_points_count++;
			Intersect(code, b, a, n);
			code = (ClipCode)((uint32_t)code >> 1);
			a = n;
		}
		else if (g_cache_flags[b] & code)
		{
			uint16_t n = g_points_count++;
			Intersect(code, a, b, n);
			code = (ClipCode)((uint32_t)code >> 1);
			b = a;
			a = n;
		}
		else if (g_cache_flags[a] | g_cache_flags[b])
		{
			code = (ClipCode)((uint32_t)code >> 1);
		}
		else
		{
			break;
		}
	}
	Vertex3D vertices[2];
	vertices[0] = g_cache_t_points[a];
	vertices[1] = g_cache_t_points[b];
	LH3DRender::D3DDevice->DrawPrimitive(D3DPT_LINELIST, D3DFVF_TLVERTEX, vertices, 2, 0);
}
#endif

void NewClipLine(uint16_t a, uint16_t b, unsigned long code)
{
	while (code != LH3DTech::CLIP_CODE_NONE)
	{
		if (LH3DTech::g_cache_flags[a] & code)
		{
			if (LH3DTech::g_cache_flags[b] & code)
			{
				return;
			}
			uint16_t n = LH3DTech::g_points_count++;
			LH3DTech::Intersect((LH3DTech::ClipCode)code, b, a, n);
			code >>= 1;
			a = n;
		}
		else if (LH3DTech::g_cache_flags[b] & code)
		{
			uint16_t n = LH3DTech::g_points_count++;
			LH3DTech::Intersect((LH3DTech::ClipCode)code, a, b, n);
			code >>= 1;
			b = a;
			a = n;
		}
		else if (LH3DTech::g_cache_flags[a] | LH3DTech::g_cache_flags[b])
		{
			code >>= 1;
		}
		else
		{
			break;
		}
	}
	LH3DTech::g_list_indices[LH3DTech::g_index_count++] = a;
	LH3DTech::g_list_indices[LH3DTech::g_index_count++] = b;
}

#ifndef VERSION_BW1W100
void __fastcall LH3DTech::ClipLine(uint16_t a, uint16_t b)
{
	unsigned long flags_a = g_cache_flags[a];
	unsigned long flags_b = g_cache_flags[b];
	if (flags_a & flags_b)
	{
		return;
	}
	if (!(flags_a | flags_b))
	{
		g_list_indices[g_index_count++] = a;
		g_list_indices[g_index_count++] = b;
		return;
	}
	int      original_a = a;
	int      original_b = b;
	uint16_t next = g_points_count;
	for (unsigned long code = CLIP_CODE_NEAR; code != CLIP_CODE_NONE; code >>= 1)
	{
		if ((flags_a ^ flags_b) & code)
		{
			uint16_t n = next++;
			if (flags_a & code)
			{
				Intersect((ClipCode)code, b, a, n);
				a = n;
				flags_a = g_cache_flags[n];
			}
			else
			{
				Intersect((ClipCode)code, a, b, n);
				b = n;
				flags_b = g_cache_flags[n];
			}
		}
	}
	if (a != original_a)
	{
		*GetPointeurTPoint(original_a) = *GetPointeurTPoint(a);
	}
	if (b != original_b)
	{
		*GetPointeurTPoint(original_b) = *GetPointeurTPoint(b);
	}
	g_list_indices[g_index_count++] = original_a;
	g_list_indices[g_index_count++] = original_b;
}
#endif

void __fastcall LH3DTech::ClipAndDrawLines(int num_lines, LHPoint* positions, unsigned long* colors, float* uvs,
                                           LH3DMaterial* material)
{
	float max_x = g_max_screen[0];
	g_max_screen[0] -= 1.0f;
	float max_y = g_max_screen[1];
	g_max_screen[1] -= 1.0f;
	Vertex3D*      point = g_cache_t_points;
	unsigned long* flags = g_cache_flags;
	TransformProjectFlagClipping(point, flags, positions, num_lines * 2);
	g_index_count = 0;
	g_points_count = num_lines * 2;
	for (int i = 0; i < num_lines * 2; i += 2)
	{
		point[0].color = colors[0];
		point[1].color = colors[1];
		point[0].uv.x = uvs[0];
		point[0].uv.y = uvs[1];
		point[1].uv.x = uvs[2];
		point[1].uv.y = uvs[3];
		if (flags[0] | flags[1])
		{
			if (!(flags[1] & flags[0]))
			{
				NewClipLine(i, i + 1, CLIP_CODE_NEAR);
			}
		}
		else
		{
			g_list_indices[g_index_count++] = i;
			g_list_indices[g_index_count++] = i + 1;
		}
		flags += 2;
		colors += 2;
		point += 2;
		uvs += 4;
	}
	if (g_index_count)
	{
		if (material)
		{
			LH3DRender::SetMaterial(material, 0);
		}
		else
		{
			LH3DRender::SetMaterial(g_material_smooth, 0);
		}
		LH3DRender::GetD3DDevice()->DrawIndexedPrimitive(D3DPT_LINELIST, D3DFVF_TLVERTEX, GetCachePoints(),
		                                                 GetPointCount(), GetIndiceList(), GetIndiceCount(), 0);
	}
	g_max_screen[0] = max_x;
	g_max_screen[1] = max_y;
}

void __cdecl Report3D__FPCce(const char* fmt, ...)
{
	char    buffer[LH3D_TECH_REPORT_SIZE];
	va_list args;
	va_start(args, fmt);
	vsprintf(buffer, fmt, args);
	OutputDebugString(buffer);
}

void __fastcall LH3DTech::Draw3DWorldTriangle_(long num_points, LHPoint* positions, LH3DColor* colors,
                                               long num_triangles, long* indices, bool32_t world_coords,
                                               LH3DMaterial* material)
{
	g_current_matrix = world_coords ? &g_world_to_clipping : &g_local_to_clipping;
	LHMatrix*      matrix = g_current_matrix;
	Vertex3D*      vertex = g_cache_t_points;
	unsigned long* flags = g_cache_flags;
	for (long i = 0; i < (uint16_t)num_points; i++)
	{
		vertex->x =
			positions->x * matrix->m[0] + positions->y * matrix->m[3] + positions->z * matrix->m[6] + matrix->m[9];
		vertex->y =
			positions->x * matrix->m[1] + positions->y * matrix->m[4] + positions->z * matrix->m[7] + matrix->m[10];
		vertex->rhw =
			positions->x * matrix->m[2] + positions->y * matrix->m[5] + positions->z * matrix->m[8] + matrix->m[11];
		SetClipFlags(flags, vertex);
		if (*flags == CLIP_CODE_NONE)
		{
			float rhw = 1.0f / vertex->rhw;
			vertex->rhw = rhw;
			vertex->x = (rhw * vertex->x + 1.0f) * g_info_transform.HalfRes.x;
			if (vertex->x < 0.0f)
			{
				vertex->x = 0.0f;
			}
			else if (vertex->x > g_max_screen[0])
			{
				vertex->x = g_max_screen[0];
			}
			vertex->y = g_info_transform.HalfRes.y - vertex->rhw * vertex->y * g_info_transform.HalfRes.y;
			if (vertex->y < 0.0f)
			{
				vertex->y = 0.0f;
			}
			else if (vertex->y > g_max_screen[1])
			{
				vertex->y = g_max_screen[1];
			}
			vertex->rhw = g_info_transform.NearClip * vertex->rhw;
			vertex->z = 1.0f - vertex->rhw;
		}
		vertex->color = colors->GetColor();
		vertex->specular = 0;
		flags++;
		vertex++;
		colors++;
		positions++;
	}
	g_index_count = 0;
	g_points_count = num_points;
	if (material)
	{
		g_clip_with_double_sided = material->IsDoubleSided();
	}
	else
	{
		g_clip_with_double_sided = false;
	}
	for (long j = 0; j < num_triangles; j++)
	{
		uint16_t      a = *indices++;
		uint16_t      b = *indices++;
		uint16_t      c = *indices++;
		unsigned long flags_c = g_cache_flags[c];
		unsigned long flags_b = g_cache_flags[b];
		unsigned long flags_a = g_cache_flags[a];
		if (flags_a | flags_b | flags_c)
		{
			if (!(flags_a & flags_b & flags_c))
			{
				ClipTriangle(a, b, c, CLIP_CODE_NEAR);
			}
		}
		else if (IsFrontFacing(a, b, c))
		{
			AddTriangle(a, b, c);
		}
	}
	if (g_index_count)
	{
		if (material)
		{
			LH3DRender::SetMaterial(material, 0);
		}
		else
		{
			LH3DRender::SetMaterial(g_material_smooth, 0);
		}
		LH3DRender::DrawTriangle(GetCachePoints(), GetPointCount(), GetIndiceList(), GetIndiceCount());
	}
}

void __fastcall LH3DTech::Draw3DWorldTriangle(long num_points, LHPoint* positions, LH3DColor* colors, float* uvs,
                                              long num_triangles, long* indices, LH3DMaterial* material,
                                              bool32_t keep_current_matrix)
{
	if (!keep_current_matrix)
	{
		g_current_matrix = &g_local_to_clipping;
		g_local_to_clipping.Set(g_world_to_clipping);
	}
	long           i = 0;
	LHMatrix*      matrix = g_current_matrix;
	Vertex3D*      vertex = g_cache_t_points;
	unsigned long* flags = g_cache_flags;
	for (i = 0; i < (uint16_t)num_points; i++)
	{
		vertex->x =
			positions->x * matrix->m[0] + positions->y * matrix->m[3] + positions->z * matrix->m[6] + matrix->m[9];
		vertex->y =
			positions->x * matrix->m[1] + positions->y * matrix->m[4] + positions->z * matrix->m[7] + matrix->m[10];
		vertex->rhw =
			positions->x * matrix->m[2] + positions->y * matrix->m[5] + positions->z * matrix->m[8] + matrix->m[11];
		SetClipFlags(flags, vertex);
		if (*flags == CLIP_CODE_NONE)
		{
			float rhw = 1.0f / vertex->rhw;
			vertex->rhw = rhw;
			vertex->x = (rhw * vertex->x + 1.0f) * g_info_transform.HalfRes.x;
			if (vertex->x < 0.0f)
			{
				vertex->x = 0.0f;
			}
			else if (vertex->x > g_max_screen[0])
			{
				vertex->x = g_max_screen[0];
			}
			vertex->y = g_info_transform.HalfRes.y - vertex->rhw * vertex->y * g_info_transform.HalfRes.y;
			if (vertex->y < 0.0f)
			{
				vertex->y = 0.0f;
			}
			else if (vertex->y > g_max_screen[1])
			{
				vertex->y = g_max_screen[1];
			}
			vertex->rhw = g_info_transform.NearClip * vertex->rhw;
			vertex->z = 1.0f - vertex->rhw;
		}
		vertex->color = colors->GetColor();
		vertex->specular = 0;
		vertex->uv.x = uvs[0];
		vertex->uv.y = uvs[1];
		flags++;
		vertex++;
		colors++;
		positions++;
		uvs += 2;
	}
	g_index_count = 0;
	g_points_count = num_points;
	bool32_t double_sided = material ? material->IsDoubleSided() : true;
	g_clip_with_double_sided = double_sided;
	if (double_sided)
	{
		for (i = 0; i < num_triangles; i++)
		{
			uint16_t      a = *indices++;
			uint16_t      b = *indices++;
			uint16_t      c = *indices++;
			unsigned long flags_c = g_cache_flags[c];
			unsigned long flags_b = g_cache_flags[b];
			unsigned long flags_a = g_cache_flags[a];
			if (flags_a | flags_b | flags_c)
			{
				if (!(flags_a & flags_b & flags_c))
				{
					ClipTriangle(a, b, c, CLIP_CODE_NEAR);
				}
			}
			else
			{
				AddTriangle(a, b, c);
			}
		}
	}
	else
	{
		for (i = 0; i < num_triangles; i++)
		{
			uint16_t      a = *indices++;
			uint16_t      b = *indices++;
			uint16_t      c = *indices++;
			unsigned long flags_c = g_cache_flags[c];
			unsigned long flags_b = g_cache_flags[b];
			unsigned long flags_a = g_cache_flags[a];
			if (flags_a | flags_b | flags_c)
			{
				if (!(flags_a & flags_b & flags_c))
				{
					ClipTriangle(a, b, c, CLIP_CODE_NEAR);
				}
			}
			else if (IsFrontFacing(a, b, c))
			{
				AddTriangle(a, b, c);
			}
		}
	}
	if (g_index_count)
	{
		if (material)
		{
			LH3DRender::SetMaterial(material, 0);
		}
		LH3DRender::DrawTriangle(GetCachePoints(), GetPointCount(), GetIndiceList(), GetIndiceCount());
	}
}

void __fastcall LH3DTech::Draw3DScreenTriangle(long num_points, LHPoint* positions, LH3DColor* colors, float* uvs,
                                               long num_indices, long* indices, LH3DMaterial* material,
                                               bool32_t keep_current_matrix)
{
	Vertex3D* vertex = g_cache_t_points;
	for (long i = 0; i < (uint16_t)num_points; i++)
	{
		vertex->x = positions->x;
		vertex->y = positions->y;
		vertex->rhw = 1.0f / positions->z * g_info_transform.NearClip;
		vertex->z = 1.0f - vertex->rhw;
		vertex->color = colors->GetColor();
		vertex->specular = 0;
		vertex->uv.x = uvs[0];
		vertex->uv.y = uvs[1];
		vertex++;
		colors++;
		positions++;
		uvs += 2;
	}
	g_index_count = 0;
	g_points_count = num_points;
	g_clip_with_double_sided = true;
	for (long j = 0; j < num_indices; j++)
	{
		uint16_t a = *indices++;
		uint16_t b = *indices++;
		uint16_t c = *indices++;
		AddTriangle(a, b, c);
	}
	if (g_index_count)
	{
		if (material)
		{
			LH3DRender::SetMaterial(material, 0);
		}
		LH3DRender::SetRenderState(D3DRENDERSTATE_TEXTUREPERSPECTIVE, false);
		DrawAndClip2D(D3DPT_TRIANGLELIST, D3DFVF_TLVERTEX, GetCachePoints(), GetPointCount(), GetIndiceList(),
		              GetIndiceCount());
		LH3DRender::SetRenderState(D3DRENDERSTATE_TEXTUREPERSPECTIVE, true);
	}
}

void __fastcall LH3DTech::Draw3DWorldTriangleSpecular(long num_points, LHPoint* positions, LH3DColor* colors,
                                                      float* uvs, long num_triangles, long* indices,
                                                      LH3DMaterial* material)
{
	g_local_to_clipping.Set(g_world_to_clipping);
	g_current_matrix = &g_local_to_clipping;
	LHMatrix*      matrix = &g_world_to_clipping;
	Vertex3D*      vertex = g_cache_t_points;
	unsigned long* flags = g_cache_flags;
	for (long i = 0; i < (uint16_t)num_points; i++)
	{
		vertex->x =
			positions->x * matrix->m[0] + positions->y * matrix->m[3] + positions->z * matrix->m[6] + matrix->m[9];
		vertex->y =
			positions->x * matrix->m[1] + positions->y * matrix->m[4] + positions->z * matrix->m[7] + matrix->m[10];
		vertex->rhw =
			positions->x * matrix->m[2] + positions->y * matrix->m[5] + positions->z * matrix->m[8] + matrix->m[11];
		SetClipFlags(flags, vertex);
		if (*flags == CLIP_CODE_NONE)
		{
			float rhw = 1.0f / vertex->rhw;
			vertex->rhw = rhw;
			vertex->x = (rhw * vertex->x + 1.0f) * g_info_transform.HalfRes.x;
			if (vertex->x < 0.0f)
			{
				vertex->x = 0.0f;
			}
			else if (vertex->x > g_max_screen[0])
			{
				vertex->x = g_max_screen[0];
			}
			vertex->y = g_info_transform.HalfRes.y - vertex->rhw * vertex->y * g_info_transform.HalfRes.y;
			if (vertex->y < 0.0f)
			{
				vertex->y = 0.0f;
			}
			else if (vertex->y > g_max_screen[1])
			{
				vertex->y = g_max_screen[1];
			}
			vertex->rhw = g_info_transform.NearClip * vertex->rhw;
			vertex->z = 1.0f - vertex->rhw;
		}
		vertex->color = colors->GetColor();
		colors++;
		vertex->specular = colors->GetColor();
		vertex->uv.x = uvs[0];
		vertex->uv.y = uvs[1];
		flags++;
		vertex++;
		colors++;
		positions++;
		uvs += 2;
	}
	g_index_count = 0;
	g_points_count = num_points;
	if (material)
	{
		g_clip_with_double_sided = material->IsDoubleSided();
	}
	if (material && material->IsDoubleSided())
	{
		for (long j = 0; j < num_triangles; j++)
		{
			unsigned long flags_a = 0, flags_c = 0, flags_b = 0;
			uint16_t      a = *indices++;
			uint16_t      b = *indices++;
			uint16_t      c = *indices++;
			flags_c = g_cache_flags[c];
			flags_b = g_cache_flags[b];
			flags_a = g_cache_flags[a];
			if (flags_a | flags_b | flags_c)
			{
				if (!(flags_a & flags_b & flags_c))
				{
					ClipTriangle(a, b, c, CLIP_CODE_NEAR);
				}
			}
			else
			{
				AddTriangle(a, b, c);
			}
		}
	}
	else
	{
		for (long j = 0; j < num_triangles; j++)
		{
			uint16_t      a = *indices++;
			uint16_t      b = *indices++;
			uint16_t      c = *indices++;
			unsigned long flags_c = g_cache_flags[c];
			unsigned long flags_b = g_cache_flags[b];
			unsigned long flags_a = g_cache_flags[a];
			if (flags_a | flags_b | flags_c)
			{
				if (!(flags_a & flags_b & flags_c))
				{
					ClipTriangle(a, b, c, CLIP_CODE_NEAR);
				}
			}
			else if (IsFrontFacing(a, b, c))
			{
				AddTriangle(a, b, c);
			}
		}
	}
	if (g_index_count)
	{
		if (material)
		{
			LH3DRender::SetMaterial(material, 0);
		}
		LH3DRender::DrawTriangle(GetCachePoints(), GetPointCount(), GetIndiceList(), GetIndiceCount());
	}
}

#ifndef VERSION_BW1W100
void __fastcall LH3DTech::Draw3DWorldTriangleMT(long num_points, LHPoint* positions, LH3DColor* colors, float* uvs,
                                                float* uvs2, long num_triangles, long* indices, LH3DMaterial* material,
                                                LH3DMaterial* material2)
{
	g_local_to_clipping.Set(g_world_to_clipping);
	g_current_matrix = &g_local_to_clipping;
	LHMatrix*      matrix = &g_world_to_clipping;
	Vertex3DMT*    vertex = GetCachePointsMT();
	unsigned long* flags = g_cache_flags;
	for (long i = 0; i < (uint16_t)num_points; i++)
	{
		vertex->x =
			positions->x * matrix->m[0] + positions->y * matrix->m[3] + positions->z * matrix->m[6] + matrix->m[9];
		vertex->y =
			positions->x * matrix->m[1] + positions->y * matrix->m[4] + positions->z * matrix->m[7] + matrix->m[10];
		vertex->rhw =
			positions->x * matrix->m[2] + positions->y * matrix->m[5] + positions->z * matrix->m[8] + matrix->m[11];
		SetClipFlags(flags, vertex);
		if (*flags == CLIP_CODE_NONE)
		{
			float rhw = 1.0f / vertex->rhw;
			vertex->rhw = rhw;
			vertex->x = (rhw * vertex->x + 1.0f) * g_info_transform.HalfRes.x;
			if (vertex->x < 0.0f)
			{
				vertex->x = 0.0f;
			}
			else if (vertex->x > g_max_screen[0])
			{
				vertex->x = g_max_screen[0];
			}
			vertex->y = g_info_transform.HalfRes.y - vertex->rhw * vertex->y * g_info_transform.HalfRes.y;
			if (vertex->y < 0.0f)
			{
				vertex->y = 0.0f;
			}
			else if (vertex->y > g_max_screen[1])
			{
				vertex->y = g_max_screen[1];
			}
			vertex->rhw = g_info_transform.NearClip * vertex->rhw;
			vertex->z = 1.0f - vertex->rhw;
		}
		vertex->color = colors->GetColor();
		vertex->specular = 0;
		vertex->uv.x = uvs[0];
		vertex->uv.y = uvs[1];
		vertex->uv2.x = uvs2[0];
		vertex->uv2.y = uvs2[1];
		flags++;
		vertex++;
		colors++;
		positions++;
		uvs += 2;
		uvs2 += 2;
	}
	g_points_count = num_points;
	g_index_count = 0;
	g_clip_with_double_sided = material->IsDoubleSided();
	for (long j = 0; j < num_triangles; j++)
	{
		uint16_t      a = *indices++;
		uint16_t      b = *indices++;
		uint16_t      c = *indices++;
		unsigned long flags_c = g_cache_flags[c];
		unsigned long flags_b = g_cache_flags[b];
		unsigned long flags_a = g_cache_flags[a];
		if (flags_a | flags_b | flags_c)
		{
			if (!(flags_a & flags_b & flags_c))
			{
				ClipTriangleMT(a, b, c, CLIP_CODE_NEAR);
			}
		}
		else
		{
			AddTriangle(a, b, c);
		}
	}
	if (g_index_count)
	{
		LH3DRender::SetMaterial(material, 0);
		LH3DRender::SetMaterial(material2, 1);
		LH3DRender::DrawTriangleMT(GetCachePointsMT(), GetPointCount(), GetIndiceList(), GetIndiceCount());
		LH3DRender::SetTexture(NULL, 1);
	}
}
#endif

float __stdcall Random(float min, float max)
{
	return ((float)rand() / RAND_MAX) * (max - min) + min;
}

void AddEdge(long a, long b)
{
	Vertex3D  vertex_a;
	Vertex3D  vertex_b;
	Vertex3D* edge_a;
	Vertex3D* edge_b;
	if (!(LH3DTech::g_cache_flags[a] & LH3DTech::CLIP_CODE_FRUSTUM))
	{
		Unproject(&vertex_a, LH3DTech::GetPointeurTPoint(a));
		edge_a = &vertex_a;
	}
	else
	{
		edge_a = &LH3DTech::g_cache_t_points[a];
	}
	if (!(LH3DTech::g_cache_flags[b] & LH3DTech::CLIP_CODE_FRUSTUM))
	{
		Unproject(&vertex_b, LH3DTech::GetPointeurTPoint(b));
		edge_b = &vertex_b;
	}
	else
	{
		edge_b = &LH3DTech::g_cache_t_points[b];
	}
	LH3DInBuild::AddEdge(edge_a, edge_b);
}

void __fastcall LH3DTech::ClipTriangleWithPlane(uint16_t a, uint16_t b, uint16_t c)
{
	unsigned long* flags = g_cache_flags;
	if (flags[a] & CLIP_CODE_PLANE)
	{
		if (flags[b] & CLIP_CODE_PLANE)
		{
			if (flags[c] & CLIP_CODE_PLANE)
			{
				return;
			}
			uint16_t n = g_points_count;
			uint16_t n1 = g_points_count + 1;
			g_points_count += 2;
			IntersectWithPlane(c, a, n);
			IntersectWithPlane(c, b, n1);
			ClipTriangle(c, n, n1, CLIP_CODE_NEAR);
		}
		else
		{
			uint16_t n = g_points_count;
			uint16_t n1 = g_points_count + 1;
			g_points_count += 2;
			if (flags[c] & CLIP_CODE_PLANE)
			{
				IntersectWithPlane(b, a, n);
				IntersectWithPlane(b, c, n1);
				ClipTriangle(n, b, n1, CLIP_CODE_NEAR);
			}
			else
			{
				IntersectWithPlane(b, a, n);
				IntersectWithPlane(c, a, n1);
				ClipTriangle(n, b, c, CLIP_CODE_NEAR);
				ClipTriangle(n, c, n1, CLIP_CODE_NEAR);
			}
		}
	}
	else if (flags[b] & CLIP_CODE_PLANE)
	{
		uint16_t n = g_points_count;
		uint16_t n1 = g_points_count + 1;
		g_points_count += 2;
		if (flags[c] & CLIP_CODE_PLANE)
		{
			IntersectWithPlane(a, b, n);
			IntersectWithPlane(a, c, n1);
			ClipTriangle(a, n, n1, CLIP_CODE_NEAR);
		}
		else
		{
			IntersectWithPlane(a, b, n);
			IntersectWithPlane(c, b, n1);
			ClipTriangle(a, n, c, CLIP_CODE_NEAR);
			ClipTriangle(n, n1, c, CLIP_CODE_NEAR);
		}
	}
	else if (flags[c] & CLIP_CODE_PLANE)
	{
		uint16_t n = g_points_count;
		uint16_t n1 = g_points_count + 1;
		g_points_count += 2;
		IntersectWithPlane(a, c, n);
		IntersectWithPlane(b, c, n1);
		ClipTriangle(n, a, b, CLIP_CODE_NEAR);
		ClipTriangle(n, b, n1, CLIP_CODE_NEAR);
	}
	else
	{
		ClipTriangle(a, b, c, CLIP_CODE_NEAR);
	}
}

void __fastcall LH3DTech::ClipTriangleInBuild(uint16_t a, uint16_t b, uint16_t c)
{
	unsigned long* flags = g_cache_flags;
	if (flags[a] & CLIP_CODE_PLANE)
	{
		if (flags[b] & CLIP_CODE_PLANE)
		{
			if (flags[c] & CLIP_CODE_PLANE)
			{
				return;
			}
			uint16_t n = g_points_count;
			uint16_t n1 = g_points_count + 1;
			g_points_count += 2;
			IntersectWithPlane(c, a, n);
			IntersectWithPlane(c, b, n1);
			AddEdge(n, n1);
			ClipTriangle(c, n, n1, CLIP_CODE_NEAR);
		}
		else
		{
			uint16_t n = g_points_count;
			uint16_t n1 = g_points_count + 1;
			g_points_count += 2;
			if (flags[c] & CLIP_CODE_PLANE)
			{
				IntersectWithPlane(b, a, n);
				IntersectWithPlane(b, c, n1);
				AddEdge(n, n1);
				ClipTriangle(n, b, n1, CLIP_CODE_NEAR);
			}
			else
			{
				IntersectWithPlane(b, a, n);
				IntersectWithPlane(c, a, n1);
				AddEdge(n, n1);
				ClipTriangle(n, b, c, CLIP_CODE_NEAR);
				ClipTriangle(n, c, n1, CLIP_CODE_NEAR);
			}
		}
	}
	else if (flags[b] & CLIP_CODE_PLANE)
	{
		uint16_t n = g_points_count;
		uint16_t n1 = g_points_count + 1;
		g_points_count += 2;
		if (flags[c] & CLIP_CODE_PLANE)
		{
			IntersectWithPlane(a, b, n);
			IntersectWithPlane(a, c, n1);
			AddEdge(n, n1);
			ClipTriangle(a, n, n1, CLIP_CODE_NEAR);
		}
		else
		{
			IntersectWithPlane(a, b, n);
			IntersectWithPlane(c, b, n1);
			AddEdge(n, n1);
			ClipTriangle(a, n, c, CLIP_CODE_NEAR);
			ClipTriangle(n, n1, c, CLIP_CODE_NEAR);
		}
	}
	else if (flags[c] & CLIP_CODE_PLANE)
	{
		uint16_t n = g_points_count;
		uint16_t n1 = g_points_count + 1;
		g_points_count += 2;
		IntersectWithPlane(a, c, n);
		IntersectWithPlane(b, c, n1);
		AddEdge(n, n1);
		ClipTriangle(n, a, b, CLIP_CODE_NEAR);
		ClipTriangle(n, b, n1, CLIP_CODE_NEAR);
	}
	else
	{
		ClipTriangle(a, b, c, CLIP_CODE_NEAR);
	}
}

void __fastcall LH3DTech::IntersectWithPlane(uint16_t inside, uint16_t outside, uint16_t out_index)
{
	Vertex3D* out = GetPointeurTPoint(outside);
	Vertex3D* result = GetPointeurTPoint(out_index);
	Vertex3D* in;
	Vertex3D  unprojected;
	if ((g_cache_flags[inside] & CLIP_CODE_FRUSTUM) == CLIP_CODE_NONE)
	{
		Vertex3D* projected = GetPointeurTPoint(inside);
		Vertex3D* vertex = &unprojected;
		vertex->uv.x = projected->uv.x;
		vertex->uv.y = projected->uv.y;
		vertex->color = projected->color;
		vertex->rhw = GetNearClipping() / projected->rhw;
		vertex->x = (projected->x - g_info_transform.HalfRes.x) * g_info_transform.InvHalfRes.x * vertex->rhw;
		vertex->y = (g_info_transform.HalfRes.y - projected->y) * g_info_transform.InvHalfRes.y * vertex->rhw;
		vertex->specular = projected->specular;
		in = vertex;
	}
	else
	{
		in = GetPointeurTPoint(inside);
	}

	float in_distance = GetPlaneDistance(in);
	if (in_distance < 0.0f)
	{
		in_distance = LH3D_TECH_PLANE_EPSILON;
	}
	float out_distance = GetPlaneDistance(out);
	if (out_distance > 0.0f)
	{
		out_distance = -LH3D_TECH_PLANE_EPSILON;
	}

	float t = in_distance / (in_distance - out_distance);
	float one_minus_t = 1.0f - t;
	LerpCoordinates(result, in, out, t, one_minus_t);
	LerpColors(result, in, out, t, one_minus_t);

	unsigned long flags = CLIP_CODE_NONE;
	if (result->rhw < g_info_transform.NearClip)
	{
		flags = CLIP_CODE_NEAR;
	}
	if (result->x > result->rhw)
	{
		flags |= CLIP_CODE_RIGHT;
	}
	if (-result->rhw > result->x)
	{
		flags |= CLIP_CODE_LEFT;
	}
	if (result->y > result->rhw)
	{
		flags |= CLIP_CODE_TOP;
	}
	if (-result->rhw > result->y)
	{
		flags |= CLIP_CODE_BOTTOM;
	}
	g_cache_flags[out_index] = flags;
	if (flags == CLIP_CODE_NONE)
	{
		result->rhw = 1.0f / result->rhw;
		result->x = (result->rhw * result->x + 1.0f) * g_info_transform.HalfRes.x;
		if (result->x < 0.0f)
		{
			result->x = 0.0f;
		}
		else if (result->x > g_max_screen[0])
		{
			result->x = g_max_screen[0];
		}
		result->y = g_info_transform.HalfRes.y - (result->rhw * result->y) * g_info_transform.HalfRes.y;
		if (result->y < 0.0f)
		{
			result->y = 0.0f;
		}
		else if (result->y > g_max_screen[1])
		{
			result->y = g_max_screen[1];
		}
		result->rhw = result->rhw * g_info_transform.NearClip;
		result->z = 1.0f - result->rhw;
	}
}

void __fastcall LH3DTech::Intersect(ClipCode code, uint16_t inside, uint16_t outside, uint16_t out_index)
{
	if (g_b_P3)
	{
		LH3DP3::Intersect(code, inside, outside, out_index);
		return;
	}
	Vertex3D* out = GetPointeurTPoint(outside);
	Vertex3D* result = GetPointeurTPoint(out_index);
	Vertex3D* in;
	Vertex3D  unprojected;
	if ((g_cache_flags[inside] & CLIP_CODE_FRUSTUM) == CLIP_CODE_NONE)
	{
		Unproject(&unprojected, GetPointeurTPoint(inside));
		in = &unprojected;
	}
	else
	{
		in = GetPointeurTPoint(inside);
	}

	float in_distance;
	float out_distance;
	switch (code)
	{
	case CLIP_CODE_NEAR:
		in_distance = in->rhw - g_info_transform.NearClip;
		out_distance = out->rhw - g_info_transform.NearClip;
		break;
	case CLIP_CODE_LEFT:
		in_distance = in->rhw + in->x;
		out_distance = out->rhw + out->x;
		break;
	case CLIP_CODE_RIGHT:
		in_distance = in->rhw - in->x;
		out_distance = out->rhw - out->x;
		break;
	case CLIP_CODE_TOP:
		in_distance = in->rhw - in->y;
		out_distance = out->rhw - out->y;
		break;
	case CLIP_CODE_BOTTOM:
		in_distance = in->rhw + in->y;
		out_distance = out->rhw + out->y;
		break;
	}

	float t = in_distance / (in_distance - out_distance);
	float one_minus_t = 1.0f - t;
	LerpCoordinates(result, in, out, t, one_minus_t);
	int blend = FloatToInt(t * LH3D_TECH_COLOR_BLEND_SCALE);
	int inverse = LH3D_TECH_COLOR_BLEND_MAX - blend;
	result->color = BlendColor(out->color, in->color, blend, inverse);
	result->specular = BlendColor(out->specular, in->specular, blend, inverse);

	unsigned long flags = GetRemainingClipFlags(code, result);
	g_cache_flags[out_index] = flags;
	if (flags == CLIP_CODE_NONE)
	{
		result->rhw = 1.0f / result->rhw;
		result->x = (result->rhw * result->x + 1.0f) * g_info_transform.HalfRes.x;
		if (result->x < 0.0f)
		{
			result->x = 0.0f;
		}
		else if (result->x > g_max_screen[0])
		{
			result->x = g_max_screen[0];
		}
		float scale = result->rhw * g_info_transform.HalfRes.y;
		result->y = g_info_transform.HalfRes.y - scale * result->y;
		if (result->y < 0.0f)
		{
			result->y = 0.0f;
		}
		else if (result->y > g_max_screen[1])
		{
			result->y = g_max_screen[1];
		}
		result->rhw = result->rhw * g_info_transform.NearClip;
		result->z = 1.0f - result->rhw;
	}
}

LHPoint LH3DTech::SetSun(const LHPoint& sun)
{
	g_sun_light = sun;
	LH3DRender::g_d3d_light.dvPosition.x = g_sun_light.x;
	LH3DRender::g_d3d_light.dvPosition.y = g_sun_light.y;
	LH3DRender::g_d3d_light.dvPosition.z = g_sun_light.z;
	LH3DRender::D3DDevice->SetLight(0, &LH3DRender::g_d3d_light);
	g_sun_light_clipping = g_sun_light;
	g_world_to_clipping.TransformPoint(g_sun_light_clipping);
	return g_sun_light;
}

#ifdef VERSION_BW1W100
void LH3DP3::Init()
{
	LH3DTech::g_b_P3 = false;
}
#else
void __fastcall LH3DTech::SyncPentium3() {}
#endif
