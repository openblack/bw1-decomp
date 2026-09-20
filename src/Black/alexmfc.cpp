#include "AlexMfc.h"

#include <math.h>
#include <new>
#include <string.h>
#include <wchar.h>

#include <Lionhead/LH3DLib/development/LHMatrix.h>
#include <Lionhead/LHLib/ver5.0/LHWin.h>

#include "Game.h"
#include "HelpText.h"
#include "SetupBigButton.h"
#include "SetupBox.h"
#include "SetupCheckBox.h"
#include "SetupColourPicker.h"
#include "SetupEdit.h"
#include "SetupHLineGraph.h"
#include "SetupHSBarGraph.h"
#include "SetupMultiList.h"
#include "SetupPicture.h"
#include "SetupSlider.h"
#include "SetupStaticText.h"
#include "SetupTabButton.h"

// Surface reconstruction from BW1W120 target instructions. The shared UI layout
// and callback declarations are integrated; original-compiler verification and
// symbol/relocation reconciliation remain pending (see the alexmfc-surface handoff).
// TODO: Recover the ownership of the UI globals at 00c4cc80..00c4cd37 before adding
// SetupControl's constructor/IME focus handling and SetupBox's activation machinery.
// TODO: Rendering, edit/IME processing and graph animation still need reconstruction.

// BW1W120 004079c0 bool NeedsBiggerText(void)
bool NeedsBiggerText()
{
	if (GGame::g_game == NULL)
		return false;
	uint32_t language = GGame::g_game->field_0x250080;
	return language == 6 || language == 10 || language == 11 || language == 13 || language == 14;
}

// BW1W120 00407a00 int GetMidTextSize(void)
int GetMidTextSize()
{
	return NeedsBiggerText() ? 23 : 22;
}

// BW1W120 00407a10 int GetSmallTextSize(void)
int GetSmallTextSize()
{
	return NeedsBiggerText() ? 21 : 20;
}

// BW1W120 00407a20 BW1M100 105133e0 int GetBigTextSize(void)
int GetBigTextSize()
{
	return 35;
}

// BW1W120 00407d60 BW1M100 1004ee60 void Zoomer::SetDestinationWithSpeedAndTime(float, float, float)
void Zoomer::SetDestinationWithSpeedAndTime(float destination, float speed, float time)
{
	// Ghidra misses the stack-built matrix passed in EDX; its coefficients and
	// the reversed acceleration components are from target assembly.
	if (time < 0.001f)
	{
		this->destination = destination;
		CurrentValue = destination;
		StartValue = destination;
		duration = 0.0f;
		CurrentTime = 0.0f;
		NonLinearAcceleration.z = 0.0f;
		NonLinearAcceleration.y = 0.0f;
		TimeM2 = 0.0f;
		NonLinearAcceleration.x = 0.0f;
		CurrentSpeed = 0.0f;
		StartSpeed = 0.0f;
		DestinationSpeed = 0.0f;
		return;
	}
	StartSpeed = CurrentSpeed;
	StartValue = CurrentValue;
	this->destination = destination;
	DestinationSpeed = speed;
	duration = time;
	CurrentTime = 0.0f;
	float    halfTimeSquared = time * time * 0.5f;
	float    sixthTimeCubed = halfTimeSquared * time * (1.0f / 3.0f);
	LHMatrix coefficients;
	coefficients.m[0] = halfTimeSquared * halfTimeSquared * (1.0f / 6.0f);
	coefficients.m[1] = sixthTimeCubed;
	coefficients.m[2] = halfTimeSquared;
	coefficients.m[3] = sixthTimeCubed;
	coefficients.m[4] = halfTimeSquared;
	coefficients.m[5] = time;
	coefficients.m[6] = halfTimeSquared;
	coefficients.m[7] = time;
	coefficients.m[8] = 1.0f;
	coefficients.m[11] = 0.0f;
	coefficients.m[10] = 0.0f;
	coefficients.m[9] = 0.0f;
	LHMatrix inverse;
	inverse.SetInverse(coefficients);
	float distance = this->destination - StartValue - duration * StartSpeed;
	float speedChange = DestinationSpeed - StartSpeed;
	float accelerationZ = inverse.m[0] * distance + inverse.m[3] * speedChange + inverse.m[9];
	NonLinearAcceleration.y = inverse.m[1] * distance + inverse.m[4] * speedChange + inverse.m[10];
	NonLinearAcceleration.x = inverse.m[2] * distance + inverse.m[5] * speedChange + inverse.m[11];
	NonLinearAcceleration.z = accelerationZ;
}

// BW1W120 00408100 SetupControl * SetupBox::FindControl(int, int)
SetupControl* SetupBox::FindControl(int x, int y)
{
	// The IME candidate list and flagged controls can supersede an earlier hit;
	// hidden controls are still hit-tested before being excluded.
	SetupControl* hit = NULL;
	for (SetupControl* control = WidgetList; control != NULL; control = control->next)
	{
		if (control->HitTest(x, y) && !control->hidden &&
		    (hit == NULL || control->id == 0x85b680 || control->field_0x22b))
			hit = control;
	}
	return hit;
}

