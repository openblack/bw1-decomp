#include "LH3DMenu.h"

#include <stdio.h>   /* For sprintf */
#include <string.h>  /* For strcat, strcpy, strlen */
#include <windows.h> /* For min, max */

#include <Lionhead/LHLib/ver5.0/LHKey.h>    /* For LH_MOD_SHIFT */
#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys */

#include "Font.h" /* For Font */

// BW1W120 00ef64f8 BW1M119 013421a8 (LHCombined Release)
extern LH3DVideo::Col lgreen;
// BW1W120 00ef64fc BW1M119 013421ac (LHCombined Release)
extern LH3DVideo::Col lred;
// BW1W120 00ef6500 BW1M119 013421b0 (LHCombined Release)
extern LH3DVideo::Col grey;
// BW1W120 00ef6504 BW1M119 013421b4 (LHCombined Release)
extern LH3DVideo::Col white;
// BW1W120 00ef6514 BW1M119 013421c4 (LHCombined Release)
extern LH3DVideo::Col yellow;
// BW1W120 00ef651c BW1M119 013421cc (LHCombined Release)
extern LH3DVideo::Col red;
// BW1W120 00ef6520 BW1M119 013421d0 (LHCombined Release)
extern LH3DVideo::Col black;
// BW1W120 00ef6768 BW1M119 011f6388 (LHCombined Release)
extern Font Fonts[FONT_SIZE_LAST];

#define BMAN_BUTTON_HEIGHT        12
#define BMAN_CENTRED_BOX_MARGIN   16
#define BMAN_CENTRED_BOX_HEIGHT   64
#define BMAN_CENTRED_TEXT1_Y      28
#define BMAN_CENTRED_TEXT2_Y      6
#define BMAN_BOX_HEIGHT           28
#define BMAN_TEXT_INSET           2
#define BMAN_BOX_TEXT_INSET       4
#define BMAN_POINT_SIZE           3
#define BMAN_SLIDER_KNOB_SIZE     4
#define BMAN_SLIDER_KNOB_MIN      6
#define BMAN_SLIDER_KNOB_TOP      2
#define BMAN_SLIDER_KNOB_BOTTOM   10
#define BMAN_SHADE_DARK           100
#define BMAN_SHADE_LIGHT          255
#define BMAN_POINT_PRESSED_COLOUR 0xff, 0x00, 0x00
#define BMAN_DIALOG_BUTTON_WIDTH  4
#define BMAN_DIALOG_BUTTON_ID     1
#define BMAN_DIALOG_BUTTON_GAP    (2 * BMAN_CHAR_SIZE)
#define BMAN_DIALOG_BUTTONS_Y     16
#define BMAN_DIALOG_MIN_WIDTH     11
#define ERROR_MESSAGE_MIN_WIDTH   5

BMan         bm;
static Prss* focus;

void BMan_CentredDouble(char* text1, LH3DVideo::Col* colour1, char* text2, LH3DVideo::Col* colour2, int min_width,
                        int cursor)
{
	bm.Cursor = cursor;
	bm.Text1 = text1;
	bm.CentredDouble = true;
	bm.Text2 = text2;
	bm.Colour1 = colour1;
	bm.Colour2 = colour2;
	bm.MinWidth = min_width * BMAN_CHAR_SIZE;
}

void BMan_DrawCentredDouble()
{
	int x = LH3DVideo::screen_width >> 1;
	int y = LH3DVideo::screen_height >> 1;
	int width =
		max(Fonts[FONT_SIZE_SMALL].Length(bm.Text1), Fonts[FONT_SIZE_SMALL].Length(bm.Text2)) + BMAN_CENTRED_BOX_MARGIN;
	width = max(width, bm.MinWidth);
	centred_box(width, BMAN_CENTRED_BOX_HEIGHT);
	Fonts[FONT_SIZE_SMALL].Mess(bm.Text1, x - (Fonts[FONT_SIZE_SMALL].Length(bm.Text1) >> 1), y - BMAN_CENTRED_TEXT1_Y,
	                            bm.Colour1, &grey, FONT_NO_CURSOR);
	Fonts[FONT_SIZE_SMALL].Mess(bm.Text2, x - (Fonts[FONT_SIZE_SMALL].Length(bm.Text2) >> 1), y - BMAN_CENTRED_TEXT2_Y,
	                            bm.Colour2, &grey, bm.Cursor);
}

