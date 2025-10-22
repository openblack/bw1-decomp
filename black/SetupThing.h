#ifndef BW1_DECOMP_SETUP_THING_INCLUDED_H
#define BW1_DECOMP_SETUP_THING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "GatheringText.h" /* For enum TEXTJUSTIFY */
#include "SetupRect.h" /* For struct SetupRect */

// Forward Declares

struct GatheringText;
struct LH3DMaterial;

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
static_assert(sizeof(enum BBSTYLE) == 0x4, "Data type is of wrong size");

static const char* BBSTYLE_strs[_BBSTYLE_COUNT] = {
  "BBSTYLE_CHECK_BOX_OFF",
  "BBSTYLE_CHECK_BOX_ON",
  "BBSTYLE_LEFT_ARROW",
  "BBSTYLE_RIGHT_ARROW",
  "BBSTYLE_ROTATION",
  "BBSTYLE_SPEECH",
  "BBSTYLE_NO_SPEECH",
  "BBSTYLE_SPEECH_ARROW",
  "BBSTYLE_EXCLAIM_ARROW",
  "BBSTYLE_ENVELOPE_ARROW",
  "BBSTYLE_ENVELOPE",
  "BBSTYLE_WEATHER_SUNNY",
  "BBSTYLE_WEATHER_PARTIALLY_CLOUDY",
  "BBSTYLE_WEATHER_CLOUDY",
  "BBSTYLE_WEATHER_SCATTERED_SHOWERS",
  "BBSTYLE_WEATHER_SHOWERS",
  "BBSTYLE_WEATHER_SCATTERED_FLURRIES",
  "BBSTYLE_WEATHER_FLURRIES",
  "BBSTYLE_WEATHER_HEAVY_FLURRIES",
  "BBSTYLE_WEATHER_THUNDER_STORMS",
  "BBSTYLE_0x14",
};

struct SetupThing
{
  struct LH3DMaterial* ui_shadow_material;  /* 0x0 */
  uint8_t field_0x4[0x34];
  struct SetupRect SetupRect_00c4ccb8;  /* 0x38 */
  uint8_t field_0x48[0x10];
  struct LH3DColor LH3DColor_ARRAY_00c4ccd8[0x5];  /* 0x58 */
  uint8_t field_0x6c[0xc];
  struct LH3DColor LH3DColor_00c4ccf8;  /* 0x78 */
  uint8_t field_0x7c[0x4];
  bool32_t DAT_00c4cd00;  /* 0x80 */
  uint8_t field_0x84[0x18];
  uint8_t SetupBox;  /* 0x9c */
  uint8_t field_0xa0[0xc];
  struct GatheringText* PTR_00c4cd2c;  /* 0xac */
  char16_t WCHAR_00c4cd30[0x4];  /* 0xb0 */
};
static_assert(sizeof(struct SetupThing) == 0xb8, "Data type is of wrong size");

// Static methods