// BW1W120 00408160 BW1M100 1043c330 SetupControl * SetupBox::FindControl(int)
SetupControl* SetupBox::FindControl(int id)
{
	SetupControl* control;
	for (control = WidgetList; control != NULL; control = control->next)
	{
		if (control->id == id)
			return control;
	}
	for (control = Widgets0x68; control != NULL; control = control->next)
	{
		if (control->id == id)
			return control;
	}
	return NULL;
}

// BW1W120 00409140 BW1M100 10598ed0 void SetupBox::SetFocusControl(SetupControl *)
void SetupBox::SetFocusControl(SetupControl* widget)
{
	if (FocusedWidget != widget)
	{
		if (FocusedWidget != NULL)
			FocusedWidget->SetFocus(false);
		FocusedWidget = widget;
		if (widget != NULL)
			widget->SetFocus(true);
	}
}

// BW1W120 00409170 void SetupBox::fn_00409170(unsigned int, unsigned int)
void SetupBox::fn_00409170(uint32_t param_1, uint32_t param_2)
{
	// Genuine empty virtual, RET 8.
	// TODO: Recover the original name and two argument types.
}

// BW1W120 00411090 BW1M100 1047e3e0 void SetupBox::SetFocusNext(void)
void SetupBox::SetFocusNext()
{
	// Controls are inserted at the head, so Next walks backwards.
	SetupControl* control = FocusedWidget;
	SetupControl* original = control;
	do
	{
		for (SetupControl* scan = WidgetList; scan != NULL; scan = scan->next)
		{
			if (scan->next == FocusedWidget)
			{
				control = scan;
				break;
			}
			if (scan->next == NULL)
				control = scan;
		}
		if (control == NULL)
			control = WidgetList;
		if (control == FocusedWidget)
			break;
		SetFocusControl(control);
		if (control == original || control == NULL)
			break;
	} while (!control->field_0x22a || control->hidden);
}

// BW1W120 00411100 BW1M100 10478e70 void SetupBox::SetFocusPrev(void)
void SetupBox::SetFocusPrev()
{
	SetupControl* original = FocusedWidget;
	SetupControl* control = original;
	do
	{
		if (control != NULL)
			control = control->next;
		if (control == NULL)
			control = WidgetList;
		if (control == FocusedWidget)
			break;
		SetFocusControl(control);
		if (control == original || control == NULL)
			break;
	} while (!control->field_0x22a || control->hidden);
}

// BW1W120 inlined BW1M100 inlined int SetupControl::GetTextSize(void)
inline int SetupControl::GetTextSize()
{
	if (text_size != 0)
		return text_size;
	return setup_box != NULL ? setup_box->DefaultTextSize : 10;
}

// BW1W120 00409210 BW1M100 1057a320 void SetupControl::SetToolTip(unsigned int)
void SetupControl::SetToolTip(uint32_t tooltip_id)
{
	tooltip = HelpTextDataBase::HelpTextDatabase.GetHelpText(tooltip_id);
}

// BW1W120 004092f0 BW1M100 100c4fd0 void SetupControl::SetToolTip(unsigned short const *)
void SetupControl::SetToolTip(const char16_t* tooltip)
{
	this->tooltip = tooltip;
}

// BW1W120 00409300 BW1M100 105a3830 void SetupControl::Hide(bool)
void SetupControl::Hide(bool hidden)
{
	this->hidden = hidden;
}

// BW1W120 00409310 BW1M100 10310540 bool SetupControl::HitTest(int, int)
bool SetupControl::HitTest(int x, int y)
{
	// TODO: Verify full-EAX Boolean codegen before changing the virtual return type.
	return x >= rect.p0.x && y >= rect.p0.y && x < rect.p1.x && y < rect.p1.y;
}

// BW1W120 00409340 BW1M100 inlined void SetupControl::Drag(int, int)
void SetupControl::Drag(int x, int y) {}

// BW1W120 00409350 BW1M100 100a6190 void SetupControl::MouseDown(int, int, bool)
void SetupControl::MouseDown(int x, int y, bool param_3) {}

// BW1W120 00409360 BW1M100 104faf30 void SetupControl::MouseUp(int, int, bool)
void SetupControl::MouseUp(int x, int y, bool param_3) {}

// BW1W120 00409370 BW1M100 103e3120 void SetupControl::Click(int, int)
void SetupControl::Click(int x, int y) {}

// BW1W120 00409380 BW1M100 100d4e40 void SetupControl::KeyDown(LHKey, LHKeyMod)
void SetupControl::KeyDown(LHKey key, LHKeyMod mod) {}

// BW1W120 00409390 BW1M100 105049b0 void SetupControl::Char(int)
void SetupControl::Char(int character) {}

