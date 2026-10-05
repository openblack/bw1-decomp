#ifndef BW1_DECOMP_ALEXMFC_INCLUDED_H
#define BW1_DECOMP_ALEXMFC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LH3DText.h>  /* For enum TEXTJUSTIFY */
#include <Lionhead/LH3DLib/development/LHCoord.h>   /* For struct LHCoord */
#include <Lionhead/LH3DLib/development/LHRegion.h>  /* For struct LHRegion */
#include <Lionhead/LH3DLib/development/Zoomer.h>    /* For struct Zoomer */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>     /* For struct LHLinkedList */
#include <re_common.h>                              /* For bool32_t */

#include <wchar.h>   /* For wcsncpy */
#include <windows.h> /* Before LHSystem.h */

#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys::TheSystem */

// Forward Declares

struct GatheringText;
struct LH3DMaterial;
struct LH3DMesh;
class LH3DObject;
struct SetupBox;
struct SetupList;

// Identifier of the IME candidate list that SetupEdit creates.
#define SETUP_IME_CANDIDATE_LIST_ID 0x85b680

// Control identifiers of the message box buttons that SetupBox::DefaultCB presses.
enum SETUP_MESSAGE_BOX_ID
{
	SETUP_MESSAGE_BOX_ID_OK = 10000,
	SETUP_MESSAGE_BOX_ID_CANCEL = 10001,
	SETUP_MESSAGE_BOX_ID_YES = 10002,
	SETUP_MESSAGE_BOX_ID_NO = 10003
};

// Messages a SetupBox sends to its callback and to SetupBox::DefaultCB.
enum SETUP_MESSAGE
{
	SETUP_MESSAGE_UPDATE = 0,
	SETUP_MESSAGE_CLICK = 1,
	SETUP_MESSAGE_KEY = 2,
	SETUP_MESSAGE_MESSAGE_BOX_RESULT = 3,
	SETUP_MESSAGE_DRAG = 4,
	SETUP_MESSAGE_ON_HOLD = 5,
	SETUP_MESSAGE_ACTIVATE = 6,
	SETUP_MESSAGE_DEACTIVATE = 7,
	SETUP_MESSAGE_CHAR = 8,
	SETUP_MESSAGE_MOUSE_DOWN = 9,
	SETUP_MESSAGE_MOUSE_UP = 10,
	SETUP_MESSAGE_DROP = 11,
	SETUP_MESSAGE_DOUBLE_CLICK = 12,
	SETUP_MESSAGE_PRE_DRAW = 13,
	SETUP_MESSAGE_POST_DRAW = 14,
	SETUP_MESSAGE_ESCAPE = 15
};

// Where SetupCheckBox and SetupBigButton draw their label.
enum SETUP_TEXT_POSITION
{
	SETUP_TEXT_POSITION_RIGHT = 0,
	SETUP_TEXT_POSITION_LEFT = 1,
	SETUP_TEXT_POSITION_BELOW = 2
};

// The frame SetupBox::DrawAll draws behind a box.
enum SETUP_BACKGROUND
{
	SETUP_BACKGROUND_NONE = 0,
	SETUP_BACKGROUND_FRAMED = 1,
	// No top edge, so a row of SetupTabButtons can sit on it.
	SETUP_BACKGROUND_TABBED = 2
};

enum BBSTYLE
{
	BBSTYLE_CHECK_BOX_OFF = 0x0,
	BBSTYLE_CHECK_BOX_ON = 0x1,
	BBSTYLE_LEFT_ARROW = 0x2,
	BBSTYLE_RIGHT_ARROW = 0x3,
	BBSTYLE_ROTATION = 0x4,
	BBSTYLE_SPEECH = 0x5,
	BBSTYLE_NO_SPEECH = 0x6,
	BBSTYLE_SPEECH_ARROW = 0x7,
	BBSTYLE_EXCLAIM_ARROW = 0x8,
	BBSTYLE_ENVELOPE_ARROW = 0x9,
	BBSTYLE_ENVELOPE = 0xa,
	BBSTYLE_WEATHER_SUNNY = 0xb,
	BBSTYLE_WEATHER_PARTIALLY_CLOUDY = 0xc,
	BBSTYLE_WEATHER_CLOUDY = 0xd,
	BBSTYLE_WEATHER_SCATTERED_SHOWERS = 0xe,
	BBSTYLE_WEATHER_SHOWERS = 0xf,
	BBSTYLE_WEATHER_SCATTERED_FLURRIES = 0x10,
	BBSTYLE_WEATHER_FLURRIES = 0x11,
	BBSTYLE_WEATHER_HEAVY_FLURRIES = 0x12,
	BBSTYLE_WEATHER_THUNDER_STORMS = 0x13,
	BBSTYLE_0x14 = 0x14,
	_BBSTYLE_COUNT = 0x15
};