void centred_box(int width, int height)
{
	int x = LH3DVideo::screen_width >> 1;
	int y = LH3DVideo::screen_height >> 1;
	draw_box(x - (width >> 1), y - (height >> 1), x + (width >> 1), y + (height >> 1), &grey);
}

void draw_box(int x1, int y1, int x2, int y2, LH3DVideo::Col* colour)
{
	long fill = LH3DVideo::RGB16(colour->r, colour->g, colour->b);
	long dark = LH3DVideo::RGB16((colour->r + BMAN_SHADE_DARK) >> 1, (colour->g + BMAN_SHADE_DARK) >> 1,
	                             (colour->b + BMAN_SHADE_DARK) >> 1);
	long light = LH3DVideo::RGB16((colour->r + BMAN_SHADE_LIGHT) >> 1, (colour->g + BMAN_SHADE_LIGHT) >> 1,
	                              (colour->b + BMAN_SHADE_LIGHT) >> 1);
	LH3DVideo::RectFill(x1, y1, x2, y1 + 1, light);
	LH3DVideo::RectFill(x1, y1 + 1, x1 + 1, y2, light);
	LH3DVideo::RectFill(x1 + 1, y2 - 1, x2, y2, dark);
	LH3DVideo::RectFill(x2 - 1, y1 + 1, x2, y2 - 1, dark);
	LH3DVideo::RectFill(x1 + 1, y1 + 1, x2 - 1, y2 - 1, fill);
}

void BMan_Add(Prss* owner, int x1, int y1, int x2, int y2, int data, int value, int value2, bool32_t pressed, int type,
              LH3DVideo::Col* colour, unsigned long id)
{
	if (bm.NumButtons < BMAN_MAX_BUTTONS)
	{
		BManButton* button = &bm.Buttons[bm.NumButtons];
		button->X1 = x1;
		button->Y1 = y1;
		button->X2 = x2;
		button->Y2 = y2;
		button->Data = data;
		button->Value = value;
		button->Value2 = value2;
		button->Pressed = pressed;
		button->Type = type;
		button->Colour = colour;
		button->Owner = owner;
		button->Id = id;
		bm.NumButtons++;
	}
}

void BMan_Zero()
{
	bm.CentredDouble = false;
	bm.NumButtons = 0;
	bm.Y = 0;
	bm.X = 0;
}

void BMan_Home()
{
	bm.X = 0;
	bm.Y = 0;
}

void BMan_SetLeftUp(int columns, int rows)
{
	bm.X = LH3DVideo::screen_width - columns * BMAN_CHAR_SIZE;
	bm.Y = LH3DVideo::screen_height - rows * BMAN_CHAR_SIZE;
}

void BMan_SetLeftDown(int columns, int rows)
{
	bm.X = LH3DVideo::screen_width - columns * BMAN_CHAR_SIZE;
	bm.Y = rows * BMAN_CHAR_SIZE;
}

void BMan_SetUp(int rows)
{
	bm.X = 0;
	bm.Y = LH3DVideo::screen_height - rows * BMAN_CHAR_SIZE;
}

void BMan_SetX(int x)
{
	bm.X = x;
}

void BMan_SetY(int y)
{
	bm.Y = y;
}

void BMan_Shunt(int x)
{
	bm.X += x;
}

void BMan_Line()
{
	bm.X = 0;
	bm.Y += BMAN_BUTTON_HEIGHT;
}

void BMan_Up()
{
	bm.X = 0;
	bm.Y -= BMAN_BUTTON_HEIGHT;
}

bool32_t BMan_Check(Prss* owner, int x, int y, int button)
{
	BManButton* found = NULL;
	for (int i = 0; i < bm.NumButtons; i++)
	{
		BManButton* b = &bm.Buttons[i];
		if (owner == b->Owner && x >= b->X1 && x < b->X2 && y >= b->Y1 && y < b->Y2)
			found = b;
	}
	if (found == NULL)
		return false;
	if (found->Id)
		owner->ClickFunction(found->Id, button, found->Data);
	return true;
}