// BW1W120 004093c0 BW1M100 100c48e0 SetupControl::~SetupControl(void)
SetupControl::~SetupControl()
{
	if (setup_box->FocusedWidget == this)
		setup_box->SetFocusControl(NULL);
	if (setup_box->Widget0x74 == this)
		setup_box->Widget0x74 = NULL;
	SetupControl* control = setup_box->WidgetList;
	if (control == this)
	{
		setup_box->WidgetList = next;
		return;
	}
	while (control != NULL && control->next != NULL)
	{
		if (control->next == this)
		{
			control->next = next;
			break;
		}
		control = control->next;
	}
}

// BW1W120 004098b0 BW1M100 103dd710 SetupButton::SetupButton(int, int, int, int, int, unsigned short const *, int)
SetupButton::SetupButton(int id, int x, int y, int width, int height, const char16_t* label, int param_8)
	: SetupControl(id, x, y, width, height, label)
{
	field_0x240 = param_8;
	pressed = false;
}

// BW1W120 00409900 BW1M100 101104d0 void SetupButton::MouseDown(int, int, bool)
void SetupButton::MouseDown(int x, int y, bool param_3)
{
	pressed = true;
}

// BW1W120 00409910 BW1M100 10172660 void SetupButton::MouseUp(int, int, bool)
void SetupButton::MouseUp(int x, int y, bool param_3)
{
	pressed = false;
}

// BW1W120 00409920 BW1M100 1034a2d0 void SetupButton::KeyDown(LHKey, LHKeyMod)
void SetupButton::KeyDown(LHKey key, LHKeyMod mod)
{
	if (setup_box != NULL)
		setup_box->fn_00409170(key, mod);
}

// BW1W120 inlined BW1M100 10594240 SetupButton::~SetupButton(void)
SetupButton::~SetupButton() {}

// BW1W120 00409960 void SetupSlider::KeyDown(LHKey, LHKeyMod)
void SetupSlider::KeyDown(LHKey key, LHKeyMod mod)
{
	bool changed = false;
	switch (key)
	{
	case LHKEY_HOME:
		value = 0.0f;
		changed = true;
		break;
	case LHKEY_END:
		value = 1.0f;
		changed = true;
		break;
	case LHKEY_LEFT:
		value -= 0.1f;
		changed = true;
		break;
	case LHKEY_RIGHT:
		value += 0.1f;
		changed = true;
		break;
	}
	value = value > 0.0f ? (value < 1.0f ? value : 1.0f) : 0.0f;
	DragStartValue = value;
	if (changed && setup_box->field_0xb0 != NULL)
		setup_box->field_0xb0(4, setup_box, this, 0, 0);
}

// BW1W120 00409bf0 SetupSlider::SetupSlider(int, int, int, int, int, float, unsigned short *)
SetupSlider::SetupSlider(int id, int x, int y, int width, int height, float value, char16_t* label)
	: SetupControl(id, x, y, width, height, label)
{
	this->value = value;
	DragStartValue = value;
	this->height = rect.p1.y - y;
}

// BW1W120 inlined SetupSlider::~SetupSlider(void)
SetupSlider::~SetupSlider() {}

// BW1W120 00409c70 void SetupSlider::Drag(int, int)
void SetupSlider::Drag(int x, int y)
{
	float travel = (float)(rect.p1.x - rect.p0.x - height);
	int   thumbLeft = rect.p0.x + (int)(travel * DragStartValue);
	if (DragStart.x >= thumbLeft && DragStart.x < thumbLeft + height)
		value = (float)(x - DragStart.x) / travel + DragStartValue;
	else
	{
		if (DragStart.x < thumbLeft)
			value = DragStartValue - 0.1f;
		if (DragStart.x >= thumbLeft + height)
			value = DragStartValue + 0.1f;
	}
	value = value > 0.0f ? (value < 1.0f ? value : 1.0f) : 0.0f;
}

// BW1W120 00409d60 void SetupSlider::MouseDown(int, int, bool)
void SetupSlider::MouseDown(int x, int y, bool param_3)
{
	if (param_3)
	{
		DragStart.x = x;
		DragStart.y = y;
		DragStartValue = value;
	}
}

// BW1W120 00409d90 void SetupSlider::MouseUp(int, int, bool)
void SetupSlider::MouseUp(int x, int y, bool param_3)
{
	if (setup_box->field_0xb0 != NULL)
		setup_box->field_0xb0(1, setup_box, this, x, y);
	Click(x, y);
}

// BW1W120 00409dd0 BW1M100 10594000 void SetupList::AutoScroll(bool)
void SetupList::AutoScroll(bool param_1)
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

// BW1W120 0040a360 BW1M100 100b7170 void SetupList::Click(int, int)
void SetupList::Click(int x, int y) {}