enum SETUP_TEXT_SIZE
{
	SETUP_TEXT_SIZE_DEFAULT = 10,
	SETUP_TEXT_SIZE_SMALL = 20,
	SETUP_TEXT_SIZE_SMALL_LARGE_GLYPHS = 21,
	SETUP_TEXT_SIZE_MEDIUM = 22,
	SETUP_TEXT_SIZE_MEDIUM_LARGE_GLYPHS = 23,
	SETUP_TEXT_SIZE_BIG = 35
};

struct SetupRect
{
	struct LHCoord p0;
	struct LHCoord p1;

	// BW1W120 inlined
	SetupRect() { p0.x = p0.y = p1.x = p1.y = 0; }
};
static_assert(sizeof(SetupRect) == 0x10, "Data type is of wrong size");

// BW1W120 004079c0 BW1M119 01089920
bool NeedsBiggerText();
// BW1W120 00407a00 BW1M119 014188e0
int GetMidTextSize();
// BW1W120 00407a10 BW1M119 013e6c30
int GetSmallTextSize();
// BW1W120 00407a20 BW1M119 013596e0
int GetBigTextSize();
// BW1W120 004082f0 BW1M119 0151b070
void RussClickNoise();

struct SetupThing
{
	// BW1W120 00c4cc80
	static LH3DMaterial* ButtonMaterial;
	// BW1W120 00c4ccd8
	static LH3DColor NormalColour;
	// BW1W120 00c4ccdc
	static LH3DColor ShadowColour;
	// BW1W120 00c4cce0
	static LH3DColor TextColour;
	// BW1W120 00c4cce4
	static LH3DColor HighlightColour;
	// BW1W120 00c4cce8
	static LH3DColor SelectedColour;
	// BW1W120 00c4ccf8
	static LH3DColor DefaultColor;
	// Only SetupThing::Close touches these: it releases them, but nothing in the binary ever sets them.
	// BW1W120 00c4ccf0
	static LH3DMesh* Mesh;
	// BW1W120 00c4ccf4
	static LH3DObject* Object;
	// BW1W120 00c4cd00
	static bool32_t IMEActive;
	// The left button state SetupBox::DrawAll saw last frame.
	// BW1W120 00c4cccc
	static bool32_t PrevLeftButton;
	// Counts left button events; incremented by CMouse::ProcessButtons.
	// BW1W120 00c4cd04
	static int LeftClickCount;
	// Counts right button events; incremented by CMouse::ProcessButtons.
	// BW1W120 00c4cd08
	static int RightClickCount;
	// BW1W120 00c4cd0c
	static bool32_t MouseCaptured;
	// Set by CMouse::ProcessButtons on a double click (LHMouse button events 0x10 and 0x20).
	// BW1W120 00c4cd10
	static int DoubleClicked;
	// Set while a pressed control is being dragged with the left button held.
	// BW1W120 00c4ccc8
	static bool Dragging;
	// Where the left button last went down.
	// BW1W120 00c4ccd4
	static int MouseDownX;
	// BW1W120 00c4ccd0
	static int MouseDownY;
	// Grown by the text drawing helpers to cover what they draw; SetupCheckBox uses it as its hit area.
	// BW1W120 00c4ccb8
	static SetupRect TextBounds;
	// BW1W120 00c4cd28
	static bool32_t Initialised;
	// BW1W120 00c4cd2c
	static GatheringText* Font;
	// BW1W120 009c8078
	static int DrawAlpha;

	// Static methods

