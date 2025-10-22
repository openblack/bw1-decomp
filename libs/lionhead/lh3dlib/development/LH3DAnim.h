#ifndef BW1_DECOMP_LH3D_ANIM_INCLUDED_H
#define BW1_DECOMP_LH3D_ANIM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t */

#include "LHPoint.h" /* For struct LHPoint */

// Forward Declares

struct AnimInfo;
struct LH3DMesh;
struct LHFile;
struct LHFilePath;
struct LHMatrix;

enum AnimInfoType
{
  AnimInfoType_Minus = 0x0,
  AnimInfoType_C = 0x1,
  AnimInfoType_N = 0x2,
  AnimInfoType_L = 0x6,
  AnimInfoType_W = 0x9,
  AnimInfoType_D = 0x10,
  _AnimInfoType_COUNT = 0x11
};
static_assert(sizeof(enum AnimInfoType) == 0x4, "Data type is of wrong size");

static const char* AnimInfoType_strs[_AnimInfoType_COUNT] = {
  "AnimInfoType_Minus",
  "AnimInfoType_C",
  "AnimInfoType_N",
  "AnimInfoType_0x3",
  "AnimInfoType_0x4",
  "AnimInfoType_0x5",
  "AnimInfoType_L",
  "AnimInfoType_0x7",
  "AnimInfoType_0x8",
  "AnimInfoType_W",
  "AnimInfoType_0xa",
  "AnimInfoType_0xb",
  "AnimInfoType_0xc",
  "AnimInfoType_0xd",
  "AnimInfoType_0xe",
  "AnimInfoType_0xf",
  "AnimInfoType_D",
};

struct ANM_Name
{
  char string[0x20];  /* 0x0 */
};
static_assert(sizeof(struct ANM_Name) == 0x20, "Data type is of wrong size");

struct CFrameData
{
  struct LHPoint points[0x16];  /* 0x0 */
};
static_assert(sizeof(struct CFrameData) == 0x108, "Data type is of wrong size");

struct CFrame
{
  struct CFrameData* field_0x0;
  struct CFrameData* field_0x4;
};
static_assert(sizeof(struct CFrame) == 0x8, "Data type is of wrong size");

// Non-virtual methods

// win1.41 00860c30 mac 100dc860 CFrame::ReadBinary(LHFile *, long, long)
void __fastcall ReadBinary__6CFrameFP6LHFilell(struct CFrame* this, const void* edx, struct LHFile* file, long param_3, long param_4) asm("?ReadBinary@CFrame@@QAEXPAVLHFile@@JJ@Z");

struct CAnim
{
  uint32_t frame_offset;  /* 0x0 */
  uint32_t field_0x4;
  float field_0x8[0x5];
  uint32_t frame_count;  /* 0x1c */
  uint32_t field_0x20;
  int frame_field_0x0_count;
  int frame_field_0x4_count;
  int* frame_field_0x0_indices;
  int* frame_field_0x4_indices;  /* 0x30 */
  struct CFrame** frames;
};
static_assert(sizeof(struct CAnim) == 0x38, "Data type is of wrong size");

// Constructors

// win1.41 0085e480 mac 1061ff4c CAnim::CAnim(void)
struct CAnim* __fastcall __ct__5CAnimFv(struct CAnim* this) asm("??0CAnim@@QAE@XZ");
// win1.41 0085e4c0 mac 1061bb54 CAnim::CAnim(CAnim *)
struct CAnim* __fastcall __ct__5CAnimFP5CAnim(struct CAnim* this, const void* edx, struct CAnim* param_2) asm("??0CAnim@@QAE@PAV0@@Z");
// win1.41 0085ef40 mac 1061e2fc CAnim::CAnim(CAnim *, CFrame *, CAnim *, CFrame *, float, CAnim *, CFrame *, float)
struct CAnim* __fastcall __ct__5CAnimFP5CAnimP6CFrameP5CAnimP6CFramefP5CAnimP6CFramef(struct CAnim* this, const void* edx, struct CAnim* param_2, struct CFrame* param_3, struct CAnim* param_4, struct CFrame* param_5, float param_6, struct CAnim* param_7, struct CFrame* param_8, float param_9) asm("??0CAnim@@QAE@PAV0@PAUCFrame@@01M01M@Z");

// Non-virtual methods

// win1.41 0085e4a0 mac 1061b7c4 CAnim::~CAnim(void)
void __fastcall __dt__5CAnimFv(struct CAnim* this) asm("??_DCAnim@@QAEXXZ");
// win1.41 00861a00 mac 1061fa9c CAnim::AdjustForNewBasedOnStand(CAnim *, CAnim *)
void __fastcall AdjustForNewBasedOnStand__5CAnimFP5CAnimP5CAnim(struct CAnim* this, const void* edx, struct CAnim* param_2, struct CAnim* param_3) asm("?AdjustForNewBasedOnStand@CAnim@@QAEXPAV1@0@Z");
// win1.41 00860860 mac 106200cc CAnim::ReadBinary(LHFile *)
void __fastcall ReadBinary__5CAnimFP6LHFile(struct CAnim* this, const void* edx, struct LHFile* file) asm("?ReadBinary@CAnim@@QAEXPAVLHFile@@@Z");

