#ifndef BW1_DECOMP_EDITOR_ICON_INCLUDED_H
#define BW1_DECOMP_EDITOR_ICON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <stdio.h>  /* For sprintf */
#include <windows.h>

#include <chlasm/AllMeshes.h>                       /* For enum MESH_LIST */
#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHRegion.h>  /* For struct LHRegion */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>         /* For LHSys::TheSystem */
#include <re_common.h>                              /* For bool32_t, CLAMP */

#include "EditorIconBase.h" /* For class EditorIconBase */

#define EDITOR_ICON_TEXT_SIZE 0x100

// Forward Declares

class EditorIconPlace;
class Game3DObject;

class EditorIconShow : public EditorIconBase
{
public:
	LHRegion      Region; /* 0x4 */
	unsigned long Flags;
	uint32_t      field_0x18;
	Game3DObject* Object;
	LH3DColor     ActiveColor; /* 0x20 */
	LH3DColor     InactiveColor;
	LH3DColor     TextColor;
	char*         Text;
	bool32_t      Active; /* 0x30 */
	bool32_t      LeftClicked;
	bool32_t      RightClicked;
	bool32_t      Processed;
	uint32_t      field_0x40; /* 0x40 */
	MESH_LIST     Mesh;
	char          TextBuffer[EDITOR_ICON_TEXT_SIZE];

	// Constructors

	// BW1W120 0051fb20 BW1M119 012bab40
	EditorIconShow(LHRegion region, const char* text, unsigned long flags, LH3DColor* active_color,
	               LH3DColor* inactive_color, LH3DColor* hilite_color, LH3DColor* text_color);

	// Destructor

	// BW1W120 0051fbe0 BW1M119 012ba970
	~EditorIconShow();

	// Override methods

	// BW1W120 00414c20 BW1M119 010a5760
	virtual LHRegion* GetRegion() { return &Region; }
	// BW1W120 0051fe30 BW1M119 012ba220
	virtual int Process();
	// BW1W120 0051fea0 BW1M119 012ba110
	virtual void Draw(int param_1);
	// BW1W120 00414c10 BW1M119 010a7f50
	virtual int IsActive() { return Active; }
	// BW1W120 00414c30 BW1M119 010a7f90
	virtual LH3DColor* GetTextColor() { return &TextColor; }
	// BW1W120 00414c40 BW1M119 010a7fd0
	virtual LH3DColor* GetActiveColor() { return &ActiveColor; }
	// BW1W120 00414c50 BW1M119 010a8010
	virtual LH3DColor* GetInactiveColor() { return &InactiveColor; }
	// BW1W120 004cf8f0 BW1M119 01246a00
	virtual char* GetText() { return Text; }

	// Virtual methods

	// BW1W120 0051ff40 BW1M119 012b9f40
	virtual void SetRegion(EditorIconPlace& place);
	// BW1W120 0051ff00 BW1M119 012ba060
	virtual int MakeActive();

	// Non-virtual methods

	// BW1W120 inlined BW1M119 010a60e0
	void SetRegion(const LHRegion& region) { Region = region; }
	// BW1W120 0051fbf0 BW1M119 012ba7b0
	void Init(const char* text, MESH_LIST mesh, LH3DColor* active_color, LH3DColor* inactive_color,
	          LH3DColor* hilite_color, LH3DColor* text_color);
	// BW1W120 0051fc70 BW1M119 012ba630
	void SetG3DObject(MESH_LIST mesh, int param_2);
	// BW1W120 0051fd90 BW1M119 012ba330
	void SetText(const char* text);
};
static_assert(sizeof(EditorIconShow) == 0x148, "Data type is of wrong size");

