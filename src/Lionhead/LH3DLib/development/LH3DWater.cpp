#include "LH3DWater.h"

#include <math.h>   /* For fabs, sin, sqrt */
#include <string.h> /* For memset */

#include "LH3DColor.h"         /* For LH3DColor */
#include "LH3DIsland.h"        /* For LandCell */
#include "LH3DLevelOfDetail.h" /* For LH3DLevelOfDetail */
#include "LH3DMaterial.h"      /* For LH3DMaterial */
#include "LH3DMath.h"          /* For FloatToInt */
#include "LH3DMem.h"           /* For LH3DMem */
#include "LH3DRender.h"        /* For LH3DRender */
#include "LH3DTech.h"          /* For LH3DTech */
#include "LHCoord.h"           /* For LHCoord */
#include "LHMatrix.h"          /* For LHMatrix */

#define LH3D_WATER_WAVES             16
#define LH3D_WATER_HORIZON_MIN       -12440.0f
#define LH3D_WATER_HORIZON_MAX       17560.0f
#define LH3D_WATER_LINE_INDICES      6
#define LH3D_WATER_SEA_RANGE         2000.0f
#define LH3D_WATER_SEA_RANGE_TILLING 1800.0f
#define LH3D_WATER_SEA_SCROLL        (-1.0f / 330.0f)
#define LH3D_WATER_SEA_WAVE_LENGTH   0.90000004f
#define LH3D_WATER_SEA_EPSILON       0.0001f
#define LH3D_WATER_SEA_FAR_WAVES     (1.0f / 70.0f)
#define LH3D_WATER_SEA_NEAR_WAVES    (1.0f / 30.0f)
#define LH3D_WATER_SEA_WAVE_START    30.0f
#define LH3D_WATER_SEA_WAVE_RAMP     0.025f
#define LH3D_WATER_SIMPLE_EXTENT     70000.0f
#define LH3D_WATER_SIMPLE_TILING     50.0f
#define LH3D_WATER_SIMPLE_SCROLL     (-1.0f / 330000.0f)

static float g_w_max;
static float g_w_min;
static float g_y_max;
static float g_y_min;

uint32_t     LH3DWater::g_specular_sky;
float        LH3DWater::g_v_inc;
float        LH3DWater::g_u_inc;
float        LH3DWater::g_water_altitude;
int          LH3DWater::g_nb_max_indice;
int          LH3DWater::g_nb_max_point;
int          LH3DWater::g_nb_max_line;
uint16_t*    LH3DWater::g_indice;
Vertex3D*    LH3DWater::g_points;
bool32_t     LH3DWater::g_open;
static float g_wave_sin[LH3D_WATER_WAVES];
uint32_t     LH3DWater::g_color_water = 0x00ffffff;
static float g_far_water = 14000.0f;
static float g_near_water = 7000.0f;
static int   g_water_alpha = 80;

void __fastcall LH3DWater::Open(long screen_height)
{
	if (g_open)
	{
		Report3D__FPCce("LH3DWater::Open already open\n");
		return;
	}
	g_nb_max_line = screen_height / 2;
	g_nb_max_point = g_nb_max_line * 2 + 2;
	g_open = true;
	g_nb_max_indice = g_nb_max_line * LH3D_WATER_LINE_INDICES;
	g_water_altitude = 0.0f;
	g_u_inc = 0.0f;
	g_v_inc = 0.0f;
	long size = g_nb_max_point * sizeof(Vertex3D);
	g_points = (Vertex3D*)LH3DMem::Alloc(size);
	memset(g_points, 0, size);
	size = g_nb_max_indice * sizeof(uint16_t);
	g_indice = (uint16_t*)LH3DMem::Alloc(size);
	memset(g_indice, 0, size);
	uint16_t* indice = g_indice;
	for (int line = 0; line < g_nb_max_line; line++)
	{
		uint16_t vertex = line * 2;
		*indice++ = vertex;
		*indice++ = vertex + 1;
		*indice++ = vertex + 2;
		*indice++ = vertex + 1;
		*indice++ = vertex + 3;
		*indice++ = vertex + 2;
	}
	for (int point = 0; point < g_nb_max_point; point++)
	{
		if (!(point & 1))
		{
			g_points[point].x = 0.0f;
		}
		else
		{
			g_points[point].x = (float)LH3DTech::g_info_transform.resolution.x;
		}
		g_points[point].uv.x = 0.0f;
		g_points[point].uv.y = 0.0f;
		g_points[point].rhw = 1.0f;
		g_points[point].z = 0.0f;
		g_points[point].specular = 0;
		g_points[point].color = 0xffffffff;
	}
	for (int wave = 0; wave < LH3D_WATER_WAVES; wave++)
	{
		g_wave_sin[wave] = (float)sin(wave * (2.0f * 3.14159265f / LH3D_WATER_WAVES));
	}
}