// BW1W120 0040a370 BW1M100 10478900 void SetupList::MouseDown(int, int, bool)
void SetupList::MouseDown(int x, int y, bool param_3)
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

// BW1W120 0040a3f0 BW1M100 100c7610 void SetupList::MouseUp(int, int, bool)
void SetupList::MouseUp(int x, int y, bool param_3)
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
SetupList::SetupList(int id, int x, int y, int width, int height) : SetupControl(id, x, y, width, height, L"")
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

// BW1W120 0040a520 BW1M100 104e2bb0 bool SetupList::IsSelected(int)
bool SetupList::IsSelected(int index)
{
	// TODO: Target clears all of EAX before SETE AL.
	return index == SelectedIndex;
}

// BW1W120 inlined BW1M100 1056c3d0 SetupList::~SetupList(void)
SetupList::~SetupList()
{
	// Body inlined into the deleting destructor at 0040a540.
	delete[] color;
	delete[] ListBoxDraw;
	delete[] field_0x264;
	delete[] ItemHeights;
	delete[] item_labels;
	delete[] field_0x260;
}

// BW1W120 0040ad60 BW1M100 10169200 void SetupList::DeleteString(int)
void SetupList::DeleteString(int index)
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

// BW1W120 0040ae70 BW1M100 10112d20 void SetupList::InsertString(int, unsigned short const *)
void SetupList::InsertString(int index, const char16_t* text)
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

// BW1W120 0040b050 BW1M100 104ea7a0 void SetupList::SetNum(int)
void SetupList::SetNum(int num)
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

// BW1W120 0040b420 SetupMultiList::SetupMultiList(int, int, int, int, int, int)
SetupMultiList::SetupMultiList(int id, int x, int y, int width, int height, int size)
	: SetupList(id, x, y, width, height)
{
	this->size = size;
	field_0x2b4 = 0;
	list = (bool*)operator new(size * sizeof(bool), "C:\\dev\\MP\\Black\\alexmfc.cpp", 0x58e);
	for (int index = 0; index < this->size; ++index)
		list[index] = false;
}

// BW1W120 0040b4c0 SetupMultiList::~SetupMultiList(void)
SetupMultiList::~SetupMultiList()
{
	delete[] list;
}

// BW1W120 0040b530 bool SetupMultiList::IsSelected(int)
bool SetupMultiList::IsSelected(int index)
{
	// The inclusive upper bound is present in the original.
	if (index < 0 || index > size)
		return false;
	return list[index];
}

// BW1W120 0040b560 void SetupMultiList::Click(int, int)
void SetupMultiList::Click(int x, int y)
{
	int top = rect.p0.y - ScrollPosition;
	if (!field_0x285)
	{
		int index;
		for (index = 0; index < NumItems; ++index)
		{
			if (y >= top && y < top + ItemHeights[index])
				break;
			top += ItemHeights[index];
		}
		if (index < NumItems)
		{
			list[index] = !list[index];
			if (list[index])
				++field_0x2b4;
			else
				--field_0x2b4;
		}
	}
}

// BW1W120 0040c150 BW1M100 103dc010 void SetupEdit::Drag(int, int)
void SetupEdit::Drag(int x, int y)
{
	CursorPosition = CalcCharpos(x);
	SelectStart = CursorPosition;
}

// BW1W120 0040c170 BW1M100 10430180 void SetupEdit::MouseDown(int, int, bool)
void SetupEdit::MouseDown(int x, int y, bool param_3)
{
	if (param_3)
	{
		CursorPosition = CalcCharpos(x);
		SelectEnd = CursorPosition;
		SelectStart = CursorPosition;
	}
}

// BW1W120 0040c1a0 BW1M100 101178b0 void SetupEdit::MouseUp(int, int, bool)
void SetupEdit::MouseUp(int x, int y, bool param_3)
{
	if (param_3)
	{
		CursorPosition = CalcCharpos(x);
		SelectStart = CursorPosition;
		if (SelectStart > SelectEnd)
		{
			int position = SelectStart;
			SelectStart = SelectEnd;
			SelectEnd = position;
		}
		if (SelectStart == SelectEnd && field_0x464 != 0)
		{
			SelectStart = 0;
			CursorPosition = wcslen(label);
			SelectEnd = CursorPosition;
		}
		field_0x464 = 0;
	}
}

// BW1W120 0040c500 BW1M100 100c1900 void SetupEdit::SetFocus(bool)
void SetupEdit::SetFocus(bool focus)
{
	if (focus && !this->focus)
		field_0x464 = 1;
	SetupControl::SetFocus(focus);
	CursorPosition = wcslen(label);
	SelectEnd = CursorPosition;
	SelectStart = CursorPosition;
	field_0x258 = 0;
	if (focus)
		SelectStart = 0;
}

// BW1W120 inlined BW1M100 1035a3a0 SetupEdit::~SetupEdit(void)
SetupEdit::~SetupEdit() {}

