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

    // BW1W120 inlined BW1M100 103d9410 LH3DMesh::GetPackedMesh(long)
    static LH3DMesh* GetPackedMesh(int index);
    // BW1W120 00806460 BW1M100 1006c720 LH3DMesh::Create(void* , int)
    static LH3DMesh* Create(const void* buf, bool dont_care_about_texture);
    // BW1W120 008067f0 BW1M100 1006c640 LH3DMesh::CreateFromHD(char *, int)
    static LH3DMesh* CreateFromHD(const char* filename, bool dont_care_about_textures);
    // BW1W120 00807be0 BW1M100 1006b210 LH3DMesh::CreatePackInternal(void*)
    static void CreatePackInternal(const void* data);
    // BW1W120 00807c60 BW1M100 1006b160 LH3DMesh::CreatePack(void)
    static void CreatePack();

    // Non-virtual methods

    // BW1W120 00403730 BW1M100 1000e400 LH3DMesh::GetSizeFootprintData(void)
    uint32_t GetSizeFootprintData();
    // BW1W120 00403740 BW1M100 1000e360 LH3DMesh::GetSizeUV2Data(void)
    uint32_t GetSizeUV2Data();
    // BW1W120 00403770 BW1M100 1000e2b0 LH3DMesh::GetSizeNameData(void)
    uint32_t GetSizeNameData();
    // BW1W120 004037e0 BW1M100 100242d0 LH3DMesh::GetSizeEMetricsData(void)
    uint32_t GetSizeEMetricsData();
    // BW1W120 004038e0 BW1M100 1059c260 LH3DMesh::GetSizeEBone(void)
    uint32_t GetSizeEBone();
    // BW1W120 00403a30 BW1M100 103689c0 LH3DMesh::GetSizeTnLData(void)
    uint32_t GetSizeTnLData();
    // BW1W120 00403b90 BW1M100 inlined LH3DMesh::GetSizeFootprintData_dup1(void)
    uint32_t GetSizeFootprintData_dup1();
    // BW1W120 00403bb0 BW1M100 inlined LH3DMesh::GetSizeUV2Data_dup1(void)
    uint32_t GetSizeUV2Data_dup1();
    // BW1W120 00403be0 BW1M100 inlined LH3DMesh::GetSizeNameData_dup1(void)
    uint32_t GetSizeNameData_dup1();
    // BW1W120 00403c50 BW1M100 inlined LH3DMesh::GetSizeEMetricsData_dup1(void)
    uint32_t GetSizeEMetricsData_dup1();
    // BW1W120 00806d00 BW1M100 1001165c LH3DMesh::Release(void)
    void Release();
    // BW1W120 008081b0 BW1M100 1006aad0 LH3DMesh::ComputeBoundingBox(void)
    void ComputeBoundingBox();
};

#endif /* BW1_DECOMP_LH3D_MESH_INCLUDED_H */
