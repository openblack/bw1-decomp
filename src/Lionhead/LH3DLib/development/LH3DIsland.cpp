#include "LH3DIsland.h"

#include <Lionhead/LHFile/ver3.0/LHOSFile.h>       /* For LHSaveData */
#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h> /* For LHReleasedFile */

#include "LH3DCT.h"            /* For LH3DCT */
#include "LH3DColor.h"         /* For LH3DColor */
#include "LH3DJustFootPrint.h" /* For LH3DJustFootPrint */
#include "LH3DLandscape.h"     /* For LH3DLandscape */
#include "LH3DLevelOfDetail.h" /* For LH3DLevelOfDetail */
#include "LH3DMath.h"          /* For FloatToInt */
#include "LH3DMaterial.h"      /* For LH3DMaterial */
#include "LH3DMem.h"           /* For LH3DMem */
#include "LH3DP3.h"            /* For LH3DP3 */
#include "LH3DRender.h"        /* For LH3DRender */
#include "LH3DTech.h"          /* For LH3DTech */
#include "LH3DTexture.h"       /* For LH3DTexture */
#include "LH3DVRAMTex.h"       /* For LH3DVRAMTex */
#include "LHTGA.h"             /* For LHTGA */
#include "MeshLodInfo.h"       /* For MeshLodInfo */
#include "InfluenceCircle.h"   /* For ResetAllWhenLandscapeChange */
#include "SnowCover.h"         /* For SnowCover */
#include "TShadowInfo.h"       /* For TShadowInfo */

enum LAND_RAY_CLIP
{
	LAND_RAY_CLIP_LOW_X = 0x1,
	LAND_RAY_CLIP_HIGH_X = 0x2,
	LAND_RAY_CLIP_LOW_Y = 0x4,
	LAND_RAY_CLIP_HIGH_Y = 0x8,
};

struct LandFileHeader
{
	int      BlockCount;                                     /* 0x000 */
	uint8_t  IndexBlock[LAND_BLOCKS_SIDE][LAND_BLOCKS_SIDE]; /* 0x004 */
	int      MaterialCount;                                  /* 0x404 */
	int      CountryCount;                                   /* 0x408 */
	uint32_t BlockSize;                                      /* 0x40c */
	uint32_t MaterialSize;                                   /* 0x410 */
	uint32_t CountrySize;                                    /* 0x414 */
};
static_assert(sizeof(LandFileHeader) == 0x418, "Data type is of wrong size");

float    LH3DIsland::g_distance_vanish = 700.0f;
bool32_t LH3DIsland::g_b_use_fog = true;
bool32_t LH3DIsland::g_b_view_has_changed = true;
float    LH3DIsland::g_height_unit = 0.67f;
bool32_t LH3DIsland::g_b_use_small_bump = true;
float    LH3DIsland::g_max_fogr = 64.0f;
float    LH3DIsland::g_max_fogg = 64.0f;
float    LH3DIsland::g_max_fogb = 64.0f;
float    LH3DIsland::g_fog_min = 15.0f;
float    LH3DIsland::g_fog_max = 400.0f;
int      LH3DIsland::g_max_fadefac = 256;
bool32_t LH3DIsland::g_b_need_rebuild_all = true;

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

TextureLOD     LH3DIsland::g_sbump_lod(50.0f, 40.0f);
TextureLOD     LH3DIsland::g_texture_lod(300.0f, 40.0f);
MeshLOD        LH3DIsland::g_mesh_red_01(LAND_MESH_LOD_01_DISTANCE, LAND_MESH_LOD_WIDTH);
MeshLOD        LH3DIsland::g_mesh_red_12(LAND_MESH_LOD_12_DISTANCE, LAND_MESH_LOD_WIDTH);
char           LH3DIsland::g_name_mnt_to_load[1024];
LandBlock      LH3DIsland::g_dummy_block;
LHPoint        LH3DIsland::g_hand_position(2560.0f, 0.0f, 2560.0f);
float          LH3DIsland::g_fog_delta = g_fog_max - g_fog_min;
LH3DColor      LH3DIsland::g_max_color_fog((uint8_t)g_max_fogr, (uint8_t)g_max_fogg, (uint8_t)g_max_fogb, 0);
float          LH3DIsland::g_distance_array[LAND_DISTANCE_ARRAY_SIZE];
float          LH3DIsland::g_inv_sqr_array[LAND_INV_SQR_ARRAY_SIZE];
LowResTexture* LowResTexture::g_list[LOW_RES_TEXTURE_MAX];
MeshLodInfo    MeshLodInfo::g_mesh_lod_info[MESH_LOD_TYPE_COUNT];
LandBlock*     LH3DIsland::g_ptr_blocks[LAND_MAX_BLOCKS];
uint8_t        LH3DIsland::g_index_block[LAND_BLOCKS_SIDE][LAND_BLOCKS_SIDE];
LH3DMaterial*  LH3DIsland::g_bump_material = NULL;
LH3DTexture*   LH3DIsland::g_bump_texture = NULL;
LandBlock*     LH3DIsland::g_current_block = NULL;
int            LH3DIsland::g_block_count = 0;
bool32_t       LH3DIsland::g_b_do_pre_draw = false;
bool32_t       LH3DIsland::g_b_already_drawn_island = false;
bool32_t       LH3DIsland::g_b_created = false;
float          LH3DIsland::g_hitx = 0.0f;
float          LH3DIsland::g_hity = 0.0f;
int            LH3DIsland::g_max_index_country = 0;
bool32_t       LH3DIsland::g_b_draw_reflection = false;
bool32_t       LH3DIsland::g_b_use_always_low_texture = false;
bool32_t       g_b_dont_do_d3d_activated_texture = false;
int            LowResTexture::g_count = 0;

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

void InitBlockInfo(LandBlock* block)
{
	block->BeforeMaterial = NULL;
	block->AfterMaterial = NULL;
	block->DrawFlags = 0;
	int       maxAltitude = 0;
	LandCell* cell = &block->Cells[0][0];
	for (int i = 0; i < LAND_BLOCK_SIDE_POINTS * LAND_BLOCK_SIDE_POINTS; i++)
	{
		if (maxAltitude < cell->altitude)
		{
			maxAltitude = cell->altitude;
		}
		cell++;
	}
	block->MaxAltitude = maxAltitude;
}

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

