#ifndef BW1_DECOMP_SETUP_BUTTON_INCLUDED_H
#define BW1_DECOMP_SETUP_BUTTON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SetupControl.h" /* For struct SetupControl */

struct SetupButton
{
  struct SetupControl super;  /* 0x0 */
  bool pressed;  /* 0x23c */
  int field_0x240;
};
static_assert(sizeof(struct SetupButton) == 0x244, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8138 mac inlined SetupButton::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11SetupButton asm("??_R0?AUSetupButton@@@8");
// win1.41 009a65b8 mac inlined SetupButton::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11SetupButton asm("??_R1A@?0A@A@SetupButton@@8");
// win1.41 009a65d0 mac inlined SetupButton::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11SetupButton asm("??_R2SetupButton@@8");
// win1.41 009a65e0 mac inlined SetupButton::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11SetupButton asm("??_R3SetupButton@@8");
// win1.41 008ab2b0 mac 10730d6c SetupButton::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__11SetupButton asm("??_R4SetupButton@@6B@");
// win1.41 008ab2b4 mac 10730d7c SetupButton::`vftable'
extern const struct SetupControlVftable __vt__11SetupButton asm("??_7SetupButton@@6B@");

// Constructors

// win1.41 004098b0 mac 103dd710 SetupButton::SetupButton(int, int, int, int, int, wchar_t *, int)
struct SetupButton* __fastcall __ct__10SetupButtonFiiiiiPwi(struct SetupButton* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label, int param_8);

// Override methods

// win1.41 004097a0 mac 100c7c90 SetupButton::Draw(bool, bool)
void __fastcall Draw__11SetupButtonFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected) asm("?Draw@SetupButton@@UAEX_N0@Z");
// win1.41 00409900 mac 101104d0 SetupButton::MouseDown(int, int, bool)
void __fastcall MouseDown__10SetupButtonFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3);
// win1.41 00409910 mac 10172660 SetupButton::MouseUp(int, int, bool)
void __fastcall MouseUp__10SetupButtonFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3);
// win1.41 00409920 mac 1034a2d0 SetupButton::KeyDown(int, int)
void __fastcall KeyDown__11SetupButtonFii(struct SetupControl* this, const void* edx, enum LHKey key, enum LHKeyMod mod) asm("?KeyDown@SetupButton@@UAEXHH@Z");
// win1.41 00409940 mac 10594240 SetupButton::~SetupButton(void)
void __fastcall __dt__11SetupButtonFb(struct SetupControl* this, const void* edx, bool param_1) asm("??_DSetupButton@@QAEXXZ");

#endif /* BW1_DECOMP_SETUP_BUTTON_INCLUDED_H */
