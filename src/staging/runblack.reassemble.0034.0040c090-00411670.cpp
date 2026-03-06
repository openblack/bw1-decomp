#include "SetupEdit.h"
#include "SetupMP3Button.h"
#include "SetupBigButton.h"
#include "SetupHSBarGraph.h"
#include "SetupHLineGraph.h"
#include "SetupVBarGraph.h"
#include "SetupTabButton.h"
#include "SetupPicture.h"
#include "SetupColourPicker.h"
#include "SetupCheckBox.h"
#include "SetupBox.h"

// win1.41 0040c090 mac 103dc2c0 SetupEdit::CalcCharpos(int)
int SetupEdit::CalcCharpos(int pos)
{
    return 0;
}

// win1.41 0040c150 mac 103dc010 SetupEdit::Drag(int, int)
void SetupEdit::Drag(int x, int y)
{
}

// win1.41 0040c170 mac 10430180 SetupEdit::MouseDown(int, int, bool)
void SetupEdit::MouseDown(int x, int y, bool param_3)
{
}

// win1.41 0040c1a0 mac 101178b0 SetupEdit::MouseUp(int, int, bool)
void SetupEdit::MouseUp(int x, int y, bool param_3)
{
}

// win1.41 0040c220 mac 101bc370 SetupEdit::SetupEdit(int, int, int, int, int, wchar_t *, int)
// SetupEdit::SetupEdit(int id, int x, int y, int width, int height, const char16_t* label, bool editable)
// {
// }

// win1.41 0040c500 mac 100c1900 SetupEdit::SetFocus(bool)
void SetupEdit::SetFocus(bool focus)
{
}

// win1.41 0040c560 mac 1035a3a0 SetupEdit::~SetupEdit(void)
SetupEdit::~SetupEdit()
{
}

// win1.41 0040c580 mac 1055c840 SetupEdit::Draw(bool, bool)
void SetupEdit::Draw(bool hovered, bool selected)
{
}

// win1.41 0040cda0 mac 10426080 SetupMP3Button::Draw(bool, bool)
void SetupMP3Button::Draw(bool hovered, bool selected)
{
}

// win1.41 0040ceb0 mac 103deac0 SetupBigButton::Draw(bool, bool)
void SetupBigButton::Draw(bool hovered, bool selected)
{
}

// win1.41 0040d260 mac 100fd210 SetupBigButton::SetupBigButton(int, int, int, wchar_t *, int, int, int)
// SetupBigButton::SetupBigButton(int id, int x, int y, const char16_t* label, int size, uint32_t text_position, BBSTYLE style)
// {
// }

// win1.41 0040d2f0 mac 101689f0 SetupBigButton::KeyDown(int, int)
void SetupBigButton::KeyDown(LHKey key, LHKeyMod mod)
{
}

// win1.41 0040d310 mac 101670b0 SetupBigButton::HitTest(int, int)
bool SetupBigButton::HitTest(int x, int y)
{
    return 0;
}

// win1.41 0040d360 mac 1010fca0 SetupBigButton::~SetupBigButton(void)
SetupBigButton::~SetupBigButton()
{
}

// win1.41 0040d3c0 mac 100df500 SetupHSBarGraph::Draw(bool, bool)
void SetupHSBarGraph::Draw(bool hovered, bool selected)
{
}

// win1.41 0040d9a0 mac 10130720 SetupHSBarGraph::SetScale(float)
void SetupHSBarGraph::SetScale(float scale)
{
}

// win1.41 0040dab0 mac 101180e0 SetupHLineGraph::Draw(bool, bool)
void SetupHLineGraph::Draw(bool hovered, bool selected)
{
}

// // win1.41 0040e510 mac 103dcbb0 SetupHLineGraph::SetupHLineGraph(int, int, int, int, int, wchar_t *, bool)
// SetupHLineGraph::SetupHLineGraph(int id, int x, int y, int width, int height, const char16_t* label, bool percent_mode)
// {
// }

// win1.41 0040e580 mac 10518860 SetupHLineGraph::KeyDown(int, int)
void SetupHLineGraph::KeyDown(LHKey key, LHKeyMod mod)
{
}

// win1.41 0040e5a0 mac 101585b0 SetupHLineGraph::MouseUp(int, int, bool)
void SetupHLineGraph::MouseUp(int x, int y, bool param_3)
{
}