	// BW1W120 004120a0 BW1M119 01173890
	static void Init();
	// BW1W120 004120f0 BW1M119 01516c00
	static void Close();
	// BW1W120 00413960 BW1M119 011ab460
	static void DrawBg(int x_min, int y_min, int x_max, int y_max, int color, int opaque, int top_border);
	// BW1W120 00411690 BW1M119 0159bad0
	static float GetTextHeight(int x_min, int y_min, int x_max, int y_max, int start_y, bool centered, char16_t* text,
	                           int line_height);
	// BW1W120 00411720 BW1M119 01593080
	static float GetTextWidth(char16_t* text, float size, int length, float scale);
	// BW1W120 00411750 BW1M119 01486690
	static float DrawTextWrap(int x_min, int y_min, int x_max, int y_max, int start_y, bool centered, char16_t* text,
	                          int size, LH3DColor* p_color, bool centre_vertically, bool no_z_test);
	// BW1W120 004119b0 BW1M119 01480f40
	static float DrawTextA(int x, int y, int width, TEXTJUSTIFY justify, char16_t* text, int size, LH3DColor* p_color,
	                       int length);
	// BW1W120 00411b40 BW1M119 01486aa0
	static float adjust(int& x, int& y);
	// BW1W120 00411c30 BW1M119 012bb270
	static float unadjust(int& x, int& y);
	// BW1W120 00411dd0 BW1M119 010d0ff0
	static int unadjustx(int x);
	// BW1W120 00411e70 BW1M119 010dc610
	static int adjusty(int y);
	// BW1W120 00411f10 BW1M119 014fe830
	static int unadjusty(int y);
	// BW1W120 00411fc0 BW1M119 010c65f0
	static int unadjustsize(int size);
	// BW1W120 00412030 BW1M119 0113e350
	static float unadjustsize(float size);
	// BW1W120 00412150 BW1M119 013ea5a0
	static void DrawBigButton(int x, int y, bool centered, bool interacted, int size, BBSTYLE style, bool shadowed,
	                          int clip_y_start, int clip_y_end);
	// BW1W120 004125a0 BW1M119 013ed8d0
	static void DrawLine(int x_start, int y_start, int x_end, int y_end, unsigned long color, int adjust, float depth,
	                     float distance);
	// BW1W120 00412980 BW1M119 0104b340
	static void DrawBox(int x_min, int y_min, int x_max, int y_max, float u_min, float v_min, float u_max, float v_max,
	                    LH3DMaterial* material, LH3DColor* color, int adjust, int clip_y_start, int clip_y_end,
	                    bool depth_test, float inv_w);
	// BW1W120 00412eb0 BW1M119 011cd6d0
	static void DrawQuad(int x_1, int y_1, int x_2, int y_2, int x_3, int y_3, int x_4, int y_4, unsigned long color_1,
	                     unsigned long color_2, unsigned long color_3, unsigned long color_4, unsigned long use_alpha,
	                     unsigned long adjust);
	// BW1W120 004132c0 BW1M119 011c9c50
	static void DrawBox(int x_min, int y_min, int x_max, int y_max, unsigned long color_1, unsigned long color_2,
	                    unsigned long color_3, unsigned long color_4, unsigned long use_alpha, unsigned long adjust);
	// BW1W120 00413360 BW1M119 013da240
	static void DrawTab(int x_min, int y_min, int x_max, int y_max, int selected, int first_in_row, int last_in_row,
	                    char16_t* label, int color, int no_blend);
	// BW1W120 00413c20 BW1M119 0158faa0
	static void DrawBevBox(int x_min, int y_min, int x_max, int y_max, int style, int outline_thickness,
	                       int horizontal_outline, unsigned long color);
};

struct SetupControl
{
	uint32_t        UsesIME;
	LHRegion        rect;
	int             id; /* 0x18 */
	int             Style;
	int             text_size; /* 0x20 */
	char16_t        label[0x100];
	const char16_t* tooltip; /* 0x224 */
	bool            focus;
	bool            hidden;
	bool            TabStop;
	bool            OnTop;
	uint32_t        RightButton;
	SetupControl*   next; /* 0x230 */
	SetupBox*       setup_box;
	void*           ContinueButtonCallback;

	// Override methods

	// BW1W120 004092f0 BW1M119 01145230
	virtual void SetToolTip(const char16_t* tooltip);
	// BW1W120 00409210 BW1M119 014ddb40
	virtual void SetToolTip(uint32_t tooltip_id);
	// BW1W120 00409300 BW1M119 013b74a0
	virtual void Hide(bool hidden);
	// BW1W120 00409180 BW1M119 01389d10
	virtual void SetFocus(bool focus);
	// BW1W120 00409310 BW1M119 0154c610
	virtual bool HitTest(int x, int y);
	// BW1W120 purecall
	virtual void Draw(bool hovered, bool selected) = 0;
	// BW1W120 00409340 BW1M119 inlined
	virtual void Drag(int x, int y);
	// BW1W120 00409350 BW1M119 0135d4b0
	virtual void MouseDown(int x, int y, bool button_event);
	// BW1W120 00409360 BW1M119 01357370
	virtual void MouseUp(int x, int y, bool button_event);
	// BW1W120 00409370 BW1M119 0138a080
	virtual void Click(int x, int y);
	// BW1W120 00409380 BW1M119 013cc040
	virtual void KeyDown(int key, int mod);
	// BW1W120 00409390 BW1M119 01391ae0
	virtual void Char(int character);
	// BW1W120 004093c0 BW1M119 010d5f90
	virtual ~SetupControl();

	// Constructors

	// BW1W120 00409250 BW1M119 013576b0
	SetupControl(int id, int x, int y, int width, int height, const char16_t* label);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	int GetTextSize();
	// fabricated
	// BW1W120 inlined BW1M119 inlined
	int GetHalfTextSize();
};

