#ifndef BW1_DECOMP_MORPHABLE_INCLUDED_H
#define BW1_DECOMP_MORPHABLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t, uint8_t, uintptr_t */

#include <Lionhead/LH3DLib/development/LH3DAnim.h> /* For struct LH3DAnimSet */
#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <Lionhead/LHFile/ver3.0/LHReleasedFile.h> /* For struct LHReleasedFile */

#include "DrawingObject.h" /* For struct DrawingObject */
#include "Name.h" /* For struct Name */

// Forward Declares

struct AnimInfo;
struct CAnim;
struct CFrame;
struct HairGroup;
class LH3DComplexObject;
struct LH3DMesh;
struct LH3DObjectHair;
class LHFile;
struct LHMatrix;

class Morphable: public DrawingObject
{
public:
    uintptr_t field_0x4;
    uint8_t field_0x8;
    uint8_t field_0x9;
    uint8_t field_0xa;
    uint8_t field_0xb;
    LHReleasedFile file;
    LHPoint position; /* 0x78 */
    uint8_t field_0x84;
    uint8_t field_0x85;
    uint8_t field_0x86;
    uint8_t field_0x87;
    uint8_t field_0x88;
    uint8_t field_0x89;
    uint8_t field_0x8a;
    uint8_t field_0x8b;
    float field_0x8c;
    float size_1; /* 0x90 */
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
    LH3DMesh* meshes[0x8];
    Name names[0x8]; /* 0xd4 */
    LH3DAnimSet anim_sets[0x6]; /* 0x1d4 */
    Morphable_field_0x4314_t* field_0x4314[0xe8];
    uint8_t field_0x46b4[0x104];
    int field_0x47b8;
    uint8_t field_0x47bc[0x24];
    float field_0x47e0;
    uint8_t field_0x47e4[0xc];
    LHMatrix* transformed_matrices; /* 0x47f0 */
    LHMatrix* field_0x47f4;
    LHMatrix* field_0x47f8;
    CFrame* frame;
    int32_t hair_group_count; /* 0x4800 */
    HairGroup* hair_groups[0x8];
    uint32_t field_0x4824;
    LH3DObjectHair* l3d_hair_group;
    LH3DComplexObject* dynamic_shadow;
    uint32_t field_0x4830;

    // Override methods

    // win1.41 00617eb0 mac 10107d70 Morphable::SetAnimTime(long, long)
    virtual void SetAnimTime(int param_1, int param_2);
    // win1.41 00618360 mac 101073d0 Morphable::LoadBase(char *)
    virtual uint32_t LoadBase(char* param_1);
    // win1.41 00619100 mac 101063f0 Morphable::MorphAnims(void)
    virtual void MorphAnims();
    // win1.41 00619500 mac 101061c0 Morphable::MorphTexture(void)
    virtual void MorphTexture();

    // Static methods

    // win1.41 006186b0 mac 10107250 Morphable::LoadExtraTexture(void)
    static uint32_t LoadExtraTexture();

    // Non-virtual methods

    // win1.41 00617310 mac 10108d10 Morphable::MorphInit(LHPoint &, long, void* )
    void MorphInit(LHPoint* point, long param_3, void* param_4);
    // win1.41 00617470 mac 10108c30 Morphable::AddHairGroup()
    uint32_t AddHairGroup();
    // win1.41 00617620 mac 10108960 Morphable::SelectMesh(long)
    void SelectMesh(int param_1);
    // win1.41 00617ae0 mac 10107f50 Morphable::ReadBinary(LHFile *, AnimInfo *, AnimInfo *)
    uint32_t ReadBinary(LHFile* file, AnimInfo* info_1, AnimInfo* info_2);
    // win1.41 00617ee0 mac 10107a90 Morphable::ReadExtraDataBinary
    void ReadExtraDataBinary(LHFile* param_1, AnimInfo* param_2, AnimInfo* param_3, long param_4);
    // win1.41 00618720 mac 10106d80 Morphable::LoadMesh(char*, long)
    uint32_t LoadMesh(char* param_2, int param_3);
    // win1.41 00619650 mac 10084860 Morphable::GetAnim(long, long)
    CAnim* GetAnim(long anim_index, long param_3);
    // win1.41 00619690 mac 10084450 Morphable::GetSetAnim(long, long, long)
    CAnim* GetSetAnim(long param_1, long param_2, long param_3);
};

#endif /* BW1_DECOMP_MORPHABLE_INCLUDED_H */
