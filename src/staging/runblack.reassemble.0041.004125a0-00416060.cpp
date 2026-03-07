#include "SetupThing.h"
#include "lionhead/lh3dlib/development/LH3DRender.h"
#include "BaseInfo.h"
#include "AlignmentInfo.h"
#include "EditorIconBase.h"

// win1.41 004125a0 mac 101a2290 SetupThing::DrawLine(int, int, int, int, unsigned long, int, float, float)
void SetupThing::DrawLine(int param_1, int param_2, int param_3, int param_4, LH3DColor color, int adjust, float param_7, float inv_w)
{
}

// win1.41 00412940 mac 10046ae0 LH3DRender::SetRenderState(D3DRENDERSTATETYPE, unsigned long)
int LH3DRender::SetRenderState(D3DRENDERSTATETYPE type, uint32_t value)
{
    return 0;
}

// win1.41 00412980 mac 10048980 SetupThing::DrawBox(int, int, int, int, float, float, float, float, LH3DMaterial *, LH3DColor *, int, int, int, bool, float)
void SetupThing::DrawBox(int x_min, int y_min, int x_max, int y_max, float u_min, float v_min, float u_max, float v_max, LH3DMaterial* material, const LH3DColor* color, int adjust, int clip_y_start, int clip_y_end, bool depth_test, float inv_w)
{
}

// win1.41 00412eb0 mac 1010f3e0 SetupThing::DrawQuad(int, int, int, int, int, int, int, int, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long)
void SetupThing::DrawQuad(int x_1, int y_1, int x_2, int y_2, int x_3, int y_3, int x_4, int y_4, LH3DColor color_1, LH3DColor color_2, LH3DColor color_3, LH3DColor color_4, uint32_t use_alpha, uint32_t adjust)
{
}

// win1.41 004132c0 mac 1035b610 SetupThing::DrawBox(int, int, int, int, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long)
void SetupThing::DrawBox(int x_min, int y_min, int x_max, int y_max, LH3DColor color_1, LH3DColor color_2, LH3DColor color_3, LH3DColor color_4, uint32_t use_alpha, uint32_t adjust)
{
}

// win1.41 00413360 mac 1013c530 SetupThing::DrawTab(int, int, int, int, int, int, int, wchar_t *, int, int)
void SetupThing::DrawTab(int x_min, int y_min, int x_max, int y_max, bool selected, bool first_in_row, bool last_in_row, const char16_t* label, LH3DColor color, bool no_blend)
{
}

// win1.41 00413c20 mac 10594590 SetupThing::DrawBevBox(int, int, int, int, int, int, int, unsigned long)
void SetupThing::DrawBevBox(int x_min, int y_min, int x_max, int y_max, uint32_t style, uint32_t outline_thickness, uint32_t horizontal_outline, LH3DColor color)
{
}

// win1.41 004140b0 mac 10578110 GBaseInfo::GetDebugText(void) const
const char* GBaseInfo::GetDebugText()
{
    return 0;
}

// win1.41 004140c0 mac 100a4bb0 GAlignmentInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GAlignmentInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 00414120 mac 100a42b0 GAlignmentInfo::_dt(void)
GAlignmentInfo::~GAlignmentInfo()
{
}

// win1.41 00414bb0 mac 100a4e10 EditorIconBase::GetPDMRegion(void)
LHRegion* EditorIconBase::GetPDMRegion()
{
    return 0;
}

// win1.41 00414bc0 mac 100a4e70 EditorIconBase::GetTextRegion(void)
LHRegion* EditorIconBase::GetTextRegion()
{
    return 0;
}

// win1.41 00414bd0 mac 100a4ed0 EditorIconBase::GetTextHandle(void)
uintptr_t EditorIconBase::GetTextHandle()
{
    return 0;
}

// win1.41 00414be0 mac 100a4f10 EditorIconBase::GetTextHeight(void)
float EditorIconBase::GetTextHeight()
{
    return 0;
}

// win1.41 00414bf0 mac 100a4f50 EditorIconBase::GetHiliteColor(void)
LH3DColor* EditorIconBase::GetHiliteColor()
{
    return 0;
}

// win1.41 00414c00 mac 100a4f90 EditorIconBase::IsScrollable(void)
bool EditorIconBase::IsScrollable()
{
    return 0;
}
