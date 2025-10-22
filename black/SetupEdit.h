#ifndef BW1_DECOMP_SETUP_EDIT_INCLUDED_H
#define BW1_DECOMP_SETUP_EDIT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SetupControl.h" /* For struct SetupControl */

// Forward Declares

struct SetupList;

struct SetupEdit
{
  struct SetupControl super;  /* 0x0 */
  struct SetupList* field_0x23c;
  int field_0x240;
  int field_0x244;
  int field_0x248;
  int cursor_position;
  int select_start;  /* 0x250 */
  int select_end;
  int field_0x258;
  bool32_t editable;
  bool masked_text;  /* 0x260 */
  char16_t text[0x100];
  uint32_t field_0x464;
};
static_assert(sizeof(struct SetupEdit) == 0x468, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c81d0 mac inlined SetupEdit::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9SetupEdit asm("??_R0?AUSetupEdit@@@8");
// win1.41 009a66f8 mac inlined SetupEdit::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9SetupEdit asm("??_R1A@?0A@A@SetupEdit@@8");
// win1.41 009a6710 mac inlined SetupEdit::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9SetupEdit asm("??_R2SetupEdit@@8");
// win1.41 009a6720 mac inlined SetupEdit::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9SetupEdit asm("??_R3SetupEdit@@8");
// win1.41 008ab39c mac 10731154 SetupEdit::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9SetupEdit asm("??_R4SetupEdit@@6B@");
// win1.41 008ab3a0 mac 1073115c SetupEdit::`vftable'
extern const struct SetupControlVftable __vt__9SetupEdit asm("??_7SetupEdit@@6B@");

// Constructors

// win1.41 0040c220 mac 101bc370 SetupEdit::SetupEdit(int, int, int, int, int, wchar_t *, int)
struct SetupEdit* __fastcall __ct__9SetupEditFiiiiiPwi(struct SetupEdit* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label, bool editable) asm("??0SetupEdit@@QAE@HHHHHPA_WH@Z");

// Non-virtual methods

// win1.41 inlined mac inlined SetupEdit::ClampCursor(void)
void __fastcall ClampCursor__9SetupEditFv(struct SetupEdit* this) asm("?ClampCursor@SetupEdit@@QAEXXZ");
// win1.41 inlined mac inlined SetupEdit::FixCursor(void)
void __fastcall FixCursor__9SetupEditFv(struct SetupEdit* this) asm("?FixCursor@SetupEdit@@QAEXXZ");
// win1.41 inlined mac inlined SetupEdit::FixSelect(void)
void __fastcall FixSelect__9SetupEditFv(struct SetupEdit* this) asm("?FixSelect@SetupEdit@@QAEXXZ");
// win1.41 0040c090 mac 103dc2c0 SetupEdit::CalcCharpos(int)
int __fastcall CalcCharpos__9SetupEditFi(struct SetupEdit* this, const void* edx, int pos) asm("?CalcCharpos@SetupEdit@@QAEHH@Z");

// Override methods

// win1.41 0040c500 mac 100c1900 SetupEdit::SetFocus(bool)
void __fastcall SetFocus__9SetupEditFb(struct SetupControl* this, const void* edx, bool focus) asm("?SetFocus@SetupEdit@@UAEX_N@Z");
// win1.41 0040c580 mac 1055c840 SetupEdit::Draw(bool, bool)
void __fastcall Draw__9SetupEditFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected) asm("?Draw@SetupEdit@@UAEX_N0@Z");
// win1.41 0040c150 mac 103dc010 SetupEdit::Drag(int, int)
void __fastcall Drag__9SetupEditFii(struct SetupControl* this, const void* edx, int x, int y) asm("?Drag@SetupEdit@@UAEXHH@Z");
// win1.41 0040c170 mac 10430180 SetupEdit::MouseDown(int, int, bool)
void __fastcall MouseDown__9SetupEditFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3) asm("?MouseDown@SetupEdit@@UAEXHH_N@Z");
// win1.41 0040c1a0 mac 101178b0 SetupEdit::MouseUp(int, int, bool)
void __fastcall MouseUp__9SetupEditFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3) asm("?MouseUp@SetupEdit@@UAEXHH_N@Z");
// win1.41 0040baf0 mac 103813a0 SetupEdit::KeyDown(int)
void __fastcall KeyDown__9SetupEditFii(struct SetupControl* this, const void* edx, enum LHKey key, enum LHKeyMod mod) asm("?KeyDown@SetupEdit@@UAEXHH@Z");
// win1.41 0040b5f0 mac 103e3630 SetupEdit::Char(int)
void __fastcall Char__9SetupEditFi(struct SetupControl* this, const void* edx, int character) asm("?Char@SetupEdit@@UAEXH@Z");
// win1.41 0040c560 mac 1035a3a0 SetupEdit::~SetupEdit(void)
void __fastcall __dt__9SetupEditFb(struct SetupControl* this, const void* edx, bool param_1) asm("??_DSetupEdit@@QAEXXZ");

#endif /* BW1_DECOMP_SETUP_EDIT_INCLUDED_H */