unsigned long LH3DIsland::GetFogValue(const LHPoint* pos, unsigned long specular, unsigned long* color)
{
	if (!g_b_use_fog)
	{
		return specular;
	}
	LHPoint point(pos);
	float   x = point.x;
	float   y = point.y;
	float   z = point.z;
	point.z = x * LH3DTech::g_world_to_clipping._13 + y * LH3DTech::g_world_to_clipping._23 +
	          z * LH3DTech::g_world_to_clipping._33 + LH3DTech::g_world_to_clipping._43;
	float distance = point.z;
	if (point.z < g_fog_min)
	{
		return specular;
	}
	if (point.z > g_fog_max)
	{
		distance = g_fog_max;
	}
	float fog = (distance - g_fog_min) / g_fog_delta;
	if (color != NULL)
	{
		long fade = LAND_WEIGHT_ONE - (unsigned long)((LAND_WEIGHT_ONE - g_max_fadefac) * fog);
		if (fade < LAND_WEIGHT_ONE)
		{
			unsigned long faded = *color;
			*color = ((((faded & 0xff0000) * fade) & 0xff000000 | ((faded & 0xff00) * fade) & 0xff0000 |
			           ((faded & 0xff) * fade) & 0xff00) >>
			          8) |
			         (faded & 0xff000000);
		}
	}
	unsigned long fogColor =
		RGBA_MAKE(FloatToInt(g_max_fogr * fog), FloatToInt(g_max_fogg * fog), FloatToInt(g_max_fogb * fog), 0xff);
	if (specular != 0)
	{
		LH3DColor*    spec = (LH3DColor*)&specular;
		LH3DColor*    fogged = (LH3DColor*)&fogColor;
		unsigned long red = spec->r + fogged->r;
		if (red > 0xff)
		{
			red = 0xff;
		}
		unsigned long green = spec->g + fogged->g;
		if (green > 0xff)
		{
			green = 0xff;
		}
		unsigned long blue = spec->b + fogged->b;
		if (blue > 0xff)
		{
			blue = 0xff;
		}
		return RGBA_MAKE(red, green, blue, 0xff);
	}
	return fogColor;
}

LowResTexture* LowResTexture::GetNewTexture(long* u, long* v)
{
	int found = -1;
	for (int i = 0; i < g_count; i++)
	{
		if (g_list[i] != NULL && g_list[i]->Count != LOW_RES_TEXTURE_TILES)
		{
			found = i;
		}
	}
	if (found == -1)
	{
		if (g_count == LOW_RES_TEXTURE_MAX * LOW_RES_TEXTURE_TILES)
		{
			found = 0;
		}
		else
		{
			found = g_count;
			g_list[found] = Create();
		}
	}
	g_list[found]->Count++;
	int tile = g_list[found]->Count - 1;
	*u = (tile & (LOW_RES_TEXTURE_TILES_SIDE - 1)) * LOW_RES_TEXTURE_TILE_SIZE;
	*v = (tile / LOW_RES_TEXTURE_TILES_SIDE) * LOW_RES_TEXTURE_TILE_SIZE;
	return g_list[found];
}

LowResTexture* LowResTexture::Create()
{
	LowResTexture* texture = (LowResTexture*)AllocClear(sizeof(LowResTexture));
	texture->Texture = LH3DTexture::Create(NULL, LH3D_TEXTURE_FLAGS_ALPHA | LH3D_TEXTURE_TYPE_SYSTEM_MEMORY,
	                                       LH3D_TEXTURE_ID_NONE, NULL);
	texture->Material = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_OPAQUE,
	                                               texture->Texture);
	texture->Index = g_count;
	g_count++;
	return texture;
}