struct LH3DAnimSet
{
  struct CAnim* anims[0xe8];  /* 0x0 */
  int loaded[0xe8];  /* 0x3a0 */
  int offset[0xe8];  /* 0x740 */
};
static_assert(sizeof(struct LH3DAnimSet) == 0xae0, "Data type is of wrong size");

// Constructors

// win1.41 006170e0 mac 10109260 LH3DAnimSet::LH3DAnimSet(void)
struct LH3DAnimSet* __fastcall __ct__11LH3DAnimSetFv(struct LH3DAnimSet* this) asm("??0LH3DAnimSet@@QAE@XZ");

// Non-virtual methods

// win1.41 00619b80 mac 101059e0 LH3DAnimSet::ReadBinaryNew
uint32_t __fastcall ReadBinaryNew__11LH3DAnimSetFP6LHFileP8AnimInfoP8AnimInfo(struct LH3DAnimSet* this, const void* edx, struct LHFile* param_2, struct AnimInfo* param_3, struct AnimInfo* param_4) asm("?ReadBinaryNew@LH3DAnimSet@@QAEIPAVLHFile@@PAUAnimInfo@@1@Z");

struct CatInfo
{
  int animation_count;  /* 0x0 */
  struct ANM_Name animation_names[0x18];
  enum AnimInfoType animation_type[0x18];  /* 0x304 */
};
static_assert(sizeof(struct CatInfo) == 0x364, "Data type is of wrong size");

// Non-virtual methods

// win1.41 004c4970 mac 10230ed0 CatInfo::Read(std::_FILE *)
char __fastcall Read__7CatInfoFPQ23std5_FILE(struct CatInfo* this, const void* edx, struct LHFilePath* path);

struct AnimInfo
{
  uint32_t spec_version;  /* 0x0 */
  int category_count;
  struct ANM_Name category_names[0x18];
  struct CatInfo categories[0x18];  /* 0x308 */
};
static_assert(sizeof(struct AnimInfo) == 0x5468, "Data type is of wrong size");

// Non-virtual methods

// win1.41 004c4ab0 mac 10230d20 AnimInfo::Read(char *)
uint32_t __fastcall Read__8AnimInfoFPc(struct AnimInfo* this, const void* edx, char* spec_filename) asm("?Read@AnimInfo@@QAEIPAD@Z");

struct LH3DAnim
{
  struct ANM_Name name;  /* 0x0 */
  int field_0x20;
  uint8_t field_0x24;
  uint8_t field_0x25;
  uint8_t field_0x26;
  uint8_t field_0x27;
  float field_0x28;
  uint8_t field_0x2c;
  uint8_t field_0x2d;
  uint8_t field_0x2e;
  uint8_t field_0x2f;
  uint8_t field_0x30;
  uint8_t field_0x31;
  uint8_t field_0x32;
  uint8_t field_0x33;
  uint8_t field_0x34;
  uint8_t field_0x35;
  uint8_t field_0x36;
  uint8_t field_0x37;
  int num_frames;
  int field_0x3c;
  uint8_t field_0x40;
  uint8_t field_0x41;
  uint8_t field_0x42;
  uint8_t field_0x43;
  uint8_t field_0x44;
  uint8_t field_0x45;
  uint8_t field_0x46;
  uint8_t field_0x47;
  uint32_t parents;
  int** list_ptr_frames;
  uint16_t field_0x50;
  uint16_t pack_index_1;
  uint32_t current_time_maybe;
  uint32_t field_0x58;
  uint32_t pack_index_2;
};
static_assert(sizeof(struct LH3DAnim) == 0x60, "Data type is of wrong size");

// Static methods

// win1.41 0083a1d0 mac 10129570 LH3DAnim::SetTransform(LH3DMatrix*, LH3DMesh*, LH3DMatrix*)
float __cdecl SetTransform__8LH3DAnimFP8LHMatrixP8LH3DMeshR8LHMatrix(struct LHMatrix* param_1, struct LH3DMesh* param_2, struct LHMatrix* param_3) asm("?SetTransform@LH3DAnim@@SAMPAULHMatrix@@PAULH3DMesh@@AAU2@@Z");
// win1.41 0083aa30 mac 1061eac4 LH3DAnim::CreatePack(void)
void __cdecl CreatePack__8LH3DAnimFv(void) asm("?CreatePack@LH3DAnim@@SAXXZ");

// Non-virtual methods

// win1.41 0083a6a0 mac 1001f930 LH3DAnim::GetListPtrFrames
int __fastcall GetListPtrFrames__8LH3DAnimFv(struct LH3DAnim* this) asm("?GetListPtrFrames@LH3DAnim@@QAEHXZ");

struct ANM_BaseHeader
{
  struct ANM_Name mAnimName;  /* 0x0 */
  uint32_t mUnk_1;  /* 0x20 */
  uint32_t mUnk_2;
  uint32_t mUnk_3;
  uint32_t mUnk_4;
  uint32_t mUnk_5;  /* 0x30 */
  uint32_t mUnk_6;
  uint32_t mnFrames;
  uint32_t mUnk_8;
  uint32_t mpNextAni;  /* 0x40 */
  uint32_t mUnk_10;
  uint32_t mpParents;
  uint32_t mpFrames;
  uint32_t mUnk_13;  /* 0x50 */
};
static_assert(sizeof(struct ANM_BaseHeader) == 0x54, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_ANIM_INCLUDED_H */
