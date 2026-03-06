#include "SetupList.h"
#include "SetupMultiList.h"
#include "SetupEdit.h"

// win1.41 0040a110 mac 101c7fc0 SetupList::Drag(int, int)
void SetupList::Drag(int x, int y)
{
}

// win1.41 0040a360 mac 100b7170 SetupList::Click(int, int)
void SetupList::Click(int x, int y)
{
}

// win1.41 0040a370 mac 10478900 SetupList::MouseDown(int, int, bool)
void SetupList::MouseDown(int x, int y, bool param_3)
{
}

// win1.41 0040a3f0 mac 100c7610 SetupList::MouseUp(int, int, bool)
void SetupList::MouseUp(int x, int y, bool param_3)
{
}

// // win1.41 0040a450 mac 10494bc0 SetupList::SetupList(int, int, int, int, int)
// SetupList::SetupList(int id, int x, int y, int width, int height)
// {
// }

// win1.41 0040a520 mac 104e2bb0 SetupList::IsSelected(int)
bool SetupList::IsSelected(int index)
{
    return 0;
}

// win1.41 0040a540 mac 1056c3d0 SetupList::~SetupList(void)
SetupList::~SetupList()
{
}

// win1.41 0040a5c0 mac 10388e60 SetupList::Draw(bool, bool)
void SetupList::Draw(bool hovered, bool selected)
{
}

// win1.41 0040aaf0 mac 1056d710 SetupList::UpdateHeights(void)
void SetupList::UpdateHeights()
{
}

// win1.41 0040ad60 mac 10169200 SetupList::DeleteString(int)
void SetupList::DeleteString(int index)
{
}

// win1.41 0040ae70 mac 10112d20 SetupList::InsertString(int, wchar_t *)
void SetupList::InsertString(int index, const char16_t* text)
{
}

// win1.41 0040b050 mac 104ea7a0 SetupList::SetNum(int)
void SetupList::SetNum(int num)
{
}

// // win1.41 0040b420 mac 1014cca0 SetupMultiList::SetupMultiList(int, int, int, int, int, int)
// SetupMultiList::SetupMultiList(int id, int x, int y, int width, int height, int size)
// {
// }

// win1.41 0040b4a0 mac 103f18b0 SetupMultiList::~SetupMultiList(void)
SetupMultiList::~SetupMultiList()
{
}

// win1.41 0040b530 mac 1047e020 SetupMultiList::IsSelected(int)
bool SetupMultiList::IsSelected(int index)
{
    return 0;
}

// win1.41 0040b560 mac 103e0950 SetupMultiList::Click(int, int)
void SetupMultiList::Click(int x, int y)
{
}

// win1.41 0040b5f0 mac 103e3630 SetupEdit::Char(int)
void SetupEdit::Char(int character)
{
}

// win1.41 0040baf0 mac 103813a0 SetupEdit::KeyDown(int)
void SetupEdit::KeyDown(LHKey key, LHKeyMod mod)
{
}