void LH3DWater::Close()
{
	if (!g_open)
	{
		Report3D__FPCce("LH3DWater::Close not open\n");
		return;
	}
	if (g_points != NULL)
	{
		LH3DMem::Free(g_points);
		g_points = NULL;
	}
	if (g_indice != NULL)
	{
		LH3DMem::Free(g_indice);
		g_indice = NULL;
	}
	g_open = false;
}

bool32_t LH3DWater::ComputeHorizon()
{
	LHPoint corners[4] = {
		LHPoint(LH3D_WATER_HORIZON_MIN, g_water_altitude, LH3D_WATER_HORIZON_MIN),
		LHPoint(LH3D_WATER_HORIZON_MAX, g_water_altitude, LH3D_WATER_HORIZON_MIN),
		LHPoint(LH3D_WATER_HORIZON_MAX, g_water_altitude, LH3D_WATER_HORIZON_MAX),
		LHPoint(LH3D_WATER_HORIZON_MIN, g_water_altitude, LH3D_WATER_HORIZON_MAX),
	};
	Transform(corners, 4);
	LH3DTech::g_index_count = 0;
	LH3DTech::g_points_count = 4;
	LH3DTech::g_clip_with_double_sided = true;
	if (LH3DTech::g_cache_flags[0] | LH3DTech::g_cache_flags[1] | LH3DTech::g_cache_flags[2] |
	    LH3DTech::g_cache_flags[4])
	{
		if (LH3DTech::g_cache_flags[0] & LH3DTech::g_cache_flags[1] & LH3DTech::g_cache_flags[2] &
		    LH3DTech::g_cache_flags[3])
		{
			return false;
		}
		if (LH3DTech::g_cache_flags[0] | LH3DTech::g_cache_flags[1] | LH3DTech::g_cache_flags[2])
		{
			LH3DTech::ClipTriangle(0, 2, 1, LH3DTech::CLIP_CODE_NEAR);
		}
		else
		{
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 0;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 2;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 1;
		}
		if (LH3DTech::g_cache_flags[3] | LH3DTech::g_cache_flags[0] | LH3DTech::g_cache_flags[2])
		{
			LH3DTech::ClipTriangle(0, 3, 2, LH3DTech::CLIP_CODE_NEAR);
		}
		else
		{
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 0;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 3;
			LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 2;
		}
	}
	else
	{
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 0;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 2;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 1;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 0;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 3;
		LH3DTech::g_list_indices[LH3DTech::g_index_count++] = 2;
	}
	float height = (float)LH3DTech::g_info_transform.resolution.y;
	g_y_max = -1.0f;
	g_y_min = height;
	if (LH3DTech::g_index_count == 0)
	{
		return false;
	}
	int       triangles = LH3DTech::g_index_count / 3;
	uint16_t* index = LH3DTech::g_list_indices;
	for (int triangle = 0; triangle < triangles; triangle++)
	{
		for (int corner = 0; corner < 3; corner++)
		{
			Vertex3D* vertex = &LH3DTech::g_cache_t_points[*index++];
			if (vertex->y > g_y_max)
			{
				g_y_max = vertex->y;
				g_w_max = vertex->rhw;
			}
			else if (vertex->y < g_y_min)
			{
				g_y_min = vertex->y;
				g_w_min = vertex->rhw;
			}
		}
	}
	if (g_y_max < 0.0f)
	{
		return false;
	}
	float last = (float)(LH3DTech::g_info_transform.resolution.y - 1);
	if (g_y_min > last)
	{
		return false;
	}
	if (g_y_max > last)
	{
		g_y_max = height - 1.0f;
	}
	if (g_y_min < 0.0f)
	{
		g_y_min = 0.0f;
	}
	return true;
}

