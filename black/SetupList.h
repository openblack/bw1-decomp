#ifndef BW1_DECOMP_SETUP_LIST_INCLUDED_H
#define BW1_DECOMP_SETUP_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */
#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SetupControl.h" /* For struct SetupControl, struct SetupControlVftable */
#include "SetupRect.h" /* For struct SetupRect */

// Forward Declares

struct SetupList;

struct SetupList__ListBoxDraw_t
{
  uint32_t (__stdcall* function)(struct SetupList* widget, int value, int x_min, int y_min, int x_max, int y_max, int param_7, int style);  /* 0x0 */
};
static_assert(sizeof(struct SetupList__ListBoxDraw_t) == 0x4, "Data type is of wrong size");

struct SetupListVftable
{
  struct SetupControlVftable super;  /* 0x0 */
  bool (__fastcall* IsSelected)(struct SetupList* this, const void* edx, int index);  /* 0x34 */
};
static_assert(sizeof(struct SetupListVftable) == 0x38, "Data type is of wrong size");

struct SetupList
{
  struct SetupControl super;  /* 0x0 */
  bool field_0x23c;
  int scrollback_width;  /* 0x240 */
  bool field_0x244;
  int selected_index;
  int field_0x24c;
  int num_items;  /* 0x250 */
  int field_0x254;
  char16_t (*item_labels)[0x100];
  int* item_heights;
  uint32_t* field_0x260;
  uint32_t* field_0x264;
  struct LH3DColor* color;
  struct SetupList__ListBoxDraw_t* ListBoxDraw;
  int scroll_distance;  /* 0x270 */
  bool show_scrollbar;
  int field_0x278;
  int scroll_position;
  int field_0x280;
  bool field_0x284;
  bool field_0x285;
  struct LHCoord drag_start;
  bool use_color_background;  /* 0x290 */
  bool draw_highlight_box;
  uint8_t field_0x292;
  uint8_t field_0x293;
  struct LH3DColor box_outline_color;
  struct LH3DColor selection_color;
  uint8_t field_0x29c;
  struct SetupRect selection_rect;  /* 0x2a0 */
};
static_assert(sizeof(struct SetupList) == 0x2b0, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8178 mac inlined SetupList::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9SetupList asm("??_R0?AUSetupList@@@8");
// win1.41 009a6658 mac inlined SetupList::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9SetupList asm("??_R1A@?0A@A@SetupList@@8");
// win1.41 009a6670 mac inlined SetupList::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9SetupList asm("??_R2SetupList@@8");
// win1.41 009a6680 mac inlined SetupList::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9SetupList asm("??_R3SetupList@@8");
// win1.41 008ab320 mac 107311a4 SetupList::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9SetupList asm("??_R4SetupList@@6B@");
// win1.41 008ab324 mac 107311b4 SetupList::`vftable'
extern const struct SetupListVftable __vt__9SetupList asm("??_7SetupList@@6B@");

// Constructors

// win1.41 0040a450 mac 10494bc0 SetupList::SetupList(int, int, int, int, int)
struct SetupList* __fastcall __ct__9SetupListFiiiii(struct SetupList* this, const void* edx, int id, int x, int y, int width, int height) asm("??0SetupList@@QAE@HHHHH@Z");

// Non-virtual methods

// win1.41 00409dd0 mac 10594000 SetupList::AutoScroll(bool)
void __fastcall AutoScroll__9SetupListFb(struct SetupList* this, const void* edx, bool param_1) asm("?AutoScroll@SetupList@@QAEX_N@Z");
// win1.41 0040aaf0 mac 1056d710 SetupList::UpdateHeights(void)
void __fastcall UpdateHeights__9SetupListFv(struct SetupList* this) asm("?UpdateHeights@SetupList@@QAEXXZ");
// win1.41 0040ad60 mac 10169200 SetupList::DeleteString(int)
void __fastcall DeleteString__9SetupListFi(struct SetupList* this, const void* edx, int index) asm("?DeleteString@SetupList@@QAEXH@Z");
// win1.41 0040ae70 mac 10112d20 SetupList::InsertString(int, wchar_t *)
void __fastcall InsertString__9SetupListFiPw(struct SetupList* this, const void* edx, int index, const char16_t* text) asm("?InsertString@SetupList@@QAEXHPA_W@Z");
// win1.41 0040b050 mac 104ea7a0 SetupList::SetNum(int)
void __fastcall SetNum__9SetupListFi(struct SetupList* this, const void* edx, int num) asm("?SetNum@SetupList@@QAEXH@Z");

// Override methods

// win1.41 0040a5c0 mac 10388e60 SetupList::Draw(bool, bool)
void __fastcall Draw__9SetupListFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected) asm("?Draw@SetupList@@UAEX_N0@Z");
// win1.41 0040a110 mac 101c7fc0 SetupList::Drag(int, int)
void __fastcall Drag__9SetupListFii(struct SetupControl* this, const void* edx, int x, int y) asm("?Drag@SetupList@@UAEXHH@Z");
// win1.41 0040a370 mac 10478900 SetupList::MouseDown(int, int, bool)
void __fastcall MouseDown__9SetupListFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3) asm("?MouseDown@SetupList@@UAEXHH_N@Z");
// win1.41 0040a3f0 mac 100c7610 SetupList::MouseUp(int, int, bool)
void __fastcall MouseUp__9SetupListFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3) asm("?MouseUp@SetupList@@UAEXHH_N@Z");
// win1.41 0040a360 mac 100b7170 SetupList::Click(int, int)
void __fastcall Click__9SetupListFii(struct SetupControl* this, const void* edx, int x, int y) asm("?Click@SetupList@@UAEXHH@Z");
// win1.41 00409eb0 mac 103d24f0 SetupList::KeyDown(int, int)
void __fastcall KeyDown__9SetupListFii(struct SetupControl* this, const void* edx, enum LHKey key, enum LHKeyMod mod) asm("?KeyDown@SetupList@@UAEXHH@Z");
// win1.41 0040a540 mac 1056c3d0 SetupList::~SetupList(void)
void __fastcall __dt__9SetupListFb(struct SetupControl* this, const void* edx, bool param_1) asm("??_DSetupList@@QAEXXZ");
// win1.41 0040a520 mac 104e2bb0 SetupList::IsSelected(int)
bool __fastcall IsSelected__9SetupListFi(struct SetupList* this, const void* edx, int index) asm("?IsSelected@SetupList@@UAE_NH@Z");

#endif /* BW1_DECOMP_SETUP_LIST_INCLUDED_H */
