#ifndef BW1_DECOMP_SETUP_TAB_BUTTON_INCLUDED_H
#define BW1_DECOMP_SETUP_TAB_BUTTON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SetupButton.h" /* For struct SetupButton */

// Forward Declares

struct SetupControl;

struct SetupTabButton
{
  struct SetupButton super;  /* 0x0 */
  bool32_t selected;  /* 0x244 */
  bool32_t first_in_row;
  bool32_t last_in_row;
  struct LH3DColor color;  /* 0x250 */
};
static_assert(sizeof(struct SetupTabButton) == 0x254, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8278 mac inlined SetupTabButton::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14SetupTabButton asm("??_R0?AUSetupTabButton@@@8");
// win1.41 009a6838 mac inlined SetupTabButton::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14SetupTabButton asm("??_R1A@?0A@A@SetupTabButton@@8");
// win1.41 009a6850 mac inlined SetupTabButton::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14SetupTabButton asm("??_R2SetupTabButton@@8");
// win1.41 009a6860 mac inlined SetupTabButton::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14SetupTabButton asm("??_R3SetupTabButton@@8");
// win1.41 008ab4cc mac 10730f08 SetupTabButton::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14SetupTabButton asm("??_R4SetupTabButton@@6B@");
// win1.41 008ab4d0 mac 10730f10 SetupTabButton::`vftable'
extern const struct SetupControlVftable __vt__14SetupTabButton asm("??_7SetupTabButton@@6B@");

// Constructors

// win1.41 0040f5e0 mac 101995b0 SetupTabButton::SetupTabButton(int, int, int, int, int, wchar_t *, int, int, int)
struct SetupTabButton* __fastcall __ct__14SetupTabButtonFiiiiiPwiii(struct SetupTabButton* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label, bool selected, bool first_in_row, bool last_in_row) asm("??0SetupTabButton@@QAE@HHHHHPA_WHHH@Z");

// Override methods

// win1.41 0040f3a0 mac 104081c0 SetupTabButton::Draw(bool, bool)
void __fastcall Draw__14SetupTabButtonFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected) asm("?Draw@SetupTabButton@@UAEX_N0@Z");
// win1.41 0040f670 mac 1037abd0 SetupTabButton::KeyDown(int, int)
void __fastcall KeyDown__14SetupTabButtonFii(struct SetupControl* this, const void* edx, enum LHKey key, enum LHKeyMod mod) asm("?KeyDown@SetupTabButton@@UAEXHH@Z");
// win1.41 0040f690 mac 10369440 SetupTabButton::~SetupTabButton(void)
void __fastcall __dt__14SetupTabButtonFb(struct SetupControl* this, const void* edx, bool param_1) asm("??_DSetupTabButton@@QAEXXZ");

#endif /* BW1_DECOMP_SETUP_TAB_BUTTON_INCLUDED_H */
