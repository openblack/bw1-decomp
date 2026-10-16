#include "LH3DLibPCH.h"

#include "LH3DIsland.h"

#include <Lionhead/LHFile/ver3.0/LHOSFile.h> /* For LHSaveData */

#include "LH3DColor.h"     /* For LH3DColor */
#include "LH3DLandscape.h" /* For LH3DLandscape */
#include "LH3DMaterial.h"  /* For LH3DMaterial */
#include "LH3DMem.h"       /* For LH3DMem */
#include "LH3DP3.h"        /* For LH3DP3 */
#include "LH3DTech.h"      /* For LH3DTech */
#include "LH3DTexture.h"   /* For LH3DTexture */
#include "LHTGA.h"         /* For LHTGA */
#include "MeshLodInfo.h"   /* For MeshLodInfo */

float LH3DIsland::g_height_unit = 0.67f;
float LH3DIsland::g_max_fogr = 64.0f;
float LH3DIsland::g_max_fogg = 64.0f;
float LH3DIsland::g_max_fogb = 64.0f;
float LH3DIsland::g_fog_min = 15.0f;
float LH3DIsland::g_fog_max = 400.0f;
int   LH3DIsland::g_max_fadefac = 256;

uint16_t MeshLodInfo::g_NORTH_01[24][3] = {
	{0, 2, 18},   //
	{0, 18, 17},  //
	{2, 19, 18},  //
	{2, 4, 20},   //
	{2, 20, 19},  //
	{4, 21, 20},  //
	{4, 6, 22},   //
	{4, 22, 21},  //
	{6, 23, 22},  //
	{6, 8, 24},   //
	{6, 24, 23},  //
	{8, 25, 24},  //
	{8, 10, 26},  //
	{8, 26, 25},  //
	{10, 27, 26}, //
	{10, 12, 28}, //
	{10, 28, 27}, //
	{12, 29, 28}, //
	{12, 14, 30}, //
	{12, 30, 29}, //
	{14, 31, 30}, //
	{14, 16, 32}, //
	{14, 32, 31}, //
	{16, 33, 32}, //
};
uint16_t MeshLodInfo::g_SOUTH_01[24][3] = {
	{256, 274, 272}, //
	{255, 256, 272}, //
	{256, 257, 274}, //
	{258, 276, 274}, //
	{257, 258, 274}, //
	{258, 259, 276}, //
	{260, 278, 276}, //
	{259, 260, 276}, //
	{260, 261, 278}, //
	{262, 280, 278}, //
	{261, 262, 278}, //
	{262, 263, 280}, //
	{264, 282, 280}, //
	{263, 264, 280}, //
	{264, 265, 282}, //
	{266, 284, 282}, //
	{265, 266, 282}, //
	{266, 267, 284}, //
	{268, 286, 284}, //
	{267, 268, 284}, //
	{268, 269, 286}, //
	{270, 288, 286}, //
	{269, 270, 286}, //
	{270, 271, 288}, //
};
uint16_t MeshLodInfo::g_WEST_01[24][3] = {
	{0, 18, 34},     //
	{0, 1, 18},      //
	{18, 35, 34},    //
	{34, 52, 68},    //
	{34, 35, 52},    //
	{52, 69, 68},    //
	{68, 86, 102},   //
	{68, 69, 86},    //
	{86, 103, 102},  //
	{102, 120, 136}, //
	{102, 103, 120}, //
	{120, 137, 136}, //
	{136, 154, 170}, //
	{136, 137, 154}, //
	{154, 171, 170}, //
	{170, 188, 204}, //
	{170, 171, 188}, //
	{188, 205, 204}, //
	{204, 222, 238}, //
	{204, 205, 222}, //
	{222, 239, 238}, //
	{238, 256, 272}, //
	{238, 239, 256}, //
	{256, 273, 272}, //
};
uint16_t MeshLodInfo::g_EAST_01[24][3] = {
	{16, 50, 32},    //
	{15, 16, 32},    //
	{32, 50, 49},    //
	{50, 84, 66},    //
	{49, 50, 66},    //
	{66, 84, 83},    //
	{84, 118, 100},  //
	{83, 84, 100},   //
	{100, 118, 117}, //
	{118, 152, 134}, //
	{117, 118, 134}, //
	{134, 152, 151}, //
	{152, 186, 168}, //
	{151, 152, 168}, //
	{168, 186, 185}, //
	{186, 220, 202}, //
	{185, 186, 202}, //
	{202, 220, 219}, //
	{220, 254, 236}, //
	{219, 220, 236}, //
	{236, 254, 253}, //
	{254, 288, 270}, //
	{253, 254, 270}, //
	{270, 288, 287}, //
};
uint16_t MeshLodInfo::g_NORTH_WEST_01[46][3] = {
	{0, 2, 18},      //
	{2, 19, 18},     //
	{2, 4, 20},      //
	{2, 20, 19},     //
	{4, 21, 20},     //
	{4, 6, 22},      //
	{4, 22, 21},     //
	{6, 23, 22},     //
	{6, 8, 24},      //
	{6, 24, 23},     //
	{8, 25, 24},     //
	{8, 10, 26},     //
	{8, 26, 25},     //
	{10, 27, 26},    //
	{10, 12, 28},    //
	{10, 28, 27},    //
	{12, 29, 28},    //
	{12, 14, 30},    //
	{12, 30, 29},    //
	{14, 31, 30},    //
	{14, 16, 32},    //
	{14, 32, 31},    //
	{16, 33, 32},    //
	{0, 18, 34},     //
	{18, 35, 34},    //
	{34, 52, 68},    //
	{34, 35, 52},    //
	{52, 69, 68},    //
	{68, 86, 102},   //
	{68, 69, 86},    //
	{86, 103, 102},  //
	{102, 120, 136}, //
	{102, 103, 120}, //
	{120, 137, 136}, //
	{136, 154, 170}, //
	{136, 137, 154}, //
	{154, 171, 170}, //
	{170, 188, 204}, //
	{170, 171, 188}, //
	{188, 205, 204}, //
	{204, 222, 238}, //
	{204, 205, 222}, //
	{222, 239, 238}, //
	{238, 256, 272}, //
	{238, 239, 256}, //
	{256, 273, 272}, //
};
uint16_t MeshLodInfo::g_NORTH_EAST_01[46][3] = {
	{0, 2, 18},      //
	{0, 18, 17},     //
	{2, 19, 18},     //
	{2, 4, 20},      //
	{2, 20, 19},     //
	{4, 21, 20},     //
	{4, 6, 22},      //
	{4, 22, 21},     //
	{6, 23, 22},     //
	{6, 8, 24},      //
	{6, 24, 23},     //
	{8, 25, 24},     //
	{8, 10, 26},     //
	{8, 26, 25},     //
	{10, 27, 26},    //
	{10, 12, 28},    //
	{10, 28, 27},    //
	{12, 29, 28},    //
	{12, 14, 30},    //
	{12, 30, 29},    //
	{14, 31, 30},    //
	{14, 16, 32},    //
	{14, 32, 31},    //
	{16, 50, 32},    //
	{32, 50, 49},    //
	{50, 84, 66},    //
	{49, 50, 66},    //
	{66, 84, 83},    //
	{84, 118, 100},  //
	{83, 84, 100},   //
	{100, 118, 117}, //
	{118, 152, 134}, //
	{117, 118, 134}, //
	{134, 152, 151}, //
	{152, 186, 168}, //
	{151, 152, 168}, //
	{168, 186, 185}, //
	{186, 220, 202}, //
	{185, 186, 202}, //
	{202, 220, 219}, //
	{220, 254, 236}, //
	{219, 220, 236}, //
	{236, 254, 253}, //
	{254, 288, 270}, //
	{253, 254, 270}, //
	{270, 288, 287}, //
};
uint16_t MeshLodInfo::g_SOUTH_WEST_01[46][3] = {
	{256, 274, 272}, //
	{256, 257, 274}, //
	{258, 276, 274}, //
	{257, 258, 274}, //
	{258, 259, 276}, //
	{260, 278, 276}, //
	{259, 260, 276}, //
	{260, 261, 278}, //
	{262, 280, 278}, //
	{261, 262, 278}, //
	{262, 263, 280}, //
	{264, 282, 280}, //
	{263, 264, 280}, //
	{264, 265, 282}, //
	{266, 284, 282}, //
	{265, 266, 282}, //
	{266, 267, 284}, //
	{268, 286, 284}, //
	{267, 268, 284}, //
	{268, 269, 286}, //
	{270, 288, 286}, //
	{269, 270, 286}, //
	{270, 271, 288}, //
	{0, 18, 34},     //
	{0, 1, 18},      //
	{18, 35, 34},    //
	{34, 52, 68},    //
	{34, 35, 52},    //
	{52, 69, 68},    //
	{68, 86, 102},   //
	{68, 69, 86},    //
	{86, 103, 102},  //
	{102, 120, 136}, //
	{102, 103, 120}, //
	{120, 137, 136}, //
	{136, 154, 170}, //
	{136, 137, 154}, //
	{154, 171, 170}, //
	{170, 188, 204}, //
	{170, 171, 188}, //
	{188, 205, 204}, //
	{204, 222, 238}, //
	{204, 205, 222}, //
	{222, 239, 238}, //
	{238, 256, 272}, //
	{238, 239, 256}, //
};
uint16_t MeshLodInfo::g_SOUTH_EAST_01[46][3] = {
	{256, 274, 272}, //
	{255, 256, 272}, //
	{256, 257, 274}, //
	{258, 276, 274}, //
	{257, 258, 274}, //
	{258, 259, 276}, //
	{260, 278, 276}, //
	{259, 260, 276}, //
	{260, 261, 278}, //
	{262, 280, 278}, //
	{261, 262, 278}, //
	{262, 263, 280}, //
	{264, 282, 280}, //
	{263, 264, 280}, //
	{264, 265, 282}, //
	{266, 284, 282}, //
	{265, 266, 282}, //
	{266, 267, 284}, //
	{268, 286, 284}, //
	{267, 268, 284}, //
	{268, 269, 286}, //
	{270, 288, 286}, //
	{269, 270, 286}, //
	{16, 50, 32},    //
	{15, 16, 32},    //
	{32, 50, 49},    //
	{50, 84, 66},    //
	{49, 50, 66},    //
	{66, 84, 83},    //
	{84, 118, 100},  //
	{83, 84, 100},   //
	{100, 118, 117}, //
	{118, 152, 134}, //
	{117, 118, 134}, //
	{134, 152, 151}, //
	{152, 186, 168}, //
	{151, 152, 168}, //
	{168, 186, 185}, //
	{186, 220, 202}, //
	{185, 186, 202}, //
	{202, 220, 219}, //
	{220, 254, 236}, //
	{219, 220, 236}, //
	{236, 254, 253}, //
	{254, 288, 270}, //
	{253, 254, 270}, //
};
uint16_t MeshLodInfo::g_NORTH_12[12][3] = {
	{0, 4, 36},   //
	{0, 36, 34},  //
	{4, 38, 36},  //
	{4, 8, 40},   //
	{4, 40, 38},  //
	{8, 42, 40},  //
	{8, 12, 44},  //
	{8, 44, 42},  //
	{12, 46, 44}, //
	{12, 16, 48}, //
	{12, 48, 46}, //
	{16, 50, 48}, //
};
uint16_t MeshLodInfo::g_SOUTH_12[12][3] = {
	{240, 276, 272}, //
	{238, 240, 272}, //
	{240, 242, 276}, //
	{244, 280, 276}, //
	{242, 244, 276}, //
	{244, 246, 280}, //
	{248, 284, 280}, //
	{246, 248, 280}, //
	{248, 250, 284}, //
	{252, 288, 284}, //
	{250, 252, 284}, //
	{252, 254, 288}, //
};
uint16_t MeshLodInfo::g_WEST_12[12][3] = {
	{0, 36, 68},     //
	{0, 2, 36},      //
	{36, 70, 68},    //
	{68, 104, 136},  //
	{68, 70, 104},   //
	{104, 138, 136}, //
	{136, 172, 204}, //
	{136, 138, 172}, //
	{172, 206, 204}, //
	{204, 240, 272}, //
	{204, 206, 240}, //
	{240, 274, 272}, //
};
uint16_t MeshLodInfo::g_EAST_12[12][3] = {
	{16, 84, 48},    //
	{14, 16, 48},    //
	{48, 84, 82},    //
	{84, 152, 116},  //
	{82, 84, 116},   //
	{116, 152, 150}, //
	{152, 220, 184}, //
	{150, 152, 184}, //
	{184, 220, 218}, //
	{220, 288, 252}, //
	{218, 220, 252}, //
	{252, 288, 286}, //
};
uint16_t MeshLodInfo::g_NORTH_WEST_12[22][3] = {
	{0, 4, 36},      //
	{4, 38, 36},     //
	{4, 8, 40},      //
	{4, 40, 38},     //
	{8, 42, 40},     //
	{8, 12, 44},     //
	{8, 44, 42},     //
	{12, 46, 44},    //
	{12, 16, 48},    //
	{12, 48, 46},    //
	{16, 50, 48},    //
	{0, 36, 68},     //
	{36, 70, 68},    //
	{68, 104, 136},  //
	{68, 70, 104},   //
	{104, 138, 136}, //
	{136, 172, 204}, //
	{136, 138, 172}, //
	{172, 206, 204}, //
	{204, 240, 272}, //
	{204, 206, 240}, //
	{240, 274, 272}, //
};
uint16_t MeshLodInfo::g_NORTH_EAST_12[22][3] = {
	{0, 4, 36},      //
	{0, 36, 34},     //
	{4, 38, 36},     //
	{4, 8, 40},      //
	{4, 40, 38},     //
	{8, 42, 40},     //
	{8, 12, 44},     //
	{8, 44, 42},     //
	{12, 46, 44},    //
	{12, 16, 48},    //
	{12, 48, 46},    //
	{16, 84, 48},    //
	{48, 84, 82},    //
	{84, 152, 116},  //
	{82, 84, 116},   //
	{116, 152, 150}, //
	{152, 220, 184}, //
	{150, 152, 184}, //
	{184, 220, 218}, //
	{220, 288, 252}, //
	{218, 220, 252}, //
	{252, 288, 286}, //
};
uint16_t MeshLodInfo::g_SOUTH_WEST_12[22][3] = {
	{240, 276, 272}, //
	{240, 242, 276}, //
	{244, 280, 276}, //
	{242, 244, 276}, //
	{244, 246, 280}, //
	{248, 284, 280}, //
	{246, 248, 280}, //
	{248, 250, 284}, //
	{252, 288, 284}, //
	{250, 252, 284}, //
	{252, 254, 288}, //
	{0, 36, 68},     //
	{0, 2, 36},      //
	{36, 70, 68},    //
	{68, 104, 136},  //
	{68, 70, 104},   //
	{104, 138, 136}, //
	{136, 172, 204}, //
	{136, 138, 172}, //
	{172, 206, 204}, //
	{204, 240, 272}, //
	{204, 206, 240}, //
};
uint16_t MeshLodInfo::g_SOUTH_EAST_12[22][3] = {
	{240, 276, 272}, //
	{238, 240, 272}, //
	{240, 242, 276}, //
	{244, 280, 276}, //
	{242, 244, 276}, //
	{244, 246, 280}, //
	{248, 284, 280}, //
	{246, 248, 280}, //
	{248, 250, 284}, //
	{252, 288, 284}, //
	{250, 252, 284}, //
	{16, 84, 48},    //
	{14, 16, 48},    //
	{48, 84, 82},    //
	{84, 152, 116},  //
	{82, 84, 116},   //
	{116, 152, 150}, //
	{152, 220, 184}, //
	{150, 152, 184}, //
	{184, 220, 218}, //
	{220, 288, 252}, //
	{218, 220, 252}, //
};

