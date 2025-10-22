#ifndef BW1_DECOMP_LH3D_MESH_INCLUDED_H
#define BW1_DECOMP_LH3D_MESH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "LH3DBoundingBox.h" /* For struct LH3DBoundingBox */

// Forward Declares

struct LH3DSubMesh;
struct LH3DTexture;
struct LHPoint;

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
static_assert(sizeof(enum LH3D_MESH_FLAGS) == 0x4, "Data type is of wrong size");

struct FootprintData
{
  uint8_t field_0x0;
  uint32_t field_0x4;
  uint32_t field_0x8;
};
static_assert(sizeof(struct FootprintData) == 0xc, "Data type is of wrong size");

struct LH3DMesh
{
  char magic[0x4];  /* 0x0 */
  uint32_t flags;
  uint32_t size;
  uint32_t submesh_count;
  struct LH3DSubMesh** submeshes;  /* 0x10 */
  struct LH3DBoundingBox bounding_box;
  uint32_t another_offset;  /* 0x34 */
  uint32_t skin_count;
  struct LH3DTexture* skins;
  int extra_data_count;  /* 0x40 */
  struct LHPoint* extra_pos;
  struct FootprintData* footprint_data;
};
static_assert(sizeof(struct LH3DMesh) == 0x4c, "Data type is of wrong size");

// Static methods

// win1.41 inlined mac 103d9410 LH3DMesh::GetPackedMesh(long)
struct LH3DMesh* __cdecl GetPackedMesh__8LH3DMeshFl(int index) asm("?GetPackedMesh@LH3DMesh@@SAPAV1@J@Z");
// win1.41 00806460 mac 1006c720 LH3DMesh::Create(void* , int)
struct LH3DMesh* __cdecl Create__8LH3DMeshFPvi(const void* buf, bool dont_care_about_texture) asm("?Create@LH3DMesh@@SAPAV1@PBX_N@Z");
// win1.41 008067f0 mac 1006c640 LH3DMesh::CreateFromHD(char *, int)
struct LH3DMesh* __cdecl CreateFromHD__8LH3DMeshFPci(const char* filename, bool dont_care_about_textures) asm("?CreateFromHD@LH3DMesh@@SAPAV1@PBD_N@Z");
// win1.41 00807be0 mac 1006b210 LH3DMesh::CreatePackInternal(void*)
void __stdcall CreatePackInternal__8LH3DMeshFPv(const void* data) asm("?CreatePackInternal@LH3DMesh@@SAXPBX@Z");
// win1.41 00807c60 mac 1006b160 LH3DMesh::CreatePack(void)
void __stdcall CreatePack__8LH3DMeshFv(void) asm("?CreatePack@LH3DMesh@@SAXXZ");

// Non-virtual methods

// win1.41 00403730 mac 1000e400 LH3DMesh::GetSizeFootprintData(void)
uint32_t __fastcall GetSizeFootprintData__8LH3DMeshFv(struct LH3DMesh* this) asm("?GetSizeFootprintData@LH3DMesh@@QAEIXZ");
// win1.41 00403740 mac 1000e360 LH3DMesh::GetSizeUV2Data(void)
uint32_t __fastcall GetSizeUV2Data__8LH3DMeshFv(struct LH3DMesh* this) asm("?GetSizeUV2Data@LH3DMesh@@QAEIXZ");
// win1.41 00403770 mac 1000e2b0 LH3DMesh::GetSizeNameData(void)
uint32_t __fastcall GetSizeNameData__8LH3DMeshFv(struct LH3DMesh* this) asm("?GetSizeNameData@LH3DMesh@@QAEIXZ");
// win1.41 004037e0 mac 100242d0 LH3DMesh::GetSizeEMetricsData(void)
uint32_t __fastcall GetSizeEMetricsData__8LH3DMeshFv(struct LH3DMesh* this) asm("?GetSizeEMetricsData@LH3DMesh@@QAEIXZ");
// win1.41 004038e0 mac 1059c260 LH3DMesh::GetSizeEBone(void)
uint32_t __fastcall GetSizeEBone__8LH3DMeshFv(struct LH3DMesh* this) asm("?GetSizeEBone@LH3DMesh@@QAEIXZ");
// win1.41 00403a30 mac 103689c0 LH3DMesh::GetSizeTnLData(void)
uint32_t __fastcall GetSizeTnLData__8LH3DMeshFv(struct LH3DMesh* this) asm("?GetSizeTnLData@LH3DMesh@@QAEIXZ");
// win1.41 00403b90 mac inlined LH3DMesh::GetSizeFootprintData_dup1(void)
uint32_t __fastcall GetSizeFootprintData_dup1__8LH3DMeshFv(struct LH3DMesh* this) asm("?GetSizeFootprintData_dup1@LH3DMesh@@QAEIXZ");
// win1.41 00403bb0 mac inlined LH3DMesh::GetSizeUV2Data_dup1(void)
uint32_t __fastcall GetSizeUV2Data_dup1__8LH3DMeshFv(struct LH3DMesh* this) asm("?GetSizeUV2Data_dup1@LH3DMesh@@QAEIXZ");
// win1.41 00403be0 mac inlined LH3DMesh::GetSizeNameData_dup1(void)
uint32_t __fastcall GetSizeNameData_dup1__8LH3DMeshFv(struct LH3DMesh* this) asm("?GetSizeNameData_dup1@LH3DMesh@@QAEIXZ");
// win1.41 00403c50 mac inlined LH3DMesh::GetSizeEMetricsData_dup1(void)
uint32_t __fastcall GetSizeEMetricsData_dup1__8LH3DMeshFv(struct LH3DMesh* this) asm("?GetSizeEMetricsData_dup1@LH3DMesh@@QAEIXZ");
// win1.41 00806d00 mac 1001165c LH3DMesh::Release(void)
void __fastcall Release__8LH3DMeshFv(struct LH3DMesh* this) asm("?Release@LH3DMesh@@QAEXXZ");
// win1.41 008081b0 mac 1006aad0 LH3DMesh::ComputeBoundingBox(void)
void __fastcall ComputeBoundingBox__8LH3DMeshFv(struct LH3DMesh* this) asm("?ComputeBoundingBox@LH3DMesh@@QAEXXZ");

#endif /* BW1_DECOMP_LH3D_MESH_INCLUDED_H */
