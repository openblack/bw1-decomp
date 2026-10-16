#ifndef BW1_DECOMP_LH3D_ISLAND_INCLUDED_H
#define BW1_DECOMP_LH3D_ISLAND_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stddef.h>    /* For NULL */
#include <stdint.h>    /* For uint16_t, uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#include "LH3DMapCoords.h"
#include "LHPoint.h"

// Forward Declares

struct LH3DColor;
struct LHCoord;
struct LH3DMaterial;
struct LH3DTexture;

#define LAND_CELL_MAX_DARKNESS 0xff
// Cells at or below this altitude are drawn flat at sea level.
#define LAND_CELL_SEA_ALTITUDE 3
// Cells at or below this altitude get no small bump.
#define LAND_CELL_SHORE_ALTITUDE 1

// Bits of LandCell::Flags.
#define LAND_CELL_WATER 0x10
// The cell is cut along its 01-10 diagonal instead of 00-11. Set by LandCell::ComputeSplit.
#define LAND_CELL_SPLIT 0x80
// All four corners are at altitude 0. Set by LH3DIsland::Create.
#define LAND_CELL_SUBMERGED 0x200

// Cells along a side of a block at each level of detail.
#define LAND_MESH_LOD_0_CELLS  16
#define LAND_MESH_LOD_1_CELLS  8
#define LAND_MESH_LOD_2_CELLS  4
#define LAND_BLOCK_SIDE_POINTS (LAND_MESH_LOD_0_CELLS + 1)

// LandBlock::TextureLod: the block's own texture, the low-resolution island texture, or the first faded into the
// second.
#define LAND_TEXTURE_LOD_HIGH  0
#define LAND_TEXTURE_LOD_LOW   1
#define LAND_TEXTURE_LOD_BLEND 2

// LandBlock::FogMode: no fog, fog varying across the block, or the whole block at the far end of the fog.
#define LAND_FOG_NONE    0
#define LAND_FOG_PARTIAL 1
#define LAND_FOG_FULL    2

// LandBlock::DrawFlags: whether DrawBefore runs before the block's triangles are drawn and DrawAfter after them.
#define LAND_BLOCK_DRAW_FLAG_BEFORE 0x1
#define LAND_BLOCK_DRAW_FLAG_AFTER  0x2

struct LandCell
{
	uint8_t  r; /* 0x0 */
	uint8_t  g;
	uint8_t  b;
	uint8_t  darkness;
	uint8_t  altitude;
	uint8_t  SaveColor;
	uint16_t Flags;

	// Light colour for each darkness level.
	// BW1W120 00edd90c BW1M119 01202f80 (LHCombined Release)
	static unsigned long g_darkness_to_color[LAND_CELL_MAX_DARKNESS + 1];

	// Non-virtual methods

	// BW1W120 inlined BW1M119 0100f850
	bool32_t IsWater() { return Flags & LAND_CELL_WATER; }
};

// The line across the island where a texture level of detail fades in, and the width of the fade.
struct TextureLOD
{
	LHPoint  Normal;    /* 0x00 */
	LHPoint  Point;     /* 0x0c */
	bool32_t Valid;     /* 0x18 */
	float    Distance;  /* 0x1c */
	float    Width;     /* 0x20 */
	float    HalfWidth; /* 0x24 */
};
static_assert(sizeof(TextureLOD) == 0x28, "Data type is of wrong size");

// A block's tile of the low-resolution island texture.
struct LowResTexture
{
	void*         field_0x0; /* 0x0 */
	LH3DMaterial* Material;  /* 0x4 */
};

struct LandBlock
{
	enum LandMeshLOD
	{
		LAND_MESH_LOD_0,
		LAND_MESH_LOD_1,
		LAND_MESH_LOD_2,
	};