void LowResTexture::Release()
{
	if (Texture != NULL)
	{
		Texture->Release();
		Texture = NULL;
	}
	if (Material != NULL)
	{
		delete Material;
		Material = NULL;
	}
	Count = 0;
	g_count = 0;
	LH3DMem::Free(this);
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
#ifdef VERSION_BW1WCI
	static float s_max_height = 300.0f;
#else
	static float s_max_height = 165.0f;
#endif

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

void LH3DIsland::PreDraw()
{
	if (g_b_do_pre_draw)
	{
		return;
	}
	LH3DTech::g_current_matrix = &LH3DTech::g_world_to_clipping;
	g_texture_lod.ComputeXLine();
	g_mesh_red_01.ComputeXLine();
	g_mesh_red_12.ComputeXLine();
	g_sbump_lod.ComputeXLine();
	int i;
	for (i = 1; i < g_block_count; i++)
	{
		g_ptr_blocks[i]->ComputeInfo();
	}
	for (i = 1; i < g_block_count; i++)
	{
		g_ptr_blocks[i]->ComputeMeshLodType();
	}
	if (g_b_need_rebuild_all)
	{
		g_b_need_rebuild_all = false;
		if (!g_b_use_always_low_texture)
		{
			g_b_dont_do_d3d_activated_texture = true;
			for (i = 1; i < g_block_count; i++)
			{
				if (!IsCompressed())
				{
					LH3DRender::SetMaterial(g_ptr_blocks[i]->Material, 0);
				}
				if (!g_b_use_always_low_texture)
				{
					g_ptr_blocks[i]->Texture->ProcessFunc = LH3DLandscape::ProcessTextureInBackground;
				}
			}
			g_b_dont_do_d3d_activated_texture = false;
		}
	}
	LandBlock::g_first_sorting = NULL;
	for (i = 1; i < g_block_count; i++)
	{
		LandBlock* block = g_ptr_blocks[i];
		if (block->IsVisibleThisFrame())
		{
			LandBlock* previous = NULL;
			LandBlock* next = LandBlock::g_first_sorting;
			while (next != NULL && next->Distance < block->Distance)
			{
				previous = next;
				next = next->Next;
			}
			if (previous != NULL)
			{
				previous->Next = block;
				block->Next = next;
			}
			else
			{
				block->Next = LandBlock::g_first_sorting;
				LandBlock::g_first_sorting = block;
			}
		}
	}
	g_b_do_pre_draw = true;
}

void LH3DIsland::DrawUnderWater()
{
	if (!g_b_draw_reflection)
	{
		return;
	}
	unsigned long darknessToColor[LAND_CELL_MAX_DARKNESS + 1];
	LH3DTech::g_current_matrix = &LH3DTech::g_world_to_clipping;
	PreDraw();
	g_height_unit *= -1.0f;
	LandBlock::g_draw_reflection = true;
	memcpy(darknessToColor, LandCell::g_darkness_to_color, sizeof(darknessToColor));
	for (int i = 0; i < LAND_CELL_MAX_DARKNESS + 1; i++)
	{
		LH3DColor* color = (LH3DColor*)&LandCell::g_darkness_to_color[i];
		color->b /= 2;
		color->g /= 2;
		color->r /= 2;
	}
	bool32_t useSmallBump = g_b_use_small_bump;
	g_b_use_small_bump = false;
	LandBlock* block = LandBlock::g_first_sorting;
	while (block != NULL)
	{
		if (block->MeshLodZone == LAND_MESH_ZONE_NEAR_TO_MEDIUM || block->MeshLodZone == LAND_MESH_ZONE_MEDIUM_TO_FAR)
		{
			g_dummy_block = *block;
			g_dummy_block.MorphBlock(block->MeshLodZone == LAND_MESH_ZONE_NEAR_TO_MEDIUM);
			block = &g_dummy_block;
		}
		block->Draw();
		block = block->Next;
	}
	g_b_use_small_bump = useSmallBump;
	g_height_unit *= -1.0f;
	memcpy(LandCell::g_darkness_to_color, darknessToColor, sizeof(darknessToColor));
	LandBlock::g_draw_reflection = false;
}

void LH3DIsland::Draw()
{
	LH3DTech::g_current_matrix = &LH3DTech::g_world_to_clipping;
	PreDraw();
	g_b_view_has_changed = false;
	LandBlock* block = LandBlock::g_first_sorting;
	while (block != NULL)
	{
		LandBlock* original = block;
		if (block->MeshLodZone == LAND_MESH_ZONE_NEAR_TO_MEDIUM || block->MeshLodZone == LAND_MESH_ZONE_MEDIUM_TO_FAR)
		{
			g_dummy_block = *block;
			g_dummy_block.MorphBlock(block->MeshLodZone == LAND_MESH_ZONE_NEAR_TO_MEDIUM);
			block = &g_dummy_block;
		}
		bool32_t drawn = block->Draw();
		if (drawn)
		{
			block->Flags |= LAND_BLOCK_VISIBLE;
		}
		else
		{
			block->Flags &= ~LAND_BLOCK_VISIBLE;
		}
		if (drawn)
		{
			original->Flags |= LAND_BLOCK_VISIBLE;
		}
		else
		{
			original->Flags &= ~LAND_BLOCK_VISIBLE;
		}
		if (drawn)
		{
			for (TShadowInfo* shadow = TShadowInfo::g_first; shadow != NULL; shadow = shadow->Next)
			{
				if (shadow->IsUseable() && block->GridX * LAND_BLOCK_WIDTH <= shadow->Bounds.MaxX &&
				    (block->GridX + 1) * LAND_BLOCK_WIDTH >= shadow->Bounds.MinX &&
				    block->GridZ * LAND_BLOCK_WIDTH <= shadow->Bounds.MaxZ &&
				    (block->GridZ + 1) * LAND_BLOCK_WIDTH >= shadow->Bounds.MinZ)
				{
					block->DrawWithDynamicShadow(shadow);
				}
			}
		}
		if ((block->Flags & LAND_BLOCK_VISIBLE) != ((block->Flags >> 1) & LAND_BLOCK_VISIBLE))
		{
			if (block->Flags & LAND_BLOCK_VISIBLE)
			{
				original->Flags |= LAND_BLOCK_WAS_VISIBLE;
			}
			else
			{
				original->Flags &= ~LAND_BLOCK_WAS_VISIBLE;
			}
			g_b_view_has_changed = true;
		}
		block = block->Next;
	}
	g_b_do_pre_draw = false;
	g_b_already_drawn_island = true;
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

#ifndef VERSION_BW1W100
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
#endif

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

void LH3DIsland::SetFileToLoad(char* name)
{
	strncpy(g_name_mnt_to_load, name, sizeof(g_name_mnt_to_load));
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

void LH3DIsland::UseLowResTexture(bool32_t use)
{
	g_b_use_always_low_texture = use;
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

#ifndef VERSION_BW1W100
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
#endif

#ifndef VERSION_BW1W100
void LH3DIsland::SetCountry(long x, long z, long country)
{
	if (country > g_max_index_country)
	{
		return;
	}
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
			g_ptr_blocks[block]->Cells[cellX][cellZ].SetCountry(country);
			g_ptr_blocks[block]->SetNeedUpdate();
			return;
		}
		offset = ((x >> 4) << 5) + (z >> 4);
		block = g_index_block[0][offset];
		if (block != 0)
		{
			g_ptr_blocks[block]->Cells[cellX][0].SetCountry(country);
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
		g_ptr_blocks[block]->Cells[cellX][LAND_MESH_LOD_0_CELLS].SetCountry(country);
		g_ptr_blocks[block]->SetNeedUpdate();
		return;
	}
	if (cellZ != 0)
	{
		offset = ((x >> 4) << 5) + (z >> 4);
		block = g_index_block[0][offset];
		if (block != 0)
		{
			g_ptr_blocks[block]->Cells[0][cellZ].SetCountry(country);
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
		g_ptr_blocks[block]->Cells[LAND_MESH_LOD_0_CELLS][cellZ].SetCountry(country);
		g_ptr_blocks[block]->SetNeedUpdate();
		return;
	}
	offset = x * (LAND_BLOCKS_SIDE / LAND_MESH_LOD_0_CELLS) + (z >> 4);
	block = g_index_block[0][offset];
	if (block != 0)
	{
		g_ptr_blocks[block]->Cells[0][0].SetCountry(country);
		g_ptr_blocks[block]->SetNeedUpdate();
	}
	if (x != 0)
	{
		block = g_index_block[0][offset - LAND_BLOCKS_SIDE];
		if (block != 0)
		{
			g_ptr_blocks[block]->Cells[LAND_MESH_LOD_0_CELLS][0].SetCountry(country);
			g_ptr_blocks[block]->SetNeedUpdate();
		}
		if (z == 0)
		{
			return;
		}
		block = g_index_block[0][offset - 1];
		if (block != 0)
		{
			g_ptr_blocks[block]->Cells[0][LAND_MESH_LOD_0_CELLS].SetCountry(country);
			g_ptr_blocks[block]->SetNeedUpdate();
		}
		block = g_index_block[0][offset - LAND_BLOCKS_SIDE - 1];
		if (block == 0)
		{
			return;
		}
		g_ptr_blocks[block]->Cells[LAND_MESH_LOD_0_CELLS][LAND_MESH_LOD_0_CELLS].SetCountry(country);
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
	g_ptr_blocks[block]->Cells[0][LAND_MESH_LOD_0_CELLS].SetCountry(country);
	g_ptr_blocks[block]->SetNeedUpdate();
}

void LH3DIsland::RequestUpdateAllTextures()
{
	for (int i = 1; i < g_block_count; i++)
	{
		g_ptr_blocks[i]->SetNeedUpdate();
	}
}
#endif

void LH3DIsland::LoadFromDisk(char* name)
{
	CreateCommonPart();
	uint32_t length = 0;
	LHFileLength(name, &length);
	uint8_t* data = (uint8_t*)LH3DMem::Alloc(length);
	LHLoadData(name, data, length, NULL);
	LandFileHeader* header = (LandFileHeader*)data;
	g_block_count = header->BlockCount;
	int countryCount = header->CountryCount;
	int materialCount = header->MaterialCount;
	memcpy(g_index_block, header->IndexBlock, sizeof(g_index_block));
	uint8_t* buffer = LowResTexture::LoadThemAll(data + sizeof(LandFileHeader));
	int      i;
	for (i = 1; i < g_block_count; i++)
	{
		LandBlock* block = (LandBlock*)AllocClear(sizeof(LandBlock));
		g_ptr_blocks[i] = block;
		memcpy(block, buffer, sizeof(LandBlock));
		memset(&block->NeedClipping, 0, (char*)&block->Texture - (char*)&block->NeedClipping);
		block->SmallTextureUpdated = false;
		if (!g_b_use_always_low_texture)
		{
			char textureName[LAND_BLOCK_TEXTURE_NAME_LENGTH];
			sprintf(textureName, "Block%d", i);
			block->Texture = LH3DTexture::Create(textureName, LH3D_TEXTURE_FLAGS_ALPHA | LH3D_TEXTURE_TYPE_NAMED,
			                                     block->Index, NULL);
			block->Texture->ProcessFunc = LH3DLandscape::ProcessTexture;
			block->Material = LH3DRender::CreateMaterial(
				LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_OPAQUE, block->Texture);
		}
		else
		{
			block->Texture = NULL;
			block->Material = NULL;
		}
		block->LowRes = LowResTexture::GetTexture((long)block->LowRes);
		block->SmallTextureUpdated = false;
		InitBlockInfo(block);
		buffer += sizeof(LandBlock);
	}
	for (i = 0; i < countryCount; i++)
	{
		LH3DLandscape::g_list_country[i] = (LH3DLandscape::Country*)AllocClear(sizeof(LH3DLandscape::Country));
		memcpy(LH3DLandscape::g_list_country[i], buffer, sizeof(LH3DLandscape::Country));
		buffer += sizeof(LH3DLandscape::Country);
	}
	for (i = 0; i < materialCount; i++)
	{
		if (g_b_use_always_low_texture)
		{
			LH3DLandscape::g_list_material[i] = NULL;
			LH3DLandscape::g_list_terrain_type[i] = ((LH3DLandscape::Material*)buffer)->Type;
		}
		else
		{
			LH3DLandscape::g_list_material[i] = (LH3DLandscape::Material*)AllocClear(sizeof(LH3DLandscape::Material));
			memcpy(LH3DLandscape::g_list_material[i], buffer, sizeof(LH3DLandscape::Material));
		}
		buffer += sizeof(LH3DLandscape::Material);
	}
	if (!g_b_use_always_low_texture)
	{
		memcpy(LH3DLandscape::g_noise_bitmap, buffer, LH3D_LANDSCAPE_BITMAP_SIZE);
		memcpy(LH3DLandscape::g_bump, buffer + LH3D_LANDSCAPE_BITMAP_SIZE, LH3D_LANDSCAPE_BITMAP_SIZE);
	}
	LH3DMem::Free(data);
}

void LH3DIsland::SaveOnDisk(char* name)
{
	LandFileHeader header;
	int            materialCount = 0;
	int            countryCount = 0;
	int            i;
	for (i = 0; i < LH3D_LANDSCAPE_MAX_MATERIALS; i++)
	{
		if (LH3DLandscape::g_list_material[i] != NULL)
		{
			materialCount++;
		}
	}
	for (i = 0; i < LH3D_LANDSCAPE_MAX_COUNTRIES; i++)
	{
		if (LH3DLandscape::g_list_country[i] != NULL)
		{
			countryCount++;
		}
	}
	header.BlockCount = g_block_count;
	header.CountryCount = countryCount;
	header.MaterialCount = materialCount;
	memcpy(header.IndexBlock, g_index_block, sizeof(header.IndexBlock));
	header.BlockSize = sizeof(LandBlock);
	header.MaterialSize = sizeof(LH3DLandscape::Material);
	header.CountrySize = sizeof(LH3DLandscape::Country);
	uint32_t size = sizeof(LandFileHeader) + g_block_count * sizeof(LandBlock) +
	                countryCount * sizeof(LH3DLandscape::Country) +
	                LowResTexture::g_count * (sizeof(LowResTexture) + LOW_RES_TEXTURE_SAVED_SIZE) +
	                materialCount * sizeof(LH3DLandscape::Material) + 2 * LH3D_LANDSCAPE_BITMAP_SIZE;
	uint8_t* data = (uint8_t*)LH3DMem::AllocClear(size);
	memcpy(data, &header, sizeof(header));
	uint8_t* buffer = LowResTexture::SaveThemAll(data + sizeof(LandFileHeader));
	for (i = 1; i < g_block_count; i++)
	{
		if (g_ptr_blocks[i] != NULL)
		{
			LowResTexture* lowRes = g_ptr_blocks[i]->LowRes;
			g_ptr_blocks[i]->LowRes = (LowResTexture*)lowRes->Index;
			memcpy(buffer, g_ptr_blocks[i], sizeof(LandBlock));
			g_ptr_blocks[i]->LowRes = lowRes;
			buffer += sizeof(LandBlock);
		}
	}
	for (i = 0; i < countryCount; i++)
	{
		if (LH3DLandscape::g_list_country[i] != NULL)
		{
			memcpy(buffer, LH3DLandscape::g_list_country[i], sizeof(LH3DLandscape::Country));
			buffer += sizeof(LH3DLandscape::Country);
		}
	}
	for (i = 0; i < LH3D_LANDSCAPE_MAX_MATERIALS; i++)
	{
		if (LH3DLandscape::g_list_material[i] != NULL)
		{
			memcpy(buffer, LH3DLandscape::g_list_material[i], sizeof(LH3DLandscape::Material));
			buffer += sizeof(LH3DLandscape::Material);
		}
	}
	memcpy(buffer, LH3DLandscape::g_noise_bitmap, LH3D_LANDSCAPE_BITMAP_SIZE);
	memcpy(buffer + LH3D_LANDSCAPE_BITMAP_SIZE, LH3DLandscape::g_bump, LH3D_LANDSCAPE_BITMAP_SIZE);
	LHSaveData(name, data, size, NULL);
	LH3DMem::Free(data);
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
					long source = block->LowResPixelV * LOW_RES_TEXTURE_SIZE + block->LowResPixelU;
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
#ifndef VERSION_BW1W100
	if (LH3DTech::g_b_P3)
	{
		LH3DP3::GetColorAndSpecularWrapper(pos, color, specular);
		return;
	}
#endif
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
#ifndef VERSION_BW1W100
	if (LH3DTech::g_b_P3)
	{
		LH3DP3::GetColorAndSpecularWrapper(coords, color, specular);
		return;
	}
#endif
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

bool32_t __fastcall LH3DIsland::RayCast(const LHPoint& from, const LHPoint& to, float* x, float* z)
{
	if (RayCastInternal(from.x / LAND_CELL_SIZE, from.z / LAND_CELL_SIZE, from.y / g_height_unit, to.x / LAND_CELL_SIZE,
	                    to.z / LAND_CELL_SIZE, to.y / g_height_unit))
	{
		*x = g_hitx * LAND_CELL_SIZE;
		*z = g_hity * LAND_CELL_SIZE;
		return true;
	}
	if (to.y > from.y)
	{
		return false;
	}
	float dy = to.y - from.y;
	if ((float)fabs(dy) < LAND_RAY_CAST_EPSILON)
	{
		return false;
	}
	float t = -(from.y / dy);
	*x = (to.x - from.x) * t + from.x;
	*z = (to.z - from.z) * t + from.z;
	Point2D hit;
	hit.x = *x;
	hit.y = *z;
	Point2D camera;
	camera.x = LH3DTech::GetCameraPosition()->x;
	camera.y = LH3DTech::GetCameraPosition()->z;
	float dz = hit.y - camera.y;
	float dx = hit.x - camera.x;
	if (dx * dx + dz * dz > LAND_RAY_CAST_SEA_RANGE * LAND_RAY_CAST_SEA_RANGE)
	{
		return false;
	}
	return true;
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

void __fastcall LH3DIsland::GetNormal(const LH3DMapCoords& coords, LHPoint* normal)
{
	if (!IsOnMap(coords))
	{
		normal->Set(0.0f, 1.0f, 0.0f);
		return;
	}
	LandCell* cell = GetCell(coords);
	if (cell == NULL)
	{
		normal->Set(0.0f, 1.0f, 0.0f);
		return;
	}
	float x0;
	float z0;
	float z1;
	float z2;
	int   altitude0;
	int   altitude1;
	int   altitude2;
	if (cell->Flags & LAND_CELL_SPLIT)
	{
		z1 = 0.0f;
		altitude1 = cell[LAND_BLOCK_SIDE_POINTS].altitude;
		altitude2 = cell[1].altitude;
		z2 = LAND_CELL_SIZE;
		if (coords.BlockZ() > MAP_COORDS_FRACTION_MAX - coords.BlockX())
		{
			x0 = LAND_CELL_SIZE;
			altitude0 = cell[LAND_BLOCK_SIDE_POINTS + 1].altitude;
			z0 = LAND_CELL_SIZE;
		}
		else
		{
			x0 = 0.0f;
			altitude0 = cell[0].altitude;
			z0 = 0.0f;
		}
	}
	else
	{
		z1 = LAND_CELL_SIZE;
		altitude2 = cell[0].altitude;
		altitude1 = cell[LAND_BLOCK_SIDE_POINTS + 1].altitude;
		z2 = 0.0f;
		if (coords.BlockX() > coords.BlockZ())
		{
			x0 = LAND_CELL_SIZE;
			altitude0 = cell[LAND_BLOCK_SIDE_POINTS].altitude;
			z0 = 0.0f;
		}
		else
		{
			x0 = 0.0f;
			altitude0 = cell[1].altitude;
			z0 = LAND_CELL_SIZE;
		}
	}
	int     dy1 = altitude1 - altitude0;
	int     dy2 = altitude2 - altitude0;
	float   scale = g_distance_array[abs(dy1)] * g_distance_array[abs(dy2)];
	LHPoint a;
	LHPoint b;
	a.x = 0.0f - x0;
	a.y = dy2 * g_height_unit;
	a.z = z2 - z0;
	b.x = LAND_CELL_SIZE - x0;
	b.y = dy1 * g_height_unit;
	b.z = z1 - z0;
	normal->CrossProduct(a, b);
	normal->Mul(scale);
	normal->Mul(g_inv_sqr_array[FloatToInt(normal->GetNorm() * (LAND_INV_SQR_ARRAY_SIZE - 1))]);
	if (normal->y < 0.0f)
	{
		normal->x = -normal->x;
		normal->y = -normal->y;
		normal->z = -normal->z;
	}
}

static inline uint16_t HalveMeshIndex(uint16_t index)
{
	return (index - (index / LAND_BLOCK_SIDE_POINTS) * (LAND_BLOCK_SIDE_POINTS - (LAND_MESH_LOD_1_CELLS + 1))) / 2;
}

void LH3DIsland::CreateCommonPart()
{
	if (g_b_created)
	{
		Release();
	}
	g_b_created = true;
	g_b_need_rebuild_all = true;
	LH3DLandscape::Create();
	if (LH3DRender::b_open)
	{
		if (g_b_use_small_bump)
		{
			CreateSmallBump();
		}
		else
		{
			ReleaseSmallBump();
		}
	}
	LowResTexture::Open();
	SnowCover::Reset();
	int i;
	for (i = 0; i < LAND_DISTANCE_ARRAY_SIZE; i++)
	{
		LandCell::g_darkness_to_color[i] = RGBA_MAKE(i, i, i, 0xff);
		LandCell::g_darkness[i] = i;
		g_distance_array[i] =
			1.0f / (float)sqrt((i * g_height_unit) * (i * g_height_unit) + LAND_CELL_SIZE * LAND_CELL_SIZE);
	}
	g_inv_sqr_array[0] = 1.0f;
	for (i = 1; i < LAND_INV_SQR_ARRAY_SIZE; i++)
	{
		g_inv_sqr_array[i] = 1.0 / sqrt(i * (1.0f / (LAND_INV_SQR_ARRAY_SIZE - 1)));
	}
	static bool32_t s_first_time = true;
	if (s_first_time)
	{
		s_first_time = false;
		for (i = 0; i < MESH_LOD_TYPE_COUNT; i++)
		{
			MeshLodInfo::g_mesh_lod_info[i].East = false;
			MeshLodInfo::g_mesh_lod_info[i].West = false;
			MeshLodInfo::g_mesh_lod_info[i].South = false;
			MeshLodInfo::g_mesh_lod_info[i].North = false;
			MeshLodInfo::g_mesh_lod_info[i].HasBorder = false;
			MeshLodInfo::g_mesh_lod_info[i].Reserved = false;
		}
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_NORTH].North = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_NORTH].HasBorder = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_SOUTH].South = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_SOUTH].HasBorder = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_WEST].West = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_WEST].HasBorder = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_EAST].East = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_EAST].HasBorder = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_NORTH | MESH_LOD_EAST].North = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_NORTH | MESH_LOD_EAST].East = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_NORTH | MESH_LOD_EAST].HasBorder = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_NORTH | MESH_LOD_WEST].North = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_NORTH | MESH_LOD_WEST].West = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_NORTH | MESH_LOD_WEST].HasBorder = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_SOUTH | MESH_LOD_WEST].South = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_SOUTH | MESH_LOD_WEST].West = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_SOUTH | MESH_LOD_WEST].HasBorder = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_SOUTH | MESH_LOD_EAST].South = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_SOUTH | MESH_LOD_EAST].East = true;
		MeshLodInfo::g_mesh_lod_info[MESH_LOD_SOUTH | MESH_LOD_EAST].HasBorder = true;
		for (i = 0; i < (int)(sizeof(MeshLodInfo::g_NORTH_12) / sizeof(MeshLodInfo::g_NORTH_12[0][0])); i++)
		{
			MeshLodInfo::g_NORTH_12[0][i] = HalveMeshIndex(MeshLodInfo::g_NORTH_12[0][i]);
			MeshLodInfo::g_SOUTH_12[0][i] = HalveMeshIndex(MeshLodInfo::g_SOUTH_12[0][i]);
			MeshLodInfo::g_WEST_12[0][i] = HalveMeshIndex(MeshLodInfo::g_WEST_12[0][i]);
			MeshLodInfo::g_EAST_12[0][i] = HalveMeshIndex(MeshLodInfo::g_EAST_12[0][i]);
		}
		for (i = 0; i < (int)(sizeof(MeshLodInfo::g_NORTH_WEST_12) / sizeof(MeshLodInfo::g_NORTH_WEST_12[0][0])); i++)
		{
			MeshLodInfo::g_NORTH_WEST_12[0][i] = HalveMeshIndex(MeshLodInfo::g_NORTH_WEST_12[0][i]);
			MeshLodInfo::g_NORTH_EAST_12[0][i] = HalveMeshIndex(MeshLodInfo::g_NORTH_EAST_12[0][i]);
			MeshLodInfo::g_SOUTH_WEST_12[0][i] = HalveMeshIndex(MeshLodInfo::g_SOUTH_WEST_12[0][i]);
			MeshLodInfo::g_SOUTH_EAST_12[0][i] = HalveMeshIndex(MeshLodInfo::g_SOUTH_EAST_12[0][i]);
		}
	}
	memset(g_ptr_blocks, 0, sizeof(g_ptr_blocks));
	memset(g_index_block, 0, sizeof(g_index_block));
	g_block_count = 1;
}