// win1.41 0040e5c0 mac 0040e5c0 SetupHLineGraph::~SetupHLineGraph(void)
SetupHLineGraph::~SetupHLineGraph()
{
}

// win1.41 0040e5e0 mac 102a7a10 SetupHLineGraph::Reset(void)
void SetupHLineGraph::Reset()
{
}

// win1.41 0040e650 mac 10211b80 SetupHLineGraph::SetScale(float, float, bool)
void SetupHLineGraph::SetScale(float max_point, float min_point, bool centered_at_zero)
{
}

// win1.41 0040e730 mac 1010ccb0 SetupHLineGraph::AddLine(HLineData &)
void SetupHLineGraph::AddLine(const HLineData* line)
{
}

// win1.41 0040e7f0 mac 100c9eb0 SetupHLineGraph::SetLine(int, const HLineData &)
void SetupHLineGraph::SetLine(int index, const HLineData* line)
{
}

// win1.41 0040e850 mac 10372050 SetupHLineGraph::GetLine(int, HLineData &)
void SetupHLineGraph::GetLine(int index, HLineData* result)
{
}

// win1.41 0040e8b0 mac 10379480 SetupVBarGraph::Draw(bool, bool)
void SetupVBarGraph::Draw(bool hovered, bool selected)
{
}

// // win1.41 0040ef00 mac 10354bc0 SetupVBarGraph::SetupVBarGraph(int, int, int, int, int, wchar_t *)
// SetupVBarGraph::SetupVBarGraph(int id, int x, int y, int width, int height, const char16_t* label)
// {
// }

// win1.41 0040ef70 mac 10350e50 SetupVBarGraph::KeyDown(int, int)
void SetupVBarGraph::KeyDown(LHKey key, LHKeyMod mod)
{
}

// win1.41 0040ef90 mac 103de920 SetupVBarGraph::~SetupVBarGraph(void)
SetupVBarGraph::~SetupVBarGraph()
{
}

// win1.41 0040efb0 mac inlined SetupVBarGraph::Reset(vfoid)
void SetupVBarGraph::Reset()
{
}

// win1.41 0040f1b0 mac 10351240 SetupVBarGraph::SetScale(float)
void SetupVBarGraph::SetScale(float scale)
{
}

// win1.41 0040f280 mac 103fccd0 SetupVBarGraph::AddBar(const VBarData &)
void SetupVBarGraph::AddBar(const VBarData* bar)
{
}

// win1.41 0040f300 mac 10352240 SetupVBarGraph::SetBar(int, const VBarData &)
void SetupVBarGraph::SetBar(int index, const VBarData* bar)
{
}

// win1.41 0040f350 mac 103f1500 SetupVBarGraph::GetBar(int, VBarData &)
void SetupVBarGraph::GetBar(int index, VBarData* result)
{
}

// win1.41 0040f3a0 mac 104081c0 SetupTabButton::Draw(bool, bool)
void SetupTabButton::Draw(bool hovered, bool selected)
{
}

// // win1.41 0040f5e0 mac 101995b0 SetupTabButton::SetupTabButton(int, int, int, int, int, wchar_t *, int, int, int)
// SetupTabButton::SetupTabButton(int id, int x, int y, int width, int height, const char16_t* label, bool selected, bool first_in_row, bool last_in_row)
// {
// }

// win1.41 0040f670 mac 1037abd0 SetupTabButton::KeyDown(int, int)
void SetupTabButton::KeyDown(LHKey key, LHKeyMod mod)
{
}

// win1.41 0040f690 mac 10369440 SetupTabButton::~SetupTabButton(void)
SetupTabButton::~SetupTabButton()
{
}

// win1.41 0040f6b0 mac inlined SetupPicture::MouseDown(int, int, bool)
void SetupPicture::MouseDown(int x, int y, bool param_3)
{
}

// win1.41 0040f840 mac 1036e5b0 SetupPicture::MouseUp(int, int, bool)
void SetupPicture::MouseUp(int x, int y, bool param_3)
{
}

// win1.41 0040fa10 mac 100e47c0 SetupPicture::Drag(int, int)
void SetupPicture::Drag(int x, int y)
{
}