	LandCell       Cells[LAND_BLOCK_SIDE_POINTS][LAND_BLOCK_SIDE_POINTS]; /* 0x000 */
	int            Index;                                                 /* 0x908 */
	float          X;                                                     /* 0x90c */
	float          Z;                                                     /* 0x910 */
	int            GridX;                                                 /* 0x914 */
	int            GridZ;                                                 /* 0x918 */
	bool32_t       NeedClipping;                                          /* 0x91c */
	uint32_t       field_0x920;                                           /* 0x920 */
	int            MaxAltitude;                                           /* 0x924 */
	bool32_t       DrawSmallBump;                                         /* 0x928 */
	bool32_t       UseLowResTexture;                                      /* 0x92c */
	LandMeshLOD    MeshLod;                                               /* 0x930 */
	int            MeshLodZone;                                           /* 0x934 */
	int            TextureLod;                                            /* 0x938 */
	uint32_t       MeshLodType;                                           /* 0x93c */
	int            FogMode;                                               /* 0x940 */
	LH3DTexture*   Texture;                                               /* 0x944 */
	LH3DMaterial*  Material;                                              /* 0x948 */
	uint32_t       DrawFlags;                                             /* 0x94c */
	uint8_t        field_0x950[0x9c0 - 0x950];                            /* 0x950 */
	LowResTexture* LowRes;                                                /* 0x9c0 */
	float          LowResU;                                               /* 0x9c4 */
	float          LowResV;                                               /* 0x9c8 */

	// BW1W120 00fa92dc BW1M119 01202b50 (LHCombined Release)
	static bool32_t g_draw_reflection;

	// BW1W120 00875c60 BW1M119 0102c720 (LHCombined Release)
	void __fastcall CreateListPoly(LandMeshLOD lod);
	// BW1W120 00876910 BW1M119 01016630 (LHCombined Release)
	void __fastcall CreateListPolyUnclipped(LandMeshLOD lod);
	// BW1W120 00878f70 BW1M119 0104ce80 (LHCombined Release)
	void DrawBefore();
	// BW1W120 008790f0 BW1M119 0104cbf0 (LHCombined Release)
	void DrawAfter();
	// BW1W120 007a98b0 BW1M119 null
	void CreateListPolyP3(LandMeshLOD lod);
	// BW1W120 007aa8f0 BW1M119 null
	void CreateListPolyUnclippedP3(LandMeshLOD lod);
};

class LH3DIsland
{
public:
	// BW1W120 00e9c964 BW1M119 01202288 (LHCombined Release)
	static uint8_t g_index_block[32][32];
	// BW1W120 00e9c564 BW1M119 011ffed8 (LHCombined Release)
	static LandBlock* g_ptr_blocks[0x100];
	// BW1W120 00c3720c BW1M119 011ceb28 (LHCombined Release)
	static float g_height_unit;
	// BW1W120 00c37214 BW1M119 011ceb30 (LHCombined Release)
	static float g_max_fogr;
	// BW1W120 00c37218 BW1M119 011ceb34 (LHCombined Release)
	static float g_max_fogg;
	// BW1W120 00c3721c BW1M119 011ceb38 (LHCombined Release)
	static float g_max_fogb;
	// BW1W120 00c37220 BW1M119 011ceb3c (LHCombined Release)
	static float g_fog_min;
	// BW1W120 00c37224 BW1M119 011ceb40 (LHCombined Release)
	static float g_fog_max;
	// BW1W120 00c37228 BW1M119 011ceb44 (LHCombined Release)
	static int g_max_fadefac;
	// BW1W120 00e9b6d8 BW1M119 012018a8 (LHCombined Release)
	static LH3DColor g_max_color_fog;
	// BW1W120 00e9b6dc BW1M119 012018ac (LHCombined Release)
	static float g_fog_delta;
	// BW1W120 00e9c508 BW1M119 01202af4 (LHCombined Release)
	static TextureLOD g_texture_lod;
	// BW1W120 00e9c530 BW1M119 01202b1c (LHCombined Release)
	static TextureLOD g_sbump_lod;
	// BW1W120 00e9cd64 BW1M119 01202aa0 (LHCombined Release)
	static LH3DMaterial* g_bump_material;
	// BW1W120 00e9cd6c BW1M119 01202698 (LHCombined Release)
	static LandBlock* g_current_block;