struct SetupBox
{
	// BW1W120 00c4ccec
	static bool CanEscape;
	// BW1W120 00c4cced
	static bool WantKey;
	// BW1W120 00c4cd1c
	static SetupBox* CurrentInitBox;
	// BW1W120 00c4cd20
	static SetupBox* CurrentActiveBox;
	// BW1W120 00c4cd24
	static SetupBox* CurrentFadeBox;
	// Restarted towards 1 whenever a box becomes active.
	// BW1W120 00c4cc88
	static Zoomer FadeIn;
	// BW1W120 00409170 BW1M119 01445730
	virtual void     ClickKeyDown(int key, int mod);
	Zoomer           Fade;
	Zoomer           HoldFade;
	bool             OnHold; /* 0x64 */
	bool             ActiveWhileOnHold;
	SetupControl*    HoldWidgetList;
	SetupControl*    WidgetList;
	SetupControl*    FocusedWidget; /* 0x70 */
	SetupControl*    HeldOverWidget;
	uint8_t          field_0x78;
	uint32_t         field_0x7c;
	uint32_t         field_0x80;
	float            field_0x84;
	uint32_t         field_0x88;
	uint32_t         field_0x8c;
	uint32_t         field_0x90;
	SETUP_BACKGROUND BackgroundStyle;
	int              TallBackground;
	int              BackgroundWidth;
	int              BackgroundHeight;
	int              HoldWidth;
	int              HoldHeight;
	int              DefaultTextSize;
	void(__stdcall* Callback)(int message, SetupBox* box, SetupControl* control, int data1, int data2);
	uint32_t      field_0xb4;
	unsigned long HoldData;
	SetupControl* HoverWidget; /* 0xbc */
	int           HoldColour;
	float         Alpha;
	uint32_t      field_0xc8;

	// Static methods

	// BW1W120 00407a30 BW1M119 013826f0
	static void SetCurrentActiveBox(SetupBox* box);
	// BW1W120 00407ed0 BW1M119 01078470
	static SetupBox* GetCurrentActiveBox();
	// BW1W120 00407ee0 BW1M119 0108fe40
	static SetupBox* GetCurrentFadeBox();
	// BW1W120 00407ef0 BW1M119 01090750
	static void UpdateWantKey();
	// BW1W120 00407f60 BW1M119 01357850
	static void __stdcall DefaultCB(int message, SetupBox* box, SetupControl* control, int data1, int data2);

	// Non-virtual methods

	// BW1W120 00408100 BW1M119 0157a060
	SetupControl* FindControl(int x, int y);
	// BW1W120 00408160 BW1M119 010e8bd0
	SetupControl* FindControl(int id);
	// BW1W120 004081a0 BW1M119 01375c50
	void SetOnHold(unsigned long data);
	// BW1W120 00408240 BW1M119 0151af10
	void SetOffHold();
	// BW1W120 00408340 BW1M119 0150a9b0
	void DrawAll(int x, int y, int left_button, int double_clicked, bool no_input);
	// BW1W120 00408f80 BW1M119 01376960
	void Key(int key, int mod);
	// BW1W120 00409070 BW1M119 0136eba0
	void Char(int character);
	// BW1W120 00409140 BW1M119 01444f40
	void SetFocusControl(SetupControl* widget);
	// BW1W120 00411090 BW1M119 011ce5e0
	void SetFocusNext();
	// BW1W120 00411100 BW1M119 01245680
	void SetFocusPrev();
	// BW1W120 00411150 BW1M119 014efd50
	void CleanOld();
	// BW1W120 00411190 BW1M119 013ccd30
	void MessageBoxA(const char16_t* param_2, uint32_t param_3, uint32_t param_4);
};

// BW1W120 inlined BW1M119 inlined
inline int SetupControl::GetTextSize()
{
	if (text_size != 0)
		return text_size;
	return setup_box != NULL ? setup_box->DefaultTextSize : SETUP_TEXT_SIZE_DEFAULT;
}

// BW1W120 inlined BW1M119 inlined
inline int SetupControl::GetHalfTextSize()
{
	if (text_size != 0)
		return text_size / 2;
	return setup_box != NULL ? setup_box->DefaultTextSize / 2 : SETUP_TEXT_SIZE_DEFAULT / 2;
}

struct SetupStaticText : public SetupControl
{
	TEXTJUSTIFY text_justify;    /* 0x23c */
	int         DisplayTextSize; /* 0x240 */

	// BW1W120 inlined BW1M119 013304b0
	SetupStaticText(int id, int x, int y, int width, int height, const char16_t* label,
	                TEXTJUSTIFY justify = TEXTJUSTIFY_LEFT)
		: SetupControl(id, x, y, width, height, label)
	{
		text_justify = justify;
		TabStop = false;
		DisplayTextSize = 0;
	}

	// Override methods

	// BW1W120 00409430 BW1M119 010a9370
	virtual void Draw(bool hovered, bool selected);
};

struct SetupButton : public SetupControl
{
	bool32_t pressed; /* 0x23c */
	int      field_0x240;