uint32_t LH3DIsland::Create()
{
	if (LH3DLevelOfDetail::g_detail_idx == 4)
	{
		g_texture_lod.SetParameters(LAND_TEXTURE_LOD_HIGH_DETAIL_DISTANCE, LAND_TEXTURE_LOD_HIGH_DETAIL_WIDTH);
	}
#ifndef VERSION_BW1W100
	if (IsP4Improvement())
	{
		if (LH3DVRAMTex::g_count > LAND_TEXTURE_LOD_P4_LARGE_VRAM)
		{
			g_texture_lod.SetParameters(LAND_TEXTURE_LOD_P4_LARGE_VRAM_DISTANCE, LAND_TEXTURE_LOD_P4_WIDTH);
		}
		else if (LH3DVRAMTex::g_count > LAND_TEXTURE_LOD_P4_MEDIUM_VRAM)
		{
			g_texture_lod.SetParameters(LAND_TEXTURE_LOD_P4_MEDIUM_VRAM_DISTANCE, LAND_TEXTURE_LOD_P4_WIDTH);
		}
		else if (LH3DVRAMTex::g_count > LAND_TEXTURE_LOD_P4_SMALL_VRAM)
		{
			g_texture_lod.SetParameters(LAND_TEXTURE_LOD_P4_SMALL_VRAM_DISTANCE, LAND_TEXTURE_LOD_P4_WIDTH);
		}
		g_mesh_red_01.SetParameters(LAND_MESH_LOD_P4_01_DISTANCE, LAND_MESH_LOD_P4_WIDTH);
		g_mesh_red_12.SetParameters(LAND_MESH_LOD_P4_12_DISTANCE, LAND_MESH_LOD_P4_WIDTH);
	}
#endif
	ResetAllWhenLandscapeChange();
	if (IsCompressed())
	{
		LoadFromDisk(g_name_mnt_to_load);
		return true;
	}
	if (g_b_use_always_low_texture)
	{
		g_b_use_always_low_texture = false;
	}
	CreateCommonPart();
	LHReleasedFile file(g_name_mnt_to_load);
	file.Open(LH_FILE_READ_ONLY);
	LHSegment segment;
	uint8_t*  soundMap = NULL;
	if (file.GetSegment("LH_FILE_NEW_COUNTRY_MASK_SEGMENT", &segment, true) == LH_FILE_RESULT_NOT_FOUND)
	{
		return false;
	}
	uint8_t* blockMask = (uint8_t*)LH3DMem::AllocClear(LAND_BLOCKS_SIDE * LAND_BLOCKS_SIDE);
	memcpy(blockMask, segment.Data, LAND_BLOCKS_SIDE * LAND_BLOCKS_SIDE);
	if (file.GetSegment("LH_FILE_NEW_HEIGHT_SEGMENT", &segment, true) == LH_FILE_RESULT_NOT_FOUND)
	{
		return false;
	}
	uint8_t* heightMap = (uint8_t*)LH3DMem::AllocClear(LAND_MAP_POINTS);
	memcpy(heightMap, segment.Data, LAND_MAP_SIZE * LAND_MAP_SIZE);
	int      i;
	uint8_t* mask = blockMask;
	for (i = 0; i < LAND_BLOCKS_SIDE; i++)
	{
		for (int j = 0; j < LAND_BLOCKS_SIDE; j++)
		{
			if (*mask == 0)
			{
				for (int line = 0; line < LAND_MESH_LOD_0_CELLS; line++)
				{
					memset(&heightMap[(i * LAND_MAP_SIZE + j) * LAND_MESH_LOD_0_CELLS + line * LAND_MAP_SIZE], 0,
					       LAND_MESH_LOD_0_CELLS);
				}
			}
			mask++;
		}
	}
	AdjustAlti(heightMap);
	if (file.GetSegment("LH_FILE_NEW_LIGHT_SEGMENT", &segment, true) == LH_FILE_RESULT_NOT_FOUND)
	{
		return false;
	}
	uint8_t* lightMap = (uint8_t*)LH3DMem::AllocClear(LAND_MAP_POINTS);
	memcpy(lightMap, segment.Data, LAND_MAP_SIZE * LAND_MAP_SIZE);
	if (file.GetSegment("LH_FILE_NEW_COUNTRY_SEGMENT", &segment, true) == LH_FILE_RESULT_NOT_FOUND)
	{
		return false;
	}
	uint8_t* countryMap = (uint8_t*)LH3DMem::AllocClear(LAND_MAP_POINTS);
	memcpy(countryMap, segment.Data, LAND_MAP_SIZE * LAND_MAP_SIZE);
	if (file.GetSegment("LH_FILE_NOISE_BITMAP", &segment, true) == LH_FILE_RESULT_NOT_FOUND)
	{
		return false;
	}
	LH3DLandscape::SetNoiseMaps(segment.Data);
	if (file.GetSegment("LH_FILE_COUNTRIES_MATERIALS_BLEN", &segment, true) == LH_FILE_RESULT_NOT_FOUND)
	{
		return false;
	}
	LH3DLandscape::SetCountries(segment.Data);
	if (file.GetSegment("LH_FILE_MATERIALS_RAW", &segment, true) == LH_FILE_RESULT_NOT_FOUND)
	{
		return false;
	}
	LH3DLandscape::SetMaterials(segment.Data);
	if (file.GetSegment("LH_FILE_BUMP", &segment, true) == LH_FILE_RESULT_NOT_FOUND)
	{
		return false;
	}
	LH3DLandscape::SetBump(segment.Data);
	if (file.GetSegment("LH_FILE_FLAGS", &segment, true) == LH_FILE_RESULT_NOT_FOUND)
	{
		LH3DLandscape::g_town_index = 0;
		LH3DLandscape::g_filed_index = 0;
	}
	else
	{
		LH3DLandscape::g_filed_index = ((unsigned long*)segment.Data)[0];
		LH3DLandscape::g_town_index = ((unsigned long*)segment.Data)[1];
	}
	if (file.GetSegment("LH_FILE_SOUND_MAP", &segment, true) != LH_FILE_RESULT_NOT_FOUND)
	{
		soundMap = (uint8_t*)LH3DMem::AllocClear(LAND_MAP_POINTS);
		memcpy(soundMap, segment.Data, LAND_MAP_SIZE * LAND_MAP_SIZE);
	}
	file.FreeLastSeg();
	file.Close();
	for (uint32_t x = 0; x < LAND_BLOCKS_SIDE; x++)
	{
		for (uint32_t z = 0; z < LAND_BLOCKS_SIDE; z++)
		{
			if (blockMask[x * LAND_BLOCKS_SIDE + z] != 0)
			{
				long     offset = (x * LAND_MAP_SIZE + z) * LAND_MESH_LOD_0_CELLS;
				uint8_t* heights = &heightMap[offset];
				bool32_t notEmpty = false;
				int      k;
				int      l;
				for (k = 0; k < LAND_BLOCK_SIDE_POINTS; k++)
				{
					for (l = 0; l < LAND_BLOCK_SIDE_POINTS; l++)
					{
						if (heights[k * LAND_MAP_SIZE + l] != 0)
						{
							notEmpty = true;
						}
					}
				}
				if (!notEmpty)
				{
					char text[256];
					sprintf(text, "JC: Block completely empty (%d,%d)", x, z);
				}
				else if (g_block_count < LAND_MAX_BLOCKS)
				{
					LandBlock* block = (LandBlock*)LH3DMem::AllocClear(sizeof(LandBlock));
					g_ptr_blocks[g_block_count] = block;
					block->X = x * LAND_BLOCK_WIDTH;
					block->Z = z * LAND_BLOCK_WIDTH;
					block->Index = g_block_count;
					g_index_block[x][z] = g_block_count;
					block->GridX = x;
					block->GridZ = z;
					if (!g_b_use_always_low_texture)
					{
						char textureName[LAND_BLOCK_TEXTURE_NAME_LENGTH];
						sprintf(textureName, "Block%d", g_block_count);
						block->Texture = LH3DTexture::Create(
							textureName, LH3D_TEXTURE_FLAGS_ALPHA | LH3D_TEXTURE_TYPE_NAMED, block->Index, NULL);
						block->Texture->ProcessFunc = LH3DLandscape::ProcessTexture;
						block->Material = LH3DRender::CreateMaterial(
							LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_OPAQUE, block->Texture);
					}
					else
					{
						block->Texture = NULL;
						block->Material = NULL;
					}
					block->LowRes = LowResTexture::GetNewTexture(&block->LowResPixelU, &block->LowResPixelV);
					block->SmallTextureUpdated = false;
					block->LowResU = block->LowResPixelU * (1.0f / LOW_RES_TEXTURE_SIZE);
					block->LowResV = block->LowResPixelV * (1.0f / LOW_RES_TEXTURE_SIZE);
					for (k = 0; k < LAND_BLOCK_SIDE_POINTS; k++)
					{
						for (l = 0; l < LAND_BLOCK_SIDE_POINTS; l++)
						{
							LandCell* cell = &block->Cells[k][l];
							cell->altitude = heightMap[offset + k * LAND_MAP_SIZE + l];
							int country = countryMap[offset + k * LAND_MAP_SIZE + l];
							if (country > g_max_index_country)
							{
								country = 0;
							}
							cell->SetCountry(country);
							cell->darkness = lightMap[offset + k * LAND_MAP_SIZE + l];
							if (cell->darkness < LAND_CELL_MIN_DARKNESS)
							{
								cell->darkness = LAND_CELL_MIN_DARKNESS;
							}
							cell->SaveColor = cell->darkness;
						}
					}
					for (k = 0; k < LAND_MESH_LOD_0_CELLS; k++)
					{
						for (l = 0; l < LAND_MESH_LOD_0_CELLS; l++)
						{
							LandCell* cell = &block->Cells[k][l];
							cell->ComputeSplit();
							if (cell[0].altitude == 0 && cell[1].altitude == 0 &&
							    cell[LAND_BLOCK_SIDE_POINTS].altitude == 0 &&
							    cell[LAND_BLOCK_SIDE_POINTS + 1].altitude == 0)
							{
								cell->Flags |= LAND_CELL_SUBMERGED;
							}
						}
					}
					InitBlockInfo(block);
					g_block_count++;
				}
				else
				{
					x = LAND_BLOCKS_SIDE;
					z = LAND_BLOCKS_SIDE;
				}
			}
		}
	}
	int materialCount = 0;
	while (LH3DLandscape::g_list_material[materialCount] != NULL)
	{
		materialCount++;
	}
	int countryCount = 0;
	while (LH3DLandscape::g_list_country[countryCount] != NULL)
	{
		countryCount++;
	}
	char      text[256];
	uint32_t* used = (uint32_t*)LH3DMem::AllocClear(countryCount * sizeof(uint32_t));
	for (i = 0; i < LAND_MAP_SIZE * LAND_MAP_SIZE; i++)
	{
		used[countryMap[i]] = true;
	}
	for (i = 0; i < countryCount; i++)
	{
		if (!used[i])
		{
			sprintf(text, "country %d not used", i);
		}
	}
	LH3DMem::Free(used);
	used = (uint32_t*)LH3DMem::AllocClear(materialCount * sizeof(uint32_t));
	for (i = 0; i < LH3D_LANDSCAPE_MAX_COUNTRIES; i++)
	{
		LH3DLandscape::Country* country = LH3DLandscape::g_list_country[i];
		if (country != NULL)
		{
			for (int altitude = 0; altitude < LH3D_LANDSCAPE_NB_ALTITUDES; altitude++)
			{
				used[country->Altitudes[altitude].Material1] = true;
				used[country->Altitudes[altitude].Material2] = true;
			}
		}
	}
	for (i = 0; i < materialCount; i++)
	{
		if (!used[i])
		{
			sprintf(text, "Material %d not used", i);
		}
	}
	LH3DMem::Free(used);
	Report3D__FPCce("Count mat = %d\n", materialCount);
	ComputeFlags(soundMap);
	if (heightMap != NULL)
	{
		LH3DMem::Free(heightMap);
	}
	if (lightMap != NULL)
	{
		LH3DMem::Free(lightMap);
	}
	if (blockMask != NULL)
	{
		LH3DMem::Free(blockMask);
	}
	if (countryMap != NULL)
	{
		LH3DMem::Free(countryMap);
	}
	if (soundMap != NULL)
	{
		LH3DMem::Free(soundMap);
	}
	return true;
}

