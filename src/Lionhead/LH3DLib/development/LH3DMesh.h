#ifndef BW1_DECOMP_LH3D_MESH_INCLUDED_H
#define BW1_DECOMP_LH3D_MESH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

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

struct LH3DSubMesh;
struct LH3DTexture;
struct LHPoint;

struct LH3DMesh
{
    char magic[0x4]; /* 0x0 */
    uint32_t flags;
    uint32_t size;
    uint32_t submesh_count;
    LH3DSubMesh** submeshes; /* 0x10 */
    LH3DBoundingBox bounding_box;
    uint32_t another_offset; /* 0x34 */
    uint32_t skin_count;
    LH3DTexture* skins;
    int extra_data_count; /* 0x40 */
    LHPoint* extra_pos;
    FootprintData* footprint_data;

    // Static methods

    // win1.41 inlined mac 103d9410 LH3DMesh::GetPackedMesh(long)
    static LH3DMesh* GetPackedMesh(int index);
    // win1.41 00806460 mac 1006c720 LH3DMesh::Create(void* , int)
    static LH3DMesh* Create(const void* buf, bool dont_care_about_texture);
    // win1.41 008067f0 mac 1006c640 LH3DMesh::CreateFromHD(char *, int)
    static LH3DMesh* CreateFromHD(const char* filename, bool dont_care_about_textures);
    // win1.41 00807be0 mac 1006b210 LH3DMesh::CreatePackInternal(void*)
    static void CreatePackInternal(const void* data);
    // win1.41 00807c60 mac 1006b160 LH3DMesh::CreatePack(void)
    static void CreatePack();

    // Non-virtual methods

    // win1.41 00403730 mac 1000e400 LH3DMesh::GetSizeFootprintData(void)
    uint32_t GetSizeFootprintData();
    // win1.41 00403740 mac 1000e360 LH3DMesh::GetSizeUV2Data(void)
    uint32_t GetSizeUV2Data();
    // win1.41 00403770 mac 1000e2b0 LH3DMesh::GetSizeNameData(void)
    uint32_t GetSizeNameData();
    // win1.41 004037e0 mac 100242d0 LH3DMesh::GetSizeEMetricsData(void)
    uint32_t GetSizeEMetricsData();
    // win1.41 004038e0 mac 1059c260 LH3DMesh::GetSizeEBone(void)
    uint32_t GetSizeEBone();
    // win1.41 00403a30 mac 103689c0 LH3DMesh::GetSizeTnLData(void)
    uint32_t GetSizeTnLData();
    // win1.41 00403b90 mac inlined LH3DMesh::GetSizeFootprintData_dup1(void)
    uint32_t GetSizeFootprintData_dup1();
    // win1.41 00403bb0 mac inlined LH3DMesh::GetSizeUV2Data_dup1(void)
    uint32_t GetSizeUV2Data_dup1();
    // win1.41 00403be0 mac inlined LH3DMesh::GetSizeNameData_dup1(void)
    uint32_t GetSizeNameData_dup1();
    // win1.41 00403c50 mac inlined LH3DMesh::GetSizeEMetricsData_dup1(void)
    uint32_t GetSizeEMetricsData_dup1();
    // win1.41 00806d00 mac 1001165c LH3DMesh::Release(void)
    void Release();
    // win1.41 008081b0 mac 1006aad0 LH3DMesh::ComputeBoundingBox(void)
    void ComputeBoundingBox();
};

#endif /* BW1_DECOMP_LH3D_MESH_INCLUDED_H */
