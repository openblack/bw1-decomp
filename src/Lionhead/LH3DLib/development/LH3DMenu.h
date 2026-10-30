#ifndef BW1_DECOMP_LH3D_MENU_INCLUDED_H
#define BW1_DECOMP_LH3D_MENU_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stdint.h>    /* For uint16_t */
#include <re_common.h> /* For bool32_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */

#include "LH3DVideo.h" /* For LH3DVideo::Col */
#include "Prss.h"      /* For class Prss */

#define BMAN_MAX_BUTTONS 1024
#define BMAN_CHAR_SIZE   12

enum BMAN_TYPE
{
	BMAN_TYPE_BUTTON,
	BMAN_TYPE_POINT,
	BMAN_TYPE_TEXT,
	BMAN_TYPE_INT,
	BMAN_TYPE_BOX,
	BMAN_TYPE_INT_TEXT,
	BMAN_TYPE_TEXT_INT,
	BMAN_TYPE_INT_TEXT_10,
	BMAN_TYPE_CENTRAL,
	BMAN_TYPE_HUGE,
	BMAN_TYPE_SMALL,
	BMAN_TYPE_BLANK,
	BMAN_TYPE_LAST
};

enum INP_RESULT
{
	INP_RESULT_CANCEL,
	INP_RESULT_OK
};

enum USER_WARNER_RESULT
{
	USER_WARNER_RESULT_YES,
	USER_WARNER_RESULT_NO
};

struct BManButton
{
	int             X1;
	int             Y1;
	int             X2;
	int             Y2;
	int             Data;
	int             Value;
	int             Value2;
	bool32_t        Pressed;
	int             Type;
	LH3DVideo::Col* Colour;
	Prss*           Owner;
	unsigned long   Id;
};
static_assert(sizeof(BManButton) == 0x30, "Data type is of wrong size");

struct BMan
{
	int             X;
	int             Y;
	int             NumButtons;
	bool32_t        CentredDouble;
	int             Cursor;
	int             MinWidth;
	LH3DVideo::Col* Colour1;
	LH3DVideo::Col* Colour2;
	BManButton      Buttons[BMAN_MAX_BUTTONS];
	char*           Text1;
	char*           Text2;
};
static_assert(sizeof(BMan) == 0xc028, "Data type is of wrong size");

class ErrorMessage : public Prss
{
public:
	char Text[128];

	// Override methods

	// BW1W120 00842300 BW1M119 010619f0 (LHCombined Release)
	virtual Prss* ProcessTurn();
	// BW1W120 00842310 BW1M119 010618f0 (LHCombined Release)
	virtual void Display();
	// BW1W120 00842380 BW1M119 01061870 (LHCombined Release)
	virtual void PrssKey(LH_KEY key, uint16_t modifier);
	// BW1W120 008423a0 BW1M119 010617f0 (LHCombined Release)
	virtual void ClickFunction(int id, int button, int data);

	// Non-virtual methods

	// BW1W120 008422b0 BW1M119 01061a40 (LHCombined Release)
	void Init(Prss* parent, char* text);
};
static_assert(sizeof(ErrorMessage) == 0x90, "Data type is of wrong size");

class Inp : public Prss
{
public:
	int   Cursor;
	int   MaxLength;
	int   Data;
	char  Text[64];
	char* Title;
	long  Id;

	// Override methods

	// BW1W120 00842490 BW1M119 01061620 (LHCombined Release)
	virtual Prss* ProcessTurn();
	// BW1W120 008424a0 BW1M119 010614b0 (LHCombined Release)
	virtual void Display();
	// BW1W120 00842530 BW1M119 01061100 (LHCombined Release)
	virtual void PrssKey(LH_KEY key, uint16_t modifier);
	// BW1W120 008427a0 BW1M119 01061050 (LHCombined Release)
	virtual void ClickFunction(int id, int button, int data);

	// Non-virtual methods

	// BW1W120 00842400 BW1M119 01061660 (LHCombined Release)
	void Init(Prss* parent, long id, char* title, int max_length, char* text, int data);
};
static_assert(sizeof(Inp) == 0x64, "Data type is of wrong size");

class UserWarner : public Prss
{
public:
	char* Text1;
	char* Text2;
	long  Id;

	// Override methods

	// BW1W120 00842850 BW1M119 01060f10 (LHCombined Release)
	virtual Prss* ProcessTurn();
	// BW1W120 00842860 BW1M119 01060db0 (LHCombined Release)
	virtual void Display();
	// BW1W120 008428f0 BW1M119 01060d00 (LHCombined Release)
	virtual void PrssKey(LH_KEY key, uint16_t modifier);
	// BW1W120 00842920 BW1M119 01060c50 (LHCombined Release)
	virtual void ClickFunction(int id, int button, int data);

	// Non-virtual methods

	// BW1W120 00842810 BW1M119 01060f60 (LHCombined Release)
	void Init(Prss* parent, long id, char* text1, char* text2);
};
static_assert(sizeof(UserWarner) == 0x1c, "Data type is of wrong size");

// BW1W120 008412b0 BW1M119 010639d0 (LHCombined Release)
void BMan_CentredDouble(char* text1, LH3DVideo::Col* colour1, char* text2, LH3DVideo::Col* colour2, int min_width,
                        int cursor);