// BW1W120 0040d260 BW1M100 100fd210 SetupBigButton::SetupBigButton(int, int, int, unsigned short const *, int, int, int)
SetupBigButton::SetupBigButton(int id, int x, int y, const char16_t* label, int size, int text_position, int style)
	: SetupButton(id, x, y, size, size, label, 0)
{
	InnerRect.p1.y = 0;
	InnerRect.p1.x = 0;
	InnerRect.p0.y = 0;
	InnerRect.p0.x = 0;
	pressed = false;
	// TODO: This clear is an outlined helper at 0040d380; original name unknown.
	this->style = BBSTYLE_CHECK_BOX_OFF;
	this->text_position = text_position;
	if (text_position == 2)
		text_size = GetMidTextSize();
	this->style = (BBSTYLE)style;
}

// BW1W120 0040d2f0 BW1M100 101689f0 void SetupBigButton::KeyDown(LHKey, LHKeyMod)
void SetupBigButton::KeyDown(LHKey key, LHKeyMod mod)
{
	if (setup_box != NULL)
		setup_box->fn_00409170(key, mod);
}

// BW1W120 0040d310 BW1M100 101670b0 bool SetupBigButton::HitTest(int, int)
bool SetupBigButton::HitTest(int x, int y)
{
	return (x >= rect.p0.x && y >= rect.p0.y && x < rect.p1.x && y < rect.p1.y) ||
	       (x >= InnerRect.p0.x && y >= InnerRect.p0.y && x < InnerRect.p1.x && y < InnerRect.p1.y);
}

// BW1W120 inlined BW1M100 1010fca0 SetupBigButton::~SetupBigButton(void)
SetupBigButton::~SetupBigButton() {}

// BW1W120 004107f0 BW1M100 1030b070 void SetupColourPicker::MouseDown(int, int, bool)
void SetupColourPicker::MouseDown(int x, int y, bool param_3)
{
	pressed = true;
}

// BW1W120 00410800 BW1M100 101119a0 void SetupColourPicker::MouseUp(int, int, bool)
void SetupColourPicker::MouseUp(int x, int y, bool param_3)
{
	pressed = false;
}

// BW1W120 00410810 BW1M100 1023f300 void SetupColourPicker::Drag(int, int)
void SetupColourPicker::Drag(int x, int y)
{
	SliderPosition = (float)(y - rect.p0.y) / (float)(rect.p1.y - rect.p0.y);
	SliderPosition = SliderPosition > 0.0f ? (SliderPosition < 1.0f ? SliderPosition : 1.0f) : 0.0f;
}

// BW1W120 00410ac0 BW1M100 103c6130 SetupColourPicker::SetupColourPicker(int, int, int, int, int, int, LH3DMaterial *)
SetupColourPicker::SetupColourPicker(int id, int x, int y, int width, int height, int brightness_slider,
                                     LH3DMaterial* material)
	: SetupButton(id, x, y, width, height, L"", 0)
{
	this->material = material;
	this->brightness_slider = brightness_slider;
	Color0x244 = LH3DColor(0xff000000);
	color = LH3DColor(0x00808080);
	SliderPosition = 0.5f;
}

// BW1W120 00410b30 BW1M100 1034f250 void SetupColourPicker::KeyDown(LHKey, LHKeyMod)
void SetupColourPicker::KeyDown(LHKey key, LHKeyMod mod)
{
	if (setup_box != NULL)
		setup_box->fn_00409170(key, mod);
}

// BW1W120 00410b50 BW1M100 100c8de0 void SetupColourPicker::Click(int, int)
void SetupColourPicker::Click(int x, int y) {}

// BW1W120 inlined BW1M100 10571d70 SetupColourPicker::~SetupColourPicker(void)
SetupColourPicker::~SetupColourPicker() {}

// BW1W120 00410f10 BW1M100 1058b890 SetupCheckBox::SetupCheckBox(int, int, int, bool, int, unsigned short const *, int)
SetupCheckBox::SetupCheckBox(int id, int x, int y, bool checked, int style, const char16_t* label, int size)
	: SetupButton(id, x, y, size, size, label, 0)
{
	// Existing names are misleading: checked is the radio-mode flag, while style
	// holds the checked state. Both meanings are confirmed by Click below.
	InnerRect.p1.y = 0;
	InnerRect.p1.x = 0;
	InnerRect.p0.y = 0;
	InnerRect.p0.x = 0;
	pressed = false;
	this->style = style;
	this->checked = checked;
	text_size = GetMidTextSize();
	text_position = 2;
}

// BW1W120 00410f90 BW1M100 10112370 bool SetupCheckBox::HitTest(int, int)
bool SetupCheckBox::HitTest(int x, int y)
{
	int dy = y - (rect.p1.y + rect.p0.y) / 2;
	int dx = x - (rect.p1.x + rect.p0.x) / 2;
	int radius = (rect.p1.x - rect.p0.x) / 2;
	return dx * dx + dy * dy < radius * radius ||
	       (x >= InnerRect.p0.x && y >= InnerRect.p0.y && x < InnerRect.p1.x && y < InnerRect.p1.y);
}