// win1.41 0040fa20 mac 100ab020 SetupPicture::Draw(bool, bool)
void SetupPicture::Draw(bool hovered, bool selected)
{
}

// // win1.41 004105d0 mac 101a6a00 SetupPicture::SetupPicture(int, int, int, LH3DMaterial *, int, int, bool, int, bool)
// SetupPicture::SetupPicture(int id, int x, int y, LH3DMaterial* material, int picture_index, int num_rows, bool clickable, int size, bool draggable)
// {
// }

// win1.41 004106f0 mac 100fe9d0 SetupPicture::KeyDown(int, int)
void SetupPicture::KeyDown(LHKey key, LHKeyMod mod)
{
}

// win1.41 00410710 mac 10351210 SetupPicture::Click(int, int)
void SetupPicture::Click(int x, int y)
{
}

// win1.41 00410720 mac 1034f1b0 SetupPicture::~SetupPicture(void)
SetupPicture::~SetupPicture()
{
}

// win1.41 00410740 mac 102410c0 SetupPicture::SetFocus(bool)
void SetupPicture::SetFocus(bool focus)
{
}

// win1.41 004107f0 mac 1030b070 SetupColourPicker::MouseDown(int, int, bool)
void SetupColourPicker::MouseDown(int x, int y, bool param_3)
{
}

// win1.41 00410800 mac 101119a0 SetupColourPicker::MouseUp(int, int, bool)
void SetupColourPicker::MouseUp(int x, int y, bool param_3)
{
}

// win1.41 00410810 mac 1023f300 SetupColourPicker::Drag(int, int)
void SetupColourPicker::Drag(int x, int y)
{
}

// win1.41 00410880 mac 10103e40 SetupColourPicker::Draw(bool, bool)
void SetupColourPicker::Draw(bool hovered, bool selected)
{
}

// // win1.41 00410ac0 mac 103c6130 SetupColourPicker::SetupColourPicker(int, int, int, int, int, int, LH3DMaterial *)
// SetupColourPicker::SetupColourPicker(int id, int x, int y, int width, int height, bool brightness_slider, LH3DMaterial* material)
// {
// }

// win1.41 00410b30 mac 1034f250 SetupColourPicker::KeyDown(int, int)
void SetupColourPicker::KeyDown(LHKey key, LHKeyMod mod)
{
}

// win1.41 00410b50 mac 100c8de0 SetupColourPicker::Click(int, int)
void SetupColourPicker::Click(int x, int y)
{
}

// win1.41 00410b60 mac 10571d70 SetupColourPicker::~SetupColourPicker(void)
SetupColourPicker::~SetupColourPicker()
{
}

// win1.41 00410b80 mac 103c4a20 SetupCheckBox::Draw(bool, bool)
void SetupCheckBox::Draw(bool hovered, bool selected)
{
}

// // win1.41 00410f10 mac 1058b890 SetupCheckBox::SetupCheckBox(int, int, int, bool, int, wchar_t *, int)
// SetupCheckBox::SetupCheckBox(int id, int x, int y, bool checked, BBSTYLE style, const char16_t* label, int size)
// {
// }

// win1.41 00410f90 mac 10112370 SetupCheckBox::HitTest(int, int)
bool SetupCheckBox::HitTest(int x, int y)
{
    return 0;
}

// win1.41 00411020 mac 103dbde0 SetupCheckBox::Click(int, int)
void SetupCheckBox::Click(int x, int y)
{
}

// win1.41 00411050 mac 10599580 SetupCheckBox::KeyDown(int, int)
void SetupCheckBox::KeyDown(LHKey key, LHKeyMod mod)
{
}

// win1.41 00411070 mac 105893e0 SetupCheckBox::~SetupCheckBox(void)
SetupCheckBox::~SetupCheckBox()
{
}

// win1.41 00411090 mac 1047e3e0 SetupBox::SetFocusNext(SetupBox *)
void SetupBox::SetFocusNext()
{
}

// win1.41 00411100 mac 10478e70 SetupBox::SetFocusPrev(SetupBox *)
void SetupBox::SetFocusPrev()
{
}

// win1.41 00411190 mac 100c3160 SetupBox::MessageBoxA(wchar_t*, MSGBOXSTYLE, ulong)
void SetupBox::MessageBoxA(const char16_t* param_2, uint32_t param_3, uint32_t param_4)
{
}
