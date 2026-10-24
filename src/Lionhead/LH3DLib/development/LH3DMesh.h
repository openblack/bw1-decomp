#ifndef BW1_DECOMP_LH3D_MESH_INCLUDED_H
#define BW1_DECOMP_LH3D_MESH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For MAX_COUNT_3D_MESHES */

#include "LH3DBoundingBox.h" /* For struct LH3DBoundingBox */

#include <re_common.h> /* For bool32_t */

enum LH3D_MESH_FLAGS
{
	// The low byte of the flags of a mesh with bones holds the number of bones.
	LH3D_MESH_FLAGS_BONE_COUNT_MASK = 0xff,
	LH3D_MESH_FLAGS_HAS_BONES = 0x100,
	LH3D_MESH_FLAGS_HAS_DOOR_POSITION = 0x800,
	LH3D_MESH_FLAGS_PACKED = 0x1000,
	LH3D_MESH_FLAGS_NO_DRAW = 0x2000,
	LH3D_MESH_FLAGS_UNKNOWN_15 = 0x4000,
	LH3D_MESH_FLAGS_CONTAINS_LANDSCAPE_FEATURE = 0x8000,
	LH3D_MESH_FLAGS_SKINS_HAVE_FORMAT = 0x10000,
	LH3D_MESH_FLAGS_CONTAINS_UV2 = 0x40000,
	LH3D_MESH_FLAGS_CONTAINS_NAME_DATA = 0x80000,
	LH3D_MESH_FLAGS_CONTAINS_EXTRA_METRICS = 0x100000,
	LH3D_MESH_FLAGS_CONTAINS_EBONE = 0x200000,
	LH3D_MESH_FLAGS_CONTAINS_TNL_DATA = 0x400000,
	LH3D_MESH_FLAGS_CONTAINS_NEW_EP = 0x800000,
	// Set by Create when one of the sub meshes is a physics one.
	LH3D_MESH_FLAGS_HAS_PHYSICS = 0x80000000,
};

// The sections of the extra data that follows the sub meshes of a mesh file.
#define LH3D_MESH_FLAGS_CONTAINS_NEW_DATA                                                                              \
	(LH3D_MESH_FLAGS_CONTAINS_LANDSCAPE_FEATURE | LH3D_MESH_FLAGS_CONTAINS_UV2 | LH3D_MESH_FLAGS_CONTAINS_NAME_DATA |  \
	 LH3D_MESH_FLAGS_CONTAINS_EXTRA_METRICS | LH3D_MESH_FLAGS_CONTAINS_EBONE | LH3D_MESH_FLAGS_CONTAINS_TNL_DATA |     \
	 LH3D_MESH_FLAGS_CONTAINS_NEW_EP)

// A file offset of a mesh that points nowhere.
#define LH3D_MESH_NO_OFFSET 0xffffffff

// The number of bone matrices g_my_list_matrix holds.
#define LH3D_MESH_LIST_MATRIX_SIZE 256

// Forward Declares

struct LH3DLODData;
struct LH3DMesh;
struct LH3DSubMesh;
struct LH3DTexture;
struct LH3DTnLData;
struct LHMatrix;
struct LHPoint;
struct TShadowInfo;

struct SubmeshName
{
	char    Name[0x20];
	uint8_t field_0x20[0xc0];
};
static_assert(sizeof(SubmeshName) == 0xe0, "Data type is of wrong size");

struct SubmeshNameData
{
	uint32_t     Size;
	uint32_t     Count;
	SubmeshName* Names;
};

struct LH3DMeshPack
{
	int       MeshCount; /* 0x0 */
	LH3DMesh* Meshes[MAX_COUNT_3D_MESHES];
};

struct LH3DMesh
{
	// The header of the MESHES segment: the offsets of the packed meshes from its start.
	struct PackHeader
	{
		uint32_t field_0x0;
		long     Count;
		uint32_t Offsets[1]; /* 0x8 */

		// BW1W120 inlined BW1M119 010691b0 (LHCombined Release)
		long GetCount() { return Count; }
	};

	char            magic[0x4]; /* 0x0 */
	uint32_t        flags;
	long            size;
	int             SubmeshCount;
	LH3DSubMesh**   submeshes; /* 0x10 */
	LH3DBoundingBox BoundingBox;
	void*           BoundingBoxes; /* 0x34 */
	int             SkinCount;
	LH3DTexture**   skins;
	int             ExtraDataCount; /* 0x40 */
	LHPoint*        ExtraPos;
	void*           FootprintData;

