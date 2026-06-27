#ifndef BW1_DECOMP_GATHERING_TEXT_INCLUDED_H
#define BW1_DECOMP_GATHERING_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */
#include <uchar.h> /* For char16_t */

enum TEXTJUSTIFY
{
  TEXTJUSTIFY_LEFT = 0x0,
  TEXTJUSTIFY_CENTRE = 0x1,
  TEXTJUSTIFY_RIGHT = 0x2,
  TEXTJUSTIFY_LEFT_BREAK = 0x3,
  TEXTJUSTIFY_CENTRE_BREAK = 0x4,
  _TEXTJUSTIFY_COUNT = 0x5
};

// Forward Declares

struct LH3DColor;

struct GatheringText
{
    uint8_t field_0x0;

    // Non-virtual methods

    // BW1W120 00831130 BW1M100 00033360 GatheringText::GetStringWidth(wchar_t *, int, float)
    float GetStringWidth(const char16_t* str, int len, float text_size);
    // BW1W120 008315b0 BW1M100 1061ca0c GatheringText::DrawText(wchar_t *, float, float, float, float, float, float, float, float, float, LH3DColor *, int, int, int)
    float DrawText(const char16_t* text, float param_2, float param_3, float param_4, float param_5, float param_6, float param_7, float param_8, float param_9, float param_10, const LH3DColor* p_color, int param_12, int param_13, int param_14);
    // BW1W120 00832c60 BW1M100 10be2db8 GatheringText::DrawTextRaw(wchar_t *, int, float, float, float, float, LH3DColor *, int, LH3DColor *, float, float)
    void DrawTextRaw(const char16_t* text, int param_2, float x, float y, float param_5, float param_6, LH3DColor* param_7, int param_8, LH3DColor* param_9, float param_10, float param_11);
};

#endif /* BW1_DECOMP_GATHERING_TEXT_INCLUDED_H */