void BMan_Btn(Prss* owner, int width, int data, bool32_t pressed, LH3DVideo::Col* colour, char* text, unsigned long id)
{
	BMan_Add(owner, bm.X, bm.Y, bm.X + width * BMAN_CHAR_SIZE, bm.Y + BMAN_BUTTON_HEIGHT, data, (int)text, 0, pressed,
	         text != NULL ? BMAN_TYPE_TEXT : BMAN_TYPE_BUTTON, colour, id);
	bm.X += width * BMAN_CHAR_SIZE;
}

void BMan_Spec(Prss* owner, int x1, int y1, int x2, int y2, int data, bool32_t pressed, LH3DVideo::Col* colour,
               char* text, unsigned long id)
{
	BMan_Add(owner, x1, y1, x2, y2, data, (int)text, 0, pressed, text != NULL ? BMAN_TYPE_TEXT : BMAN_TYPE_BUTTON,
	         colour, id);
}

void BMan_Blank(Prss* owner, int x1, int y1, int x2, int y2, int data, bool32_t pressed, LH3DVideo::Col* colour,
                unsigned long id)
{
	BMan_Add(owner, x1, y1, x2, y2, data, 0, 0, pressed, BMAN_TYPE_BLANK, colour, id);
}

void BMan_IntTxt(Prss* owner, int width, int data, bool32_t pressed, LH3DVideo::Col* colour, int value, char* text,
                 unsigned long id)
{
	BMan_Add(owner, bm.X, bm.Y, bm.X + width * BMAN_CHAR_SIZE, bm.Y + BMAN_BUTTON_HEIGHT, data, value, (int)text,
	         pressed, BMAN_TYPE_INT_TEXT, colour, id);
	bm.X += width * BMAN_CHAR_SIZE;
}

void BMan_TxtInt(Prss* owner, int width, int data, bool32_t pressed, LH3DVideo::Col* colour, char* text, int value,
                 unsigned long id)
{
	BMan_Add(owner, bm.X, bm.Y, bm.X + width * BMAN_CHAR_SIZE, bm.Y + BMAN_BUTTON_HEIGHT, data, value, (int)text,
	         pressed, BMAN_TYPE_TEXT_INT, colour, id);
	bm.X += width * BMAN_CHAR_SIZE;
}

void BMan_IntTxt10(Prss* owner, int width, int data, bool32_t pressed, LH3DVideo::Col* colour, int value, char* text,
                   unsigned long id)
{
	BMan_Add(owner, bm.X, bm.Y, bm.X + width * BMAN_CHAR_SIZE, bm.Y + BMAN_BUTTON_HEIGHT, data, value, (int)text,
	         pressed, BMAN_TYPE_INT_TEXT_10, colour, id);
	bm.X += width * BMAN_CHAR_SIZE;
}

void BMan_Box(Prss* owner, int width, int y, int data, bool32_t pressed, LH3DVideo::Col* colour, char* text,
              unsigned long id)
{
	int x = (LH3DVideo::screen_width - width) >> 1;
	BMan_Add(owner, x, y, x + width, y + BMAN_BOX_HEIGHT, data, (int)text, 0, pressed, BMAN_TYPE_BOX, colour, id);
}

void BMan_Small(Prss* owner, int width, int y, int data, bool32_t pressed, LH3DVideo::Col* colour, char* text,
                unsigned long id)
{
	int x = (LH3DVideo::screen_width - width) >> 1;
	BMan_Add(owner, x, y, x + width, y + BMAN_BOX_HEIGHT, data, (int)text, 0, pressed, BMAN_TYPE_SMALL, colour, id);
}

void BMan_Central(Prss* owner, int width, int y, int data, bool32_t pressed, LH3DVideo::Col* colour, char* text,
                  unsigned long id)
{
	int x = (LH3DVideo::screen_width - width) >> 1;
	BMan_Add(owner, x, y, x + width, y + BMAN_BOX_HEIGHT, data, (int)text, 0, pressed, BMAN_TYPE_CENTRAL, colour, id);
}

void BMan_Huge(Prss* owner, int width, int y, int data, bool32_t pressed, LH3DVideo::Col* colour, char* text,
               unsigned long id)
{
	int x = (LH3DVideo::screen_width - width) >> 1;
	BMan_Add(owner, x, y, x + width, y + BMAN_BOX_HEIGHT, data, (int)text, 0, pressed, BMAN_TYPE_HUGE, colour, id);
}

