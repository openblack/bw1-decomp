#ifndef BW1_DECOMP_LH3D_ISLAND_INCLUDED_H
#define BW1_DECOMP_LH3D_ISLAND_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stddef.h>    /* For NULL */
#include <stdint.h>    /* For uint16_t, uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#include "LH3DMapCoords.h"
#include "LHMatrix.h"
#include "LHPoint.h"

// Forward Declares

struct LH3DColor;
struct LHCoord;
struct LH3DMaterial;
struct LH3DTexture;
struct LandBlock;
struct TShadowInfo;

#define LAND_CELL_MAX_DARKNESS            0xff
#define LAND_CELL_MAX_ALTITUDE            0xff
#define LAND_CELL_MIN_DARKNESS            0x30
#define LAND_CELL_SEA_ALTITUDE            3
#define LAND_CELL_SHORE_ALTITUDE          1
#define LAND_SEA_LEVEL                    4
#define LAND_CELL_COUNTRY_MASK            0xf
#define LAND_CELL_WATER                   0x10
#define LAND_CELL_COAST                   0x20
#define LAND_CELL_SPLIT                   0x80
#define LAND_CELL_SUBMERGED               0x200
#define LAND_CELL_SOUND_LOW_BIT           0x400
#define LAND_CELL_SOUND_MASK              0xf
#define LAND_INV_SQR_ARRAY_SIZE           1024
#define LAND_WEIGHT_ONE                   256
#define LAND_MAP_SIZE                     512
#define LAND_MAP_MAX                      (LAND_MAP_SIZE - 1)
#define LAND_MAP_POINTS                   ((LAND_MAP_SIZE + 1) * (LAND_MAP_SIZE + 1))
#define LAND_BLOCK_MASK                   0xf
#define LAND_BLOCKS_SIDE                  32
#define LAND_MAX_BLOCKS                   0x100
#define LAND_RAY_CAST_EPSILON             0.0001f
#define LAND_RAY_CAST_SEA_RANGE           7500.0f
#define LAND_RAY_CELL_MIN                 0.1f
#define LAND_RAY_CELL_MAX                 (LAND_MAP_SIZE - LAND_RAY_CELL_MIN)
#define LAND_RAY_CAST_INFINITY            1e20
#define LAND_PLANES_PARALLEL_EPSILON      0.0001f
#define LAND_MESH_LOD_0_CELLS             16
#define LAND_MESH_LOD_1_CELLS             8
#define LAND_MESH_LOD_2_CELLS             4
#define LAND_BLOCK_SIDE_POINTS            (LAND_MESH_LOD_0_CELLS + 1)
#define LAND_TEXTURE_LOD_HIGH             0
#define LAND_TEXTURE_LOD_LOW              1
#define LAND_TEXTURE_LOD_BLEND            2
#define LAND_FOG_NONE                     0
#define LAND_FOG_PARTIAL                  1
#define LAND_FOG_FULL                     2
#define LAND_BLOCK_DRAW_FLAG_BEFORE       0x1
#define LAND_BLOCK_DRAW_FLAG_AFTER        0x2
#define LAND_BLOCK_VISIBLE                0x1
#define LAND_BLOCK_WAS_VISIBLE            0x2
#define LOW_RES_TEXTURE_TILES_SIDE        4
#define LOW_RES_TEXTURE_TILES             (LOW_RES_TEXTURE_TILES_SIDE * LOW_RES_TEXTURE_TILES_SIDE)
#define LOW_RES_TEXTURE_TILE_SIZE         64
#define LOW_RES_TEXTURE_MAX               16
#define LOW_RES_TEXTURE_SIZE              (LOW_RES_TEXTURE_TILES_SIDE * LOW_RES_TEXTURE_TILE_SIZE)
#define LOW_RES_TEXTURE_TEXELS_PER_CELL   (LOW_RES_TEXTURE_TILE_SIZE / LAND_MESH_LOD_0_CELLS)
#define LOW_RES_TEXTURE_LOW_RES_SCALE     2
#define LOW_RES_TEXTURE_LOW_RES_TILE_SIZE (LOW_RES_TEXTURE_TILE_SIZE / LOW_RES_TEXTURE_LOW_RES_SCALE)
#define LOW_RES_TEXTURE_SAMPLE_STEP       4
#define LOW_RES_TEXTURE_FIXED_ONE         0x10000

