#ifndef BW1_DECOMP_GATHERING_TEXT_INCLUDED_H
#define BW1_DECOMP_GATHERING_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint8_t */
#include <uchar.h> /* For char16_t */

// Forward Declares

struct LH3DColor;

enum TEXTJUSTIFY
{
  TEXTJUSTIFY_LEFT = 0x0,
  TEXTJUSTIFY_CENTRE = 0x1,
  TEXTJUSTIFY_RIGHT = 0x2,
  TEXTJUSTIFY_LEFT_BREAK = 0x3,
  TEXTJUSTIFY_CENTRE_BREAK = 0x4,
  _TEXTJUSTIFY_COUNT = 0x5
};
static_assert(sizeof(enum TEXTJUSTIFY) == 0x4, "Data type is of wrong size");

static const char* TEXTJUSTIFY_strs[_TEXTJUSTIFY_COUNT] = {
  "TEXTJUSTIFY_LEFT",
  "TEXTJUSTIFY_CENTRE",
  "TEXTJUSTIFY_RIGHT",
  "TEXTJUSTIFY_LEFT_BREAK",
  "TEXTJUSTIFY_CENTRE_BREAK",
};

struct GatheringText
{
  uint8_t field_0x0;
};
static_assert(sizeof(struct GatheringText) == 0x1, "Data type is of wrong size");

// Non-virtual methods

// win1.41 00831130 mac 00033360 GatheringText::GetStringWidth(wchar_t *, int, float)
float __fastcall GetStringWidth__13GatheringTextFPwif(struct GatheringText* this, const void* edx, const char16_t* str, int len, float text_size) asm("?GetStringWidth@GatheringText@@QAEMPA_WHM@Z");
// win1.41 008315b0 mac 1061ca0c GatheringText::DrawText(wchar_t *, float, float, float, float, float, float, float, float, float, LH3DColor *, int, int, int)
float __fastcall DrawText__13GatheringTextFPwfffffffffP9LH3DColoriii(struct GatheringText* this, const void* edx, const char16_t* text, float param_2, float param_3, float param_4, float param_5, float param_6, float param_7, float param_8, float param_9, float param_10, const struct LH3DColor* p_color, int param_12, int param_13, int param_14) asm("?DrawText@GatheringText@@QAEMPA_WMMMMMMMMMPAULH3DColor@@HHH@Z");
// win1.41 00832c60 mac 10be2db8 GatheringText::DrawTextRaw(wchar_t *, int, float, float, float, float, LH3DColor *, int, LH3DColor *, float, float)
void __fastcall DrawTextRaw__13GatheringTextFPwiffffP9LH3DColoriP9LH3DColorff(struct GatheringText* this, const void* edx, const char16_t* text, int param_2, float x, float y, float param_5, float param_6, struct LH3DColor* param_7, int param_8, struct LH3DColor* param_9, float param_10, float param_11) asm("?DrawTextRaw@GatheringText@@QAEXPA_WHMMMMPAULH3DColor@@H1MM@Z");

// win1.41 004079c0 mac 10087550 NeedsBiggerText(void)
bool __cdecl NeedsBiggerText__Fv(void);
// win1.41 00407a00 mac 1036d670 GetMidTextSize(void)
int __cdecl GetMidTextSize__Fv(void);
// win1.41 00407a10 mac 10513380 GetSmallTextSize(void)
int __cdecl GetSmallTextSize__Fv(void);

#endif /* BW1_DECOMP_GATHERING_TEXT_INCLUDED_H */
