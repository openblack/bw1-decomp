#ifndef BW1_DECOMP_EDITOR_ICON_BASE_INCLUDED_H
#define BW1_DECOMP_EDITOR_ICON_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uintptr_t */

// Forward Declares

struct LH3DColor;
struct LHRegion;

class EditorIconBase
{
public:

    // Override methods

    // win1.41 00520f00 mac 102b77f0 EditorIconBase::DrawTextString(LH3DColor *, LHRegion *)
    virtual uint32_t DrawTextString(LH3DColor* color, LHRegion* region);
    // win1.41 00414bb0 mac 100a4e10 EditorIconBase::GetPDMRegion(void)
    virtual LHRegion* GetPDMRegion();
    // win1.41 00414bc0 mac 100a4e70 EditorIconBase::GetTextRegion(void)
    virtual LHRegion* GetTextRegion();
    // win1.41 00414bd0 mac 100a4ed0 EditorIconBase::GetTextHandle(void)
    virtual uintptr_t GetTextHandle();
    // win1.41 00414be0 mac 100a4f10 EditorIconBase::GetTextHeight(void)
    virtual float GetTextHeight();
    // win1.41 00520300 mac 102b6f80 EditorIconBase::GetTextColor(void)
    virtual LH3DColor* GetTextColor();
    // win1.41 00520310 mac 102b6fc0 EditorIconBase::GetActiveColor(void)
    virtual LH3DColor* GetActiveColor();
    // win1.41 00520320 mac 102b60b0 EditorIconBase::GetInactiveColor(void)
    virtual LH3DColor* GetInactiveColor();
    // win1.41 00414bf0 mac 100a4f50 EditorIconBase::GetHiliteColor(void)
    virtual LH3DColor* GetHiliteColor();
    // win1.41 005203e0 mac 102b72e0 EditorIconBase::GetText(void)
    virtual char* GetText();
    // win1.41 00414c00 mac 100a4f90 EditorIconBase::IsScrollable(void)
    virtual bool IsScrollable();
    // win1.41 00520b10 mac 102b8040 EditorIconBase::DrawBox(int)
    virtual void DrawBox(int param_1);
    // win1.41 00520f50 mac 102b7700 EditorIconBase::DrawBubbleBox(void)
    virtual void DrawBubbleBox();

    // Static methods

    // win1.41 00520fe0 mac 102b7380 EditorIconBase::DrawOutlineBox
    static void DrawOutlineBox(LHRegion* param_1, LH3DColor* param_2);
};

#endif /* BW1_DECOMP_EDITOR_ICON_BASE_INCLUDED_H */