enum LAND_RAY_CLIP
{
	LAND_RAY_CLIP_LOW_X = 0x1,
	LAND_RAY_CLIP_HIGH_X = 0x2,
	LAND_RAY_CLIP_LOW_Y = 0x4,
	LAND_RAY_CLIP_HIGH_Y = 0x8,
};

enum LAND_CELL_SOUND
{
	LAND_CELL_SOUND_NONE,
	LAND_CELL_SOUND_COAST,
	LAND_CELL_SOUND_SEA,
	LAND_CELL_SOUND_SHORE,
};

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

	// BW1W120 0083ade0 BW1M119 0104e790 (LHCombined Release)
	void ComputeSplit();

	// BW1W120 inlined BW1M119 0100f850
	bool32_t IsWater() { return Flags & LAND_CELL_WATER; }
	// BW1W120 inlined BW1M119 0104b470 (LHCombined Release)
	void SetLand() { Flags &= ~(LAND_CELL_WATER | LAND_CELL_COAST); }
	// BW1W120 inlined BW1M119 inlined
	void SetWater()
	{
		SetLand();
		Flags |= LAND_CELL_WATER;
	}
	// BW1W120 inlined BW1M119 inlined
	void SetCoast()
	{
		SetLand();
		Flags |= LAND_CELL_COAST;
	}
	// BW1W120 inlined BW1M119 0104b430 (LHCombined Release)
	int GetSoundIndex() { return (Flags / LAND_CELL_SOUND_LOW_BIT) & LAND_CELL_SOUND_MASK; }
	// BW1W120 inlined BW1M119 inlined
	void SetSoundIndex(int sound)
	{
		Flags &= ~(LAND_CELL_SOUND_MASK * LAND_CELL_SOUND_LOW_BIT);
		Flags |= (sound & LAND_CELL_SOUND_MASK) * LAND_CELL_SOUND_LOW_BIT;
	}
	// BW1W120 inlined BW1M119 0104f310 (LHCombined Release)
	int GetCountry() { return Flags & LAND_CELL_COUNTRY_MASK; }
	// BW1W120 inlined BW1M119 inlined
	uint8_t GetAltitude() { return altitude; }
	// BW1W120 inlined BW1M119 inlined
	void SetCountry(long country)
	{
		Flags &= ~LAND_CELL_COUNTRY_MASK;
		Flags |= country & LAND_CELL_COUNTRY_MASK;
	}

	// BW1W120 0083ae80 BW1M119 0101aae0 (LHCombined Release)
	static bool32_t __fastcall RayCellCheck(long x, long y, float from_x, float from_y, float from_z, float to_x,
	                                        float to_y, float to_z);
};

struct TextureLOD
{
	LHPoint  Normal;    /* 0x00 */
	LHPoint  Point;     /* 0x0c */
	bool32_t Valid;     /* 0x18 */
	float    Distance;  /* 0x1c */
	float    Width;     /* 0x20 */
	float    HalfWidth; /* 0x24 */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	TextureLOD(float distance, float width) { SetParameters(distance, width); }

	// Non-virtual methods

	// BW1W120 inlined BW1M119 0104cb70 (LHCombined Release)
	void SetParameters(float distance, float width)
	{
		Normal.Set(1.0f, 0.0f, 0.0f);
		Point.SetNull();
		Valid = false;
		Width = width;
		HalfWidth = Width * 0.5f;
		Distance = distance;
	}
	// BW1W120 007fee60 BW1M119 01018b10 (LHCombined Release)
	void ComputeXLine();
};
static_assert(sizeof(TextureLOD) == 0x28, "Data type is of wrong size");