bool32_t LH3DIsland::Release()
{
	if (!g_b_created)
	{
		return false;
	}
	SnowCover::Reset();
	g_b_created = false;
	g_b_need_rebuild_all = true;
	LowResTexture::Close();
	ReleaseSmallBump();
	LH3DLandscape::Release();
	for (uint32_t i = 0; i < LAND_MAX_BLOCKS; i++)
	{
		if (g_ptr_blocks[i] != NULL)
		{
			g_ptr_blocks[i]->Release();
			g_ptr_blocks[i] = NULL;
		}
	}
	LH3DJustFootPrint::ReleaseAll();
	g_block_count = 0;
	memset(g_ptr_blocks, 0, sizeof(g_ptr_blocks));
	memset(g_index_block, 0, sizeof(g_index_block));
	g_current_block = NULL;
	g_b_view_has_changed = true;
	return true;
}

void LH3DIsland::CreateSmallBump()
{
	if (g_bump_texture == NULL)
	{
		g_bump_texture =
			LH3DTexture::Create(".\\data\\Textures\\smallbump.raw", LH3D_TEXTURE_FLAGS_ALPHA | LH3D_TEXTURE_TYPE_FILE,
		                        LH3D_TEXTURE_ID_NONE, NULL);
		g_bump_material = LH3DRender::CreateMaterial(
			LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_OPAQUE, g_bump_texture);
	}
}

