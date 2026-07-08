#ifndef BW1_DECOMP_SETUP_LIST_INCLUDED_H
#define BW1_DECOMP_SETUP_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHCoord.h>   /* For struct LHCoord */
#include <Lionhead/LHLib/ver5.0/LHKey.h>            /* For enum LHKey, enum LHKeyMod */

#include "SetupControl.h" /* For struct SetupControl, struct SetupControlVftable */
#include "SetupRect.h"    /* For struct SetupRect */

class SetupList : public SetupControl
{
public:
	bool field_0x23c;
	int  scrollback_width; /* 0x240 */
	bool field_0x244;
	int  selected_index;
	int  field_0x24c;
	int  num_items; /* 0x250 */
	int  field_0x254;
	char16_t(*) item_labels[0x100];
	int*                      item_heights;
	uint32_t*                 field_0x260;
	uint32_t*                 field_0x264;
	LH3DColor*                color;
	SetupList__ListBoxDraw_t* ListBoxDraw;
	int                       scroll_distance; /* 0x270 */
	bool                      show_scrollbar;
	int                       field_0x278;
	int                       scroll_position;
	int                       field_0x280;
	bool                      field_0x284;
	bool                      field_0x285;
	LHCoord                   drag_start;
	bool                      use_color_background; /* 0x290 */
	bool                      draw_highlight_box;
	uint8_t                   field_0x292;
	uint8_t                   field_0x293;
	LH3DColor                 box_outline_color;
	LH3DColor                 selection_color;
	uint8_t                   field_0x29c;
	SetupRect                 selection_rect; /* 0x2a0 */

	// Override methods

	// BW1W120 0040a5c0 BW1M100 10388e60 SetupList::Draw(bool, bool)
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040a110 BW1M100 101c7fc0 SetupList::Drag(int, int)
	virtual void Drag(int x, int y);
	// BW1W120 0040a370 BW1M100 10478900 SetupList::MouseDown(int, int, bool)
	virtual void MouseDown(int x, int y, bool param_3);
	// BW1W120 0040a3f0 BW1M100 100c7610 SetupList::MouseUp(int, int, bool)
	virtual void MouseUp(int x, int y, bool param_3);
	// BW1W120 0040a360 BW1M100 100b7170 SetupList::Click(int, int)
	virtual void Click(int x, int y);
	// BW1W120 00409eb0 BW1M100 103d24f0 SetupList::KeyDown(int, int)
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 0040a540 BW1M100 1056c3d0 SetupList::~SetupList(void)
	virtual ~SetupList();
	// BW1W120 0040a520 BW1M100 104e2bb0 SetupList::IsSelected(int)
	virtual bool IsSelected(int index);

	// Constructors

	// BW1W120 0040a450 BW1M100 10494bc0 SetupList::SetupList(int, int, int, int, int)
	SetupList(int id, int x, int y, int width, int height);

	// Non-virtual methods

	// BW1W120 00409dd0 BW1M100 10594000 SetupList::AutoScroll(bool)
	void AutoScroll(bool param_1);
	// BW1W120 0040aaf0 BW1M100 1056d710 SetupList::UpdateHeights(void)
	void UpdateHeights();
	// BW1W120 0040ad60 BW1M100 10169200 SetupList::DeleteString(int)
	void DeleteString(int index);
	// BW1W120 0040ae70 BW1M100 10112d20 SetupList::InsertString(int, wchar_t *)
	void InsertString(int index, const char16_t* text);
	// BW1W120 0040b050 BW1M100 104ea7a0 SetupList::SetNum(int)
	void SetNum(int num);
};

#endif /* BW1_DECOMP_SETUP_LIST_INCLUDED_H */