	// Override methods

	// BW1W120 004097a0 BW1M119 01501fc0
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 00409900 BW1M119 0159be80
	virtual void MouseDown(int x, int y, bool button_event);
	// BW1W120 00409910 BW1M119 01375da0
	virtual void MouseUp(int x, int y, bool button_event);
	// BW1W120 00409920 BW1M119 011723f0
	virtual void KeyDown(int key, int mod);

	// Constructors

	// BW1W120 004098b0 BW1M119 01416ad0
	SetupButton(int id, int x, int y, int width, int height, const char16_t* label, int param_8);
};

enum SETUP_SLIDER_STYLE
{
	SETUP_SLIDER_STYLE_LABEL_ABOVE = 0x40000000
};

struct SetupSlider : public SetupControl
{
	float   value;          /* 0x23c */
	float   DragStartValue; /* 0x240 */
	LHCoord DragStart;
	int     height;

	// Override methods

	// BW1W120 00409a40 BW1M119 010d1200
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 00409c70 BW1M119 0159ff50
	virtual void Drag(int x, int y);
	// BW1W120 00409d60 BW1M119 011109a0
	virtual void MouseDown(int x, int y, bool button_event);
	// BW1W120 00409d90 BW1M119 015824f0
	virtual void MouseUp(int x, int y, bool button_event);
	// BW1W120 00409960 BW1M119 010d97f0
	virtual void KeyDown(int key, int mod);

	// Constructors

	// BW1W120 00409bf0 BW1M119 013c2910
	SetupSlider(int id, int x, int y, int width, int height, float value, char16_t* label);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	void SetValue(float new_value, float min_value, float max_value)
	{
		new_value = new_value > min_value ? min(new_value, max_value) : min_value;
		if (max_value > min_value)
			value = (new_value - min_value) / (max_value - min_value);
		else
			value = 0.0f;
	}
	// BW1W120 inlined BW1M119 inlined
	float GetValue(float min_value, float max_value) { return value * (max_value - min_value) + min_value; }
};

typedef uint32_t(__stdcall* SetupList__ListBoxDraw_t)(SetupList* list, int index, int x_min, int y_min, int x_max,
                                                      int y_max, int clip_min, int clip_max);

struct SetupList : public SetupControl
{
	bool field_0x23c;
	int  ScrollbackWidth; /* 0x240 */
	bool field_0x244;
	int  SelectedIndex;
	int  PrevSelectedIndex;
	int  NumItems; /* 0x250 */
	int  Capacity;
	char16_t (*item_labels)[0x100];
	int*                      ItemHeights;
	void**                    TagData;
	uint32_t*                 ItemData;
	LH3DColor*                color;
	SetupList__ListBoxDraw_t* ListBoxDraw;
	int                       ScrollDistance; /* 0x270 */
	bool                      ShowScrollbar;
	int                       MaxScrollPosition;
	int                       ScrollPosition;
	int                       DragStartScroll;
	bool                      IgnoreKeys;
	bool                      DraggingScrollbar;
	LHCoord                   DragStart;
	bool                      UseColorBackground; /* 0x290 */
	bool                      DrawHighlightBox;
	uint8_t                   field_0x292;
	uint8_t                   field_0x293;
	unsigned long             BoxOutlineColor;
	unsigned long             SelectionColor;
	uint8_t                   field_0x29c;
	// Not zeroed by the constructor, so an LHRegion like SetupControl::rect rather than a SetupRect.
	LHRegion SelectionRect; /* 0x2a0 */

	// Override methods

	// BW1W120 0040a5c0 BW1M119 01445000
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040a110 BW1M119 010cb230
	virtual void Drag(int x, int y);
	// BW1W120 0040a370 BW1M119 0110daa0
	virtual void MouseDown(int x, int y, bool button_event);
	// BW1W120 0040a3f0 BW1M119 01449520
	virtual void MouseUp(int x, int y, bool button_event);
	// BW1W120 0040a360 BW1M119 013e5a90
	virtual void Click(int x, int y);
	// BW1W120 00409eb0 BW1M119 010c7980
	virtual void KeyDown(int key, int mod);
	// BW1W120 inlined BW1M119 010ba0a0
	virtual ~SetupList();
	// BW1W120 0040a520 BW1M119 014491b0
	virtual bool IsSelected(int index);

	// Constructors

	// BW1W120 0040a450 BW1M119 01448da0
	SetupList(int id, int x, int y, int width, int height);

	// Non-virtual methods