// BW1W120 00841300 BW1M119 01063880 (LHCombined Release)
void BMan_DrawCentredDouble();
// BW1W120 008413f0 BW1M119 010636f0 (LHCombined Release)
void centred_box(int width, int height);
// BW1W120 00841430 BW1M119 01063570 (LHCombined Release)
void draw_box(int x1, int y1, int x2, int y2, LH3DVideo::Col* colour);
// BW1W120 00841520 BW1M119 010634a0 (LHCombined Release)
void BMan_Add(Prss* owner, int x1, int y1, int x2, int y2, int data, int value, int value2, bool32_t pressed, int type,
              LH3DVideo::Col* colour, unsigned long id);
// BW1W120 008415c0 BW1M119 01063430 (LHCombined Release)
void BMan_Home();
// BW1W120 008415d0 BW1M119 010633d0 (LHCombined Release)
void BMan_SetLeftUp(int columns, int rows);
// BW1W120 00841600 BW1M119 01063380 (LHCombined Release)
void BMan_SetLeftDown(int columns, int rows);
// BW1W120 00841630 BW1M119 01063330 (LHCombined Release)
void BMan_SetUp(int rows);
// BW1W120 00841660 BW1M119 01063300 (LHCombined Release)
void BMan_SetX(int x);
// BW1W120 00841670 BW1M119 010632d0 (LHCombined Release)
void BMan_SetY(int y);
// BW1W120 00841680 BW1M119 01063290 (LHCombined Release)
void BMan_Shunt(int x);
// BW1W120 008416a0 BW1M119 01063250 (LHCombined Release)
void BMan_Line();
// BW1W120 008416c0 BW1M119 01063210 (LHCombined Release)
void BMan_Up();
// BW1W120 008416e0 BW1M119 01063120 (LHCombined Release)
bool32_t BMan_Check(Prss* owner, int x, int y, int button);
// BW1W120 00841750 BW1M119 01063060 (LHCombined Release)
void BMan_Btn(Prss* owner, int width, int data, bool32_t pressed, LH3DVideo::Col* colour, char* text, unsigned long id);
// BW1W120 008417b0 BW1M119 01062fd0 (LHCombined Release)
void BMan_Spec(Prss* owner, int x1, int y1, int x2, int y2, int data, bool32_t pressed, LH3DVideo::Col* colour,
               char* text, unsigned long id);
// BW1W120 00841800 BW1M119 01062f50 (LHCombined Release)
void BMan_Blank(Prss* owner, int x1, int y1, int x2, int y2, int data, bool32_t pressed, LH3DVideo::Col* colour,
                unsigned long id);
// BW1W120 00841840 BW1M119 01062e90 (LHCombined Release)
void BMan_IntTxt(Prss* owner, int width, int data, bool32_t pressed, LH3DVideo::Col* colour, int value, char* text,
                 unsigned long id);
// BW1W120 008418a0 BW1M119 01062dd0 (LHCombined Release)
void BMan_TxtInt(Prss* owner, int width, int data, bool32_t pressed, LH3DVideo::Col* colour, char* text, int value,
                 unsigned long id);
// BW1W120 00841900 BW1M119 01062d10 (LHCombined Release)
void BMan_IntTxt10(Prss* owner, int width, int data, bool32_t pressed, LH3DVideo::Col* colour, int value, char* text,
                   unsigned long id);
// BW1W120 00841960 BW1M119 01062c60 (LHCombined Release)
void BMan_Box(Prss* owner, int width, int y, int data, bool32_t pressed, LH3DVideo::Col* colour, char* text,
              unsigned long id);
// BW1W120 008419b0 BW1M119 01062bb0 (LHCombined Release)
void BMan_Small(Prss* owner, int width, int y, int data, bool32_t pressed, LH3DVideo::Col* colour, char* text,
                unsigned long id);
// BW1W120 00841a00 BW1M119 01062b00 (LHCombined Release)
void BMan_Central(Prss* owner, int width, int y, int data, bool32_t pressed, LH3DVideo::Col* colour, char* text,
                  unsigned long id);
// BW1W120 00841a50 BW1M119 01062a50 (LHCombined Release)
void BMan_Huge(Prss* owner, int width, int y, int data, bool32_t pressed, LH3DVideo::Col* colour, char* text,
               unsigned long id);
// BW1W120 00841aa0 BW1M119 010629a0 (LHCombined Release)
void BMan_Int(Prss* owner, int digits, int width, int data, bool32_t pressed, LH3DVideo::Col* colour, int value,
              unsigned long id);
// BW1W120 00841b00 BW1M119 01062900 (LHCombined Release)
void BMan_Pnt(Prss* owner, int x, int y, int data, int value, bool32_t pressed, LH3DVideo::Col* colour,
              unsigned long id);
// BW1W120 00841b50 BW1M119 010627c0 (LHCombined Release)
void BMan_Slider(Prss* owner, int width, int data, LH3DVideo::Col* colour, int value, int max_value, char* text,
                 unsigned long id);

// BW1W120 008421f0 BW1M119 01061b80 (LHCombined Release)
void error_message(Prss* parent, char* text);
// BW1W120 00842220 BW1M119 01061ad0 (LHCombined Release)
void error_cat(Prss* parent, char* text1, char* text2);
// BW1W120 008423c0 BW1M119 01061750 (LHCombined Release)
void input_message(Prss* parent, long id, char* title, int max_length, char* text, int data);
// BW1W120 008427e0 BW1M119 01060fc0 (LHCombined Release)
void user_warner(Prss* parent, long id, char* text1, char* text2);

#endif /* BW1_DECOMP_LH3D_MENU_INCLUDED_H */