// BW1W120 00411020 BW1M100 103dbde0 void SetupCheckBox::Click(int, int)
void SetupCheckBox::Click(int x, int y)
{
	if (checked)
		style = BBSTYLE_CHECK_BOX_ON;
	else
		style = style == BBSTYLE_CHECK_BOX_OFF ? BBSTYLE_CHECK_BOX_ON : BBSTYLE_CHECK_BOX_OFF;
}

// BW1W120 00411050 BW1M100 10599580 void SetupCheckBox::KeyDown(LHKey, LHKeyMod)
void SetupCheckBox::KeyDown(LHKey key, LHKeyMod mod)
{
	if (setup_box != NULL)
		setup_box->fn_00409170(key, mod);
}

// BW1W120 inlined BW1M100 105893e0 SetupCheckBox::~SetupCheckBox(void)
SetupCheckBox::~SetupCheckBox() {}

// BW1W120 0040f5e0 BW1M100 101995b0 SetupTabButton::SetupTabButton(int, int, int, int, int, unsigned short const *, int, int, int)
SetupTabButton::SetupTabButton(int id, int x, int y, int width, int height, const char16_t* label, int selected,
                               int first_in_row, int last_in_row)
	: SetupButton(id, x, y, width, height, label, 0)
{
	color = LH3DColor(0xffffffff);
	this->first_in_row = first_in_row;
	this->last_in_row = last_in_row;
	pressed = false;
	text_size = GetMidTextSize();
	this->selected = selected;
	if (setup_box != NULL)
		setup_box->field_0x94 = 2;
}

// BW1W120 0040f670 BW1M100 1037abd0 void SetupTabButton::KeyDown(LHKey, LHKeyMod)
void SetupTabButton::KeyDown(LHKey key, LHKeyMod mod)
{
	if (setup_box != NULL)
		setup_box->fn_00409170(key, mod);
}

// BW1W120 inlined BW1M100 10369440 SetupTabButton::~SetupTabButton(void)
SetupTabButton::~SetupTabButton() {}

// BW1W120 0040fa10 void SetupPicture::Drag(int, int)
void SetupPicture::Drag(int x, int y) {}

// BW1W120 00410710 void SetupPicture::Click(int, int)
void SetupPicture::Click(int x, int y) {}

// BW1W120 004105d0 SetupPicture::SetupPicture(int, int, int, LH3DMaterial *, int, int, bool, int, bool)
SetupPicture::SetupPicture(int id, int x, int y, LH3DMaterial* material, int picture_index, int num_rows,
                           bool clickable, int size, bool draggable)
	: SetupButton(id, x, y, size, size, L"", 0)
{
	HoveredPictureIndex = -1;
	// Two identical reset expansions are present in the target.
	zoomer.SetPosition(0.0f);
	zoomer.SetPosition(0.0f);
	this->picture_index = picture_index;
	this->num_rows = num_rows;
	this->material = material;
	this->clickable = clickable;
	pressed = false;
	tint = LH3DColor(0);
	dragging = false;
	NumPictures = num_rows * num_rows;
	this->draggable = draggable;
}

// BW1W120 004106f0 void SetupPicture::KeyDown(LHKey, LHKeyMod)
void SetupPicture::KeyDown(LHKey key, LHKeyMod mod)
{
	if (setup_box != NULL)
		setup_box->fn_00409170(key, mod);
}

// BW1W120 inlined SetupPicture::~SetupPicture(void)
SetupPicture::~SetupPicture() {}

// BW1W120 00410740 void SetupPicture::SetFocus(bool)
void SetupPicture::SetFocus(bool focus)
{
	// This override deliberately does not call SetupControl::SetFocus.
	if (!focus)
	{
		HoveredPictureIndex = -1;
		// Target expands two identical position resets here.
		zoomer.SetPosition(0.0f);
		zoomer.SetPosition(0.0f);
	}
}

// BW1W120 inlined BW1M100 100cb300 SetupStaticText::~SetupStaticText(void)
SetupStaticText::~SetupStaticText() {}

// BW1W120 0040da30 BW1M100 10501060 void HLineData::SetNum(int)
void HLineData::SetNum(int num)
{
	if (num < 0)
		num = 0;
	float* newPoints = (float*)operator new(num * sizeof(float), "C:\\dev\\MP\\Black\\alexmfc.cpp", 0x76d);
	memset(newPoints, 0, num * sizeof(float));
	memcpy(newPoints, points, (num < PointCount ? num : PointCount) * sizeof(float));
	delete[] points;
	PointCount = num;
	points = newPoints;
}