template <typename T, typename U> class EditorIconNumber : public EditorIconShow
{
public:
	T*       Value; /* 0x148 */
	T        Max;
	T        Min;
	U        Step;
	bool32_t Wrap;
	char     NumberText[EDITOR_ICON_TEXT_SIZE];

	// Constructors

	// BW1W120 004169e0 BW1M119 010a68f0
	EditorIconNumber(LHRegion region, T& value, T min, T max, U step, const char* text, unsigned long flags,
	                 bool32_t wrap, int param_9, LH3DColor* active_color, LH3DColor* inactive_color,
	                 LH3DColor* hilite_color, LH3DColor* text_color);

	// Override methods

	// BW1W120 00416b00 BW1M119 010a82c0
	virtual int Process()
	{
		LeftClicked = false;
		RightClicked = false;
		Processed = true;
		if (MakeActive())
		{
			if (LHSys::TheSystem.mouse.ButtonPressed & 1)
			{
				LeftClicked = true;
				LHSys::TheSystem.mouse.ButtonPressed &= ~1;
				SetValue(GetValue() + Step);
			}
			if (LHSys::TheSystem.mouse.ButtonPressed & 2)
			{
				RightClicked = true;
				LHSys::TheSystem.mouse.ButtonPressed &= ~2;
				SetValue(GetValue() - Step);
			}
			return true;
		}
		return false;
	}
	// BW1W120 00416710 BW1M119 010a8210
	virtual char* GetText()
	{
		if (Text != NULL)
		{
			sprintf(NumberText, Text, GetValue());
			return NumberText;
		}
		return NULL;
	}

	// Virtual methods

	// BW1W120 00416700 BW1M119 010a5e90
	virtual T GetValue() { return *Value; }
	// BW1W120 00416a70 BW1M119 010a7ea0
	virtual void SetValue(T value)
	{
		if (value < Min)
		{
			if (Wrap)
			{
				*Value = Max;
			}
			else
			{
				*Value = Min;
			}
		}
		else if (value > Max)
		{
			if (Wrap)
			{
				*Value = Min;
			}
			else
			{
				*Value = Max;
			}
		}
		else
		{
			*Value = value;
		}
	}
};

template <typename T, typename U>
EditorIconNumber<T, U>::EditorIconNumber(LHRegion region, T& value, T min, T max, U step, const char* text,
                                         unsigned long flags, bool32_t wrap, int param_9, LH3DColor* active_color,
                                         LH3DColor* inactive_color, LH3DColor* hilite_color, LH3DColor* text_color)
	: EditorIconShow(region, text, flags, active_color, inactive_color, hilite_color, text_color)
{
	Value = &value;
	Min = min;
	Max = max;
	Step = step;
	Wrap = wrap;
}

