#ifndef BW1_DECOMP_MORPHABLE_INCLUDED_H
#define BW1_DECOMP_MORPHABLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t, uintptr_t */

#include <lionhead/lh3dlib/development/LH3DAnim.h> /* For struct LH3DAnimSet */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <lionhead/lhfile/ver3.0/LHReleasedFile.h> /* For struct LHReleasedFile */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DrawingObject.h" /* For struct DrawingObject */
#include "Name.h" /* For struct Name */

// Forward Declares

struct AnimInfo;
struct CAnim;
struct CFrame;
struct HairGroup;
struct LH3DComplexObject;
struct LH3DMesh;
struct LH3DObjectHair;
struct LHFile;
struct LHMatrix;
struct Morphable;

struct Morphable_field_0x4314_t
{
  uint32_t field_0x0;
  uint32_t field_0x4;
  uint32_t field_0x8;
  uint32_t field_0xc;
  struct Morphable_field_0x4314_t* next;  /* 0x10 */
};
static_assert(sizeof(struct Morphable_field_0x4314_t) == 0x14, "Data type is of wrong size");

struct MorphableVftable
{
  void (__fastcall* SetAnimTime)(struct Morphable* this, const void* edx, int param_1, int param_2);  /* 0x0 */
  uint32_t (__fastcall* LoadBase)(struct Morphable* this, const void* edx, char* path);
  void (__fastcall* SetSize)(struct Morphable* this, const void* edx, float scale);
  void (__fastcall* MorphAnims)(struct Morphable* this);
  void (__fastcall* MorphTexture)(struct Morphable* this);  /* 0x10 */
  void (__fastcall* UpdateTime)(struct Morphable* this, const void* edx, int time);
  void (__fastcall* PrepareForDrawing)(struct Morphable* this);
  bool (__fastcall* AddForDrawing)(struct Morphable* this);
  bool (__fastcall* LoadBinary)(struct Morphable* this, const void* edx, char* param_2, int param_3);  /* 0x20 */
  void (__fastcall* SaveBinary)(struct Morphable* this, const void* edx, char* buffer);
};
static_assert(sizeof(struct MorphableVftable) == 0x28, "Data type is of wrong size");