	// Static data

	// BW1W120 00c37d8c BW1M119 011cfb28 (LHCombined Release)
	static unsigned long g_color;
	// BW1W120 00c37d90 BW1M119 011cfb2c (LHCombined Release)
	static unsigned long g_special_color;
	// BW1W120 00c37d94 BW1M119 011cfb30 (LHCombined Release)
	static int g_current_lod;
	// BW1W120 00c37d98 BW1M119 011cfb34 (LHCombined Release)
	static unsigned long g_window_col;
	// The bone matrices of the object being transformed.
	// BW1W120 00c37d9c BW1M119 011cfb38 (LHCombined Release)
	static LHMatrix* g_current_list_matrix;
	// BW1W120 00e9ce04 BW1M119 01215a4c (LHCombined Release)
	static float* g_list_shadow_pt;
	// BW1W120 00e9ce24 BW1M119 01215a80 (LHCombined Release)
	static LH3DTnLData* g_current_vb;
	// BW1W120 00e9ce28 BW1M119 01212a40 (LHCombined Release)
	static LHMatrix g_my_list_matrix[LH3D_MESH_LIST_MATRIX_SIZE];
	// BW1W120 00e9fe28 BW1M119 01215a7c (LHCombined Release)
	static bool g_hinge_only;
	// BW1W120 00e9fe2c BW1M119 01215a60 (LHCombined Release)
	static unsigned long g_specular;
	// BW1W120 00e9ce08 BW1M119 01215a64 (LHCombined Release)
	static LHPoint g_world_point;
	// BW1W120 00e9ce18 BW1M119 01215a70 (LHCombined Release)
	static LHPoint g_local_point;
	// BW1W120 00e9fe30 BW1M119 01215a5c (LHCombined Release)
	static TShadowInfo* g_current_shadow;
	// BW1W120 00e9fe34 BW1M119 01215a58 (LHCombined Release)
	static LH3DMeshPack* g_pack;
	// BW1W120 00e9fe38 BW1M119 01215a54 (LHCombined Release)
	static bool32_t g_b_open;
	// BW1W120 00e9fe3c BW1M119 01215a50 (LHCombined Release)
	static int g_count;
	// BW1W120 00e9fe40 BW1M119 01215a48 (LHCombined Release)
	static long g_last_size_shadow;
	// BW1W120 00e9fe44 BW1M119 01215a44 (LHCombined Release)
	static bool g_window_state;
	// The bone matrices of the object being drawn.
	// BW1W120 00e9fe48 BW1M119 01215a40 (LHCombined Release)
	static LHMatrix* g_current_matrix;
	// BW1W120 00e9fe54 BW1M119 01212a34 (LHCombined Release)
	static bool32_t g_b_dont_care_about_texture;

	// Static methods

	// Inliner IL size: 52
	// BW1W120 inlined BW1M119 0106b5d0 (LHCombined Release)
	static LH3DMesh* GetPackedMesh(long index)
	{
		if (index < 0 || index >= g_pack->MeshCount)
		{
			index = 0;
		}
		return g_pack->Meshes[index];
	}
	// BW1W120 00806460 BW1M119 0106a510 (LHCombined Release)
	static LH3DMesh* Create(void* buf, bool32_t dont_care_about_texture);
	// BW1W120 008067f0 BW1M119 0106a430 (LHCombined Release)
	static LH3DMesh* CreateFromHD(char* filename, bool32_t dont_care_about_textures);
	// BW1W120 00807be0 BW1M119 010690b0 (LHCombined Release)
	static void __fastcall CreatePackInternal(void* data);
	// BW1W120 00807c60 BW1M119 01069000 (LHCombined Release)
	static void CreatePack();
#ifndef VERSION_BW1W100
	// BW1W120 00807cc0 BW1M119 null
	static void SavePack(void* data, long size, const char* filename);
	// BW1W120 00807e10 BW1M119 null
	static void SavePacks(const char* filename, void* textures, long textures_size, void* meshes, long meshes_size);
#endif
	// BW1W120 00807e40 BW1M119 01068f70 (LHCombined Release)
	static bool32_t Open();
	// BW1W120 00807e80 BW1M119 01068e60 (LHCombined Release)
	static bool32_t Close();
	// BW1W120 007acdd0 BW1M119 0100d440 (LHCombined Release)
	static LHMatrix* GetCurrentMatrix();