struct MeshLOD
{
	LHPoint  Normal;    /* 0x00 */
	LHPoint  Point;     /* 0x0c */
	bool32_t Valid;     /* 0x18 */
	float    Distance;  /* 0x1c */
	float    Width;     /* 0x20 */
	float    HalfWidth; /* 0x24 */

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	MeshLOD(float distance, float width) { SetParameters(distance, width); }

	// Non-virtual methods

	// BW1W120 inlined BW1M119 0104caf0 (LHCombined Release)
	void SetParameters(float distance, float width)
	{
		Normal.Set(1.0f, 0.0f, 0.0f);
		Point.SetNull();
		Valid = false;
		Width = width;
		HalfWidth = width * 0.5f;
		Distance = distance;
	}
	// BW1W120 007ff0e0 BW1M119 01018d90 (LHCombined Release)
	void ComputeXLine();
};
static_assert(sizeof(MeshLOD) == 0x28, "Data type is of wrong size");

struct LowResTexture
{
	LH3DTexture*  Texture;  /* 0x0 */
	LH3DMaterial* Material; /* 0x4 */
	int           Count;    /* 0x8 */
	int           Index;    /* 0xc */

	// BW1W120 007fed20 BW1M119 0104c400 (LHCombined Release)
	static LowResTexture* GetNewTexture(long* u, long* v);
	// BW1W120 007fedb0 BW1M119 0104c340 (LHCombined Release)
	static LowResTexture* Create();
	// BW1W120 007fee10 BW1M119 0104c290 (LHCombined Release)
	void Release();
	// BW1W120 008002c0 BW1M119 01049d10 (LHCombined Release)
	static void __fastcall UpdateSmallTexture(LandBlock* block, uint16_t* dest, unsigned long pitch);
	// BW1W120 008048b0 BW1M119 010459f0 (LHCombined Release)
	static void Open();
	// BW1W120 008048d0 BW1M119 01045950 (LHCombined Release)
	static void Close();
	// BW1W120 00804900 BW1M119 010456b0 (LHCombined Release)
	static uint8_t* SaveThemAll(uint8_t* buffer);
	// BW1W120 00804a70 BW1M119 01045450 (LHCombined Release)
	static uint8_t* LoadThemAll(uint8_t* buffer);
	// BW1W120 00804c60 BW1M119 010453c0 (LHCombined Release)
	static LowResTexture* GetTexture(long index);
};
static_assert(sizeof(LowResTexture) == 0x10, "Data type is of wrong size");

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
	uint32_t       Flags;                                                 /* 0x920 */
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
	uint32_t       field_0x950;                                           /* 0x950 */
	uint32_t       field_0x954;                                           /* 0x954 */
	LHMatrix       field_0x958;                                           /* 0x958 */
	LHMatrix       field_0x988;                                           /* 0x988 */
	LandBlock*     Next;                                                  /* 0x9b8 */
	float          Distance;                                              /* 0x9bc */
	LowResTexture* LowRes;                                                /* 0x9c0 */
	float          LowResU;                                               /* 0x9c4 */
	float          LowResV;                                               /* 0x9c8 */
	long           LowResPixelU;                                          /* 0x9cc */
	long           LowResPixelV;                                          /* 0x9d0 */
	bool32_t       SmallTextureUpdated;                                   /* 0x9d4 */

	// BW1W120 00fa92dc BW1M119 01202b50 (LHCombined Release)
	static bool32_t g_draw_reflection;

	// BW1W120 00874aa0 BW1M119 01025920 (LHCombined Release)
	bool32_t Draw();
	// BW1W120 00875c60 BW1M119 0102c720 (LHCombined Release)
	void __fastcall CreateListPoly(LandMeshLOD lod);
	// BW1W120 00876910 BW1M119 01016630 (LHCombined Release)
	void __fastcall CreateListPolyUnclipped(LandMeshLOD lod);
	// BW1W120 00877210 BW1M119 010294f0 (LHCombined Release)
	void ComputeInfo();
	// BW1W120 00877d20 BW1M119 0101e550 (LHCombined Release)
	void __fastcall MorphBlock(bool32_t lod_1);
	// BW1W120 00878210 BW1M119 01022ce0 (LHCombined Release)
	void ComputeMeshLodType();
	// BW1W120 00878350 BW1M119 010192e0 (LHCombined Release)
	void DrawWithDynamicShadow(TShadowInfo* shadow);
	// BW1W120 00878720 BW1M119 0104d980 (LHCombined Release)
	void Release();
	// BW1W120 008786d0 BW1M119 0103fbe0 (LHCombined Release)
	void SetNeedUpdate();
	// BW1W120 00878f70 BW1M119 0104ce80 (LHCombined Release)
	void DrawBefore();
	// BW1W120 008790f0 BW1M119 0104cbf0 (LHCombined Release)
	void DrawAfter();
	// BW1W120 007a98b0 BW1M119 null
	void CreateListPolyP3(LandMeshLOD lod);
	// BW1W120 007aa8f0 BW1M119 null
	void CreateListPolyUnclippedP3(LandMeshLOD lod);
	// BW1W120 inlined BW1M119 0100ea20 (LHCombined Release)
	bool32_t IsVisibleThisFrame() { return Flags & LAND_BLOCK_VISIBLE; }
};
static_assert(sizeof(LandBlock) == 0x9d8, "Data type is of wrong size");