// BW1W120 0040e510 BW1M100 103dcbb0 SetupHLineGraph::SetupHLineGraph(int, int, int, int, int, unsigned short const *, bool)
SetupHLineGraph::SetupHLineGraph(int id, int x, int y, int width, int height, const char16_t* label, bool percent_mode)
	: SetupButton(id, x, y, width, height, label, 0)
{
	pressed = false;
	text_size = GetSmallTextSize();
	this->percent_mode = percent_mode;
	Reset();
}

// BW1W120 0040e580 BW1M100 10518860 void SetupHLineGraph::KeyDown(LHKey, LHKeyMod)
void SetupHLineGraph::KeyDown(LHKey key, LHKeyMod mod)
{
	if (setup_box != NULL)
		setup_box->fn_00409170(key, mod);
}

// BW1W120 0040e5a0 BW1M100 101585b0 void SetupHLineGraph::MouseUp(int, int, bool)
void SetupHLineGraph::MouseUp(int x, int y, bool param_3)
{
	if (param_3)
		percent_mode = !percent_mode;
}

// BW1W120 inlined SetupHLineGraph::~SetupHLineGraph(void)
SetupHLineGraph::~SetupHLineGraph() {}

// BW1W120 0040e5e0 BW1M100 102a7a10 void SetupHLineGraph::Reset(void)
void SetupHLineGraph::Reset()
{
	while (LineDataList.GetStart() != NULL)
	{
		HLineData* line = LineDataList.GetStart()->payload;
		LineDataList.Remove(line);
		if (line != NULL)
		{
			delete[] line->points;
			delete line;
		}
	}
}

// BW1W120 0040e650 BW1M100 10211b80 void SetupHLineGraph::SetScale(float, float, bool)
void SetupHLineGraph::SetScale(float max_point, float min_point, bool centered_at_zero)
{
	// The -1e10 constant is the four bytes after the graph's actual vtable,
	// currently included in its inferred objdiff symbol extent.
	if (max_point <= 0.0f)
	{
		max_point = -1.0e10f;
		min_point = 1.0e10f;
		for (HLineData* line = LineDataList.FindNext(NULL); line != NULL; line = LineDataList.FindNext(line))
		{
			for (int index = 0; index < line->PointCount; ++index)
			{
				if (max_point < line->points[index])
					max_point = line->points[index];
				if (line->points[index] < min_point)
					min_point = line->points[index];
			}
		}
	}
	if (min_point >= max_point || centered_at_zero)
		min_point = 0.0f;
	if (max_point <= min_point)
		max_point = min_point + 1.0f;
	this->max_point = max_point;
	this->min_point = min_point;
}

// BW1W120 0040e730 BW1M100 1010ccb0 void SetupHLineGraph::AddLine(HLineData &)
void SetupHLineGraph::AddLine(HLineData& line)
{
	// AddLine deep-copies samples; SetLine/GetLine below are shallow.
	HLineData* copy = new ("C:\\dev\\MP\\Black\\alexmfc.cpp", 0x824) HLineData;
	if (copy != NULL)
	{
		copy->color = line.color;
		copy->SetNum(line.PointCount);
		memcpy(copy->points, line.points, line.PointCount * sizeof(float));
	}
	LineDataList.AddToEnd(copy);
}

// BW1W120 0040e7f0 BW1M100 100c9eb0 void SetupHLineGraph::SetLine(int, HLineData &)
void SetupHLineGraph::SetLine(int index, HLineData& line)
{
	if (index >= 0 && index < (int)LineDataList.count)
	{
		LHLinkedNode<HLineData*>* node = LineDataList.GetStart();
		if (node != NULL)
		{
			while (index-- > 0)
				node = node->next.Get();
			if (node != NULL && node->payload != NULL)
			{
				node->payload->color = line.color;
				node->payload->PointCount = line.PointCount;
				node->payload->points = line.points;
			}
		}
	}
}

// BW1W120 0040e850 BW1M100 10372050 void SetupHLineGraph::GetLine(int, HLineData &)
void SetupHLineGraph::GetLine(int index, HLineData& result)
{
	if (index >= 0 && index < (int)LineDataList.count)
	{
		LHLinkedNode<HLineData*>* node = LineDataList.GetStart();
		if (node != NULL)
		{
			while (index-- > 0)
				node = node->next.Get();
			if (node != NULL && node->payload != NULL)
			{
				result.color = node->payload->color;
				result.PointCount = node->payload->PointCount;
				result.points = node->payload->points;
			}
		}
	}
}

// BW1W120 0040d9a0 void SetupHSBarGraph::SetScale(float)
void SetupHSBarGraph::SetScale(float scale)
{
	if (scale <= 0.0f)
	{
		scale = 0.0f;
		for (VBarData* bar = BarDataList.FindNext(NULL); bar != NULL; bar = BarDataList.FindNext(bar))
			scale += (float)fabs(bar->value);
		if (scale <= 0.0f)
			scale = 1.0f;
	}
	max_point = scale;
}

