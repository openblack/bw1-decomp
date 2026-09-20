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

class SetupList;
// CatDraw (BW1W120 005706a0) and PlayerDraw (BW1W120 00570710) return EAX=1 and RET 20h.
// Typedef name is retained from the existing decompiler-derived declaration.
typedef uint32_t(__stdcall* SetupList__ListBoxDraw_t)(SetupList* list, int index, int x_min, int y_min, int x_max,
                                                      int y_max, int clip_min, int clip_max);

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
	char16_t (*item_labels)[0x100];
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
	// BW1W120 inlined BW1M100 1056c3d0 SetupList::~SetupList(void)
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
	// BW1W120 0040ae70 BW1M100 10112d20 SetupList::InsertString(int, wchar_t*)
	void InsertString(int index, const char16_t* text);
	// BW1W120 0040b050 BW1M100 104ea7a0 SetupList::SetNum(int)
	void SetNum(int num);
	// BW1W120 005471c0 BW1M100 100d1570 SetupList::SetCol(int, unsigned long)
	void SetCol(int index, uint32_t value);
	// BW1W120 00547150 void SetupList::fn_00547150(int)
	void fn_00547150(int index);
};

#include <new>
#include <string.h>
#include <wchar.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>

// BW1W120 00409dd0 BW1M100 10594000 SetupList::AutoScroll(bool)
inline void SetupList::AutoScroll(bool param_1)
{
	if (param_1 || SelectedIndex < 0)
	{
		ScrollPosition = field_0x278;
		return;
	}
	float top = 0.0f;
	float visibleHeight = (float)(rect.p1.y - ItemHeights[SelectedIndex] - rect.p0.y);
	for (int index = 0; index < NumItems; ++index)
	{
		if (index == SelectedIndex)
		{
			if (top < (float)ScrollPosition)
				ScrollPosition = (int)top;
			else if (top > (float)ScrollPosition + visibleHeight)
				ScrollPosition = (int)(top - visibleHeight);
			else
			{
				top += ItemHeights[index];
				continue;
			}
			ScrollPosition = ScrollPosition > 0 ? (ScrollPosition < field_0x278 ? ScrollPosition : field_0x278) : 0;
			return;
		}
		top += ItemHeights[index];
	}
}

// BW1W120 0040a360 BW1M100 100b7170 SetupList::Click(int, int)
inline void SetupList::Click(int x, int y) {}

// BW1W120 0040a370 BW1M100 10478900 SetupList::MouseDown(int, int, bool)
inline void SetupList::MouseDown(int x, int y, bool param_3)
{
	if (field_0x4 == 0 && param_3)
	{
		field_0x24c = SelectedIndex;
		field_0x280 = ScrollPosition;
		DragStart.x = x;
		DragStart.y = y;
		field_0x285 = x > rect.p1.x - ScrollbackWidth && ShowScrollbar;
		if (field_0x285)
			SelectedIndex = -1;
		Drag(x, y);
	}
}

// BW1W120 0040a3f0 BW1M100 100c7610 SetupList::MouseUp(int, int, bool)
inline void SetupList::MouseUp(int x, int y, bool param_3)
{
	if (field_0x4 != 0)
		return;
	if (field_0x285)
	{
		if (param_3)
			SelectedIndex = field_0x24c;
		field_0x285 = false;
	}
	else if (param_3)
	{
		field_0x24c = SelectedIndex;
		field_0x280 = ScrollPosition;
	}
	else
		SelectedIndex = field_0x24c;
}

// BW1W120 0040a450 BW1M100 10494bc0 SetupList::SetupList(int, int, int, int, int)
inline SetupList::SetupList(int id, int x, int y, int width, int height) : SetupControl(id, x, y, width, height, L"")
{
	// TODO: Empty label originally resides at 00c4cd30.
	field_0x23c = false;
	field_0x29c = 0;
	field_0x284 = false;
	field_0x280 = 0;
	NumItems = 0;
	field_0x254 = 0;
	item_labels = NULL;
	ItemHeights = NULL;
	field_0x264 = NULL;
	ListBoxDraw = NULL;
	color = NULL;
	field_0x260 = NULL;
	ScrollDistance = 0;
	ShowScrollbar = false;
	ScrollPosition = 0;
	field_0x278 = 0;
	field_0x244 = false;
	UseColorBackground = false;
	SelectionColor = LH3DColor(0xffffffff);
	field_0x24c = -1;
	SelectedIndex = -1;
	ScrollbackWidth = 24;
	DrawHighlightBox = true;
	BoxOutlineColor = LH3DColor(0xffffffff);
}

// BW1W120 0040a520 BW1M100 104e2bb0 SetupList::IsSelected(int)
inline bool SetupList::IsSelected(int index)
{
	// TODO: Target clears all of EAX before SETE AL.
	return index == SelectedIndex;
}

// BW1W120 inlined BW1M100 1056c3d0 SetupList::~SetupList(void)
inline SetupList::~SetupList()
{
	// Body inlined into the deleting destructor at 0040a540.
	delete[] color;
	delete[] ListBoxDraw;
	delete[] field_0x264;
	delete[] ItemHeights;
	delete[] item_labels;
	delete[] field_0x260;
}