TextureLOD    LH3DIsland::g_sbump_lod(50.0f, 40.0f);
TextureLOD    LH3DIsland::g_texture_lod(300.0f, 40.0f);
LH3DMaterial* LH3DIsland::g_bump_material = NULL;
LandBlock*    LH3DIsland::g_current_block = NULL;
uint8_t       LH3DIsland::g_index_block[LAND_BLOCKS_SIDE][LAND_BLOCKS_SIDE];
float         LH3DIsland::g_fog_delta = g_fog_max - g_fog_min;
LH3DColor     LH3DIsland::g_max_color_fog((uint8_t)g_max_fogr, (uint8_t)g_max_fogg, (uint8_t)g_max_fogb, 0);
bool32_t      g_b_dont_do_d3d_activated_texture = false;
MeshLodInfo   MeshLodInfo::g_mesh_lod_info[MESH_LOD_TYPE_COUNT];
LandBlock*    LH3DIsland::g_ptr_blocks[LAND_MAX_BLOCKS];

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

static inline void* AllocClear(long size)
{
	void* data = LH3DMem::Alloc(size);
	if (data != NULL)
	{
		memset(data, 0, size);
	}
	return data;
}

#define LERP_COLOR_CHANNEL(a, b, weight, mask)                                                                         \
	(((((((b) & (mask)) - ((a) & (mask))) * (weight)) / LAND_WEIGHT_ONE) + ((a) & (mask))) & (mask))
#define LERP_COLOR(a, b, weight)                                                                                       \
	(LERP_COLOR_CHANNEL(a, b, weight, 0xff0000) | LERP_COLOR_CHANNEL(a, b, weight, 0xff00) |                           \
	 LERP_COLOR_CHANNEL(a, b, weight, 0xff))

#define AVERAGE_4444(a, b)                                                                                             \
	((((a) & 0xf000) + ((b) & 0xf000)) / 2 & 0xf000 | (((a) & 0xf00) + ((b) & 0xf00)) / 2 & 0xf00 |                    \
	 (((a) & 0xf0) + ((b) & 0xf0)) / 2 & 0xf0 | (((a) & 0xf) + ((b) & 0xf)) / 2 & 0xf)

void LH3DIsland::SetFogMinMax(float fog_min, float fog_max)
{
	g_fog_min = fog_min;
	g_fog_max = fog_max;
	g_fog_delta = fog_max - fog_min;
}

void LH3DIsland::SetFogColor(float red, float green, float blue, unsigned long fadefac)
{
	g_max_fadefac = fadefac;
	g_max_fogr = red;
	g_max_fogg = green;
	g_max_fogb = blue;
	g_max_color_fog = LH3DColor((uint8_t)red, (uint8_t)green, (uint8_t)blue, 0);
}

struct Plane
{
	float A;
	float B;
	float C;
	float D;

	Plane(float a, float b, float c, float d) : A(a), B(b), C(c), D(d) {}
};

static inline bool32_t IntersectPlanes(const Plane& plane1, const Plane& plane2, LHPoint& direction, LHPoint& point)
{
	LHPoint square;
	LHPoint normal1;
	LHPoint normal2;
	normal1.Set(plane1.A, plane1.B, plane1.C);
	normal2.Set(plane2.A, plane2.B, plane2.C);
	direction.CrossProduct(normal1, normal2);
	square.x = direction.x * direction.x;
	square.y = direction.y * direction.y;
	square.z = direction.z * direction.z;
	float scale;
	if (square.z > square.y && square.z > square.x && square.z > LAND_PLANES_PARALLEL_EPSILON)
	{
		scale = 1.0f / direction.z;
		point.Set(plane1.B * plane2.D - plane1.D * plane2.B, plane1.D * plane2.A - plane1.A * plane2.D, 0.0f);
	}
	else if (square.y > square.x && square.y > LAND_PLANES_PARALLEL_EPSILON)
	{
		scale = 1.0f / direction.y;
		point.Set(plane1.C * plane2.D - plane1.D * plane2.C, 0.0f, plane1.D * plane2.A - plane1.A * plane2.D);
	}
	else if (square.x > LAND_PLANES_PARALLEL_EPSILON)
	{
		scale = 1.0f / direction.x;
		point.Set(0.0f, plane1.C * plane2.D - plane1.D * plane2.C, plane1.D * plane2.B - plane1.B * plane2.D);
	}
	else
	{
		return false;
	}
	point.Mul(scale);
	direction.Mul(1.0f / (float)sqrt(square.z + square.y + square.x));
	return true;
}