void LH3DIsland::ReleaseSmallBump()
{
	if (g_bump_texture != NULL)
	{
		g_bump_texture->Release();
		g_bump_texture = NULL;
	}
	if (g_bump_material != NULL)
	{
		delete g_bump_material;
		g_bump_material = NULL;
	}
}

void LowResTexture::Open()
{
	memset(g_list, 0, sizeof(g_list));
	g_count = 0;
}

void LowResTexture::Close()
{
	for (uint32_t i = 0; i < LOW_RES_TEXTURE_MAX; i++)
	{
		if (g_list[i] != NULL)
		{
			g_list[i]->Release();
			g_list[i] = NULL;
		}
	}
	g_count = 0;
}

uint8_t* LowResTexture::SaveThemAll(uint8_t* buffer)
{
	*(int*)buffer = g_count;
	buffer += sizeof(int);
	for (int i = 0; i < g_count; i++)
	{
		LowResTexture* texture = g_list[i];
		*(LowResTexture*)buffer = *texture;
		buffer += sizeof(LowResTexture);
		DDSURFACEDESC2 desc;
		memset(&desc, 0, sizeof(desc));
		desc.dwSize = sizeof(desc);
		GLock(LH3DTexture::g_surface_for_load_4444, NULL, &desc, DDLOCK_WAIT | DDLOCK_WRITEONLY | DDLOCK_NOSYSLOCK,
		      NULL);
		long      pitch = desc.lPitch / (long)sizeof(uint16_t);
		uint16_t* dest = (uint16_t*)desc.lpSurface;
		uint16_t* source = texture->Texture->SRAMTex->GetSoftSurface();
		if (dest != NULL && source != NULL)
		{
			for (int y = 0; y < LOW_RES_TEXTURE_SIZE; y++)
			{
				for (int x = 0; x < LOW_RES_TEXTURE_SIZE; x++)
				{
					dest[y * pitch + x] = *source++;
				}
			}
		}
		LH3DTexture::g_surface_for_load_4444->Unlock(NULL);
		LH3DCT* ct = LH3DCT::Create(NULL, true);
		ct->Surface->Blt(NULL, LH3DTexture::g_surface_for_load_4444, NULL, DDBLT_WAIT, NULL);
		LH3DCT::DataOnDisk* saving = ct->CreateSavingData();
		memcpy(buffer, saving, saving->Size);
		buffer += saving->Size;
		ct->Release();
	}
	return buffer;
}