void BMan_Int(Prss* owner, int digits, int width, int data, bool32_t pressed, LH3DVideo::Col* colour, int value,
              unsigned long id)
{
	BMan_Add(owner, bm.X, bm.Y, bm.X + width * BMAN_CHAR_SIZE, bm.Y + BMAN_BUTTON_HEIGHT, data, value, 0, pressed,
	         BMAN_TYPE_INT, colour, id);
	bm.X += width * BMAN_CHAR_SIZE;
}

void BMan_Pnt(Prss* owner, int x, int y, int data, int value, bool32_t pressed, LH3DVideo::Col* colour,
              unsigned long id)
{
	BMan_Add(owner, x - BMAN_POINT_SIZE, y - BMAN_POINT_SIZE, x + BMAN_POINT_SIZE, y + BMAN_POINT_SIZE, data, value, 0,
	         pressed, BMAN_TYPE_POINT, colour, id);
}

void BMan_Slider(Prss* owner, int width, int data, LH3DVideo::Col* colour, int value, int max_value, char* text,
                 unsigned long id)
{
	int w = width * BMAN_CHAR_SIZE;
	int pos = w * value / max_value;
	if (pos < BMAN_SLIDER_KNOB_MIN)
		pos = BMAN_SLIDER_KNOB_MIN;
	if (pos > w - BMAN_SLIDER_KNOB_MIN)
		pos = w - BMAN_SLIDER_KNOB_MIN;
	BMan_Add(owner, bm.X, bm.Y, bm.X + w, bm.Y + BMAN_BUTTON_HEIGHT, data, (int)text, value, false,
	         text != NULL ? BMAN_TYPE_TEXT : BMAN_TYPE_BUTTON, colour, id);
	BMan_Add(owner, bm.X + pos - BMAN_SLIDER_KNOB_SIZE, bm.Y + BMAN_SLIDER_KNOB_TOP, bm.X + pos + BMAN_SLIDER_KNOB_SIZE,
	         bm.Y + BMAN_SLIDER_KNOB_BOTTOM, data, max_value, value, false, BMAN_TYPE_BUTTON, colour, id);
	bm.X += w;
}

