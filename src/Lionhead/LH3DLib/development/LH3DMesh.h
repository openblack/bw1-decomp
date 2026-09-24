#ifndef BW1_DECOMP_LH3D_MESH_INCLUDED_H
#define BW1_DECOMP_LH3D_MESH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/AllMeshes.h> /* For MAX_COUNT_3D_MESHES */

#include "LH3DBoundingBox.h" /* For struct LH3DBoundingBox */

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

	// Static methods

	// BW1W120 inlined BW1M119 013e1290
	static LH3DMesh* GetPackedMesh(int index)
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
	// BW1W120 00403730 BW1M119 01010f40
	uint32_t GetSizeFootprintData();
	// BW1W120 00403740 BW1M119 01010ea0
	uint32_t GetSizeUV2Data();
	// BW1W120 00403770 BW1M119 01010df0
	uint32_t GetSizeNameData();
	// BW1W120 004037e0 BW1M119 01026e70
	uint32_t GetSizeEMetricsData();
	// BW1W120 004038e0 BW1M119 01387dc0
	uint32_t GetSizeEBone();
	// BW1W120 00403a30 BW1M119 013e4e70
	uint32_t GetSizeTnLData();
	// BW1W120 00403b90 BW1M119 inlined
	uint32_t GetSizeFootprintData_dup1();
	// BW1W120 00403bb0 BW1M119 inlined
	uint32_t GetSizeUV2Data_dup1();
	// BW1W120 00403be0 BW1M119 inlined
	uint32_t GetSizeNameData_dup1();
	// BW1W120 00403c50 BW1M119 inlined
	uint32_t GetSizeEMetricsData_dup1();
	// BW1W120 00806d00 BW1M119 01007590 (LHCombined Release)
	void Release();
	// BW1W120 008081b0 BW1M119 01068970 (LHCombined Release)
	void ComputeBoundingBox();
};

#endif /* BW1_DECOMP_LH3D_MESH_INCLUDED_H */
