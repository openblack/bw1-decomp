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
	LH3D_MESH_FLAGS_HAS_BONES = 0x100,
	LH3D_MESH_FLAGS_HAS_DOOR_POSITION = 0x800,
	LH3D_MESH_FLAGS_PACKED = 0x1000,
	LH3D_MESH_FLAGS_NO_DRAW = 0x2000,
	LH3D_MESH_FLAGS_UNKNOWN_15 = 0x4000,
	LH3D_MESH_FLAGS_CONTAINS_LANDSCAPE_FEATURE = 0x8000,
	LH3D_MESH_FLAGS_CONTAINS_UV2 = 0x40000,
	LH3D_MESH_FLAGS_CONTAINS_NAME_DATA = 0x80000,
	LH3D_MESH_FLAGS_CONTAINS_EXTRA_METRICS = 0x100000,
	LH3D_MESH_FLAGS_CONTAINS_EBONE = 0x200000,
	LH3D_MESH_FLAGS_CONTAINS_TNL_DATA = 0x400000,
	LH3D_MESH_FLAGS_CONTAINS_NEW_EP = 0x800000
};

// Forward Declares

struct LH3DMesh;
struct LH3DSubMesh;
struct LH3DTexture;
struct LHPoint;

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
	char            magic[0x4]; /* 0x0 */
	uint32_t        flags;
	uint32_t        size;
	uint32_t        SubmeshCount;
	LH3DSubMesh**   submeshes; /* 0x10 */
	LH3DBoundingBox BoundingBox;
	uint32_t        AnotherOffset; /* 0x34 */
	uint32_t        SkinCount;
	LH3DTexture*    skins;
	int             ExtraDataCount; /* 0x40 */
	LHPoint*        ExtraPos;
	void*           FootprintData;

	// Static data

	static LH3DMeshPack* MeshPack; /* 0x00e9fe34 */
	// BW1W120 00e9fe28 BW1M119 01215a7c (LHCombined Release)
	static bool g_hinge_only;

	// Static methods

	// Inliner IL size: 52
	// BW1W120 inlined BW1M119 013e1290
	static LH3DMesh* GetPackedMesh(long index)
	{
		if (index < 0 || index >= MeshPack->MeshCount)
		{
			index = 0;
		}
		return MeshPack->Meshes[index];
	}
	// BW1W120 00806460 BW1M119 0106a510 (LHCombined Release)
	static LH3DMesh* Create(const void* buf, bool dont_care_about_texture);
	// BW1W120 008067f0 BW1M119 0106a430 (LHCombined Release)
	static LH3DMesh* CreateFromHD(const char* filename, bool dont_care_about_textures);
	// BW1W120 00807be0 BW1M119 010690b0 (LHCombined Release)
	static void CreatePackInternal(const void* data);
	// BW1W120 00807c60 BW1M119 01069000 (LHCombined Release)
	static void CreatePack();

	// Non-virtual methods

	// BW1W120 inlined BW1M119 0102dc80
	LH3DBoundingBox& GetBoundingBox() { return BoundingBox; }

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

	// BW1W120 00403730 BW1M119 inlined
	uint8_t* GetLandscapeFeatureData()
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
			return ((uint32_t*)GetLandscapeFeatureData())[2];
		}
		return 0;
	}
	// BW1W120 00403740 BW1M119 inlined
	uint8_t* GetUV2Data()
	{
		if (!IsContainsUV2())
		{
			return NULL;
		}
		return (uint8_t*)FootprintData + GetSizeFootprintData();
	}
	// BW1W120 00403bb0 BW1M119 01010ea0
	uint32_t GetSizeUV2Data()
	{
		if (IsContainsUV2())
		{
			return *(uint32_t*)GetUV2Data();
		}
		return 0;
	}
	// BW1W120 00403770 BW1M119 inlined
	uint8_t* GetNameData()
	{
		return !IsContainsNameData() ? NULL : (uint8_t*)FootprintData + (GetSizeFootprintData() + GetSizeUV2Data());
	}
	// BW1W120 00403be0 BW1M119 01010df0
	uint32_t GetSizeNameData()
	{
		if (IsContainsNameData())
		{
			return *(uint32_t*)GetNameData();
		}
		return 0;
	}
	// BW1W120 004037e0 BW1M119 inlined
	uint8_t* GetEMetricsData()
	{
		return !IsContainsExtraMetrics()
		           ? NULL
		           : (uint8_t*)FootprintData + (GetSizeFootprintData() + GetSizeUV2Data() + GetSizeNameData());
	}
	// BW1W120 00403c50 BW1M119 01026e70
	uint32_t GetSizeEMetricsData()
	{
		if (IsContainsExtraMetrics())
		{
			return *(uint32_t*)GetEMetricsData();
		}
		return 0;
	}
	// BW1W120 004038e0 BW1M119 inlined
	uint8_t* GetEBoneData()
	{
		return !IsContainsEBone() ? NULL
		                          : (uint8_t*)FootprintData + (GetSizeFootprintData() + GetSizeUV2Data() +
		                                                       GetSizeNameData() + GetSizeEMetricsData());
	}
	// BW1W120 inlined BW1M119 01387dc0
	uint32_t GetSizeEBone()
	{
		if (IsContainsEBone())
		{
			return *(uint32_t*)GetEBoneData();
		}
		return 0;
	}
	// BW1W120 inlined BW1M119 inlined
	uint8_t* GetTnLData()
	{
		return !IsContainsTnLData()
		           ? NULL
		           : (uint8_t*)FootprintData + (GetSizeFootprintData() + GetSizeUV2Data() + GetSizeNameData() +
		                                        GetSizeEMetricsData() + GetSizeEBone());
	}
	// BW1W120 00403a30 BW1M119 013e4e70
	uint32_t GetSizeTnLData()
	{
		if (IsContainsTnLData())
		{
			return *(uint32_t*)GetTnLData();
		}
		return 0;
	}
	// BW1W120 inlined BW1M119 inlined
	uint8_t* GetNewEPData()
	{
		return !IsContainsNewEP()
		           ? NULL
		           : (uint8_t*)FootprintData + (GetSizeFootprintData() + GetSizeUV2Data() + GetSizeNameData() +
		                                        GetSizeEMetricsData() + GetSizeEBone() + GetSizeTnLData());
	}
	// BW1W120 00806d00 BW1M119 01007590 (LHCombined Release)
	void Release();
	// BW1W120 008081b0 BW1M119 01068970 (LHCombined Release)
	void ComputeBoundingBox();
};

#endif /* BW1_DECOMP_LH3D_MESH_INCLUDED_H */