	// BW1W120 00409dd0 BW1M119 0116ea40
	void AutoScroll(bool to_bottom);
	// fabricated
	// BW1W120 inlined BW1M119 inlined
	void SetSelected(int index);
	// BW1W120 inlined BW1M119 015c5360
	int GetSelected() { return SelectedIndex; }
	// BW1W120 inlined BW1M119 013e2930
	void DeleteAll()
	{
		while (NumItems > 0)
			DeleteString(NumItems - 1);
	}
	// BW1W120 inlined BW1M119 013e2860
	void AddString(const char16_t* text, unsigned char red, unsigned char green, unsigned char blue)
	{
		InsertString(NumItems, text);
		SetCol(NumItems - 1, (red << 16) + (green << 8) + blue);
	}
	// BW1W120 inlined BW1M119 inlined
	uint32_t GetItemData(int index) { return index >= 0 && index < NumItems ? ItemData[index] : 0; }
	// BW1W120 inlined BW1M119 inlined
	void SetItemData(int index, uint32_t data)
	{
		if (index >= 0 && index < NumItems)
			ItemData[index] = data;
	}
	// BW1W120 inlined BW1M119 inlined
	SetupList__ListBoxDraw_t GetListBoxDraw(int index)
	{
		return index >= 0 && index < NumItems ? ListBoxDraw[index] : NULL;
	}
	// BW1W120 inlined BW1M119 inlined
	void SetListBoxDraw(int index, SetupList__ListBoxDraw_t draw)
	{
		if (index >= 0 && index < NumItems)
			ListBoxDraw[index] = draw;
	}
	// BW1W120 0040aaf0 BW1M119 013ebe40
	void UpdateHeights();
	// BW1W120 0040ad60 BW1M119 010b7200
	void DeleteString(int index);
	// BW1W120 0040ae70 BW1M119 0159b800
	void InsertString(int index, const char16_t* text);
	// BW1W120 0040b000 BW1M119 01312fb0
	void SetString(int index, const char16_t* text);
	// BW1W120 0040afe0 BW1M119 013d9f90
	void SetTagData(int index, void* data);
	// BW1W120 0040b050 BW1M119 011cfe80
	void SetNum(int num);
	// BW1W120 005471c0 BW1M119 01376730
	void SetCol(int index, unsigned long col);
	// BW1W120 00547150
	void fn_00547150(int index);
};

// BW1W120 inlined BW1M119 010ba0a0
inline SetupList::~SetupList()
{
	delete[] color;
	delete[] ListBoxDraw;
	delete[] ItemData;
	delete[] ItemHeights;
	delete[] item_labels;
	delete[] TagData;
}

inline void SetupList::SetSelected(int index)
{
	if (index >= 0 && index < NumItems)
		SelectedIndex = index;
	else
		SelectedIndex = -1;
	if (UsesIME && SetupThing::IMEActive && index >= 0 && LHSys::TheSystem.TbIME->CandidateList_GetSelectIdx() != index)
	{
		LHSys::TheSystem.TbIME->CandidateList_SetViewWindow(0, NumItems - 1, index);
		AutoScroll(false);
	}
}

// BW1W120 005471c0 BW1M119 01376730
inline void SetupList::SetCol(int index, unsigned long col)
{
	if (index >= 0 && index < NumItems)
		color[index] = LH3DColor(col);
}

struct SetupMultiList : public SetupList
{
	bool* list; /* 0x2b0 */
	int   NumSelected;
	int   size;

	// Override methods

	// BW1W120 0040b560 BW1M119 014ea2d0
	virtual void Click(int x, int y);
	// BW1W120 0040b4c0 BW1M119 010caba0
	virtual ~SetupMultiList();
	// BW1W120 0040b530 BW1M119 0149c200
	virtual bool IsSelected(int index);

	// Constructors

	// BW1W120 0040b420 BW1M119 01480980
	SetupMultiList(int id, int x, int y, int width, int height, int size);
};

struct SetupEdit : public SetupControl
{
	SetupList* field_0x23c;
	int        field_0x240;
	int        field_0x244;
	int        field_0x248;
	int        CursorPosition;
	int        SelectStart; /* 0x250 */
	int        SelectEnd;
	int        ScrollOffset;
	bool32_t   editable;
	bool       MaskedText; /* 0x260 */
	char16_t   text[0x100];
	uint32_t   SelectAllOnClick;

	// Override methods

	// BW1W120 0040c500 BW1M119 0142e440
	virtual void SetFocus(bool focus);
	// BW1W120 0040c580 BW1M119 013fb450
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040c150 BW1M119 01368600
	virtual void Drag(int x, int y);
	// BW1W120 0040c170 BW1M119 014f1f60
	virtual void MouseDown(int x, int y, bool button_event);
	// BW1W120 0040c1a0 BW1M119 01439aa0
	virtual void MouseUp(int x, int y, bool button_event);
	// BW1W120 0040baf0 BW1M119 0111c4d0
	virtual void KeyDown(int key, int mod);
	// BW1W120 0040b5f0 BW1M119 01171680
	virtual void Char(int character);

	// Constructors

