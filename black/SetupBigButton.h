#ifndef BW1_DECOMP_SETUP_BIG_BUTTON_INCLUDED_H
#define BW1_DECOMP_SETUP_BIG_BUTTON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SetupButton.h" /* For struct SetupButton */
#include "SetupRect.h" /* For struct SetupRect */
#include "SetupThing.h" /* For enum BBSTYLE */

// Forward Declares

struct SetupControl;

struct SetupBigButton
{
  struct SetupButton super;  /* 0x0 */
  uint32_t text_position;  /* 0x244 */
  enum BBSTYLE style;
  struct SetupRect inner_rect;
};
static_assert(sizeof(struct SetupBigButton) == 0x25c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c81e8 mac inlined SetupBigButton::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14SetupBigButton asm("??_R0?AUSetupBigButton@@@8");
// win1.41 009a6748 mac inlined SetupBigButton::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14SetupBigButton asm("??_R1A@?0A@A@SetupBigButton@@8");
// win1.41 009a6760 mac inlined SetupBigButton::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14SetupBigButton asm("??_R2SetupBigButton@@8");
// win1.41 009a6770 mac inlined SetupBigButton::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14SetupBigButton asm("??_R3SetupBigButton@@8");
// win1.41 008ab3dc mac 107310ac SetupBigButton::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14SetupBigButton asm("??_R4SetupBigButton@@6B@");
// win1.41 008ab3e0 mac 107310b4 SetupBigButton::`vftable'
extern const struct SetupControlVftable __vt__14SetupBigButton asm("??_7SetupBigButton@@6B@");

// Constructors

// win1.41 0040d260 mac 100fd210 SetupBigButton::SetupBigButton(int, int, int, wchar_t *, int, int, int)
struct SetupBigButton* __fastcall __ct__14SetupBigButtonFiiiPwiii(struct SetupBigButton* this, const void* edx, int id, int x, int y, const char16_t* label, int size, uint32_t text_position, enum BBSTYLE style) asm("??0SetupBigButton@@QAE@HHHPA_WHHH@Z");

// Override methods

// win1.41 0040d310 mac 101670b0 SetupBigButton::HitTest(int, int)
bool __fastcall HitTest__14SetupBigButtonFii(struct SetupControl* this, const void* edx, int x, int y) asm("?HitTest@SetupBigButton@@UAE_NHH@Z");
// win1.41 0040ceb0 mac 103deac0 SetupBigButton::Draw(bool, bool)
void __fastcall Draw__14SetupBigButtonFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected) asm("?Draw@SetupBigButton@@UAEX_N0@Z");
// win1.41 0040d2f0 mac 101689f0 SetupBigButton::KeyDown(int, int)
void __fastcall KeyDown__14SetupBigButtonFii(struct SetupControl* this, const void* edx, enum LHKey key, enum LHKeyMod mod) asm("?KeyDown@SetupBigButton@@UAEXHH@Z");
// win1.41 0040d360 mac 1010fca0 SetupBigButton::~SetupBigButton(void)
void __fastcall __dt__14SetupBigButtonFb(struct SetupControl* this, const void* edx, bool param_1) asm("??_DSetupBigButton@@QAEXXZ");

#endif /* BW1_DECOMP_SETUP_BIG_BUTTON_INCLUDED_H */