	// Static methods

	// BW1W120 inlined BW1M119 0102f130 (LHCombined Release)
	static LandCell* GetCell(long x, long z)
	{
		if (x < 0 || x > 511 || z < 0 || z > 511)
		{
			return NULL;
		}
		uint32_t block = g_index_block[x >> 4][z >> 4];
		if (block == 0)
		{
			return NULL;
		}
		return &g_ptr_blocks[block]->Cells[x & 0xf][z & 0xf];
	}
	// BW1W120 inlined BW1M119 01017640
	static float GetHeightAsFloat(long x, long z)
	{
		LandCell* cell = GetCell(x, z);
		if (cell != NULL)
		{
			return cell->altitude * g_height_unit;
		}
		return 0.0f;
	}
	// BW1W120 0060d3a0 BW1M119 inlined
	static bool32_t IsWater(long x, long z)
	{
		LandCell* cell = GetCell(x, z);
		if (cell != NULL)
		{
			return cell->IsWater();
		}
		return 1;
	}

	// BW1W120 00804790 BW1M119 01045ba0 (LHCombined Release)
	static bool32_t Release();

	// BW1W120 00803090 BW1M119 0102f1e0 (LHCombined Release)
	static float __fastcall GetAltitude(const LH3DMapCoords& coords);
	// BW1W120 00803340 BW1M119 01047430 (LHCombined Release)
	static float __fastcall GetAltitudeAndSetColorSpecular(const LH3DMapCoords& coords, unsigned long* color,
	                                                       unsigned long* specular);
	// BW1W120 00803630 BW1M119 0101c2c0 (LHCombined Release)
	static void __fastcall GetNormal(const LH3DMapCoords& coords, LHPoint* normal);
	// BW1W120 00801c90 BW1M119 0102a1a0 (LHCombined Release)
	static void GetColorAndSpecular(const LHPoint* pos, unsigned long* color, unsigned long* specular);
	// BW1W120 007feb30 BW1M119 01026a30 (LHCombined Release)
	static unsigned long GetFogValue(const LHPoint* pos, unsigned long specular, unsigned long* color);
	// BW1W120 inlined BW1M119 01049370
	static void GetColorAndSpecularWithFog(const LHPoint* pos, unsigned long* color, unsigned long* specular)
	{
		GetColorAndSpecular(pos, color, specular);
		*specular = GetFogValue(pos, *specular, color);
	}
	// BW1W120 00802550 BW1M119 01019660 (LHCombined Release)
	static bool32_t __fastcall RayCast(const LHPoint& from, const LHPoint& to, float* x, float* z);
	// BW1W120 00800c30 BW1M119 01018fc0 (LHCombined Release)
	static bool32_t __fastcall RayCastFrom2DPoint(const LHCoord& point, float* x, float* z, bool param_4,
	                                              float param_5);
	// BW1W120 inlined BW1M119 inlined
	static float GetAltitude(const LHPoint& pos)
	{
		LH3DMapCoords coords(pos.x, pos.z);
		return GetAltitude(coords);
	}
	// BW1W120 inlined BW1M119 inlined
	static void GetNormal(const LHPoint& pos, LHPoint* normal)
	{
		LH3DMapCoords coords(pos.x, pos.z);
		GetNormal(coords, normal);
	}
	// BW1W120 00802120 BW1M119 01026d00 (LHCombined Release)
	static void GetColorAndSpecular(const LH3DMapCoords& coords, unsigned long* color, unsigned long* specular);
};

#endif /* BW1_DECOMP_LH3D_ISLAND_INCLUDED_H */
