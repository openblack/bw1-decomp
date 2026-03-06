#include "lionhead/lh3dlib/development/LH3DComplexObject.h"
#include "lionhead/lh3dlib/development/LH3DSpriteObject.h"
#include "lionhead/lh3dlib/development/LH3DMeshedObject.h"
#include "lionhead/lh3dlib/development/LH3DStaticObject.h"
#include "lionhead/lh3dlib/development/LH3DTech.h"

// win1.41 0080c020 mac 10081d10 LH3DComplexObject::CreateDynamicShadow
// ERROR building signature: substring not found

// win1.41 00815380 mac 10078250 LH3DSpriteObject::LH3DSpriteObject(long)
LH3DSpriteObject::LH3DSpriteObject(int type)
{
}

// win1.41 008164b0 mac 10076460 LH3DMeshedObject::LH3DMeshedObject(void)
LH3DMeshedObject::LH3DMeshedObject()
{
}

// win1.41 00816540 mac 100763e0 LH3DStaticObject::LH3DStaticObject(void)
LH3DStaticObject::LH3DStaticObject()
{
}

// win1.41 00818c60 mac 100c0a80 LH3DTech::RenderInitialization(long, long)
void LH3DTech::RenderInitialization(int param_0, int param_1)
{
}

// win1.41 00819030 mac 100c0920 LH3DTech::UpdateViewPort(long, long)
void LH3DTech::UpdateViewPort(int param_1, int param_2)
{
}

// win1.41 00819390 mac 10be2a38 LH3DTech::ProjectPoint(LHPoint *, int *, int *, float *)
uint32_t LH3DTech::ProjectPoint(LHPoint* param_1, int* param_2, int* param_3, float* param_4)
{
    return 0;
}

// win1.41 008195b0 mac 10011b20 LH3DTech::ChangeFov(float)
void LH3DTech::ChangeFov(float fov)
{
}

// win1.41 00819690 mac 10011d80 LH3DTech::UpdateWorldToCamera(LHMatrix &, LHPoint &, LHPoint &, bool)
void LH3DTech::UpdateWorldToCamera(LHMatrix& param_1_00, LHPoint& param_2_00, LHPoint& param_1, bool param_2)
{
}

// win1.41 00819920 mac 10034c10 LH3DTech::UpdateCamera(LHPoint const &, LHPoint const &)
void LH3DTech::UpdateCamera(const LHPoint& param_1, const LHPoint& param_2)
{
}