// The name of a block's texture, "Block%d".
#define LAND_BLOCK_TEXTURE_NAME_LENGTH 32

// The start of a landscape file written by LH3DIsland::SaveOnDisk. The blocks, countries, materials, the noise bitmap
// and the bump map follow.
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

class LH3DIsland
{
public:
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
	// BW1W120 00e9c964 BW1M119 01202288 (LHCombined Release)
	static uint8_t g_index_block[LAND_BLOCKS_SIDE][LAND_BLOCKS_SIDE];
	// BW1W120 00e9c564 BW1M119 011ffed8 (LHCombined Release)
	static LandBlock* g_ptr_blocks[LAND_MAX_BLOCKS];
	// BW1W120 00e9cd64 BW1M119 01202aa0 (LHCombined Release)
	static LH3DMaterial* g_bump_material;
	// BW1W120 00e9cd6c BW1M119 01202698 (LHCombined Release)
	static LandBlock* g_current_block;

	// Static methods

	// Inliner IL size: 108
	// BW1W120 00516aa0 BW1M119 0102f130 (LHCombined Release)
	static LandCell* GetCell(long x, long z)
	{
		if (x < 0 || x > LAND_MAP_MAX || z < 0 || z > LAND_MAP_MAX)
		{
			return NULL;
		}
		uint32_t block = g_index_block[x >> 4][z >> 4];
		if (block == 0)
		{
			return NULL;
		}
		return &g_ptr_blocks[block]->Cells[x & LAND_BLOCK_MASK][z & LAND_BLOCK_MASK];
	}
	// BW1W120 inlined BW1M119 inlined
	static LandCell* GetCell(const LH3DMapCoords& coords)
	{
		return GetCell((int16_t)coords.CellX, (int16_t)coords.CellZ);
	}
	// BW1W120 inlined BW1M119 0103b9a0 (LHCombined Release)
	static int GetIndex(long x, long z)
	{
		if (x < 0 || x > LAND_BLOCKS_SIDE - 1 || z < 0 || z > LAND_BLOCKS_SIDE - 1)
		{
			return 0;
		}
		return g_index_block[x][z];
	}
	// Inliner IL size: 118
	// BW1W120 00800250 BW1M119 inlined
	static int GetSoundIndex(long x, long z)
	{
		if (x < 0 || x > LAND_MAP_MAX || z < 0 || z > LAND_MAP_MAX)
		{
			return LAND_CELL_SOUND_COAST;
		}
		uint32_t block = g_index_block[x >> 4][z >> 4];
		if (block == 0)
		{
			return LAND_CELL_SOUND_COAST;
		}
		LandCell* cell = &g_ptr_blocks[block]->Cells[x & LAND_BLOCK_MASK][z & LAND_BLOCK_MASK];
		return cell->GetSoundIndex();
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

	// BW1W120 007feaa0 BW1M119 0103b070 (LHCombined Release)
	static void SetFogMinMax(float fog_min, float fog_max);
	// BW1W120 007fead0 BW1M119 0103b380 (LHCombined Release)
	static void SetFogColor(float red, float green, float blue, unsigned long fadefac);
	// BW1W120 007ff2d0 BW1M119 01022ed0 (LHCombined Release)
	static void PreDraw();
	// BW1W120 007ff4f0 BW1M119 01021630 (LHCombined Release)
	static void DrawUnderWater();
	// BW1W120 007ff610 BW1M119 01021b10 (LHCombined Release)
	static void Draw();
	// BW1W120 007ffa10 BW1M119 0104b4b0 (LHCombined Release)
	static void AdjustAlti(void* data);
	// BW1W120 00800c10 BW1M119 01049ca0 (LHCombined Release)
	static void SetFileToLoad(char* name);
	// BW1W120 00800d90 BW1M119 010497f0 (LHCombined Release)
	static void UseLowResTexture(bool32_t use);
	// BW1W120 00800da0 BW1M119 01049540 (LHCombined Release)
	static void SetHeightAsByte(long x, long z, long height);
	// BW1W120 00800ff0 BW1M119 010492c0 (LHCombined Release)
	static void SetColor(long x, long z, uint8_t color);
	// BW1W120 00801250 BW1M119 01049200 (LHCombined Release)
	static bool32_t GetCountry(long x, long z, uint8_t& country);
	// BW1W120 008012c0 BW1M119 01048e50 (LHCombined Release)
	static void SetCountry(long x, long z, long country);
	// BW1W120 008015a0 BW1M119 01048da0 (LHCombined Release)
	static void RequestUpdateAllTextures();
	// BW1W120 008015d0 BW1M119 010487a0 (LHCombined Release)
	static void LoadFromDisk(char* name);
	// BW1W120 00801870 BW1M119 01047fd0 (LHCombined Release)
	static void SaveOnDisk(char* name);
	// BW1W120 00801a70 BW1M119 01047d70 (LHCombined Release)
	static bool32_t BuildSoundTGA(char* name);
	// BW1W120 00802680 BW1M119 0101a0d0 (LHCombined Release)
	static bool32_t __stdcall RayCastInternal(float from_x, float from_y, float from_z, float to_x, float to_y,
	                                          float to_z);
	// BW1W120 00803890 BW1M119 01046bc0 (LHCombined Release)
	static void CreateCommonPart();
	// BW1W120 00803c00 BW1M119 01045dd0 (LHCombined Release)
	static uint32_t Create();
	// BW1W120 00804830 BW1M119 01045b00 (LHCombined Release)
	static void CreateSmallBump();
	// BW1W120 00804860 BW1M119 01045a60 (LHCombined Release)
	static void ReleaseSmallBump();
	// BW1W120 00804cf0 BW1M119 01034330 (LHCombined Release)
	static unsigned long __fastcall GetTerrainMaterial(unsigned long x, unsigned long z);
	// BW1W120 00804d80 BW1M119 null
	static bool32_t IsSteep(long x, long z);
	// BW1W120 00804790 BW1M119 01045ba0 (LHCombined Release)
	static bool32_t Release();
	// BW1W120 00804ca0 BW1M119 010452e0 (LHCombined Release)
	static bool32_t IsCompressed();

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
	static bool32_t __fastcall RayCastFrom2DPoint(const LHCoord& point, float* x, float* z, bool from_near_plane,
	                                              float near_distance);
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

// BW1W120 00804e60 BW1M119 01045220 (LHCombined Release)
bool32_t IsP4Improvement();

#endif /* BW1_DECOMP_LH3D_ISLAND_INCLUDED_H */
