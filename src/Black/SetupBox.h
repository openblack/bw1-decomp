#ifndef BW1_DECOMP_SETUP_BOX_INCLUDED_H
#define BW1_DECOMP_SETUP_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <stddef.h>
#include <uchar.h> /* For char16_t */

#include <Lionhead/LH3DLib/development/Zoomer.h> /* For struct Zoomer */

// Forward Declares

class SetupControl;

class SetupBox
{
public:
	// BW1W120 00409170 void SetupBox::fn_00409170(unsigned int, unsigned int)
	virtual void  fn_00409170(uint32_t param_1, uint32_t param_2);
	Zoomer        Zoomer0x4;
	Zoomer        Zoomer0x34;
	uint32_t      field_0x64;
	SetupControl* Widgets0x68;
	SetupControl* WidgetList;
	SetupControl* FocusedWidget; /* 0x70 */
	SetupControl* Widget0x74;
	uint8_t       field_0x78;
	uint32_t      field_0x7c;
	uint32_t      field_0x80;
	float         field_0x84;
	uint32_t      field_0x88;
	uint32_t      field_0x8c;
	uint32_t      field_0x90;
	uint32_t      field_0x94;
	uint32_t      field_0x98;
	uint32_t      field_0x9c;
	uint32_t      field_0xa0;
	uint32_t      field_0xa4;
	uint32_t      field_0xa8;
	uint32_t      DefaultTextSize;
	void(__stdcall* field_0xb0)(int param_0, SetupBox* param_1, SetupControl* param_2, int x, int y);
	uint32_t      field_0xb4;
	uint32_t      field_0xb8;
	SetupControl* field_0xbc;
	int           field_0xc0;
	float         field_0xc4;
	uint32_t      field_0xc8;

	// Static methods

	// BW1W120 00407ed0 BW1M100 10075ef0 SetupBox::GetCurrentActiveBox(void)
	static SetupBox* GetCurrentActiveBox();

	// Non-virtual methods

	// BW1W120 00408100 BW1M100 1043c150 SetupBox::FindControl(int, int)
	SetupControl* FindControl(int x, int y);
	// BW1W120 00408160 BW1M100 1043c330 SetupBox::FindControl(int)
	SetupControl* FindControl(int id);
	// BW1W120 00409140 BW1M100 10598ed0 SetupBox::SetFocusControl(SetupControl*)
	void SetFocusControl(SetupControl* widget);
	// BW1W120 00411090 BW1M100 1047e3e0 SetupBox::SetFocusNext(void)
	void SetFocusNext();
	// BW1W120 00411100 BW1M100 10478e70 SetupBox::SetFocusPrev(void)
	void SetFocusPrev();
	// BW1W120 00411190 BW1M100 100c3160 SetupBox::MessageBoxA(wchar_t*, MSGBOXSTYLE, unsigned long)
	void MessageBoxA(const char16_t* param_2, uint32_t param_3, uint32_t param_4);
};

#include "SetupControl.h"

// BW1W120 00408100 BW1M100 1043c150 SetupBox::FindControl(int, int)
inline SetupControl* SetupBox::FindControl(int x, int y)
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

// BW1W120 00408160 BW1M100 1043c330 SetupBox::FindControl(int)
inline SetupControl* SetupBox::FindControl(int id)
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

// BW1W120 00409140 BW1M100 10598ed0 SetupBox::SetFocusControl(SetupControl*)
inline void SetupBox::SetFocusControl(SetupControl* widget)
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
inline void SetupBox::fn_00409170(uint32_t param_1, uint32_t param_2)
{
	// Genuine empty virtual, RET 8.
	// TODO: Recover the original name and two argument types.
}

// BW1W120 00411090 BW1M100 1047e3e0 SetupBox::SetFocusNext(void)
inline void SetupBox::SetFocusNext()
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

// BW1W120 00411100 BW1M100 10478e70 SetupBox::SetFocusPrev(void)
inline void SetupBox::SetFocusPrev()
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

#endif /* BW1_DECOMP_SETUP_BOX_INCLUDED_H */