// BW1W120 0040ad60 BW1M100 10169200 SetupList::DeleteString(int)
inline void SetupList::DeleteString(int index)
{
	if (index >= 0 && index < NumItems)
	{
		int count = NumItems - index - 1;
		memmove(item_labels + index, item_labels + index + 1, count * sizeof(*item_labels));
		memmove(ItemHeights + index, ItemHeights + index + 1, count * sizeof(*ItemHeights));
		memmove(field_0x264 + index, field_0x264 + index + 1, count * sizeof(*field_0x264));
		memmove(ListBoxDraw + index, ListBoxDraw + index + 1, count * sizeof(*ListBoxDraw));
		memmove(color + index, color + index + 1, count * sizeof(*color));
		memmove(field_0x260 + index, field_0x260 + index + 1, count * sizeof(*field_0x260));
		SetNum(NumItems - 1);
	}
}

// BW1W120 0040ae70 BW1M100 10112d20 SetupList::InsertString(int, wchar_t*)
inline void SetupList::InsertString(int index, const char16_t* text)
{
	if (index >= 0 && index <= NumItems)
	{
		SetNum(NumItems + 1);
		int count = NumItems - index - 1;
		memmove(item_labels + index + 1, item_labels + index, count * sizeof(*item_labels));
		memmove(ItemHeights + index + 1, ItemHeights + index, count * sizeof(*ItemHeights));
		memmove(field_0x264 + index + 1, field_0x264 + index, count * sizeof(*field_0x264));
		memmove(ListBoxDraw + index + 1, ListBoxDraw + index, count * sizeof(*ListBoxDraw));
		memmove(color + index + 1, color + index, count * sizeof(*color));
		memmove(field_0x260 + index + 1, field_0x260 + index, count * sizeof(*field_0x260));
		// TODO: Recover the method names for the outlined setters at 0040b000 and 0040afe0.
		if (index < NumItems)
		{
			wcsncpy(item_labels[index], text, 255);
			item_labels[index][255] = 0;
			UpdateHeights();
		}
		if (index < NumItems)
			field_0x264[index] = 0;
		if (index < NumItems)
		{
			ListBoxDraw[index] = NULL;
			if (index < NumItems)
				color[index] = LH3DColor(0);
		}
		if (index < NumItems)
			field_0x260[index] = 0;
	}
}

// BW1W120 0040b050 BW1M100 104ea7a0 SetupList::SetNum(int)
inline void SetupList::SetNum(int num)
{
	// Capacity is intentionally retained between half-full and full.
	if (num < 0)
		num = 0;
	if (num < field_0x254 / 2 || num > field_0x254)
	{
		field_0x254 = num + 16;
		typedef char16_t Label[256];
		Label*    labels = (Label*)operator new(field_0x254 * sizeof(Label), "C:\\dev\\MP\\Black\\alexmfc.cpp", 0x555);
		int*      heights = (int*)operator new(field_0x254 * sizeof(int), "C:\\dev\\MP\\Black\\alexmfc.cpp", 0x556);
		uint32_t* data =
			(uint32_t*)operator new(field_0x254 * sizeof(uint32_t), "C:\\dev\\MP\\Black\\alexmfc.cpp", 0x557);
		SetupList__ListBoxDraw_t* callbacks = (SetupList__ListBoxDraw_t*)operator new(
			field_0x254 * sizeof(SetupList__ListBoxDraw_t), "C:\\dev\\MP\\Black\\alexmfc.cpp", 0x558);
		LH3DColor* colors =
			(LH3DColor*)operator new(field_0x254 * sizeof(LH3DColor), "C:\\dev\\MP\\Black\\alexmfc.cpp", 0x559);
		uint32_t* flags =
			(uint32_t*)operator new(field_0x254 * sizeof(uint32_t), "C:\\dev\\MP\\Black\\alexmfc.cpp", 0x55a);
		memset(labels, 0, field_0x254 * sizeof(Label));
		memset(heights, 0, field_0x254 * sizeof(int));
		memset(data, 0, field_0x254 * sizeof(uint32_t));
		memset(callbacks, 0, field_0x254 * sizeof(SetupList__ListBoxDraw_t));
		memset(colors, 0, field_0x254 * sizeof(LH3DColor));
		memset(flags, 0, field_0x254 * sizeof(uint32_t));
		int copyCount = num < NumItems ? num : NumItems;
		memcpy(labels, item_labels, copyCount * sizeof(Label));
		memcpy(heights, ItemHeights, copyCount * sizeof(int));
		memcpy(data, field_0x264, copyCount * sizeof(uint32_t));
		memcpy(callbacks, ListBoxDraw, copyCount * sizeof(SetupList__ListBoxDraw_t));
		memcpy(colors, color, copyCount * sizeof(LH3DColor));
		memcpy(flags, field_0x260, copyCount * sizeof(uint32_t));
		delete[] ItemHeights;
		delete[] item_labels;
		delete[] field_0x264;
		delete[] ListBoxDraw;
		delete[] color;
		delete[] field_0x260;
		field_0x264 = data;
		ListBoxDraw = callbacks;
		color = colors;
		item_labels = labels;
		ItemHeights = heights;
		field_0x260 = flags;
	}
	else if (NumItems < num)
	{
		int count = num - NumItems;
		memset(item_labels + NumItems, 0, count * sizeof(*item_labels));
		memset(ItemHeights + NumItems, 0, count * sizeof(*ItemHeights));
		memset(field_0x264 + NumItems, 0, count * sizeof(*field_0x264));
		memset(ListBoxDraw + NumItems, 0, count * sizeof(*ListBoxDraw));
		memset(color + NumItems, 0, count * sizeof(*color));
		memset(field_0x260 + NumItems, 0, count * sizeof(*field_0x260));
	}
	NumItems = num;
	if (SelectedIndex >= num)
		SelectedIndex = -1;
	UpdateHeights();
}

#endif /* BW1_DECOMP_SETUP_LIST_INCLUDED_H */