uint8_t* LowResTexture::LoadThemAll(uint8_t* buffer)
{
	if (g_count != 0)
	{
		g_count = 0;
	}
	int count = *(int*)buffer;
	buffer += sizeof(int);
	for (int i = 0; i < count; i++)
	{
		LowResTexture* texture = Create();
		g_list[i] = texture;
		texture->Count = ((LowResTexture*)buffer)->Count;
		texture->Index = ((LowResTexture*)buffer)->Index;
		buffer += sizeof(LowResTexture);
		LH3DCT* ct = LH3DCT::Create((LH3DCT::DataOnDisk*)buffer, true);
		buffer += ((LH3DCT::DataOnDisk*)buffer)->Size;
		LH3DTexture::g_surface_for_load_4444->Blt(NULL, ct->Surface, NULL, DDBLT_WAIT, NULL);
		ct->Release();
		DDSURFACEDESC2 desc;
		memset(&desc, 0, sizeof(desc));
		desc.dwSize = sizeof(desc);
		if (LH3DTexture::g_surface_for_load_4444->IsLost())
		{
			LH3DTexture::g_surface_for_load_4444->Restore();
		}
		GLock(LH3DTexture::g_surface_for_load_4444, NULL, &desc, DDLOCK_WAIT | DDLOCK_WRITEONLY | DDLOCK_NOSYSLOCK,
		      NULL);
		uint16_t*    source = (uint16_t*)desc.lpSurface;
		long         pitch = desc.lPitch / (long)sizeof(uint16_t);
		LH3DSRAMTex* sram = texture->Texture->SRAMTex;
		uint16_t*    dest = sram->GetSoftSurface();
		if (dest != NULL && source != NULL)
		{
#ifdef VERSION_BW1W100
			for (int y = 0; y < sram->Format.GetWidth(); y++)
#else
			for (int y = 0; y < sram->Format.GetHeight(); y++)
#endif
			{
				for (int x = 0; x < sram->Format.GetWidth(); x++)
				{
					dest[y * sram->Format.GetWidth() + x] = source[y * pitch + x];
				}
			}
		}
		LH3DTexture::g_surface_for_load_4444->Unlock(NULL);
		if (LH3DIsland::g_b_use_always_low_texture)
		{
			texture->Texture->Compress();
		}
	}
	return buffer;
}

LowResTexture* LowResTexture::GetTexture(long index)
{
	for (int i = 0; i < g_count; i++)
	{
		if (index == g_list[i]->Index)
		{
			return g_list[i];
		}
	}
	return g_list[0];
}

bool32_t LH3DIsland::IsCompressed()
{
	size_t length = strlen(g_name_mnt_to_load);
	if (g_name_mnt_to_load[length - 3] != 'l' && g_name_mnt_to_load[length - 3] != 'L')
	{
		return false;
	}
	if (g_name_mnt_to_load[length - 2] != 'n' && g_name_mnt_to_load[length - 2] != 'N')
	{
		return false;
	}
	if (g_name_mnt_to_load[length - 1] != 'd' && g_name_mnt_to_load[length - 1] != 'D')
	{
		return false;
	}
	return true;
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

#ifndef VERSION_BW1W100
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

bool32_t IsP4Improvement()
{
	if (IsPentium4 && LH3DLevelOfDetail::g_detail_idx == 4 && g_b_p4_improvement)
	{
		return true;
	}
	return false;
}
#endif