	// BW1W120 0040c220 BW1M119 01154d10
	SetupEdit(int id, int x, int y, int width, int height, const char16_t* label, int editable);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	void ClampCursor();
	// BW1W120 inlined BW1M119 inlined
	void FixCursor();
	// BW1W120 inlined BW1M119 inlined
	void FixSelect();
	// BW1W120 0040c090 BW1M119 013e1d10
	int CalcCharpos(int pos);
	// BW1W120 inlined BW1M119 inlined
	void SetText(const char16_t* text)
	{
		wcsncpy(label, text, 0xff);
		label[0xff] = 0;
		CursorPosition = wcslen(label);
		SelectEnd = CursorPosition;
		SelectStart = CursorPosition;
		ScrollOffset = 0;
	}
};

struct SetupMP3Button : public SetupButton
{
	int       IconIndex;
	int       ShowButton;
	LH3DColor color;

	// Override methods

	// BW1W120 0040cda0 BW1M119 013e89c0
	virtual void Draw(bool hovered, bool selected);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	SetupMP3Button(int id, int x, int y, int width, int height, const char16_t* label, int param_8, int icon_index)
		: SetupButton(id, x, y, width, height, label, param_8)
	{
		color = SetupThing::DefaultColor;
		ShowButton = true;
		Style = 0;
		IconIndex = icon_index;
	}
};

struct SetupBigButton : public SetupButton
{
	SETUP_TEXT_POSITION text_position; /* 0x244 */
	BBSTYLE             style;
	SetupRect           InnerRect;

	// Override methods

	// BW1W120 0040d310 BW1M119 0149c0c0
	virtual bool HitTest(int x, int y);
	// BW1W120 0040ceb0 BW1M119 013ec8e0
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040d2f0 BW1M119 0149bfb0
	virtual void KeyDown(int key, int mod);

	// Constructors

	// BW1W120 0040d260 BW1M119 013894e0
	SetupBigButton(int id, int x, int y, const char16_t* label, int size, int text_position, int style);

	// Non-virtual methods

	// BW1W120 0040d380
	void fn_0040D380();
};

struct VBarData
{
	LH3DColor color; /* 0x0 */
	float     value;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	VBarData(const VBarData& bar) : color(bar.color), value(bar.value) {}

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	VBarData& operator=(const VBarData& bar)
	{
		color = bar.color;
		value = bar.value;
		return *this;
	}
};

struct SetupVBarGraph : public SetupButton
{
	Zoomer                  zoomer;      /* 0x244 */
	LHLinkedList<VBarData*> BarDataList; /* 0x274 */
	float                   max_point;
	float                   min_point; /* 0x280 */

	// Override methods

	// BW1W120 0040e8b0 BW1M119 0135d4f0
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040ef70 BW1M119 010cf650
	virtual void KeyDown(int key, int mod);
	// BW1W120 0040efb0 BW1M119 inlined
	virtual void Reset();
	// BW1W120 0040f1b0 BW1M119 01142e70
	virtual void SetScale(float scale);
	// BW1W120 0040f280 BW1M119 0134f610
	virtual void AddBar(const VBarData& bar);
	// BW1W120 0040f300 BW1M119 01351140
	virtual void SetBar(int index, const VBarData& bar);
	// BW1W120 0040f350 BW1M119 01359ab0
	virtual void GetBar(int index, VBarData& result);

	// Constructors

	// BW1W120 0040ef00 BW1M119 01142980
	SetupVBarGraph(int id, int x, int y, int width, int height, const char16_t* label);
};

struct SetupHSBarGraph : public SetupVBarGraph
{
	// Override methods

	// BW1W120 0040d3c0 BW1M119 013e4290
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0056d960 BW1M119 011153b0
	virtual ~SetupHSBarGraph();
	// BW1W120 0040d9a0 BW1M119 013e3f50
	virtual void SetScale(float scale);

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	SetupHSBarGraph(int id, int x, int y, int width, int height, const char16_t* label);
};

struct HLineData
{
	LH3DColor color; /* 0x0 */
	int       PointCount;
	float*    points;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	HLineData() : color(0), PointCount(0), points(NULL) {}

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	HLineData& operator=(const HLineData& other)
	{
		color = other.color;
		PointCount = other.PointCount;
		points = other.points;
		return *this;
	}
	// BW1W120 0040da30 BW1M119 01438d50
	void SetNum(int num);
};

struct SetupHLineGraph : public SetupButton
{
	LHLinkedList<HLineData*> LineDataList; /* 0x244 */
	float                    max_point;
	float                    min_point; /* 0x250 */
	bool                     percent_mode;

	// Override methods

