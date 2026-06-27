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

    // BW1W120 00520f00 BW1M100 102b77f0 EditorIconBase::DrawTextString(LH3DColor *, LHRegion *)
    virtual uint32_t DrawTextString(LH3DColor* color, LHRegion* region);
    // BW1W120 00414bb0 BW1M100 100a4e10 EditorIconBase::GetPDMRegion(void)
    virtual LHRegion* GetPDMRegion();
    // BW1W120 00414bc0 BW1M100 100a4e70 EditorIconBase::GetTextRegion(void)
    virtual LHRegion* GetTextRegion();
    // BW1W120 00414bd0 BW1M100 100a4ed0 EditorIconBase::GetTextHandle(void)
    virtual uintptr_t GetTextHandle();
    // BW1W120 00414be0 BW1M100 100a4f10 EditorIconBase::GetTextHeight(void)
    virtual float GetTextHeight();
    // BW1W120 00520300 BW1M100 102b6f80 EditorIconBase::GetTextColor(void)
    virtual LH3DColor* GetTextColor();
    // BW1W120 00520310 BW1M100 102b6fc0 EditorIconBase::GetActiveColor(void)
    virtual LH3DColor* GetActiveColor();
    // BW1W120 00520320 BW1M100 102b60b0 EditorIconBase::GetInactiveColor(void)
    virtual LH3DColor* GetInactiveColor();
    // BW1W120 00414bf0 BW1M100 100a4f50 EditorIconBase::GetHiliteColor(void)
    virtual LH3DColor* GetHiliteColor();
    // BW1W120 005203e0 BW1M100 102b72e0 EditorIconBase::GetText(void)
    virtual char* GetText();
    // BW1W120 00414c00 BW1M100 100a4f90 EditorIconBase::IsScrollable(void)
    virtual bool IsScrollable();
    // BW1W120 00520b10 BW1M100 102b8040 EditorIconBase::DrawBox(int)
    virtual void DrawBox(int param_1);
    // BW1W120 00520f50 BW1M100 102b7700 EditorIconBase::DrawBubbleBox(void)
    virtual void DrawBubbleBox();

    // Static methods

    // BW1W120 00520fe0 BW1M100 102b7380 EditorIconBase::DrawOutlineBox
    static void DrawOutlineBox(LHRegion* param_1, LH3DColor* param_2);
};

#endif /* BW1_DECOMP_EDITOR_ICON_BASE_INCLUDED_H */