	// Non-virtual methods

	// BW1W120 inlined BW1M119 010d8d40 (LHCombined Release)
	void AddReference() { size++; }
	// BW1W120 inlined BW1M119 0102dc80
	LH3DBoundingBox& GetBoundingBox() { return BoundingBox; }
	// BW1W120 inlined BW1M119 0112d9b0 (LHCombined Release)
	LH3DSubMesh** GetListPtrSubmesh() { return submeshes; }
	// BW1W120 inlined BW1M119 inlined
	int GetSubmeshCount() { return SubmeshCount; }
	// BW1W120 inlined BW1M119 inlined
	long GetVerticesCount();
	// BW1W120 inlined BW1M119 inlined
	long GetTriangleCount();
	// BW1W120 0080b250 BW1M119 01064300 (LHCombined Release)
	void SetAllTextures(LH3DTexture* texture);

	// BW1W120 inlined BW1M119 01010fd0
	bool32_t IsContainsLandscapeFeature() { return flags & LH3D_MESH_FLAGS_CONTAINS_LANDSCAPE_FEATURE; }
	// BW1W120 inlined BW1M119 01370dc0
	bool32_t IsContainsUV2() { return flags & LH3D_MESH_FLAGS_CONTAINS_UV2; }
	// BW1W120 inlined BW1M119 015729b0
	bool32_t IsContainsNameData() { return flags & LH3D_MESH_FLAGS_CONTAINS_NAME_DATA; }
	// BW1W120 inlined BW1M119 01010da0
	bool32_t IsContainsExtraMetrics() { return flags & LH3D_MESH_FLAGS_CONTAINS_EXTRA_METRICS; }
	// BW1W120 inlined BW1M119 01026f40
	bool32_t IsContainsEBone() { return flags & LH3D_MESH_FLAGS_CONTAINS_EBONE; }
	// BW1W120 inlined BW1M119 013eae60
	bool32_t IsContainsTnLData() { return flags & LH3D_MESH_FLAGS_CONTAINS_TNL_DATA; }
	// BW1W120 inlined BW1M119 011b2360
	bool32_t IsContainsNewEP() { return flags & LH3D_MESH_FLAGS_CONTAINS_NEW_EP; }
	// BW1W120 inlined BW1M119 0106b460 (LHCombined Release)
	bool32_t IsContainsNewData() { return (flags & LH3D_MESH_FLAGS_CONTAINS_NEW_DATA) != 0; }

