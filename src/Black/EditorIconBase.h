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
	static void DrawMouseOver(); // 00520e70
	// Override methods

	// BW1W120 00520f00 BW1M119 012bb170
	virtual uint32_t DrawTextString(LH3DColor* color, LHRegion* region);
	// BW1W120 00414bb0 BW1M119 010a8050
	virtual LHRegion* GetPDMRegion();
	// BW1W120 00414bc0 BW1M119 010a80b0
	virtual LHRegion* GetTextRegion();
	// BW1W120 00414bd0 BW1M119 010a8110
	virtual uintptr_t GetTextHandle();
	// BW1W120 00414be0 BW1M119 010a8150
	virtual float GetTextHeight();
	// BW1W120 00520300 BW1M119 012ba8f0
	virtual LH3DColor* GetTextColor();
	// BW1W120 00520310 BW1M119 012ba930
	virtual LH3DColor* GetActiveColor();
	// BW1W120 00520320 BW1M119 012b9a60
	virtual LH3DColor* GetInactiveColor();
	// BW1W120 00414bf0 BW1M119 010a8190
	virtual LH3DColor* GetHiliteColor();
	// BW1W120 005203e0 BW1M119 012bac60
	virtual char* GetText();
	// BW1W120 00414c00 BW1M119 010a81d0
	virtual bool IsScrollable();
	// BW1W120 00520b10 BW1M119 012bb9d0
	virtual void DrawBox(int param_1);
	// BW1W120 00520f50 BW1M119 012bb080
	virtual void DrawBubbleBox();

	// Static methods

	// BW1W120 00520fe0 BW1M119 012bad00
	static void DrawOutlineBox(LHRegion* param_1, LH3DColor* param_2);
};

#endif /* BW1_DECOMP_EDITOR_ICON_BASE_INCLUDED_H */