void BMan_Display()
{
	char text[32];

	if (!bm.CentredDouble && !bm.NumButtons)
		return;
	if (LHSys::GetScreen().Lock(0))
		return;

	if (bm.CentredDouble)
		BMan_DrawCentredDouble();

	for (int i = 0; i < bm.NumButtons; i++)
	{
		BManButton* b = &bm.Buttons[i];
		if (b->X1 < 0 || b->X2 > LH3DVideo::screen_width || b->Y1 < 0 || b->Y2 > LH3DVideo::screen_height)
			continue;

		long fill = LH3DVideo::RGB16(b->Colour->r, b->Colour->g, b->Colour->b);
		if (b->Type != BMAN_TYPE_CENTRAL && b->Type != BMAN_TYPE_HUGE && b->Type != BMAN_TYPE_SMALL)
		{
			long dark = LH3DVideo::RGB16((b->Colour->r + BMAN_SHADE_DARK) >> 1, (b->Colour->g + BMAN_SHADE_DARK) >> 1,
			                             (b->Colour->b + BMAN_SHADE_DARK) >> 1);
			long light =
				LH3DVideo::RGB16((b->Colour->r + BMAN_SHADE_LIGHT) >> 1, (b->Colour->g + BMAN_SHADE_LIGHT) >> 1,
			                     (b->Colour->b + BMAN_SHADE_LIGHT) >> 1);
			if (b->Pressed)
			{
				LH3DVideo::RectFill(b->X1, b->Y2 - 1, b->X2, b->Y2, light);
				LH3DVideo::RectFill(b->X2 - 1, b->Y1, b->X2, b->Y2 - 1, light);
				LH3DVideo::RectFill(b->X1, b->Y1, b->X2 - 1, b->Y1 + 1, dark);
				LH3DVideo::RectFill(b->X1, b->Y1 + 1, b->X1 + 1, b->Y2 - 1, dark);
				if (b->Type == BMAN_TYPE_POINT)
					fill = LH3DVideo::RGB16(BMAN_POINT_PRESSED_COLOUR);
			}
			else
			{
				LH3DVideo::RectFill(b->X1, b->Y1, b->X2, b->Y1 + 1, light);
				LH3DVideo::RectFill(b->X1, b->Y1 + 1, b->X1 + 1, b->Y2, light);
				LH3DVideo::RectFill(b->X1 + 1, b->Y2 - 1, b->X2, b->Y2, dark);
				LH3DVideo::RectFill(b->X2 - 1, b->Y1 + 1, b->X2, b->Y2 - 1, dark);
			}
			if (b->Type != BMAN_TYPE_BLANK)
				LH3DVideo::RectFill(b->X1 + 1, b->Y1 + 1, b->X2 - 1, b->Y2 - 1, fill);
		}

		switch (b->Type)
		{
		case BMAN_TYPE_BUTTON:
		case BMAN_TYPE_POINT:
		case BMAN_TYPE_BLANK:
			break;
		case BMAN_TYPE_TEXT: {
			char* label = (char*)b->Value;
			Fonts[FONT_SIZE_SMALL].Mess(label, ((b->X1 + b->X2) >> 1) - (Fonts[FONT_SIZE_SMALL].Length(label) >> 1),
			                            b->Y1 + BMAN_TEXT_INSET, &black, b->Colour, FONT_NO_CURSOR);
			break;
		}
		case BMAN_TYPE_BOX:
			Fonts[FONT_SIZE_MEDIUM].Central((char*)b->Value, b->Y1 + BMAN_BOX_TEXT_INSET, &black, b->Colour);
			break;
		case BMAN_TYPE_SMALL:
			Fonts[FONT_SIZE_SMALL].Central((char*)b->Value, b->Y1 + BMAN_TEXT_INSET, b->Colour, &black);
			break;
		case BMAN_TYPE_CENTRAL:
			Fonts[FONT_SIZE_MEDIUM].Central((char*)b->Value, b->Y1 + BMAN_BOX_TEXT_INSET, b->Colour, &black);
			break;
		case BMAN_TYPE_HUGE:
			Fonts[FONT_SIZE_LARGE].Central((char*)b->Value, b->Y1 + BMAN_BOX_TEXT_INSET, b->Colour, &black);
			break;
		default:
			switch (b->Type)
			{
			case BMAN_TYPE_INT_TEXT:
				sprintf(text, "%d%s", b->Value, (char*)b->Value2);
				break;
			case BMAN_TYPE_TEXT_INT:
				sprintf(text, "%s%d", (char*)b->Value2, b->Value);
				break;
			case BMAN_TYPE_INT_TEXT_10:
				sprintf(text, "%.1f%s", b->Value / 10.0f, (char*)b->Value2);
				break;
			case BMAN_TYPE_INT:
				sprintf(text, "%d", b->Value);
				break;
			}
			Fonts[FONT_SIZE_SMALL].Mess(text, ((b->X1 + b->X2) >> 1) - (Fonts[FONT_SIZE_SMALL].Length(text) >> 1),
			                            b->Y1 + BMAN_TEXT_INSET, &black, b->Colour, FONT_NO_CURSOR);
			break;
		}
	}
	LHSys::GetScreen().Unlock();
}

void EditorProcessKey(LH_KEY key, uint16_t modifier)
{
	if (key && focus)
		focus->PrssKey(key, modifier);
}

void EditorProcessInputs()
{
	LHMouse& mouse = LHSys::GetMouse();
	if (mouse.ButtonPressed & LH_MOUSE_BUTTON_LEFT_DOWN)
	{
		LHCoord    pos = mouse.LButtonPressedPos();
		MouseInput input;
		mouse.ButtonPressed &= ~LH_MOUSE_BUTTON_LEFT_DOWN;
		input.Pos = pos;
		input.Button = LH_MOUSE_BUTTON_LEFT_DOWN;
		if (focus)
			focus->PrssMouse(&input);
	}
	if (mouse.ButtonPressed & LH_MOUSE_BUTTON_RIGHT_DOWN)
	{
		LHCoord    pos = mouse.Pos();
		MouseInput input;
		mouse.ButtonPressed &= ~LH_MOUSE_BUTTON_RIGHT_DOWN;
		input.Pos = pos;
		input.Button = LH_MOUSE_BUTTON_RIGHT_DOWN;
		if (focus)
			focus->PrssMouse(&input);
	}
}