void __fastcall LH3DWater::Transform(LHPoint* points, long count)
{
	unsigned long* flags = LH3DTech::g_cache_flags;
	Vertex3D*      out = LH3DTech::g_cache_t_points;
	for (; count > 0; count--)
	{
		LHMatrix* matrix = LH3DTech::g_current_matrix;
		float     x = points->x;
		float     y = points->y;
		float     z = points->z;
		out->x = matrix->m[6] * z + matrix->m[3] * y + matrix->m[0] * x + matrix->m[9];
		out->y = matrix->m[7] * z + matrix->m[4] * y + matrix->m[1] * x + matrix->m[10];
		out->rhw = matrix->m[8] * z + matrix->m[5] * y + matrix->m[2] * x + matrix->m[11];
		if (out->rhw < LH3DTech::g_info_transform.NearClip)
		{
			*flags = LH3DTech::CLIP_CODE_NEAR;
		}
		else
		{
			*flags = LH3DTech::CLIP_CODE_NONE;
		}
		if (out->x > out->rhw)
		{
			*flags |= LH3DTech::CLIP_CODE_RIGHT;
		}
		else if (-out->rhw > out->x)
		{
			*flags |= LH3DTech::CLIP_CODE_LEFT;
		}
		if (out->y > out->rhw)
		{
			*flags |= LH3DTech::CLIP_CODE_TOP;
		}
		else if (-out->rhw > out->y)
		{
			*flags |= LH3DTech::CLIP_CODE_BOTTOM;
		}
		if (*flags == LH3DTech::CLIP_CODE_NONE)
		{
			out->rhw = 1.0f / out->rhw;
			out->x = (out->rhw * out->x + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
			out->y = (1.0f - out->rhw * out->y) * LH3DTech::g_info_transform.HalfRes.y;
			out->rhw = LH3DTech::g_info_transform.NearClip * out->rhw;
			out->z = 1.0f - out->rhw;
		}
		flags++;
		points++;
		out++;
	}
}

void __cdecl DrawSimpleWater(LH3DMaterial* material)
{
	static LHPoint corners[4] = {
		LHPoint(-LH3D_WATER_SIMPLE_EXTENT, 0.0f, LH3D_WATER_SIMPLE_EXTENT),
		LHPoint(LH3D_WATER_SIMPLE_EXTENT, 0.0f, LH3D_WATER_SIMPLE_EXTENT),
		LHPoint(LH3D_WATER_SIMPLE_EXTENT, 0.0f, -LH3D_WATER_SIMPLE_EXTENT),
		LHPoint(-LH3D_WATER_SIMPLE_EXTENT, 0.0f, -LH3D_WATER_SIMPLE_EXTENT),
	};
	static long  indices[] = {0, 1, 2, 0, 2, 3};
	static float u;
	static float v;
	float        scroll = LH3DTech::GetGameTimeInc() * LH3D_WATER_SIMPLE_SCROLL;
	u += LH3DTech::g_ambient_wind_direction.x * scroll;
	v += LH3DTech::g_ambient_wind_direction.z * scroll;
	u -= (int)u;
	v -= (int)v;
	uint32_t color = LandCell::g_darkness_to_color[LAND_CELL_MAX_DARKNESS] | 0xff000000;
	LH3DWater::g_color_water = color;
	LH3DColor colors[4] = {color, color, color, color};
	float     uvs[4 * 2] = {
		u,
		v,
		u + LH3D_WATER_SIMPLE_TILING,
		v,
		u + LH3D_WATER_SIMPLE_TILING,
		v + LH3D_WATER_SIMPLE_TILING,
		u,
		v + LH3D_WATER_SIMPLE_TILING,
	};
	LH3DRender::SetMaterial(material, 0);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, false);
	LH3DRender::g_b_do_update_material = false;
	LH3DTech::Draw3DWorldTriangle(4, corners, colors, uvs, 2, indices, material, false);
	LH3DRender::g_b_do_update_material = true;
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, true);
}

