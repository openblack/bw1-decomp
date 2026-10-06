#ifndef BW1_DECOMP_EDITOR_ICON_BASE_INCLUDED_H
#define BW1_DECOMP_EDITOR_ICON_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHRegion.h>  /* For struct LHRegion */
#include <re_common.h>                              /* For bool32_t */

// Forward Declares

struct GatheringText;

class EditorIconBase
{
public:
	// Static data

	// BW1W120 00cc6368
	static LHRegion MouseOverRegion;
	// BW1W120 00cc6378
	static LH3DColor DefaultInactiveColor;
	// BW1W120 00cc637c
	static LH3DColor DefaultTextColor;
	// BW1W120 00cc6388
	static LH3DColor DefaultHiliteColor;
	// BW1W120 00cc6390
	static GatheringText* Font;
	// BW1W120 00cc6398
	static LH3DColor DefaultActiveColor;
	// BW1W120 00cc639c
	static char* MouseOverText;
	// BW1W120 00be9238
	static float TextHeight;

	// Constructors

	// BW1W120 00520af0 BW1M119 012bbad0
	EditorIconBase();

	// Virtual methods

	// BW1W120 purecall BW1M119 purecall
	virtual LHRegion* GetRegion() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual int Process() = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual void Draw(bool32_t parent_active) = 0;
	// BW1W120 purecall BW1M119 purecall
	virtual int IsActive() = 0;
	// BW1W120 00520f00 BW1M119 012bb170
	virtual uint32_t DrawTextString(LH3DColor* color, LHRegion* region);
	// BW1W120 00414bb0 BW1M119 010a8050
	virtual LHRegion* GetPDMRegion() { return GetRegion(); }
	// BW1W120 00414bc0 BW1M119 010a80b0
	virtual LHRegion* GetTextRegion() { return GetRegion(); }
	// BW1W120 00414bd0 BW1M119 010a8110
	virtual GatheringText* GetTextHandle() { return Font; }
	// BW1W120 00414be0 BW1M119 010a8150
	virtual float GetTextHeight() { return TextHeight; }
	// BW1W120 00520300 BW1M119 012ba8f0
	virtual LH3DColor* GetTextColor();
	// BW1W120 00520310 BW1M119 012ba930
	virtual LH3DColor* GetActiveColor();
	// BW1W120 00520320 BW1M119 012b9a60
	virtual LH3DColor* GetInactiveColor();
	// BW1W120 00414bf0 BW1M119 010a8190
	virtual LH3DColor* GetHiliteColor() { return &DefaultHiliteColor; }
	// BW1W120 005203e0 BW1M119 012bac60
	virtual char* GetText();
	// BW1W120 00414c00 BW1M119 010a81d0
	virtual bool32_t IsScrollable() { return false; }
	// BW1W120 00520b10 BW1M119 012bb9d0
	virtual void DrawBox(int param_1);
	// BW1W120 00520f50 BW1M119 012bb080
	virtual void DrawBubbleBox();

	// Static methods

	// BW1W120 00520b60 BW1M119 012bb950
	static void DrawBox(LHRegion* region, LH3DColor* color, uint8_t alpha, int param_4);
	// BW1W120 00520b90 BW1M119 012bb460
	static float DrawText(LHRegion& region, const char* text, int param_3, LH3DColor* color, LH3DColor* background,
	                      GatheringText* font);
	// BW1W120 00520e70 BW1M119 010153b0
	static void DrawMouseOver();
	// BW1W120 00520f90 BW1M119 012baf40
	static void DrawBubbleBox(LHRegion* region, LH3DColor* color);
	// BW1W120 00520fe0 BW1M119 012bad00
	static void DrawOutlineBox(LHRegion* region, LH3DColor* color);
};

#endif /* BW1_DECOMP_EDITOR_ICON_BASE_INCLUDED_H */
