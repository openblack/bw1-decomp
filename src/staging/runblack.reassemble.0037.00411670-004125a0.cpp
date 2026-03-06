#include "SetupStaticText.h"
#include "SetupThing.h"

// win1.41 00411670 mac 100cb300 SetupStaticText::~SetupStaticText(void)
SetupStaticText::~SetupStaticText()
{
}

// win1.41 00411690 mac 10135530 SetupThing::GetTextHeight(int, int, int, int, int, bool, wchar_t *, int)
float SetupThing::GetTextHeight(int param_1, int param_2, int param_3, int param_4, int param_5, bool param_6, const char16_t* text, int param_8)
{
    return 0;
}

// win1.41 00411720 mac 1016ab60 SetupThing::GetTextWidth(wchar_t *, float, int, float)
float SetupThing::GetTextWidth(const char16_t* text, float size, int param_3, float param_4)
{
    return 0;
}

// win1.41 00411750 mac 1016d490 SetupThing::DrawTextWrap(int, int, int, int, int, bool, wchar_t *, int, LH3DColor *, bool, bool)
float SetupThing::DrawTextWrap(int x_min, int y_min, int x_max, int y_max, int param_5, bool param_6, const char16_t* text, int param_8, const LH3DColor* color, bool param_10, bool param_11)
{
    return 0;
}

// win1.41 004119b0 mac 103e1a40 SetupThing::DrawText(int, int, int, TEXTJUSTIFY, wchar_t *, int, LH3DColor *, int)
float SetupThing::DrawText(int x, int y, int width, TEXTJUSTIFY justify, const char16_t* text, int size, const LH3DColor* p_color, int param_8)
{
    return 0;
}

// win1.41 00411b40 mac 103e4a50 SetupThing::adjust(int &, int &)
float SetupThing::adjust(int* x, int* y)
{
    return 0;
}

// win1.41 00411c30 mac 104f62a0 SetupThing::unadjust(int &, int &)
float SetupThing::unadjust(int* x, int* y)
{
    return 0;
}

// win1.41 00411e70 mac 104f2b70 SetupThing::adjusty(int)
int SetupThing::adjusty(int y)
{
    return 0;
}

// win1.41 00412030 mac 10174f00 SetupThing::unadjustsize(float)
float SetupThing::unadjustsize(float size)
{
    return 0;
}

// win1.41 00412150 mac 105882d0 SetupThing::DrawBigButton(int, int, bool, bool, int, BBSTYLE, bool, int, int)
void SetupThing::DrawBigButton(int x, int y, bool centered, bool interacted, int size, BBSTYLE style, bool shadowed, int clip_y_start, int clip_y_end)
{
}