// BW1W120 0040ef00 BW1M100 10354bc0 SetupVBarGraph::SetupVBarGraph(int, int, int, int, int, unsigned short const *)
SetupVBarGraph::SetupVBarGraph(int id, int x, int y, int width, int height, const char16_t* label)
	: SetupButton(id, x, y, width, height, label, 0)
{
	pressed = false;
	min_point = 0.0f;
	max_point = 0.0f;
	text_size = GetSmallTextSize();
	Reset();
}

// BW1W120 0040ef70 BW1M100 10350e50 void SetupVBarGraph::KeyDown(LHKey, LHKeyMod)
void SetupVBarGraph::KeyDown(LHKey key, LHKeyMod mod)
{
	if (setup_box != NULL)
		setup_box->fn_00409170(key, mod);
}

// BW1W120 inlined BW1M100 103de920 SetupVBarGraph::~SetupVBarGraph(void)
SetupVBarGraph::~SetupVBarGraph() {}

// BW1W120 0040efb0 BW1M100 inlined void SetupVBarGraph::Reset(void)
void SetupVBarGraph::Reset()
{
	while (BarDataList.GetStart() != NULL)
	{
		VBarData* bar = BarDataList.GetStart()->payload;
		BarDataList.Remove(bar);
		delete bar;
	}
	// TODO: Target inlines the long destination method too; shared inlining is not yet verified.
	zoomer.SetPosition(0.0f);
	zoomer.SetDestinationWithSpeedAndTime(1.0f, 0.0f, 0.5f);
	min_point = 0.0f;
	max_point = 0.0f;
}

// BW1W120 0040f1b0 BW1M100 10351240 void SetupVBarGraph::SetScale(float)
void SetupVBarGraph::SetScale(float scale)
{
	VBarData* bar;
	if (scale <= 0.0f)
	{
		scale = 0.0f;
		for (bar = BarDataList.FindNext(NULL); bar != NULL; bar = BarDataList.FindNext(bar))
		{
			if (scale < bar->value)
				scale = bar->value;
		}
		if (scale <= 0.0f)
			scale = 1.0f;
	}
	max_point = scale;
	min_point = 0.0f;
	for (bar = BarDataList.FindNext(NULL); bar != NULL; bar = BarDataList.FindNext(bar))
	{
		if (min_point > bar->value)
			min_point = bar->value;
	}
}

// BW1W120 0040f280 BW1M100 103fccd0 void SetupVBarGraph::AddBar(VBarData const &)
void SetupVBarGraph::AddBar(const VBarData& bar)
{
	BarDataList.AddToEnd(new ("C:\\dev\\MP\\Black\\alexmfc.cpp", 0x890) VBarData(bar));
}

// BW1W120 0040f300 BW1M100 10352240 void SetupVBarGraph::SetBar(int, VBarData const &)
void SetupVBarGraph::SetBar(int index, const VBarData& bar)
{
	if (index >= 0 && index < (int)BarDataList.count)
	{
		LHLinkedNode<VBarData*>* node = BarDataList.GetStart();
		if (node != NULL)
		{
			while (index-- > 0)
				node = node->next.Get();
			if (node != NULL && node->payload != NULL)
			{
				node->payload->color = bar.color;
				node->payload->value = bar.value;
			}
		}
	}
}

// BW1W120 0040f350 BW1M100 103f1500 void SetupVBarGraph::GetBar(int, VBarData &)
void SetupVBarGraph::GetBar(int index, VBarData& result)
{
	if (index >= 0 && index < (int)BarDataList.count)
	{
		LHLinkedNode<VBarData*>* node = BarDataList.GetStart();
		if (node != NULL)
		{
			while (index-- > 0)
				node = node->next.Get();
			if (node != NULL && node->payload != NULL)
			{
				result.color = node->payload->color;
				result.value = node->payload->value;
			}
		}
	}
}

// BW1W120 004132c0 BW1M100 1035b610 void SetupThing::DrawBox(int, int, int, int, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long)
void SetupThing::DrawBox(int x_min, int y_min, int x_max, int y_max, unsigned long color_1, unsigned long color_2,
                         unsigned long color_3, unsigned long color_4, unsigned long use_alpha, unsigned long adjust)
{
	if (x_max < x_min)
	{
		int x = x_min;
		x_min = x_max;
		x_max = x;
		unsigned long color = color_1;
		color_1 = color_2;
		color_2 = color;
		color = color_3;
		color_3 = color_4;
		color_4 = color;
	}
	if (y_max < y_min)
	{
		int y = y_min;
		y_min = y_max;
		y_max = y;
		unsigned long color = color_1;
		color_1 = color_3;
		color_3 = color;
		color = color_2;
		color_2 = color_4;
		color_4 = color;
	}
	DrawQuad(x_min, y_min, x_max, y_min, x_max, y_max, x_min, y_max, color_1, color_2, color_3, color_4, use_alpha,
	         adjust);
}