void __fastcall LH3DWater::DrawSea(LH3DMaterial* material)
{
	static int wave;
	LHCoord    leftCoord;
	LHCoord    rightCoord;
	LHPoint    ground;
	LHPoint    look;
	LHPoint    leftPoint;
	LHPoint    rightPoint;
	g_color_water = LandCell::g_darkness_to_color[LAND_CELL_MAX_DARKNESS] & 0x00ffffff;
	float range = LH3D_WATER_SEA_RANGE - LH3DLevelOfDetail::g_water_tilling * LH3D_WATER_SEA_RANGE_TILLING;
	float scroll = LH3DTech::GetGameTimeInc() * LH3D_WATER_SEA_SCROLL;
	g_u_inc += LH3DTech::g_ambient_wind_direction.x * scroll;
	g_v_inc += LH3DTech::g_ambient_wind_direction.z * scroll;
	g_u_inc -= (int)(g_u_inc / range) * range;
	g_v_inc -= (int)(g_v_inc / range) * range;
	if (LH3DLevelOfDetail::g_water_tilling == 0.0f)
	{
		DrawSimpleWater(material);
		return;
	}
	float invRange = 1.0f / range;
	look.x = LH3DTech::g_camera.LookAtVector.x;
	look.z = LH3DTech::g_camera.LookAtVector.z;
	if (look.x != 0.0f || look.z != 0.0f)
	{
		float scale = LH3D_WATER_SEA_WAVE_LENGTH / (float)sqrt(look.x * look.x + look.z * look.z);
		look.x *= scale;
		look.z *= scale;
	}
	LH3DTech::g_current_matrix = &LH3DTech::g_world_to_clipping;
	if (!ComputeHorizon())
	{
		return;
	}
	scroll = LH3DTech::GetGameTimeInc() * LH3D_WATER_SEA_SCROLL;
	g_u_inc += LH3DTech::g_ambient_wind_direction.x * scroll;
	g_v_inc += LH3DTech::g_ambient_wind_direction.z * scroll;
	g_u_inc -= (int)(g_u_inc / range) * range;
	g_v_inc -= (int)(g_v_inc / range) * range;
	int top = (int)g_y_min;
	int bottom = (int)g_y_max;
	int lines = (bottom - top + 2) / 2;
	g_w_min = g_w_min / LH3DTech::g_info_transform.NearClip;
	g_w_max = g_w_max / LH3DTech::g_info_transform.NearClip;
	float wStep = (g_w_max - g_w_min) / (lines - 1.0f);
	float w = g_w_min;
	int   frame = wave;
	if (LH3DTech::GetGameTimeInc() != 0)
	{
		frame = (frame + 1) & (LH3D_WATER_WAVES - 1);
		wave = frame;
	}
	float y = (float)top;
	float right = (float)(LH3DTech::g_info_transform.resolution.x - 1);
	int   vertex = 0;
	for (int line = 0; line < lines + 1; line++)
	{
		int screenY = (int)y;
		leftCoord.Set(0, screenY);
		rightCoord.Set((int)right, screenY);
		LH3DTech::Get3DPointFromScreen(leftCoord, ground, 0.0f);
		float camX = LH3DTech::g_camera.pos.x;
		float camY = LH3DTech::g_camera.pos.y;
		float camZ = LH3DTech::g_camera.pos.z;
		float dy = camY - ground.y;
		if (fabs(dy) >= LH3D_WATER_SEA_EPSILON)
		{
			float t = -(ground.y / dy);
			leftPoint.x = (camX - ground.x) * t + ground.x;
			leftPoint.z = (camZ - ground.z) * t + ground.z;
		}
		LH3DTech::Get3DPointFromScreen(rightCoord, ground, 0.0f);
		camX = LH3DTech::g_camera.pos.x;
		camY = LH3DTech::g_camera.pos.y;
		camZ = LH3DTech::g_camera.pos.z;
		dy = camY - ground.y;
		if (fabs(dy) >= LH3D_WATER_SEA_EPSILON)
		{
			float t = -(ground.y / dy);
			rightPoint.x = (camX - ground.x) * t + ground.x;
			rightPoint.z = (camZ - ground.z) * t + ground.z;
		}
		float alphaSlope = (float)(255 - g_water_alpha) / (g_far_water - g_near_water);
		frame = (frame + 2) & (LH3D_WATER_WAVES - 1);
		float depth = LH3DTech::g_world_to_camera.m[8] * leftPoint.z + LH3DTech::g_world_to_camera.m[2] * leftPoint.x +
		              LH3DTech::g_world_to_camera.m[11];
		if (depth > g_far_water)
		{
			g_points[vertex + 1].color = (g_water_alpha << 24) | g_color_water;
			g_points[vertex].color = g_points[vertex + 1].color;
		}
		else if (depth < g_near_water)
		{
			g_points[vertex + 1].color = g_color_water | 0xff000000;
			g_points[vertex].color = g_points[vertex + 1].color;
		}
		else
		{
			int alpha = FloatToInt(255.0f - (depth - g_near_water) * alphaSlope);
			g_points[vertex + 1].color = (alpha << 24) | g_color_water;
			g_points[vertex].color = g_points[vertex + 1].color;
		}
		if (y > 0.5f && line == 0)
		{
			g_points[vertex + 1].color = g_color_water | 0x20000000;
			g_points[vertex].color = g_points[vertex + 1].color;
		}
		if (line & 1)
		{
			g_points[vertex].uv = g_points[vertex - 2].uv;
			g_points[vertex + 1].uv = g_points[vertex - 1].uv;
		}
		else
		{
			if (w < LH3D_WATER_SEA_FAR_WAVES)
			{
				float sine = g_wave_sin[frame];
				float offsetX = look.x * sine;
				leftPoint.x += offsetX;
				float offsetZ = sine * look.z;
				leftPoint.z += offsetZ;
				rightPoint.x += offsetX;
				rightPoint.z += offsetZ;
			}
			else if (w < LH3D_WATER_SEA_NEAR_WAVES)
			{
				float amplitude = (1.0f / w - LH3D_WATER_SEA_WAVE_START) * LH3D_WATER_SEA_WAVE_RAMP * g_wave_sin[frame];
				float offsetX = amplitude * look.x;
				leftPoint.x += offsetX;
				float offsetZ = amplitude * look.z;
				leftPoint.z += offsetZ;
				rightPoint.x += offsetX;
				rightPoint.z += offsetZ;
			}
			g_points[vertex].uv.x = (leftPoint.x + g_u_inc) * invRange;
			g_points[vertex].uv.y = (leftPoint.z + g_v_inc) * invRange;
			g_points[vertex + 1].uv.x = (rightPoint.x + g_u_inc) * invRange;
			g_points[vertex + 1].uv.y = (rightPoint.z + g_v_inc) * invRange;
		}
		g_points[vertex + 1].y = y;
		g_points[vertex].y = y;
		vertex += 2;
		y += 2.0f;
		w += wStep;
	}
	LH3DRender::SetMaterial(material, 0);
	if (LH3DRender::g_motion_blur_value)
	{
		DrawAndClip(D3DPT_TRIANGLELIST, D3DFVF_TLVERTEX, g_points, lines * 2 + 2, g_indice, lines * 6);
	}
	else
	{
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, false);
		DrawAndClip(D3DPT_TRIANGLELIST, D3DFVF_TLVERTEX, g_points, lines * 2 + 2, g_indice, lines * 6);
		LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
	}
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZWRITEENABLE, true);
}