struct Morphable
{
  struct DrawingObject super;  /* 0x0 */
  uintptr_t field_0x4;
  uint8_t field_0x8;
  uint8_t field_0x9;
  uint8_t field_0xa;
  uint8_t field_0xb;
  struct LHReleasedFile file;
  struct LHPoint position;  /* 0x78 */
  uint8_t field_0x84;
  uint8_t field_0x85;
  uint8_t field_0x86;
  uint8_t field_0x87;
  uint8_t field_0x88;
  uint8_t field_0x89;
  uint8_t field_0x8a;
  uint8_t field_0x8b;
  float field_0x8c;
  float size_1;  /* 0x90 */
  float size_2;
  int current_mesh;
  uint8_t field_0x9c;
  uint8_t field_0x9d;
  uint8_t field_0x9e;
  uint8_t field_0x9f;
  float field_0xa0;
  uint8_t field_0xa4;
  uint8_t field_0xa5;
  uint8_t field_0xa6;
  uint8_t field_0xa7;
  float field_0xa8;
  uint8_t field_0xac;
  uint8_t field_0xad;
  uint8_t field_0xae;
  uint8_t field_0xaf;
  uint8_t field_0xb0;
  uint8_t field_0xb1;
  uint8_t field_0xb2;
  uint8_t field_0xb3;
  struct LH3DMesh* meshes[0x8];
  struct Name names[0x8];  /* 0xd4 */
  struct LH3DAnimSet anim_sets[0x6];  /* 0x1d4 */
  struct Morphable_field_0x4314_t* field_0x4314[0xe8];
  uint8_t field_0x46b4[0x104];
  int field_0x47b8;
  uint8_t field_0x47bc[0x24];
  float field_0x47e0;
  uint8_t field_0x47e4[0xc];
  struct LHMatrix* transformed_matrices;  /* 0x47f0 */
  struct LHMatrix* field_0x47f4;
  struct LHMatrix* field_0x47f8;
  struct CFrame* frame;
  int32_t hair_group_count;  /* 0x4800 */
  struct HairGroup* hair_groups[0x8];
  uint32_t field_0x4824;
  struct LH3DObjectHair* l3d_hair_group;
  struct LH3DComplexObject* dynamic_shadow;
  uint32_t field_0x4830;
};
static_assert(sizeof(struct Morphable) == 0x4834, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cecb0 mac inlined Morphable::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9Morphable asm("??_R0?AVMorphable@@@8");
// win1.41 009a9288 mac inlined Morphable::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9Morphable asm("??_R1A@?0A@A@Morphable@@8");
// win1.41 009a9250 mac inlined Morphable::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9Morphable asm("??_R2Morphable@@8");
// win1.41 009a9260 mac inlined Morphable::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9Morphable asm("??_R3Morphable@@8");
// win1.41 008cbef4 mac 1073d0fc Morphable::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9Morphable asm("??_R4Morphable@@6B@");
// win1.41 008cbef8 mac 1073d10c Morphable::`vftable'
extern const struct MorphableVftable __vt__9Morphable asm("??_7Morphable@@6B@");

// Static methods

// win1.41 006186b0 mac 10107250 Morphable::LoadExtraTexture(void)
uint32_t __fastcall LoadExtraTexture__9MorphableFv(void) asm("?LoadExtraTexture@Morphable@@SAIXZ");

// Non-virtual methods

// win1.41 00617310 mac 10108d10 Morphable::MorphInit(LHPoint &, long, void* )
void __fastcall MorphInit__9MorphableFR7LHPointlPv(struct Morphable* this, const void* edx, struct LHPoint* point, long param_3, void* param_4) asm("?MorphInit@Morphable@@QAEXAAULHPoint@@JPAX@Z");
// win1.41 00617470 mac 10108c30 Morphable::AddHairGroup()
uint32_t __fastcall AddHairGroup__9MorphableFv(struct Morphable* this) asm("?AddHairGroup@Morphable@@QAEIXZ");
// win1.41 00617620 mac 10108960 Morphable::SelectMesh(long)
void __fastcall SelectMesh__9MorphableFl(struct Morphable* this, const void* edx, int param_1) asm("?SelectMesh@Morphable@@QAEXJ@Z");
// win1.41 00617ae0 mac 10107f50 Morphable::ReadBinary(LHFile *, AnimInfo *, AnimInfo *)
uint32_t __fastcall ReadBinary__9MorphableFP6LHFileP8AnimInfoP8AnimInfo(struct Morphable* this, const void* edx, struct LHFile* file, struct AnimInfo* info_1, struct AnimInfo* info_2) asm("?ReadBinary@Morphable@@QAEIPAVLHFile@@PAUAnimInfo@@1@Z");
// win1.41 00617ee0 mac 10107a90 Morphable::ReadExtraDataBinary
void __fastcall ReadExtraDataBinary__9MorphableFP6LHFileP8AnimInfoP8AnimInfol(struct Morphable* this, const void* edx, struct LHFile* param_1, struct AnimInfo* param_2, struct AnimInfo* param_3, long param_4) asm("?ReadExtraDataBinary@Morphable@@QAEXPAVLHFile@@PAUAnimInfo@@1J@Z");
// win1.41 00618720 mac 10106d80 Morphable::LoadMesh(char*, long)
uint32_t __fastcall LoadMesh__9MorphableFPcl(struct Morphable* this, const void* edx, char* param_2, int param_3) asm("?LoadMesh@Morphable@@QAEIPADJ@Z");
// win1.41 00619650 mac 10084860 Morphable::GetAnim(long, long)
struct CAnim* __fastcall GetAnim__9MorphableFll(struct Morphable* this, const void* edx, long anim_index, long param_3) asm("?GetAnim@Morphable@@QAEPAUCAnim@@JJ@Z");
// win1.41 00619690 mac 10084450 Morphable::GetSetAnim(long, long, long)
struct CAnim* __fastcall GetSetAnim__9MorphableFlll(struct Morphable* this, const void* edx, long param_1, long param_2, long param_3) asm("?GetSetAnim@Morphable@@QAEPAUCAnim@@JJJ@Z");

// Override methods

// win1.41 00617eb0 mac 10107d70 Morphable::SetAnimTime(long, long)
void __fastcall SetAnimTime__9MorphableFll(struct Morphable* this, const void* edx, int param_1, int param_2) asm("?SetAnimTime@Morphable@@UAEXHH@Z");
// win1.41 00618360 mac 101073d0 Morphable::LoadBase(char *)
uint32_t __fastcall LoadBase__9MorphableFPc(struct Morphable* this, const void* edx, char* param_1) asm("?LoadBase@Morphable@@UAEIPAD@Z");
// win1.41 00619100 mac 101063f0 Morphable::MorphAnims(void)
void __fastcall MorphAnims__9MorphableFv(struct Morphable* this) asm("?MorphAnims@Morphable@@UAEXXZ");
// win1.41 00619500 mac 101061c0 Morphable::MorphTexture(void)
void __fastcall MorphTexture__9MorphableFv(struct Morphable* this) asm("?MorphTexture@Morphable@@UAEXXZ");

#endif /* BW1_DECOMP_MORPHABLE_INCLUDED_H */