void Prss::AddSub(Prss* sub)
{
	if (sub)
		Sub = sub;
}

void Prss::ProcessSubProcess()
{
	if (Sub)
		Sub = Sub->ProcessTurn();
}

void Prss::DisplaySubProcess()
{
	if (Sub)
		Sub->Display();
}

void Prss::Terminate()
{
	setfocus(Parent);
	Active = false;
}

void setfocus(Prss* prss)
{
	focus = prss;
}

void Prss::PrssKey(LH_KEY key, uint16_t modifier)
{
	if (key == KB_ESC)
		Terminate();
}

void Prss::PrssMouse(MouseInput* input)
{
	if (input->Button)
		BMan_Check(this, input->Pos.x, input->Pos.y, input->Button);
}

ErrorMessage errormessage;
Inp          inputmessage;
UserWarner   userwarner;

void error_message(Prss* parent, char* text)
{
	errormessage.Init(parent, text);
	parent->AddSub(&errormessage);
}

void error_cat(Prss* parent, char* text1, char* text2)
{
	char text[sizeof(errormessage.Text)];
	strcpy(text, text1);
	strcat(text, text2);
	errormessage.Init(parent, text);
	parent->AddSub(&errormessage);
}

void ErrorMessage::Init(Prss* parent, char* text)
{
	Parent = parent;
	Sub = NULL;
	Active = true;
	strcpy(Text, text);
	setfocus(this);
}

Prss* ErrorMessage::ProcessTurn()
{
	return Active ? this : NULL;
}

void ErrorMessage::Display()
{
	int x = LH3DVideo::screen_width >> 1;
	int y = LH3DVideo::screen_height >> 1;
	BMan_CentredDouble(Text, &red, "Press any key", &white, ERROR_MESSAGE_MIN_WIDTH, FONT_NO_CURSOR);
	BMan_SetY(y + BMAN_DIALOG_BUTTONS_Y);
	BMan_SetX(x - BMAN_DIALOG_BUTTON_WIDTH * BMAN_CHAR_SIZE / 2);
	BMan_Btn(this, BMAN_DIALOG_BUTTON_WIDTH, INP_RESULT_CANCEL, false, &lgreen, "OK", BMAN_DIALOG_BUTTON_ID);
}

void ErrorMessage::PrssKey(LH_KEY key, uint16_t modifier)
{
	Terminate();
	Parent->Sub = NULL;
}

void ErrorMessage::ClickFunction(int id, int button, int data)
{
	Terminate();
	Parent->Sub = NULL;
}

void input_message(Prss* parent, long id, char* title, int max_length, char* text, int data)
{
	inputmessage.Init(parent, id, title, max_length, text, data);
	parent->AddSub(&inputmessage);
}

void Inp::Init(Prss* parent, long id, char* title, int max_length, char* text, int data)
{
	Parent = parent;
	Id = id;
	Sub = NULL;
	Active = true;
	Title = title;
	if (text)
	{
		Cursor = strlen(text);
		strcpy(Text, text);
	}
	else
	{
		Cursor = 0;
		Text[0] = '\0';
	}
	Data = data;
	MaxLength = min(max_length, (int)sizeof(Text));
	setfocus(this);
}

Prss* Inp::ProcessTurn()
{
	return Active ? this : NULL;
}

void Inp::Display()
{
	int x = LH3DVideo::screen_width >> 1;
	int y = LH3DVideo::screen_height >> 1;
	BMan_SetY(y + BMAN_DIALOG_BUTTONS_Y);
	BMan_SetX(x - BMAN_DIALOG_BUTTON_WIDTH * BMAN_CHAR_SIZE - BMAN_DIALOG_BUTTON_GAP / 2);
	BMan_Btn(this, BMAN_DIALOG_BUTTON_WIDTH, INP_RESULT_OK, false, &lgreen, "OK", BMAN_DIALOG_BUTTON_ID);
	BMan_Shunt(BMAN_DIALOG_BUTTON_GAP);
	BMan_Btn(this, BMAN_DIALOG_BUTTON_WIDTH, INP_RESULT_CANCEL, false, &lred, "cancel", BMAN_DIALOG_BUTTON_ID);
	BMan_CentredDouble(Title, &white, Text, &yellow, BMAN_DIALOG_MIN_WIDTH, Cursor);
}