	// BW1W120 0040dab0 BW1M119 01372820
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040e5a0 BW1M119 0149d930
	virtual void MouseUp(int x, int y, bool button_event);
	// BW1W120 0040e580 BW1M119 013e5ba0
	virtual void KeyDown(int key, int mod);
	// BW1W120 0040e5e0 BW1M119 01174420
	virtual void Reset();
	// BW1W120 0040e650 BW1M119 0151b1f0
	virtual void SetScale(float max_point, float min_point, bool centered_at_zero);
	// BW1W120 0040e730 BW1M119 0151a780
	virtual void AddLine(HLineData& line);
	// BW1W120 0040e7f0 BW1M119 012aaad0
	virtual void SetLine(int index, HLineData& line);
	// BW1W120 0040e850 BW1M119 0142ce90
	virtual void GetLine(int index, HLineData& result);

	// Constructors

	// BW1W120 0040e510 BW1M119 013e6fd0
	SetupHLineGraph(int id, int x, int y, int width, int height, const char16_t* label, bool percent_mode);
};

struct SetupTabButton : public SetupButton
{
	bool32_t      selected; /* 0x244 */
	bool32_t      first_in_row;
	bool32_t      last_in_row;
	unsigned long color; /* 0x250 */

	// Override methods

	// BW1W120 0040f3a0 BW1M119 0140fc20
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040f670 BW1M119 011d02c0
	virtual void KeyDown(int key, int mod);

	// Constructors

	// BW1W120 0040f5e0 BW1M119 01413250
	SetupTabButton(int id, int x, int y, int width, int height, const char16_t* label, int selected, int first_in_row,
	               int last_in_row);
};

struct SetupPicture : public SetupButton
{
	int           HoveredPictureIndex; /* 0x244 */
	Zoomer        zoomer;
	LH3DMaterial* material; /* 0x278 */
	unsigned long tint;
	bool          draggable; /* 0x280 */
	bool          dragging;
	int           picture_index;
	int           num_rows;
	int           NumPictures;
	bool          clickable; /* 0x290 */

	// Override methods

	// BW1W120 00410740 BW1M119 01412940
	virtual void SetFocus(bool focus);
	// BW1W120 0040fa20 BW1M119 0152ceb0
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 0040fa10 BW1M119 01407570
	virtual void Drag(int x, int y);
	// BW1W120 0040f6b0 BW1M119 inlined
	virtual void MouseDown(int x, int y, bool button_event);
	// BW1W120 0040f840 BW1M119 0142ea20
	virtual void MouseUp(int x, int y, bool button_event);
	// BW1W120 00410710 BW1M119 01361d70
	virtual void Click(int x, int y);
	// BW1W120 004106f0 BW1M119 013525c0
	virtual void KeyDown(int key, int mod);

	// Constructors

	// BW1W120 004105d0 BW1M119 01485d50
	SetupPicture(int id, int x, int y, LH3DMaterial* material, int picture_index, int num_rows, bool clickable,
	             int size, bool draggable);
};

struct SetupColourPicker : public SetupButton
{
	LH3DColor     Color0x244;
	LH3DMaterial* material;
	bool32_t      brightness_slider;
	float         SliderPosition; /* 0x250 */
	unsigned long color;

	// Override methods

	// BW1W120 00410880 BW1M119 0149d2c0
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 00410810 BW1M119 013760a0
	virtual void Drag(int x, int y);
	// BW1W120 004107f0 BW1M119 011a2660
	virtual void MouseDown(int x, int y, bool button_event);
	// BW1W120 00410800 BW1M119 0142f970
	virtual void MouseUp(int x, int y, bool button_event);
	// BW1W120 00410b50 BW1M119 0156c5a0
	virtual void Click(int x, int y);
	// BW1W120 00410b30 BW1M119 0117bea0
	virtual void KeyDown(int key, int mod);

	// Constructors

	// BW1W120 00410ac0 BW1M119 010af1b0
	SetupColourPicker(int id, int x, int y, int width, int height, int brightness_slider, LH3DMaterial* material);
};

struct SetupCheckBox : public SetupButton
{
	SETUP_TEXT_POSITION text_position; /* 0x244 */
	int                 style;
	bool                RadioButton;
	SetupRect           InnerRect; /* 0x250 */

	// Override methods

	// BW1W120 00410f90 BW1M119 015ac130
	virtual bool HitTest(int x, int y);
	// BW1W120 00410b80 BW1M119 010ae920
	virtual void Draw(bool hovered, bool selected);
	// BW1W120 00411020 BW1M119 01160800
	virtual void Click(int x, int y);
	// BW1W120 00411050 BW1M119 0150c300
	virtual void KeyDown(int key, int mod);

	// Constructors

	// BW1W120 00410f10 BW1M119 0111a4f0
	SetupCheckBox(int id, int x, int y, bool radio_button, int style, const char16_t* label, int size);
};

#endif /* BW1_DECOMP_ALEXMFC_INCLUDED_H */
