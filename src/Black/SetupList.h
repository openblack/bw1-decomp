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
	int  ScrollbackWidth; /* 0x240 */
	bool field_0x244;
	int  SelectedIndex;
	int  field_0x24c;
	int  NumItems; /* 0x250 */
	int  field_0x254;
	char16_t(*) item_labels[0x100];
	int*                      ItemHeights;
	uint32_t*                 field_0x260;
	uint32_t*                 field_0x264;
	LH3DColor*                color;
	SetupList__ListBoxDraw_t* ListBoxDraw;
	int                       ScrollDistance; /* 0x270 */
	bool                      ShowScrollbar;
	int                       field_0x278;
	int                       ScrollPosition;
	int                       field_0x280;
	bool                      field_0x284;
	bool                      field_0x285;
	LHCoord                   DragStart;
	bool                      UseColorBackground; /* 0x290 */
	bool                      DrawHighlightBox;
	uint8_t                   field_0x292;
	uint8_t                   field_0x293;
	LH3DColor                 BoxOutlineColor;
	LH3DColor                 SelectionColor;
	uint8_t                   field_0x29c;
	SetupRect                 SelectionRect; /* 0x2a0 */

	// Override methods

	// BW1W120 0040a5c0 BW1M119 01445000
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040a110 BW1M119 010cb230
	virtual void Drag(int x, int y);
	// BW1W120 0040a370 BW1M119 0110daa0
	virtual void MouseDown(int x, int y, bool param_3);
	// BW1W120 0040a3f0 BW1M119 01449520
	virtual void MouseUp(int x, int y, bool param_3);
	// BW1W120 0040a360 BW1M119 013e5a90
	virtual void Click(int x, int y);
	// BW1W120 00409eb0 BW1M119 010c7980
	virtual void KeyDown(LHKey key, LHKeyMod mod);
	// BW1W120 0040a540 BW1M119 010ba0a0
	virtual ~SetupList();
	// BW1W120 0040a520 BW1M119 014491b0
	virtual bool IsSelected(int index);

	// Constructors

	// BW1W120 0040a450 BW1M119 01448da0
	SetupList(int id, int x, int y, int width, int height);

	// Non-virtual methods

	// BW1W120 00409dd0 BW1M119 0116ea40
	void AutoScroll(bool param_1);
	// BW1W120 0040aaf0 BW1M119 013ebe40
	void UpdateHeights();
	// BW1W120 0040ad60 BW1M119 010b7200
	void DeleteString(int index);
	// BW1W120 0040ae70 BW1M119 0159b800
	void InsertString(int index, const char16_t* text);
	// BW1W120 0040b050 BW1M119 011cfe80
	void SetNum(int num);
};

#endif /* BW1_DECOMP_SETUP_LIST_INCLUDED_H */