void Inp::PrssKey(LH_KEY key, uint16_t modifier)
{
	switch (key)
	{
	case KB_ESC:
		ClickFunction(0, 0, INP_RESULT_CANCEL);
		break;
	case KB_RETURN:
		ClickFunction(0, 0, INP_RESULT_OK);
		break;
	case KB_BACKSPACE:
		if (Cursor > 0)
		{
			Cursor--;
			for (int i = Cursor; i < (int)sizeof(Text) - 1; i++)
				Text[i] = Text[i + 1];
		}
		break;
	case KB_DELETE:
		if (Cursor < (int)strlen(Text))
		{
			for (int i = Cursor; i < (int)sizeof(Text) - 1; i++)
				Text[i] = Text[i + 1];
		}
		break;
	case KB_HOME:
		Cursor = 0;
		break;
	case KB_END:
		Cursor = strlen(Text);
		break;
	case KB_LEFT:
		if (Cursor > 0)
			Cursor--;
		break;
	case KB_RIGHT:
		if (Cursor < (int)strlen(Text))
			Cursor++;
		break;
	default: {
		char c;
		if ((uint8_t)(modifier & LH_MOD_SHIFT))
			c = LHSys::GetKeyboard().LHKeyToAscii(key, true);
		else
			c = LHSys::GetKeyboard().LHKeyToAscii(key, false);
		if (c >= ' ' && c <= '~' && c != '\0' && Cursor < MaxLength - 1)
		{
			for (int i = sizeof(Text) - 1; i > Cursor; i--)
				Text[i] = Text[i - 1];
			Text[Cursor] = c;
			Text[sizeof(Text) - 1] = '\0';
			Cursor++;
		}
		break;
	}
	}
}

void Inp::ClickFunction(int id, int button, int data)
{
	Terminate();
	Parent->Sub = NULL;
	if (data != INP_RESULT_CANCEL)
		Parent->StringFunction(Id, Text, Data);
}

void user_warner(Prss* parent, long id, char* text1, char* text2)
{
	userwarner.Init(parent, id, text1, text2);
	parent->AddSub(&userwarner);
}

void UserWarner::Init(Prss* parent, long id, char* text1, char* text2)
{
	Parent = parent;
	Id = id;
	Sub = NULL;
	Active = true;
	Text1 = text1;
	Text2 = text2;
	setfocus(this);
}

Prss* UserWarner::ProcessTurn()
{
	return Active ? this : NULL;
}

void UserWarner::Display()
{
	int x = LH3DVideo::screen_width >> 1;
	int y = LH3DVideo::screen_height >> 1;
	BMan_CentredDouble(Text1, &white, Text2, &red, BMAN_DIALOG_MIN_WIDTH, FONT_NO_CURSOR);
	BMan_SetY(y + BMAN_DIALOG_BUTTONS_Y);
	BMan_SetX(x - BMAN_DIALOG_BUTTON_WIDTH * BMAN_CHAR_SIZE - BMAN_DIALOG_BUTTON_GAP / 2);
	BMan_Btn(this, BMAN_DIALOG_BUTTON_WIDTH, USER_WARNER_RESULT_YES, false, &lgreen, "yes", BMAN_DIALOG_BUTTON_ID);
	BMan_SetX(x + BMAN_DIALOG_BUTTON_GAP / 2);
	BMan_Btn(this, BMAN_DIALOG_BUTTON_WIDTH, USER_WARNER_RESULT_NO, false, &lred, "no", BMAN_DIALOG_BUTTON_ID);
}

void UserWarner::PrssKey(LH_KEY key, uint16_t modifier)
{
	if (key == KB_Y || key == KB_ENTER)
		ClickFunction(0, 0, USER_WARNER_RESULT_YES);
	else
		ClickFunction(0, 0, USER_WARNER_RESULT_NO);
}

void UserWarner::ClickFunction(int id, int button, int data)
{
	Terminate();
	Parent->Sub = NULL;
	if (data == USER_WARNER_RESULT_YES)
		Parent->ClickFunction(Id, 0, 0);
}