	// BW1W120 00403730 BW1M119 0107dcb0 (LHCombined Release)
	uint8_t* GetFootprintData()
	{
		if (IsContainsLandscapeFeature())
		{
			return (uint8_t*)FootprintData;
		}
		return NULL;
	}
	// BW1W120 00403b90 BW1M119 01010f40
	uint32_t GetSizeFootprintData()
	{
		if (IsContainsLandscapeFeature())
		{
			return ((uint32_t*)GetFootprintData())[2];
		}
		return 0;
	}
	// BW1W120 00403740 BW1M119 inlined
	uint8_t* GetUV2Data()
	{
		uint8_t* data;
		if (!IsContainsUV2())
		{
			data = NULL;
		}
		else
		{
			data = (uint8_t*)FootprintData + GetSizeFootprintData();
		}
		return data;
	}
	// BW1W120 00403bb0 BW1M119 01010ea0
	uint32_t GetSizeUV2Data()
	{
		if (IsContainsUV2())
		{
			return *(uint32_t*)GetUV2Data();
		}
		else
		{
			return 0;
		}
	}
	// BW1W120 00403770 BW1M119 inlined
	uint8_t* GetNameData()
	{
		if (!IsContainsNameData())
		{
			return NULL;
		}
		else
		{
			return (uint8_t*)FootprintData + (GetSizeFootprintData() + GetSizeUV2Data());
		}
	}
	// BW1W120 00403be0 BW1M119 01010df0
	uint32_t GetSizeNameData()
	{
		if (IsContainsNameData())
		{
			return *(uint32_t*)GetNameData();
		}
		else
		{
			return 0;
		}
	}
	// BW1W120 004037e0 BW1M119 inlined
	uint8_t* GetEMetricsData()
	{
		if (!IsContainsExtraMetrics())
		{
			return NULL;
		}
		else
		{
			return (uint8_t*)FootprintData + (GetSizeFootprintData() + GetSizeUV2Data() + GetSizeNameData());
		}
	}
	// BW1W120 00403c50 BW1M119 01026e70
	uint32_t GetSizeEMetricsData()
	{
		if (IsContainsExtraMetrics())
		{
			return *(uint32_t*)GetEMetricsData();
		}
		else
		{
			return 0;
		}
	}
	// BW1W120 004038e0 BW1M119 inlined
	uint8_t* GetEBoneData()
	{
		if (!IsContainsEBone())
		{
			return NULL;
		}
		else
		{
			return (uint8_t*)FootprintData +
			       (GetSizeFootprintData() + GetSizeUV2Data() + GetSizeNameData() + GetSizeEMetricsData());
		}
	}
	// BW1W120 00806ac0 BW1M119 0106a000 (LHCombined Release)
	uint32_t GetSizeEBone()
	{
		if (IsContainsEBone())
		{
			return *(uint32_t*)GetEBoneData();
		}
		else
		{
			return 0;
		}
	}
	// BW1W120 inlined BW1M119 inlined
	uint8_t* GetTnLData()
	{
		if (!IsContainsTnLData())
		{
			return NULL;
		}
		else
		{
			return (uint8_t*)FootprintData + (GetSizeFootprintData() + GetSizeUV2Data() + GetSizeNameData() +
			                                  GetSizeEMetricsData() + GetSizeEBone());
		}
	}
	// BW1W120 00403a30 BW1M119 013e4e70
	uint32_t GetSizeTnLData()
	{
		if (IsContainsTnLData())
		{
			return *(uint32_t*)GetTnLData();
		}
		else
		{
			return 0;
		}
	}
	// BW1W120 inlined BW1M119 inlined
	uint8_t* GetNewEPData()
	{
		if (!IsContainsNewEP())
		{
			return NULL;
		}
		else
		{
			return (uint8_t*)FootprintData + (GetSizeFootprintData() + GetSizeUV2Data() + GetSizeNameData() +
			                                  GetSizeEMetricsData() + GetSizeEBone() + GetSizeTnLData());
		}
	}
	// BW1W120 00805cb0 BW1M119 0106bea0 (LHCombined Release)
	void DrawLOD(LH3DLODData* lod_data, int lod);
	// BW1W120 00806870 BW1M119 0106a120 (LHCombined Release)
	void InitialiseTnL();
	// BW1W120 00806be0 BW1M119 01069ea0 (LHCombined Release)
	void ReleaseTnL();
	// BW1W120 00806d00 BW1M119 01007590 (LHCombined Release)
	void Release();
	// BW1W120 00806da0 BW1M119 01069a30 (LHCombined Release)
	void __fastcall CalculateShadowOntoTexture(uint8_t* buffer, long pitch, TShadowInfo* shadow);
	// BW1W120 00806f60 BW1M119 01015720 (LHCombined Release)
	void __fastcall CalculateShadow(LHMatrix* matrix, TShadowInfo* shadow);
	// BW1W120 00807720 BW1M119 010697e0 (LHCombined Release)
	void __fastcall DrawVolLight(LHPoint* light, float intensity);
	// BW1W120 00807830 BW1M119 010696d0 (LHCombined Release)
	void DrawVolLightGJ();
	// BW1W120 008078c0 BW1M119 01069590 (LHCombined Release)
	void __fastcall Blend(long blend, LH3DMesh* from, LH3DMesh* to);
	// BW1W120 00807970 BW1M119 010691f0 (LHCombined Release)
	void __fastcall Blend(LH3DMesh* from, LH3DMesh* to, float blend, bool blend_skins);
	// BW1W120 008081b0 BW1M119 01068970 (LHCombined Release)
	void ComputeBoundingBox();
};

// BW1W120 00e9fe58 BW1M119 01212a30 (LHCombined Release)
extern bool32_t g_b_from_l3d;

// BW1W120 00808890 BW1M119 01066e00 (LHCombined Release)
void __fastcall ComputeNornal(LH3DMesh* mesh);

#endif /* BW1_DECOMP_LH3D_MESH_INCLUDED_H */