template <typename T> class EditorIconSlider : public EditorIconNumber<T, T>
{
public:
	LHRegion  ButtonRegion; /* 0x25c */
	LH3DColor ButtonColor;
	T         PageStep;
	bool32_t  Dragging;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	EditorIconSlider(LHRegion region, T& value, T min, T max, T step, const char* text, unsigned long flags,
	                 bool32_t wrap, int param_9, LH3DColor* active_color, LH3DColor* inactive_color,
	                 LH3DColor* hilite_color, LH3DColor* text_color)
		: EditorIconNumber<T, T>(region, value, min, max, step, text, flags, wrap, param_9, active_color,
	                             inactive_color, hilite_color, text_color)
	{
		PageStep = step;
		Dragging = false;
		ButtonColor.Set(31, 93, 94, 84);
		ButtonColor.Set(127, 93, 94, 84);
		SetButtonPosition();
		SetRegion(region);
	}

	// Override methods

	// BW1W120 004160c0 BW1M119 010a4d80
	virtual int Process()
	{
		bool32_t processed = false;
		Processed = true;
		LeftClicked = false;
		RightClicked = false;
		if (MakeActive())
		{
			if (LHSys::TheSystem.mouse.ButtonPressed & 1)
			{
				LeftClicked = true;
				Dragging = true;
				if (ButtonRegion.CoordInRegion(LHSys::TheSystem.mouse.Pos()))
				{
					LHSys::TheSystem.mouse.ButtonPressed &= ~1;
					Dragging = true;
				}
				else
				{
					SetValue(GetMouseValue());
				}
			}
			processed = true;
		}
		if (Dragging)
		{
			LeftClicked = true;
			SetValue(GetMouseValue());
			Dragging = LHSys::GetMouse().Buttons & 1;
			return true;
		}
		SetButtonPosition();
		return processed;
	}
	// BW1W120 00416060 BW1M119 010a4cd0
	virtual void Draw(int param_1)
	{
		bool32_t mouseOverTextWasEmpty = MouseOverText == NULL;
		EditorIconShow::Draw(0);
		if (MouseOverText != NULL && mouseOverTextWasEmpty)
		{
			MouseOverText = NULL;
		}
		DrawBox(&ButtonRegion, &ButtonColor, ButtonColor.a, 0);
	}
	// BW1W120 00416410 BW1M119 010a57f0
	virtual void SetValue(T value)
	{
		EditorIconNumber<T, T>::SetValue(value);
		SetButtonPosition();
	}

	// Non-virtual methods

	// BW1W120 00416c20 BW1M119 010a5ee0
	bool32_t IsBoxVertical() { return GetRegion()->Height() > GetRegion()->Width(); }
	// BW1W120 inlined BW1M119 010a6660
	T GetBoxWidth() { return (T)GetRegion()->Width(); }
	// BW1W120 inlined BW1M119 010a6720
	T GetBoxHeight() { return (T)GetRegion()->Height(); }
	// BW1W120 00416b80 BW1M119 010a5d10
	T GetBoxStart();
	// BW1W120 00416bc0 BW1M119 010a5bf0
	T GetBoxSize();
	// BW1W120 inlined BW1M119 010a57a0
	T GetValueRange() { return Max - Min; }
	// BW1W120 inlined BW1M119 010a5fd0
	T GetMousePos()
	{
		if (IsBoxVertical())
		{
			return (T)LHSys::TheSystem.mouse.Pos().y;
		}
		return (T)LHSys::TheSystem.mouse.Pos().x;
	}
	// BW1W120 inlined BW1M119 inlined
	T GetMouseValue()
	{
		T mouse = GetMousePos();
		if (IsBoxVertical())
		{
			if (!Dragging)
			{
				if (mouse < ButtonRegion.Y1())
				{
					return GetValue() - PageStep;
				}
				if (mouse > ButtonRegion.Y2())
				{
					return GetValue() + PageStep;
				}
			}
		}
		else
		{
			if (!Dragging)
			{
				if (mouse < ButtonRegion.X1())
				{
					return GetValue() - PageStep;
				}
				if (mouse > ButtonRegion.X2())
				{
					return GetValue() + PageStep;
				}
			}
		}
		T position = (mouse - GetBoxStart()) / GetBoxSize();
		CLAMP(position, 0.0f, 1.0f);
		T range = Max - Min;
		return position * range + Min;
	}
	// BW1W120 00416750 BW1M119 010a6140
	void SetButtonPosition()
	{
		T size = GetBoxSize();
		T range = GetValueRange();
		T position = (GetValue() - Min) / range;
		T x = (T)GetRegion()->X1();
		T y = (T)GetRegion()->Y1();
		T width;
		T height;
		if (IsBoxVertical())
		{
			y = size * position + y;
			width = GetBoxWidth();
			height = size * (PageStep / GetValueRange());
			height = min(16.0f, height);
			y -= height * 0.5f;
		}
		else
		{
			x = size * position + x;
			width = size * (PageStep / GetValueRange());
			width = min(16.0f, width);
			height = GetBoxHeight();
			x -= width * 0.5f;
		}
		if (width < 5.0f)
		{
			width = 5.0f;
		}
		if (GetRegion()->X1() > x)
		{
			x = (T)GetRegion()->X1();
		}
		if (x + width > GetRegion()->X2())
		{
			x = GetRegion()->X2() - width;
		}
		if (GetRegion()->Y1() > y)
		{
			y = (T)GetRegion()->Y1();
		}
		if (y + height > GetRegion()->Y2())
		{
			y = GetRegion()->Y2() - height;
		}
		ButtonRegion.start.Set((long)x, (long)y);
		ButtonRegion.end.Set((long)x + (long)width - 1, (long)y + (long)height - 1);
	}
};

template <typename T> T EditorIconSlider<T>::GetBoxStart()
{
	if (IsBoxVertical())
	{
		return (T)GetRegion()->Y1();
	}
	return (T)GetRegion()->X1();
}

template <typename T> T EditorIconSlider<T>::GetBoxSize()
{
	if (IsBoxVertical())
	{
		return GetBoxHeight();
	}
	return GetBoxWidth();
}

#endif /* BW1_DECOMP_EDITOR_ICON_INCLUDED_H */