// win1.41 00411690 mac 10135530 SetupThing::GetTextHeight(int, int, int, int, int, bool, wchar_t *, int)
float __cdecl GetTextHeight__10SetupThingFiiiiibPwi(int param_1, int param_2, int param_3, int param_4, int param_5, bool param_6, const char16_t* text, int param_8) asm("?GetTextHeight@SetupThing@@SAMHHHHH_NPA_WH@Z");
// win1.41 00411720 mac 1016ab60 SetupThing::GetTextWidth(wchar_t *, float, int, float)
float __cdecl GetTextWidth__10SetupThingFPwfif(const char16_t* text, float size, int param_3, float param_4) asm("?GetTextWidth@SetupThing@@SAMPA_WMHM@Z");
// win1.41 00411750 mac 1016d490 SetupThing::DrawTextWrap(int, int, int, int, int, bool, wchar_t *, int, LH3DColor *, bool, bool)
float __cdecl DrawTextWrap__10SetupThingFiiiiibPwiP9LH3DColorbb(int x_min, int y_min, int x_max, int y_max, int param_5, bool param_6, const char16_t* text, int param_8, const struct LH3DColor* color, bool param_10, bool param_11) asm("?DrawTextWrap@SetupThing@@SAMHHHHH_NPA_WHPAULH3DColor@@00@Z");
// win1.41 004119b0 mac 103e1a40 SetupThing::DrawText(int, int, int, TEXTJUSTIFY, wchar_t *, int, LH3DColor *, int)
float __cdecl DrawText__10SetupThingFiii11TEXTJUSTIFYPwiP9LH3DColori(int x, int y, int width, enum TEXTJUSTIFY justify, const char16_t* text, int size, const struct LH3DColor* p_color, int param_8) asm("?DrawText@SetupThing@@SAMHHHW4TEXTJUSTIFY@@PA_WHPAULH3DColor@@H@Z");
// win1.41 00411b40 mac 103e4a50 SetupThing::adjust(int &, int &)
float __cdecl adjust__10SetupThingFRiRi(int* x, int* y) asm("?adjust@SetupThing@@SAMAAH0@Z");
// win1.41 00411c30 mac 104f62a0 SetupThing::unadjust(int &, int &)
float __cdecl unadjust__10SetupThingFRiRi(int* x, int* y) asm("?unadjust@SetupThing@@SAMAAH0@Z");
// win1.41 00411e70 mac 104f2b70 SetupThing::adjusty(int)
int __cdecl adjusty__10SetupThingFi(int y) asm("?adjusty@SetupThing@@SAHH@Z");
// win1.41 00412030 mac 10174f00 SetupThing::unadjustsize(float)
float __cdecl unadjustsize__10SetupThingFf(float size) asm("?unadjustsize@SetupThing@@SAMM@Z");
// win1.41 00412150 mac 105882d0 SetupThing::DrawBigButton(int, int, bool, bool, int, BBSTYLE, bool, int, int)
void __cdecl DrawBigButton__10SetupThingFiibbi7BBSTYLEbii(int x, int y, bool centered, bool interacted, int size, enum BBSTYLE style, bool shadowed, int clip_y_start, int clip_y_end) asm("?DrawBigButton@SetupThing@@SAXHH_N0HW4BBSTYLE@@0HH@Z");
// win1.41 004125a0 mac 101a2290 SetupThing::DrawLine(int, int, int, int, unsigned long, int, float, float)
void __cdecl DrawLine__10SetupThingFiiiiUliff(int param_1, int param_2, int param_3, int param_4, struct LH3DColor color, int adjust, float param_7, float inv_w) asm("?DrawLine@SetupThing@@SAXHHHHKHMM@Z");
// win1.41 00412980 mac 10048980 SetupThing::DrawBox(int, int, int, int, float, float, float, float, LH3DMaterial *, LH3DColor *, int, int, int, bool, float)
void __cdecl DrawBox__10SetupThingFiiiiffffP12LH3DMaterialP9LH3DColoriiibf(int x_min, int y_min, int x_max, int y_max, float u_min, float v_min, float u_max, float v_max, struct LH3DMaterial* material, const struct LH3DColor* color, int adjust, int clip_y_start, int clip_y_end, bool depth_test, float inv_w) asm("?DrawBox@SetupThing@@SAXHHHHMMMMPAULH3DMaterial@@PAULH3DColor@@HHH_NM@Z");
// win1.41 00412eb0 mac 1010f3e0 SetupThing::DrawQuad(int, int, int, int, int, int, int, int, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long)
void __cdecl DrawQuad__10SetupThingFiiiiiiiiUlUlUlUlUlUl(int x_1, int y_1, int x_2, int y_2, int x_3, int y_3, int x_4, int y_4, struct LH3DColor color_1, struct LH3DColor color_2, struct LH3DColor color_3, struct LH3DColor color_4, uint32_t use_alpha, uint32_t adjust) asm("?DrawQuad@SetupThing@@SAXHHHHHHHHKKKKKK@Z");
// win1.41 004132c0 mac 1035b610 SetupThing::DrawBox(int, int, int, int, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long, unsigned long)
void __cdecl DrawBox__10SetupThingFiiiiUlUlUlUlUlUl(int x_min, int y_min, int x_max, int y_max, struct LH3DColor color_1, struct LH3DColor color_2, struct LH3DColor color_3, struct LH3DColor color_4, uint32_t use_alpha, uint32_t adjust) asm("?DrawBox@SetupThing@@SAXHHHHKKKKKK@Z");
// win1.41 00413360 mac 1013c530 SetupThing::DrawTab(int, int, int, int, int, int, int, wchar_t *, int, int)
void __cdecl DrawTab__10SetupThingFiiiiiiiPwii(int x_min, int y_min, int x_max, int y_max, bool selected, bool first_in_row, bool last_in_row, const char16_t* label, struct LH3DColor color, bool no_blend) asm("?DrawTab@SetupThing@@SAXHHHHHHHPA_WHH@Z");
// win1.41 00413c20 mac 10594590 SetupThing::DrawBevBox(int, int, int, int, int, int, int, unsigned long)
void __cdecl DrawBevBox__10SetupThingFiiiiiiiUl(int x_min, int y_min, int x_max, int y_max, uint32_t style, uint32_t outline_thickness, uint32_t horizontal_outline, struct LH3DColor color) asm("?DrawBevBox@SetupThing@@SAXHHHHHHHK@Z");

#endif /* BW1_DECOMP_SETUP_THING_INCLUDED_H */