void TextureLOD::ComputeXLine()
{
	static float s_max_height = 165.0f;

	float maxHeight = s_max_height * LH3DIsland::g_height_unit;
	float height = LH3DTech::g_camera.pos.y;
	if (height > maxHeight)
	{
		height = maxHeight;
	}
	Plane   ground(0.0f, 1.0f, 0.0f, -height);
	LHPoint target = *LH3DTech::GetTargetVector();
	LHPoint pos = target * Distance;
	pos += *LH3DTech::GetCameraPosition();
	Plane plane(target.x, target.y, target.z, -pos.DotProductInline(target));
	Valid = IntersectPlanes(ground, plane, Normal, Point);
}

void MeshLOD::ComputeXLine()
{
	Plane   ground(0.0f, 1.0f, 0.0f, 0.0f);
	LHPoint target = *LH3DTech::GetTargetVector();
	LHPoint pos = target * Distance;
	pos += *LH3DTech::GetCameraPosition();
	Plane plane(target.x, target.y, target.z, -pos.DotProductInline(target));
	Valid = IntersectPlanes(ground, plane, Normal, Point);
}

bool32_t TouchesSea(uint8_t* map, long x, long z)
{
	if (x == 0 || z == 0 || x == LAND_MAP_MAX || z == LAND_MAP_MAX)
	{
		return true;
	}
	map += x * LAND_MAP_SIZE + z;
	if (map[0] < LAND_SEA_LEVEL)
	{
		return true;
	}
	if (map[1] < LAND_SEA_LEVEL)
	{
		return true;
	}
	if (map[LAND_MAP_SIZE] < LAND_SEA_LEVEL)
	{
		return true;
	}
	return map[LAND_MAP_SIZE + 1] < LAND_SEA_LEVEL;
}

bool32_t HasCornerAt(uint8_t* map, long x, long z, uint8_t altitude)
{
	map += x * LAND_MAP_SIZE + z;
	if (map[0] == altitude)
	{
		return true;
	}
	if (z < LAND_MAP_MAX && map[1] == altitude)
	{
		return true;
	}
	if (x < LAND_MAP_MAX && map[LAND_MAP_SIZE] == altitude)
	{
		return true;
	}
	if (z < LAND_MAP_MAX && x < LAND_MAP_MAX && map[LAND_MAP_SIZE + 1] == altitude)
	{
		return true;
	}
	return false;
}

void __fastcall LowerCornersTo(uint8_t* map, long x, long z, uint8_t altitude)
{
	map += x * LAND_MAP_SIZE + z;
	if (map[0] > altitude)
	{
		map[0] = altitude;
	}
	if (z < LAND_MAP_MAX && map[1] > altitude)
	{
		map[1] = altitude;
	}
	if (x < LAND_MAP_MAX && map[LAND_MAP_SIZE] > altitude)
	{
		map[LAND_MAP_SIZE] = altitude;
	}
	if (z < LAND_MAP_MAX && x < LAND_MAP_MAX && map[LAND_MAP_SIZE + 1] > altitude)
	{
		map[LAND_MAP_SIZE + 1] = altitude;
	}
}

void RaiseCornersTo(uint8_t* map, long x, long z, uint8_t altitude)
{
	map += x * LAND_MAP_SIZE + z;
	if (map[0] < altitude)
	{
		map[0] = altitude;
	}
	if (z < LAND_MAP_MAX && map[1] < altitude)
	{
		map[1] = altitude;
	}
	if (x < LAND_MAP_MAX)
	{
		if (map[LAND_MAP_SIZE] < altitude)
		{
			map[LAND_MAP_SIZE] = altitude;
		}
		if (z < LAND_MAP_MAX && map[LAND_MAP_SIZE + 1] < altitude)
		{
			map[LAND_MAP_SIZE + 1] = altitude;
		}
	}
}

uint8_t __fastcall GetHighestCorner(uint8_t* map, long x, long z)
{
	map += x * LAND_MAP_SIZE + z;
	uint8_t highest = map[0];
	if (highest <= map[1])
	{
		highest = map[1];
	}
	if (highest <= map[LAND_MAP_SIZE])
	{
		highest = map[LAND_MAP_SIZE];
	}
	if (highest <= map[LAND_MAP_SIZE + 1])
	{
		highest = map[LAND_MAP_SIZE + 1];
	}
	return highest;
}

uint8_t __fastcall GetLowestCorner(uint8_t* map, long x, long z)
{
	map += x * LAND_MAP_SIZE + z;
	uint8_t lowest = map[0];
	if (lowest >= map[1])
	{
		lowest = map[1];
	}
	if (lowest >= map[LAND_MAP_SIZE])
	{
		lowest = map[LAND_MAP_SIZE];
	}
	if (lowest >= map[LAND_MAP_SIZE + 1])
	{
		lowest = map[LAND_MAP_SIZE + 1];
	}
	return lowest;
}

void SmoothCoast() {}

void LH3DIsland::AdjustAlti(void* data)
{
	uint8_t* map = (uint8_t*)data;
	int      i;
	for (i = 0; i < LAND_MAP_SIZE; i++)
	{
		map[i * LAND_MAP_SIZE] = 0;
		map[i * LAND_MAP_SIZE + LAND_MAP_MAX] = 0;
		map[i] = 0;
		map[LAND_MAP_MAX * LAND_MAP_SIZE + i] = 0;
	}
	uint8_t* altitude = map;
	long     x;
	long     z;
	for (x = 0; x < LAND_MAP_SIZE; x++)
	{
		for (z = 0; z < LAND_MAP_SIZE; z++)
		{
			if (*altitude < LAND_SEA_LEVEL)
			{
				*altitude = 0;
			}
			altitude++;
		}
	}
	for (x = 0; x < LAND_MAP_SIZE; x++)
	{
		for (z = 0; z < LAND_MAP_SIZE; z++)
		{
			if (TouchesSea(map, x, z))
			{
				LowerCornersTo(map, x, z, LAND_SEA_LEVEL);
			}
		}
	}
	for (int level = LAND_SEA_LEVEL; level > 1; level--)
	{
		for (x = 0; x < LAND_MAP_SIZE; x++)
		{
			for (z = 0; z < LAND_MAP_SIZE; z++)
			{
				if (HasCornerAt(map, x, z, level))
				{
					RaiseCornersTo(map, x, z, level - 1);
				}
			}
		}
	}
	for (i = 0; i < LAND_MAP_SIZE; i++)
	{
		map[i * LAND_MAP_SIZE] = 0;
		map[i * LAND_MAP_SIZE + LAND_MAP_MAX] = 0;
		map[i] = 0;
		map[LAND_MAP_MAX * LAND_MAP_SIZE + i] = 0;
	}
}

void ComputeFlags(uint8_t* sound_map)
{
	long x;
	long z;
	for (x = 0; x < LAND_MAP_SIZE; x++)
	{
		for (z = 0; z < LAND_MAP_SIZE; z++)
		{
			LandCell* cell = LH3DIsland::GetCell(x, z);
			if (cell != NULL)
			{
				if (x == 0 || x == LAND_MAP_MAX || z == 0 || z == LAND_MAP_MAX)
				{
					cell->SetWater();
				}
				else if (cell->altitude < LAND_CELL_SEA_ALTITUDE)
				{
					cell->SetWater();
					cell->SetSoundIndex(LAND_CELL_SOUND_SEA);
				}
				else if (cell->altitude <= LAND_CELL_SEA_ALTITUDE - 1)
				{
					cell->SetCoast();
					cell->SetSoundIndex(LAND_CELL_SOUND_SEA);
				}
				else
				{
					cell->SetSoundIndex(LAND_CELL_SOUND_NONE);
				}
			}
		}
	}
	for (x = 0; x < LAND_MAP_SIZE; x++)
	{
		for (z = 0; z < LAND_MAP_SIZE; z++)
		{
			LandCell* cell = LH3DIsland::GetCell(x, z);
			if (cell != NULL && cell->altitude > LAND_CELL_SHORE_ALTITUDE && cell->IsWater())
			{
				cell->SetCoast();
			}
		}
	}
	bool32_t changed;
	do
	{
		changed = false;
		for (x = 0; x < LAND_MAP_SIZE; x++)
		{
			for (z = 0; z < LAND_MAP_SIZE; z++)
			{
				LandCell* cell = LH3DIsland::GetCell(x, z);
				if (cell != NULL && cell->altitude == 0)
				{
					if (LH3DIsland::GetSoundIndex(x - 1, z) == LAND_CELL_SOUND_COAST ||
					    LH3DIsland::GetSoundIndex(x, z - 1) == LAND_CELL_SOUND_COAST ||
					    LH3DIsland::GetSoundIndex(x, z + 1) == LAND_CELL_SOUND_COAST ||
					    LH3DIsland::GetSoundIndex(x + 1, z) == LAND_CELL_SOUND_COAST)
					{
						if (cell->GetSoundIndex() != LAND_CELL_SOUND_COAST)
						{
							cell->SetSoundIndex(LAND_CELL_SOUND_COAST);
							changed = true;
						}
					}
				}
			}
		}
	} while (changed);
	do
	{
		changed = false;
		for (x = 0; x < LAND_MAP_SIZE; x++)
		{
			for (z = 0; z < LAND_MAP_SIZE; z++)
			{
				LandCell* cell = LH3DIsland::GetCell(x, z);
				if (cell != NULL && cell->GetSoundIndex() == LAND_CELL_SOUND_SEA)
				{
					if (LH3DIsland::GetSoundIndex(x - 1, z) == LAND_CELL_SOUND_COAST ||
					    LH3DIsland::GetSoundIndex(x, z - 1) == LAND_CELL_SOUND_COAST ||
					    LH3DIsland::GetSoundIndex(x, z + 1) == LAND_CELL_SOUND_COAST ||
					    LH3DIsland::GetSoundIndex(x + 1, z) == LAND_CELL_SOUND_COAST ||
					    LH3DIsland::GetSoundIndex(x - 1, z) == LAND_CELL_SOUND_SHORE ||
					    LH3DIsland::GetSoundIndex(x, z - 1) == LAND_CELL_SOUND_SHORE ||
					    LH3DIsland::GetSoundIndex(x, z + 1) == LAND_CELL_SOUND_SHORE ||
					    LH3DIsland::GetSoundIndex(x + 1, z) == LAND_CELL_SOUND_SHORE)
					{
						cell->SetSoundIndex(LAND_CELL_SOUND_SHORE);
						changed = true;
					}
				}
			}
		}
	} while (changed);
	if (sound_map != NULL)
	{
		for (x = 0; x < LAND_MAP_SIZE; x++)
		{
			for (z = 0; z < LAND_MAP_SIZE; z++)
			{
				LandCell* cell = LH3DIsland::GetCell(x, z);
				if (cell != NULL && LH3DIsland::GetSoundIndex(x, z) == LAND_CELL_SOUND_NONE)
				{
					cell->SetSoundIndex(sound_map[x * LAND_MAP_SIZE + z]);
				}
			}
		}
	}
}

