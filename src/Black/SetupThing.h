#ifndef BW1_DECOMP_SETUP_THING_INCLUDED_H
#define BW1_DECOMP_SETUP_THING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h>  /* For char16_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <re_common.h>                              /* For bool32_t */

#include "Lionhead/LH3DLib/development/LH3DText.h" /* For enum TEXTJUSTIFY */
#include "SetupRect.h"                             /* For struct SetupRect */

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

// Forward Declares

struct GatheringText;
struct LH3DMaterial;

struct SetupThing
{
	LH3DMaterial*  ui_shadow_material; /* 0x0 */
	uint8_t        field_0x4[0x34];
	SetupRect      SetupRect_00c4ccb8; /* 0x38 */
	uint8_t        field_0x48[0x10];
	LH3DColor      LH3DColor_ARRAY_00c4ccd8[0x5]; /* 0x58 */
	uint8_t        field_0x6c[0xc];
	LH3DColor      LH3DColor_00c4ccf8; /* 0x78 */
	uint8_t        field_0x7c[0x4];
	bool32_t       DAT_00c4cd00; /* 0x80 */
	uint8_t        field_0x84[0x18];
	uint8_t        SetupBox; /* 0x9c */
	uint8_t        field_0xa0[0xc];
	GatheringText* PTR_00c4cd2c;        /* 0xac */
	char16_t       WCHAR_00c4cd30[0x4]; /* 0xb0 */

	// Static methods

	// BW1W120 00411690 BW1M100 10135530 SetupThing::GetTextHeight(int, int, int, int, int, bool, wchar_t *, int)
	static float GetTextHeight(int param_1, int param_2, int param_3, int param_4, int param_5, bool param_6,
	                           const char16_t* text, int param_8);
	// BW1W120 00411720 BW1M100 1016ab60 SetupThing::GetTextWidth(wchar_t *, float, int, float)
	static float GetTextWidth(const char16_t* text, float size, int param_3, float param_4);
	// BW1W120 00411750 BW1M100 1016d490 SetupThing::DrawTextWrap(int, int, int, int, int, bool, wchar_t *, int, LH3DColor *, bool, bool)
	static float DrawTextWrap(int x_min, int y_min, int x_max, int y_max, int param_5, bool param_6,
	                          const char16_t* text, int param_8, const LH3DColor* color, bool param_10, bool param_11);
	// BW1W120 004119b0 BW1M100 103e1a40 SetupThing::DrawText(int, int, int, TEXTJUSTIFY, wchar_t *, int, LH3DColor *, int)
	static float DrawText(int x, int y, int width, TEXTJUSTIFY justify, const char16_t* text, int size,
	                      const LH3DColor* p_color, int param_8);
	// BW1W120 00411b40 BW1M100 103e4a50 SetupThing::adjust(int &, int &)
	static float adjust(int* x, int* y);
	// BW1W120 00411c30 BW1M100 104f62a0 SetupThing::unadjust(int &, int &)
	static float unadjust(int* x, int* y);
	// BW1W120 00411e70 BW1M100 104f2b70 SetupThing::adjusty(int)
	static int adjusty(int y);
	// BW1W120 00412030 BW1M100 10174f00 SetupThing::unadjustsize(float)
	static float unadjustsize(float size);
	// BW1W120 00412150 BW1M100 105882d0 SetupThing::DrawBigButton(int, int, bool, bool, int, BBSTYLE, bool, int, int)
	static void DrawBigButton(int x, int y, bool centered, bool interacted, int size, BBSTYLE style, bool shadowed,
	                          int clip_y_start, int clip_y_end);
	// BW1W120 004125a0 BW1M100 101a2290 SetupThing::DrawLine(int, int, int, int, unsigned long, int, float, float)
	static void DrawLine(int param_1, int param_2, int param_3, int param_4, LH3DColor color, int adjust, float param_7,
	                     float inv_w);
	// BW1W120 00412980 BW1M100 10048980 SetupThing::DrawBox(int, int, int, int, float, float, float, float, LH3DMaterial *, LH3DColor *, int, int, int, bool, float)
	static void DrawBox(int x_min, int y_min, int x_max, int y_max, float u_min, float v_min, float u_max, float v_max,
	                    LH3DMaterial* material, const LH3DColor* color, int adjust, int clip_y_start, int clip_y_end,
	                    bool depth_test, float inv_w);
	// BW1W120 00412eb0 BW1M100 1010f3e0 SetupThing::DrawQuad(int, int, int, int, int, int, int, int, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long)
	static void DrawQuad(int x_1, int y_1, int x_2, int y_2, int x_3, int y_3, int x_4, int y_4, LH3DColor color_1,
	                     LH3DColor color_2, LH3DColor color_3, LH3DColor color_4, uint32_t use_alpha, uint32_t adjust);
	// BW1W120 004132c0 BW1M100 1035b610 SetupThing::DrawBox(int, int, int, int, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long)
	static void DrawBox(int x_min, int y_min, int x_max, int y_max, LH3DColor color_1, LH3DColor color_2,
	                    LH3DColor color_3, LH3DColor color_4, uint32_t use_alpha, uint32_t adjust);
	// BW1W120 00413360 BW1M100 1013c530 SetupThing::DrawTab(int, int, int, int, int, int, int, wchar_t *, int, int)
	static void DrawTab(int x_min, int y_min, int x_max, int y_max, bool selected, bool first_in_row, bool last_in_row,
	                    const char16_t* label, LH3DColor color, bool no_blend);
	// BW1W120 00413c20 BW1M100 10594590 SetupThing::DrawBevBox(int, int, int, int, int, int, int, unsigned long)
	static void DrawBevBox(int x_min, int y_min, int x_max, int y_max, uint32_t style, uint32_t outline_thickness,
	                       uint32_t horizontal_outline, LH3DColor color);
};

#endif /* BW1_DECOMP_SETUP_THING_INCLUDED_H */
