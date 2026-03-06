#include "lionhead/lh3dlib/development/LH3DMem.h"
#include "lionhead/lh3dlib/development/LH3DWay.h"
#include "lionhead/lh3dlib/development/LH3DHair.h"
#include "HairGroup.h"
#include "lionhead/lh3dlib/development/LH3DObjectHair.h"
#include "lionhead/lh3dlib/development/LH3DPrimitive.h"

// win1.41 00842ce0 mac 10139fb0 LH3DMem::Alloc(long)
void* LH3DMem::Alloc(size_t size)
{
    return 0;
}

// win1.41 00842d60 mac 100c8720 LH3DMem::Free(void)
void LH3DMem::Free(void* mem)
{
}

// win1.41 00842f10 mac 100d49e0 LH3DWay::Release(void)
void LH3DWay::Release()
{
}

// win1.41 00843500 mac 100d3ea0 LH3DWay::Draw(void)
void LH3DWay::Draw()
{
}

// win1.41 00843ed0 mac 1061ce2c LH3DWay::Running::Running(LH3DWay *)
LH3DWay::Running::Running(LH3DWay* param_2)
{
}

// win1.41 00844570 mac 100d2ad0 LH3DWay::AdjustPtr(void)
void LH3DWay::AdjustPtr()
{
}

// win1.41 00846680 mac inlined LH3DHair::LH3DHair(void)
LH3DHair::LH3DHair()
{
}

// win1.41 00847890 mac 100415b0 LH3DHair::ReadBinary(LHFile *, long, long, HairGroup *)
void LH3DHair::ReadBinary(LHFile* param_2, uint32_t param_3, uint32_t param_4, HairGroup* param_5)
{
}

// win1.41 008479e0 mac 10041400 HairGroup::Init(long)
void HairGroup::Init(long param_1)
{
}

// win1.41 00847b50 mac 10041060 HairGroup::DeleteHair(long)
void HairGroup::DeleteHair(int param_1)
{
}

// win1.41 00848180 mac 101376f0 HairGroup::ReadBinary(LHFile *)
void HairGroup::ReadBinary(LHFile* param_1)
{
}

// win1.41 00848340 mac 10137b70 LH3DObjectHair::Init(long, HairGroup **)
void LH3DObjectHair::Init(long param_2, HairGroup** param_3)
{
}

// win1.41 0084ab50 mac 100a01f0 LH3DPrimitive::Create(unsigned char *, LH3DPrimitive *)
void LH3DPrimitive::Create(const uint8_t* buffer, LH3DPrimitive* primitive)
{
}