void __fastcall LowResTexture::UpdateSmallTexture(LandBlock* block, uint16_t* dest, unsigned long pitch)
{
	LH3DSurfDesc desc;
	LH3DSurfDesc neighbourDesc;
	uint16_t*    neighbourTile;

	LH3DIsland::g_current_block->SmallTextureUpdated = true;
	block->LowRes->Texture->Lock(&desc);
	if (desc.Surface == NULL)
	{
		block->LowRes->Texture->Unlock();
		return;
	}
	int       width = desc.Pitch / (long)sizeof(uint16_t);
	uint16_t* tile;
	if (!LH3DTexture::g_b_use_low_res)
	{
		tile = (uint16_t*)desc.Surface + block->LowResPixelV * width + block->LowResPixelU;
		pitch *= LOW_RES_TEXTURE_SAMPLE_STEP;
		int step =
			FloatToInt((float)LOW_RES_TEXTURE_FIXED_ONE * LOW_RES_TEXTURE_TILE_SIZE / (LOW_RES_TEXTURE_TILE_SIZE - 2));
		uint32_t posY = 0;
		int      offset = width;
		for (int y = 1; y < LOW_RES_TEXTURE_TILE_SIZE - 1; y++)
		{
			uint32_t posX = 0;
			tile[offset] = dest[(posY / LOW_RES_TEXTURE_FIXED_ONE) * pitch];
			int x;
			for (x = 1; x < LOW_RES_TEXTURE_TILE_SIZE - 1; x++)
			{
				tile[offset + x] = dest[(posY / LOW_RES_TEXTURE_FIXED_ONE) * pitch +
				                        (posX / LOW_RES_TEXTURE_FIXED_ONE) * LOW_RES_TEXTURE_SAMPLE_STEP];
				posX += step;
			}
			tile[offset + x] = tile[offset + x - 1];
			posY += step;
			offset += width;
		}
	}
	else
	{
		tile = (uint16_t*)desc.Surface + (block->LowResPixelV / LOW_RES_TEXTURE_LOW_RES_SCALE) * width +
		       block->LowResPixelU / LOW_RES_TEXTURE_LOW_RES_SCALE;
		pitch *= LOW_RES_TEXTURE_SAMPLE_STEP;
		int      step = FloatToInt((float)LOW_RES_TEXTURE_FIXED_ONE * LOW_RES_TEXTURE_LOW_RES_TILE_SIZE /
		                           (LOW_RES_TEXTURE_LOW_RES_TILE_SIZE - 2));
		uint32_t posY = 0;
		int      offset = width;
		for (int y = 1; y < LOW_RES_TEXTURE_LOW_RES_TILE_SIZE - 1; y++)
		{
			uint32_t posX = 0;
			tile[offset] = dest[(posY / LOW_RES_TEXTURE_FIXED_ONE) * pitch];
			int x;
			for (x = 1; x < LOW_RES_TEXTURE_LOW_RES_TILE_SIZE - 1; x++)
			{
				tile[offset + x] = dest[(posY / LOW_RES_TEXTURE_FIXED_ONE) * pitch +
				                        (posX / LOW_RES_TEXTURE_FIXED_ONE) * LOW_RES_TEXTURE_SAMPLE_STEP];
				posX += step;
			}
			tile[offset + x] = tile[offset + x - 1];
			posY += step;
			offset += width;
		}
	}
	int tileSize = width / LOW_RES_TEXTURE_TILES_SIDE;
	int lastRow = (tileSize - 1) * width;
	int previousRow = (tileSize - 2) * width;
	for (int i = 0; i < tileSize; i++)
	{
		tile[i] = tile[width + i];
		tile[lastRow + i] = tile[previousRow + i];
	}
	int divisor = 1;
	int last = tileSize - 1;
	if (tileSize == LOW_RES_TEXTURE_LOW_RES_TILE_SIZE)
	{
		divisor = LOW_RES_TEXTURE_LOW_RES_SCALE;
	}

	int index = LH3DIsland::GetIndex(block->GridX, block->GridZ - 1);
	if (index != 0)
	{
		LandBlock* neighbour = LH3DIsland::g_ptr_blocks[index];
		if (neighbour->SmallTextureUpdated)
		{
			if (block->LowRes == neighbour->LowRes)
			{
				neighbourTile = (uint16_t*)desc.Surface;
			}
			else
			{
				neighbour->LowRes->Texture->Lock(&neighbourDesc);
				neighbourTile = (uint16_t*)neighbourDesc.Surface;
				if (neighbourTile == NULL)
				{
					neighbourTile = (uint16_t*)desc.Surface;
				}
			}
			neighbourTile += (neighbour->LowResPixelV / divisor) * width + neighbour->LowResPixelU / divisor;
			for (int i = 0; i < tileSize; i++)
			{
				uint16_t color = AVERAGE_4444(tile[i * width], neighbourTile[i * width + last]);
				neighbourTile[i * width + last - 1] = color;
				tile[i * width + 1] = color;
				neighbourTile[i * width + last] = color;
				tile[i * width] = color;
			}
			if (block->LowRes != neighbour->LowRes)
			{
				neighbour->LowRes->Texture->Unlock();
			}
		}
	}

	index = LH3DIsland::GetIndex(block->GridX, block->GridZ + 1);
	if (index != 0)
	{
		LandBlock* neighbour = LH3DIsland::g_ptr_blocks[index];
		if (neighbour->SmallTextureUpdated)
		{
			if (block->LowRes == neighbour->LowRes)
			{
				neighbourTile = (uint16_t*)desc.Surface;
			}
			else
			{
				neighbour->LowRes->Texture->Lock(&neighbourDesc);
				neighbourTile = (uint16_t*)neighbourDesc.Surface;
				if (neighbourTile == NULL)
				{
					neighbourTile = (uint16_t*)desc.Surface;
				}
			}
			neighbourTile += (neighbour->LowResPixelV / divisor) * width + neighbour->LowResPixelU / divisor;
			for (int i = 0; i < tileSize; i++)
			{
				uint16_t color = AVERAGE_4444(neighbourTile[i * width], tile[i * width + last]);
				neighbourTile[i * width + 1] = color;
				tile[i * width + last - 1] = color;
				neighbourTile[i * width] = color;
				tile[i * width + last] = color;
			}
			if (block->LowRes != neighbour->LowRes)
			{
				neighbour->LowRes->Texture->Unlock();
			}
		}
	}

	index = LH3DIsland::GetIndex(block->GridX - 1, block->GridZ);
	if (index != 0)
	{
		LandBlock* neighbour = LH3DIsland::g_ptr_blocks[index];
		if (neighbour->SmallTextureUpdated)
		{
			if (block->LowRes == neighbour->LowRes)
			{
				neighbourTile = (uint16_t*)desc.Surface;
			}
			else
			{
				neighbour->LowRes->Texture->Lock(&neighbourDesc);
				neighbourTile = (uint16_t*)neighbourDesc.Surface;
				if (neighbourTile == NULL)
				{
					neighbourTile = (uint16_t*)desc.Surface;
				}
			}
			neighbourTile += (neighbour->LowResPixelV / divisor) * width + neighbour->LowResPixelU / divisor;
			for (int i = 0; i < tileSize; i++)
			{
				uint16_t color = AVERAGE_4444(tile[i], neighbourTile[last * width + i]);
				neighbourTile[(last - 1) * width + i] = color;
				tile[width + i] = color;
				neighbourTile[last * width + i] = color;
				tile[i] = color;
			}
			if (block->LowRes != neighbour->LowRes)
			{
				neighbour->LowRes->Texture->Unlock();
			}
		}
	}

	index = LH3DIsland::GetIndex(block->GridX + 1, block->GridZ);
	if (index != 0)
	{
		LandBlock* neighbour = LH3DIsland::g_ptr_blocks[index];
		if (neighbour->SmallTextureUpdated)
		{
			if (block->LowRes == neighbour->LowRes)
			{
				neighbourTile = (uint16_t*)desc.Surface;
			}
			else
			{
				neighbour->LowRes->Texture->Lock(&neighbourDesc);
				neighbourTile = (uint16_t*)neighbourDesc.Surface;
				if (neighbourTile == NULL)
				{
					neighbourTile = (uint16_t*)desc.Surface;
				}
			}
			neighbourTile += (neighbour->LowResPixelV / divisor) * width + neighbour->LowResPixelU / divisor;
			for (int i = 0; i < tileSize; i++)
			{
				uint16_t color = AVERAGE_4444(neighbourTile[i], tile[last * width + i]);
				neighbourTile[width + i] = color;
				tile[(last - 1) * width + i] = color;
				neighbourTile[i] = color;
				tile[last * width + i] = color;
			}
			if (block->LowRes != neighbour->LowRes)
			{
				neighbour->LowRes->Texture->Unlock();
			}
		}
	}

	block->LowRes->Texture->Unlock();
	LH3DTexture* texture = block->LowRes->Texture;
	if (texture->GetType() == LH3D_TEXTURE_TYPE_NAMED || texture->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
	{
		texture->ReloadPending = true;
	}
}

bool32_t LH3DIsland::RayCastFrom2DPoint(const LHCoord& point, float* x, float* z, bool from_near_plane,
                                        float near_distance)
{
	LHPoint from(LH3DTech::GetCameraPosition());
	LHPoint to;
	LH3DTech::Get3DPointFromScreen(point, to, 0.0f);
	if (from_near_plane)
	{
		LHPoint dir = to - from;
		if (near_distance <= 0.0f)
		{
			near_distance = LH3DTech::GetNearClipping();
		}
		dir.Normalise();
		dir *= near_distance;
		from += dir;
		to += dir;
	}
	return RayCast(from, to, x, z);
}

void LH3DIsland::SetHeightAsByte(long x, long z, long height)
{
	if (x < 0 || x > LAND_MAP_MAX || z < 0 || z > LAND_MAP_MAX)
	{
		return;
	}
	long cellX = x & LAND_BLOCK_MASK;
	long cellZ = z & LAND_BLOCK_MASK;
	long offset;
	int  block;
	if (cellX != 0)
	{
		if (cellZ != 0)
		{
			block = g_index_block[0][((x >> 4) << 5) + (z >> 4)];
			if (block == 0)
			{
				return;
			}
			g_ptr_blocks[block]->Cells[cellX][cellZ].altitude = height;
			g_ptr_blocks[block]->SetNeedUpdate();
			return;
		}
		offset = ((x >> 4) << 5) + (z >> 4);
		block = g_index_block[0][offset];
		if (block != 0)
		{
			g_ptr_blocks[block]->Cells[cellX][0].altitude = height;
			g_ptr_blocks[block]->SetNeedUpdate();
		}
		if (z == 0)
		{
			return;
		}
		block = g_index_block[0][offset - 1];
		if (block == 0)
		{
			return;
		}
		g_ptr_blocks[block]->Cells[cellX][LAND_MESH_LOD_0_CELLS].altitude = height;
		g_ptr_blocks[block]->SetNeedUpdate();
		return;
	}
	if (cellZ != 0)
	{
		offset = ((x >> 4) << 5) + (z >> 4);
		block = g_index_block[0][offset];
		if (block != 0)
		{
			g_ptr_blocks[block]->Cells[0][cellZ].altitude = height;
			g_ptr_blocks[block]->SetNeedUpdate();
		}
		if (x == 0)
		{
			return;
		}
		block = g_index_block[0][offset - LAND_BLOCKS_SIDE];
		if (block == 0)
		{
			return;
		}
		g_ptr_blocks[block]->Cells[LAND_MESH_LOD_0_CELLS][cellZ].altitude = height;
		g_ptr_blocks[block]->SetNeedUpdate();
		return;
	}
	offset = x * (LAND_BLOCKS_SIDE / LAND_MESH_LOD_0_CELLS) + (z >> 4);
	block = g_index_block[0][offset];
	if (block != 0)
	{
		g_ptr_blocks[block]->Cells[0][0].altitude = height;
		g_ptr_blocks[block]->SetNeedUpdate();
	}
	if (x != 0)
	{
		block = g_index_block[0][offset - LAND_BLOCKS_SIDE];
		if (block != 0)
		{
			g_ptr_blocks[block]->Cells[LAND_MESH_LOD_0_CELLS][0].altitude = height;
			g_ptr_blocks[block]->SetNeedUpdate();
		}
		if (z == 0)
		{
			return;
		}
		block = g_index_block[0][offset - 1];
		if (block != 0)
		{
			g_ptr_blocks[block]->Cells[0][LAND_MESH_LOD_0_CELLS].altitude = height;
			g_ptr_blocks[block]->SetNeedUpdate();
		}
		block = g_index_block[0][offset - LAND_BLOCKS_SIDE - 1];
		if (block == 0)
		{
			return;
		}
		g_ptr_blocks[block]->Cells[LAND_MESH_LOD_0_CELLS][LAND_MESH_LOD_0_CELLS].altitude = height;
		g_ptr_blocks[block]->SetNeedUpdate();
		return;
	}
	if (z == 0)
	{
		return;
	}
	block = g_index_block[0][offset - 1];
	if (block == 0)
	{
		return;
	}
	g_ptr_blocks[block]->Cells[0][LAND_MESH_LOD_0_CELLS].altitude = height;
	g_ptr_blocks[block]->SetNeedUpdate();
}

void LH3DIsland::SetColor(long x, long z, uint8_t color)
{
	if (x < 0 || x > LAND_MAP_MAX || z < 0 || z > LAND_MAP_MAX)
	{
		return;
	}
	long cellX = x & LAND_BLOCK_MASK;
	long cellZ = z & LAND_BLOCK_MASK;
	long offset;
	int  block;
	if (cellX != 0)
	{
		if (cellZ != 0)
		{
			block = g_index_block[0][((x >> 4) << 5) + (z >> 4)];
			if (block == 0)
			{
				return;
			}
			g_ptr_blocks[block]->Cells[cellX][cellZ].darkness = color;
			g_ptr_blocks[block]->Cells[cellX][cellZ].SaveColor = color;
			return;
		}
		offset = ((x >> 4) << 5) + (z >> 4);
		block = g_index_block[0][offset];
		if (block != 0)
		{
			g_ptr_blocks[block]->Cells[cellX][0].darkness = color;
			g_ptr_blocks[block]->Cells[cellX][0].SaveColor = color;
		}
		if (z == 0)
		{
			return;
		}
		block = g_index_block[0][offset - 1];
		if (block == 0)
		{
			return;
		}
		g_ptr_blocks[block]->Cells[cellX][LAND_MESH_LOD_0_CELLS].darkness = color;
		g_ptr_blocks[block]->Cells[cellX][LAND_MESH_LOD_0_CELLS].SaveColor = color;
		return;
	}
	if (cellZ != 0)
	{
		offset = ((x >> 4) << 5) + (z >> 4);
		block = g_index_block[0][offset];
		if (block != 0)
		{
			g_ptr_blocks[block]->Cells[0][cellZ].darkness = color;
			g_ptr_blocks[block]->Cells[0][cellZ].SaveColor = color;
		}
		if (x == 0)
		{
			return;
		}
		block = g_index_block[0][offset - LAND_BLOCKS_SIDE];
		if (block == 0)
		{
			return;
		}
		g_ptr_blocks[block]->Cells[LAND_MESH_LOD_0_CELLS][cellZ].darkness = color;
		g_ptr_blocks[block]->Cells[LAND_MESH_LOD_0_CELLS][cellZ].SaveColor = color;
		return;
	}
	offset = x * (LAND_BLOCKS_SIDE / LAND_MESH_LOD_0_CELLS) + (z >> 4);
	block = g_index_block[0][offset];
	if (block != 0)
	{
		g_ptr_blocks[block]->Cells[0][0].darkness = color;
		g_ptr_blocks[block]->Cells[0][0].SaveColor = color;
	}
	if (x != 0)
	{
		block = g_index_block[0][offset - LAND_BLOCKS_SIDE];
		if (block != 0)
		{
			g_ptr_blocks[block]->Cells[LAND_MESH_LOD_0_CELLS][0].darkness = color;
			g_ptr_blocks[block]->Cells[LAND_MESH_LOD_0_CELLS][0].SaveColor = color;
		}
		if (z == 0)
		{
			return;
		}
		block = g_index_block[0][offset - 1];
		if (block != 0)
		{
			g_ptr_blocks[block]->Cells[0][LAND_MESH_LOD_0_CELLS].darkness = color;
			g_ptr_blocks[block]->Cells[0][LAND_MESH_LOD_0_CELLS].SaveColor = color;
		}
		block = g_index_block[0][offset - LAND_BLOCKS_SIDE - 1];
		if (block == 0)
		{
			return;
		}
		g_ptr_blocks[block]->Cells[LAND_MESH_LOD_0_CELLS][LAND_MESH_LOD_0_CELLS].darkness = color;
		g_ptr_blocks[block]->Cells[LAND_MESH_LOD_0_CELLS][LAND_MESH_LOD_0_CELLS].SaveColor = color;
		return;
	}
	if (z == 0)
	{
		return;
	}
	block = g_index_block[0][offset - 1];
	if (block == 0)
	{
		return;
	}
	g_ptr_blocks[block]->Cells[0][LAND_MESH_LOD_0_CELLS].darkness = color;
	g_ptr_blocks[block]->Cells[0][LAND_MESH_LOD_0_CELLS].SaveColor = color;
}

bool32_t LH3DIsland::GetCountry(long x, long z, uint8_t& country)
{
	if (x < 0 || x > LAND_MAP_MAX || z < 0 || z > LAND_MAP_MAX)
	{
		return false;
	}
	int block = g_index_block[0][((x >> 4) << 5) + (z >> 4)];
	if (block == 0)
	{
		return false;
	}
	country = g_ptr_blocks[block]->Cells[x & LAND_BLOCK_MASK][z & LAND_BLOCK_MASK].GetCountry();
	return true;
}

bool32_t LH3DIsland::BuildSoundTGA(char* name)
{
	uint16_t* image = (uint16_t*)AllocClear(LAND_MAP_SIZE * LAND_MAP_SIZE * sizeof(uint16_t));
	for (long x = 0; x < LAND_BLOCKS_SIDE; x++)
	{
		for (long z = 0; z < LAND_BLOCKS_SIDE; z++)
		{
			LandBlock* block = NULL;
			int        index = GetIndex(x, z);
			if (index != 0)
			{
				block = g_ptr_blocks[index];
			}
			if (block != NULL)
			{
				LH3DSurfDesc desc;
				block->LowRes->Texture->Lock(&desc);
				uint16_t* surface = (uint16_t*)desc.Surface;
				if (surface != NULL)
				{
					long dest = (x * LAND_MAP_SIZE + z) * LAND_MESH_LOD_0_CELLS;
					long source = (block->LowResPixelV << 8) + block->LowResPixelU;
					for (int j = 0; j < LAND_MESH_LOD_0_CELLS; j++)
					{
						for (int i = 0; i < LAND_MESH_LOD_0_CELLS; i++)
						{
							uint32_t pixel =
								surface[source + (j * LOW_RES_TEXTURE_SIZE + i) * LOW_RES_TEXTURE_TEXELS_PER_CELL];
							uint32_t alpha = pixel >> 12;
							uint32_t red = ((pixel & 0xf00) * alpha) / 15;
							uint32_t green = ((pixel & 0xf0) * alpha) / 15;
							uint32_t blue = ((pixel & 0xf) * alpha) / 15;
							image[dest + j * LAND_MAP_SIZE + i] =
								0xf000 | (red & 0xf00) | (green & 0xf0) | (blue & 0xf);
						}
					}
				}
				block->LowRes->Texture->Unlock();
			}
		}
	}
	LHTGA* tga = LHTGA::GetTGA(image, LAND_MAP_SIZE, LAND_MAP_SIZE, LHTGA_FORMAT_ARGB4444, false);
	LHSaveData(name, tga, LHTGA::GetSize(tga->Width, tga->Height), NULL);
	LH3DMem::Free(image);
	return true;
}

void LH3DIsland::GetColorAndSpecular(const LHPoint* pos, unsigned long* color, unsigned long* specular)
{
	if (LH3DTech::g_b_P3)
	{
		LH3DP3::GetColorAndSpecularWrapper(pos, color, specular);
		return;
	}
	long      cellX = (long)(pos->x / MAP_COORDS_METRES_PER_CELL);
	long      cellZ = (long)(pos->z / MAP_COORDS_METRES_PER_CELL);
	LandCell* cell = GetCell(cellX, cellZ);
	if (cell != NULL)
	{
		unsigned long color00 = *(unsigned long*)&cell[0] | 0xff000000;
		unsigned long light00 = LandCell::g_darkness_to_color[cell[0].darkness];
		unsigned long color01 = *(unsigned long*)&cell[1] | 0xff000000;
		unsigned long light01 = LandCell::g_darkness_to_color[cell[1].darkness];
		unsigned long color10 = *(unsigned long*)&cell[LAND_BLOCK_SIDE_POINTS] | 0xff000000;
		unsigned long light10 = LandCell::g_darkness_to_color[cell[LAND_BLOCK_SIDE_POINTS].darkness];
		unsigned long color11 = *(unsigned long*)&cell[LAND_BLOCK_SIDE_POINTS + 1] | 0xff000000;
		unsigned long light11 = LandCell::g_darkness_to_color[cell[LAND_BLOCK_SIDE_POINTS + 1].darkness];
		float         x = pos->x / MAP_COORDS_METRES_PER_CELL;
		float         z = pos->z / MAP_COORDS_METRES_PER_CELL;
		unsigned long weightX = (unsigned long)((x - (long)x) * LAND_WEIGHT_ONE);
		unsigned long weightZ = (unsigned long)((z - (long)z) * LAND_WEIGHT_ONE);
		unsigned long color0 = LERP_COLOR(color00, color01, weightZ);
		unsigned long color1 = LERP_COLOR(color10, color11, weightZ);
		*specular = LERP_COLOR(color0, color1, weightX) | 0xff000000;
		unsigned long light0 = LERP_COLOR(light00, light01, weightZ);
		unsigned long light1 = LERP_COLOR(light10, light11, weightZ);
		*color = LERP_COLOR(light0, light1, weightX) | 0xff000000;
	}
	else
	{
		*color = LandCell::g_darkness_to_color[LAND_CELL_MAX_DARKNESS];
		*specular = 0xff000000;
	}
}

void LH3DIsland::GetColorAndSpecular(const LH3DMapCoords& coords, unsigned long* color, unsigned long* specular)
{
	if (LH3DTech::g_b_P3)
	{
		LH3DP3::GetColorAndSpecularWrapper(coords, color, specular);
		return;
	}
	LandCell* cell = GetCell(coords.MapX(), coords.MapZ());
	if (cell != NULL)
	{
		unsigned long color00 = *(unsigned long*)&cell[0] | 0xff000000;
		unsigned long light00 = LandCell::g_darkness_to_color[cell[0].darkness];
		unsigned long color01 = *(unsigned long*)&cell[1] | 0xff000000;
		unsigned long light01 = LandCell::g_darkness_to_color[cell[1].darkness];
		unsigned long color10 = *(unsigned long*)&cell[LAND_BLOCK_SIDE_POINTS] | 0xff000000;
		unsigned long light10 = LandCell::g_darkness_to_color[cell[LAND_BLOCK_SIDE_POINTS].darkness];
		unsigned long color11 = *(unsigned long*)&cell[LAND_BLOCK_SIDE_POINTS + 1] | 0xff000000;
		unsigned long light11 = LandCell::g_darkness_to_color[cell[LAND_BLOCK_SIDE_POINTS + 1].darkness];
		unsigned long weightX = coords.MapX() / LAND_WEIGHT_ONE;
		unsigned long weightZ = coords.MapZ() / LAND_WEIGHT_ONE;
		unsigned long color0 = LERP_COLOR(color00, color01, weightZ);
		unsigned long color1 = LERP_COLOR(color10, color11, weightZ);
		*specular = LERP_COLOR(color0, color1, weightX);
		unsigned long light0 = LERP_COLOR(light00, light01, weightZ);
		unsigned long light1 = LERP_COLOR(light10, light11, weightZ);
		*color = LERP_COLOR(light0, light1, weightX) | 0xff000000;
	}
	else
	{
		*color = LandCell::g_darkness_to_color[LAND_CELL_MAX_DARKNESS];
		*specular = 0xff000000;
	}
}

bool32_t __stdcall LH3DIsland::RayCastInternal(float from_x, float from_y, float from_z, float to_x, float to_y,
                                               float to_z)
{
	float tx = LAND_RAY_CAST_INFINITY;
	float ty = LAND_RAY_CAST_INFINITY;
	if (from_x > to_x)
	{
		tx = from_x / (from_x - to_x);
	}
	else if (from_x < to_x)
	{
		tx = (LAND_MAP_SIZE - from_x) / (to_x - from_x);
	}
	if (from_y > to_y)
	{
		ty = from_y / (from_y - to_y);
	}
	else if (from_y < to_y)
	{
		ty = (LAND_MAP_SIZE - from_y) / (to_y - from_y);
	}
	if (tx > ty)
	{
		tx = ty;
	}
	if (tx != LAND_RAY_CAST_INFINITY)
	{
		to_x += (to_x - from_x) * tx;
		to_y += (to_y - from_y) * tx;
		to_z += (to_z - from_z) * tx;
	}

	int fromClip = 0;
	if (from_x < LAND_RAY_CELL_MIN)
	{
		fromClip |= LAND_RAY_CLIP_LOW_X;
	}
	else if (from_x > LAND_RAY_CELL_MAX)
	{
		fromClip |= LAND_RAY_CLIP_HIGH_X;
	}
	if (from_y < LAND_RAY_CELL_MIN)
	{
		fromClip |= LAND_RAY_CLIP_LOW_Y;
	}
	else if (from_y > LAND_RAY_CELL_MAX)
	{
		fromClip |= LAND_RAY_CLIP_HIGH_Y;
	}
	int toClip = 0;
	if (to_x < LAND_RAY_CELL_MIN)
	{
		toClip |= LAND_RAY_CLIP_LOW_X;
	}
	else if (to_x > LAND_RAY_CELL_MAX)
	{
		toClip |= LAND_RAY_CLIP_HIGH_X;
	}
	if (to_y < LAND_RAY_CELL_MIN)
	{
		toClip |= LAND_RAY_CLIP_LOW_Y;
	}
	else if (to_y > LAND_RAY_CELL_MAX)
	{
		toClip |= LAND_RAY_CLIP_HIGH_Y;
	}
	if (fromClip & toClip)
	{
		return false;
	}
	if (fromClip | toClip)
	{
		int clip = fromClip ^ toClip;
		if (clip & LAND_RAY_CLIP_LOW_X)
		{
			float t = (LAND_RAY_CELL_MIN - from_x) / (to_x - from_x);
			float clipY = from_y + (to_y - from_y) * t;
			float clipZ = from_z + (to_z - from_z) * t;
			if (toClip & LAND_RAY_CLIP_LOW_X)
			{
				to_z = clipZ;
				to_x = LAND_RAY_CELL_MIN;
				to_y = clipY;
				toClip = 0;
				if (clipY < LAND_RAY_CELL_MIN)
				{
					toClip |= LAND_RAY_CLIP_LOW_Y;
				}
				else if (clipY > LAND_RAY_CELL_MAX)
				{
					toClip |= LAND_RAY_CLIP_HIGH_Y;
				}
			}
			else
			{
				from_z = clipZ;
				from_x = LAND_RAY_CELL_MIN;
				from_y = clipY;
				fromClip = 0;
				if (clipY < LAND_RAY_CELL_MIN)
				{
					fromClip |= LAND_RAY_CLIP_LOW_Y;
				}
				else if (clipY > LAND_RAY_CELL_MAX)
				{
					fromClip |= LAND_RAY_CLIP_HIGH_Y;
				}
			}
			clip = fromClip ^ toClip;
		}
		if (fromClip & toClip)
		{
			return false;
		}
		if (clip & LAND_RAY_CLIP_HIGH_X)
		{
			float t = (LAND_RAY_CELL_MAX - from_x) / (to_x - from_x);
			float clipY = from_y + (to_y - from_y) * t;
			float clipZ = from_z + (to_z - from_z) * t;
			if (toClip & LAND_RAY_CLIP_HIGH_X)
			{
				to_z = clipZ;
				to_x = LAND_RAY_CELL_MAX;
				to_y = clipY;
				toClip = 0;
				if (clipY < LAND_RAY_CELL_MIN)
				{
					toClip |= LAND_RAY_CLIP_LOW_Y;
				}
				else if (clipY > LAND_RAY_CELL_MAX)
				{
					toClip |= LAND_RAY_CLIP_HIGH_Y;
				}
			}
			else
			{
				from_z = clipZ;
				from_x = LAND_RAY_CELL_MAX;
				from_y = clipY;
				fromClip = 0;
				if (clipY < LAND_RAY_CELL_MIN)
				{
					fromClip |= LAND_RAY_CLIP_LOW_Y;
				}
				else if (clipY > LAND_RAY_CELL_MAX)
				{
					fromClip |= LAND_RAY_CLIP_HIGH_Y;
				}
			}
			clip = fromClip ^ toClip;
		}
		if (fromClip & toClip)
		{
			return false;
		}
		if (clip & LAND_RAY_CLIP_LOW_Y)
		{
			float t = (LAND_RAY_CELL_MIN - from_y) / (to_y - from_y);
			float clipX = from_x + (to_x - from_x) * t;
			float clipZ = from_z + (to_z - from_z) * t;
			if (toClip & LAND_RAY_CLIP_LOW_Y)
			{
				to_z = clipZ;
				to_y = LAND_RAY_CELL_MIN;
				to_x = clipX;
				toClip = 0;
			}
			else
			{
				from_z = clipZ;
				from_y = LAND_RAY_CELL_MIN;
				from_x = clipX;
				fromClip = 0;
			}
			clip = fromClip ^ toClip;
		}
		if (fromClip & toClip)
		{
			return false;
		}
		if (clip & LAND_RAY_CLIP_HIGH_Y)
		{
			float t = (LAND_RAY_CELL_MAX - from_y) / (to_y - from_y);
			float clipX = from_x + (to_x - from_x) * t;
			float clipZ = from_z + (to_z - from_z) * t;
			if (toClip & LAND_RAY_CLIP_HIGH_Y)
			{
				to_z = clipZ;
				to_y = LAND_RAY_CELL_MAX;
				to_x = clipX;
				toClip = 0;
			}
			else
			{
				from_z = clipZ;
				from_y = LAND_RAY_CELL_MAX;
				from_x = clipX;
				fromClip = 0;
			}
		}
		if (fromClip & toClip)
		{
			return false;
		}
	}

	long  cellY = (long)from_y;
	long  cellX = (long)from_x;
	long  endCellY = (long)to_y;
	long  endCellX = (long)to_x;
	float lastX = from_x;
	float lastY = from_y;
	float lastZ = from_z;
	if (cellX == endCellX)
	{
		if (cellY <= endCellY)
		{
			for (; cellY < endCellY; cellY++)
			{
				if (LandCell::RayCellCheck(cellX, cellY, from_x, from_y, from_z, to_x, to_y, to_z))
				{
					return true;
				}
			}
		}
		else
		{
			for (; cellY > endCellY; cellY--)
			{
				if (LandCell::RayCellCheck(cellX, cellY, from_x, from_y, from_z, to_x, to_y, to_z))
				{
					return true;
				}
			}
		}
	}
	else if (cellY == endCellY)
	{
		if (cellX <= endCellX)
		{
			for (; cellX < endCellX; cellX++)
			{
				if (LandCell::RayCellCheck(cellX, cellY, from_x, from_y, from_z, to_x, to_y, to_z))
				{
					return true;
				}
			}
		}
		else
		{
			for (; cellX > endCellX; cellX--)
			{
				if (LandCell::RayCellCheck(cellX, cellY, from_x, from_y, from_z, to_x, to_y, to_z))
				{
					return true;
				}
			}
		}
	}
	else
	{
		float dx = to_x - from_x;
		float dy = to_y - from_y;
		float dxdy = dx / dy;
		float dydx = 1.0f / dxdy;
		float dz = to_z - from_z;
		float dzdy = dz / dy;
		float dzdx = dz / dx;
		if (from_y > to_y)
		{
			if (from_x <= to_x)
			{
				while (cellX < endCellX || cellY > endCellY)
				{
					long  checkX = cellX;
					long  checkY = cellY;
					float edgeY = (float)cellY;
					float toEdgeY = from_y - edgeY;
					float crossX = from_x - toEdgeY * dxdy;
					if ((long)crossX != cellX)
					{
						float toEdgeX = (float)(cellX + 1) - from_x;
						from_y += toEdgeX * dydx;
						cellY = (long)from_y;
						cellX++;
						from_z += toEdgeX * dzdx;
						from_x = (float)cellX;
					}
					else
					{
						from_x = crossX;
						cellX = (long)crossX;
						from_z -= toEdgeY * dzdy;
						from_y = edgeY;
						cellY--;
					}
					if (LandCell::RayCellCheck(checkX, checkY, lastX, lastY, lastZ, from_x, from_y, from_z))
					{
						return true;
					}
					lastX = from_x;
					lastY = from_y;
					lastZ = from_z;
				}
			}
			else
			{
				while (cellX > endCellX || cellY > endCellY)
				{
					long  checkX = cellX;
					long  checkY = cellY;
					float edgeY = (float)cellY;
					float toEdgeY = from_y - edgeY;
					float crossX = from_x - toEdgeY * dxdy;
					if ((long)crossX != cellX)
					{
						float edgeX = (float)cellX;
						float toEdgeX = from_x - edgeX;
						from_y -= toEdgeX * dydx;
						cellY = (long)from_y;
						cellX--;
						from_z -= toEdgeX * dzdx;
						from_x = edgeX;
					}
					else
					{
						from_x = crossX;
						cellX = (long)crossX;
						from_z -= toEdgeY * dzdy;
						from_y = edgeY;
						cellY--;
					}
					if (LandCell::RayCellCheck(checkX, checkY, lastX, lastY, lastZ, from_x, from_y, from_z))
					{
						return true;
					}
					lastX = from_x;
					lastY = from_y;
					lastZ = from_z;
				}
			}
		}
		else
		{
			if (from_x <= to_x)
			{
				while (cellX < endCellX || cellY < endCellY)
				{
					long  checkX = cellX;
					long  checkY = cellY;
					float toEdgeY = (float)(cellY + 1) - from_y;
					float crossX = from_x + toEdgeY * dxdy;
					if ((long)crossX != cellX)
					{
						float toEdgeX = (float)(cellX + 1) - from_x;
						from_y += toEdgeX * dydx;
						cellY = (long)from_y;
						cellX++;
						from_z += toEdgeX * dzdx;
						from_x = (float)cellX;
					}
					else
					{
						from_x = crossX;
						cellX = (long)crossX;
						from_z += toEdgeY * dzdy;
						cellY++;
						from_y = (float)cellY;
					}
					if (LandCell::RayCellCheck(checkX, checkY, lastX, lastY, lastZ, from_x, from_y, from_z))
					{
						return true;
					}
					lastX = from_x;
					lastY = from_y;
					lastZ = from_z;
				}
			}
			else
			{
				while (cellX > endCellX || cellY < endCellY)
				{
					long  checkX = cellX;
					long  checkY = cellY;
					float toEdgeY = (float)(cellY + 1) - from_y;
					float crossX = from_x + toEdgeY * dxdy;
					if ((long)crossX != cellX)
					{
						float edgeX = (float)cellX;
						float toEdgeX = from_x - edgeX;
						from_y -= toEdgeX * dydx;
						cellY = (long)from_y;
						cellX--;
						from_z -= toEdgeX * dzdx;
						from_x = edgeX;
					}
					else
					{
						from_x = crossX;
						cellX = (long)crossX;
						from_z += toEdgeY * dzdy;
						cellY++;
						from_y = (float)cellY;
					}
					if (LandCell::RayCellCheck(checkX, checkY, lastX, lastY, lastZ, from_x, from_y, from_z))
					{
						return true;
					}
					lastX = from_x;
					lastY = from_y;
					lastZ = from_z;
				}
			}
		}
	}
	if (LandCell::RayCellCheck(cellX, cellY, lastX, lastY, lastZ, to_x, to_y, to_z))
	{
		return true;
	}
	return false;
}

bool32_t caca_jc_bodge = true;

static inline bool IsOnMap(const LH3DMapCoords& coords)
{
	return (int16_t)coords.CellX >= 0 && (int16_t)coords.CellX < LAND_MAP_SIZE && (int16_t)coords.CellZ >= 0 &&
	       (int16_t)coords.CellZ < LAND_MAP_SIZE;
}

float __fastcall LH3DIsland::GetAltitude(const LH3DMapCoords& coords)
{
	if (!IsOnMap(coords))
	{
		return 0.0f;
	}
	LandCell* cell = GetCell(coords);
	if (cell == NULL)
	{
		return 0.0f;
	}
	int altitude00;
	int altitude01;
	int altitude10;
	int altitude11;
	if (cell->altitude <= LAND_SEA_LEVEL && caca_jc_bodge)
	{
		if (cell->Flags & LAND_CELL_SPLIT)
		{
			if (coords.BlockZ() > MAP_COORDS_FRACTION_MAX - coords.BlockX())
			{
				altitude01 = cell[1].altitude;
				altitude10 = cell[LAND_BLOCK_SIDE_POINTS].altitude;
				altitude11 = cell[LAND_BLOCK_SIDE_POINTS + 1].altitude;
				if (altitude01 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude01 = 0;
				}
				if (altitude10 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude10 = 0;
				}
				if (altitude11 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude11 = 0;
				}
				altitude00 = altitude01 + altitude10 - altitude11;
			}
			else
			{
				altitude00 = cell[0].altitude;
				altitude01 = cell[1].altitude;
				altitude10 = cell[LAND_BLOCK_SIDE_POINTS].altitude;
				if (altitude00 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude00 = 0;
				}
				if (altitude01 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude01 = 0;
				}
				if (altitude10 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude10 = 0;
				}
				altitude11 = altitude01 + altitude10 - altitude00;
			}
		}
		else
		{
			if (coords.BlockX() > coords.BlockZ())
			{
				altitude00 = cell[0].altitude;
				altitude10 = cell[LAND_BLOCK_SIDE_POINTS].altitude;
				altitude11 = cell[LAND_BLOCK_SIDE_POINTS + 1].altitude;
				if (altitude00 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude00 = 0;
				}
				if (altitude10 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude10 = 0;
				}
				if (altitude11 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude11 = 0;
				}
				altitude01 = altitude11 + altitude00 - altitude10;
			}
			else
			{
				altitude00 = cell[0].altitude;
				altitude01 = cell[1].altitude;
				altitude11 = cell[LAND_BLOCK_SIDE_POINTS + 1].altitude;
				if (altitude00 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude00 = 0;
				}
				if (altitude01 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude01 = 0;
				}
				if (altitude11 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude11 = 0;
				}
				altitude10 = altitude11 + altitude00 - altitude01;
			}
		}
	}
	else
	{
		if (cell->Flags & LAND_CELL_SPLIT)
		{
			if (coords.BlockZ() > MAP_COORDS_FRACTION_MAX - coords.BlockX())
			{
				altitude01 = cell[1].altitude;
				altitude10 = cell[LAND_BLOCK_SIDE_POINTS].altitude;
				altitude11 = cell[LAND_BLOCK_SIDE_POINTS + 1].altitude;
				altitude00 = altitude01 + altitude10 - altitude11;
			}
			else
			{
				altitude00 = cell[0].altitude;
				altitude01 = cell[1].altitude;
				altitude10 = cell[LAND_BLOCK_SIDE_POINTS].altitude;
				altitude11 = altitude01 + altitude10 - altitude00;
			}
		}
		else
		{
			if (coords.BlockX() > coords.BlockZ())
			{
				altitude00 = cell[0].altitude;
				altitude10 = cell[LAND_BLOCK_SIDE_POINTS].altitude;
				altitude11 = cell[LAND_BLOCK_SIDE_POINTS + 1].altitude;
				altitude01 = altitude11 + altitude00 - altitude10;
			}
			else
			{
				altitude00 = cell[0].altitude;
				altitude01 = cell[1].altitude;
				altitude11 = cell[LAND_BLOCK_SIDE_POINTS + 1].altitude;
				altitude10 = altitude11 + altitude00 - altitude01;
			}
		}
	}
	int weightZ = coords.BlockZ() / LAND_WEIGHT_ONE;
	int weightX = coords.BlockX() / LAND_WEIGHT_ONE;
	int altitude0 = altitude00 * LAND_WEIGHT_ONE + (altitude01 - altitude00) * weightZ;
	int altitude1 = altitude10 * LAND_WEIGHT_ONE + (altitude11 - altitude10) * weightZ;
	int altitude = altitude0 + (((altitude1 - altitude0) * weightX) >> 8);
	return altitude * g_height_unit * (1.0f / LAND_WEIGHT_ONE);
}

float __fastcall LH3DIsland::GetAltitudeAndSetColorSpecular(const LH3DMapCoords& coords, unsigned long* color,
                                                            unsigned long* specular)
{
	if (!IsOnMap(coords))
	{
		*color = LandCell::g_darkness_to_color[LAND_CELL_MAX_DARKNESS];
		*specular = 0xff000000;
		return 0.0f;
	}
	LandCell* cell = GetCell(coords);
	if (cell == NULL)
	{
		*color = LandCell::g_darkness_to_color[LAND_CELL_MAX_DARKNESS];
		*specular = 0xff000000;
		return 0.0f;
	}
	*specular = *(unsigned long*)cell | 0xff000000;
	*color = LandCell::g_darkness_to_color[cell->darkness];
	int altitude00;
	int altitude01;
	int altitude10;
	int altitude11;
	if (cell->altitude <= LAND_SEA_LEVEL)
	{
		if (cell->Flags & LAND_CELL_SPLIT)
		{
			if (coords.BlockZ() > MAP_COORDS_FRACTION_MAX - coords.BlockX())
			{
				altitude01 = cell[1].altitude;
				altitude10 = cell[LAND_BLOCK_SIDE_POINTS].altitude;
				altitude11 = cell[LAND_BLOCK_SIDE_POINTS + 1].altitude;
				if (altitude01 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude01 = 0;
				}
				if (altitude10 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude10 = 0;
				}
				if (altitude11 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude11 = 0;
				}
				altitude00 = altitude01 + altitude10 - altitude11;
			}
			else
			{
				altitude00 = cell[0].altitude;
				altitude01 = cell[1].altitude;
				altitude10 = cell[LAND_BLOCK_SIDE_POINTS].altitude;
				if (altitude00 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude00 = 0;
				}
				if (altitude01 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude01 = 0;
				}
				if (altitude10 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude10 = 0;
				}
				altitude11 = altitude01 + altitude10 - altitude00;
			}
		}
		else
		{
			if (coords.BlockX() > coords.BlockZ())
			{
				altitude00 = cell[0].altitude;
				altitude10 = cell[LAND_BLOCK_SIDE_POINTS].altitude;
				altitude11 = cell[LAND_BLOCK_SIDE_POINTS + 1].altitude;
				if (altitude00 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude00 = 0;
				}
				if (altitude10 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude10 = 0;
				}
				if (altitude11 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude11 = 0;
				}
				altitude01 = altitude11 + altitude00 - altitude10;
			}
			else
			{
				altitude00 = cell[0].altitude;
				altitude01 = cell[1].altitude;
				altitude11 = cell[LAND_BLOCK_SIDE_POINTS + 1].altitude;
				if (altitude00 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude00 = 0;
				}
				if (altitude01 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude01 = 0;
				}
				if (altitude11 <= LAND_CELL_SEA_ALTITUDE)
				{
					altitude11 = 0;
				}
				altitude10 = altitude11 + altitude00 - altitude01;
			}
		}
	}
	else
	{
		if (cell->Flags & LAND_CELL_SPLIT)
		{
			if (coords.BlockZ() > MAP_COORDS_FRACTION_MAX - coords.BlockX())
			{
				altitude01 = cell[1].altitude;
				altitude10 = cell[LAND_BLOCK_SIDE_POINTS].altitude;
				altitude11 = cell[LAND_BLOCK_SIDE_POINTS + 1].altitude;
				altitude00 = altitude01 + altitude10 - altitude11;
			}
			else
			{
				altitude00 = cell[0].altitude;
				altitude01 = cell[1].altitude;
				altitude10 = cell[LAND_BLOCK_SIDE_POINTS].altitude;
				altitude11 = altitude01 + altitude10 - altitude00;
			}
		}
		else
		{
			if (coords.BlockX() > coords.BlockZ())
			{
				altitude00 = cell[0].altitude;
				altitude10 = cell[LAND_BLOCK_SIDE_POINTS].altitude;
				altitude11 = cell[LAND_BLOCK_SIDE_POINTS + 1].altitude;
				altitude01 = altitude11 + altitude00 - altitude10;
			}
			else
			{
				altitude00 = cell[0].altitude;
				altitude01 = cell[1].altitude;
				altitude11 = cell[LAND_BLOCK_SIDE_POINTS + 1].altitude;
				altitude10 = altitude11 + altitude00 - altitude01;
			}
		}
	}
	int weightZ = coords.BlockZ() / LAND_WEIGHT_ONE;
	int weightX = coords.BlockX() / LAND_WEIGHT_ONE;
	int altitude0 = altitude00 * LAND_WEIGHT_ONE + (altitude01 - altitude00) * weightZ;
	int altitude1 = altitude10 * LAND_WEIGHT_ONE + (altitude11 - altitude10) * weightZ;
	int altitude = altitude0 + (((altitude1 - altitude0) * weightX) >> 8);
	return altitude * g_height_unit * (1.0f / LAND_WEIGHT_ONE);
}

unsigned long __fastcall LH3DIsland::GetTerrainMaterial(unsigned long x, unsigned long z)
{
	LandCell* cell = GetCell(x, z);
	if (cell != NULL)
	{
		LH3DLandscape::Country* country = LH3DLandscape::g_list_country[cell->GetCountry()];
		return country->GetMostInfluentMaterialType(cell->GetAltitude());
	}
	return 0;
}

int g_max_steepness = 10;

bool32_t LH3DIsland::IsSteep(long x, long z)
{
	long blockX = x / LAND_MESH_LOD_0_CELLS;
	long blockZ = z / LAND_MESH_LOD_0_CELLS;
	long cellX = blockX & LAND_BLOCK_MASK;
	long cellZ = blockZ & LAND_BLOCK_MASK;
	int  index = GetIndex(blockX, blockZ);
	if (index != 0)
	{
		LandBlock* block = g_ptr_blocks[index];
		if (block != NULL)
		{
			LandCell* cell = &block->Cells[cellX][cellZ];
			uint8_t   altitude00 = cell[0].altitude;
			uint8_t   altitude01 = cell[1].altitude;
			int       highest = max(altitude00, altitude01);
			highest = max(highest, cell[LAND_BLOCK_SIDE_POINTS].altitude);
			highest = max(highest, cell[LAND_BLOCK_SIDE_POINTS + 1].altitude);
			int lowest = min(altitude00, altitude01);
			lowest = min(lowest, cell[LAND_BLOCK_SIDE_POINTS].altitude);
			lowest = min(lowest, cell[LAND_BLOCK_SIDE_POINTS + 1].altitude);
			if (highest - lowest > g_max_steepness)
			{
				return true;
			}
		}
	}
	return false;
}

bool32_t g_b_p4_improvement = true;
