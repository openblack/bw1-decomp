#ifndef BW1_DECOMP_SETUP_SLIDER_INCLUDED_H
#define BW1_DECOMP_SETUP_SLIDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LHCoord.h> /* For struct LHCoord */
#include <lionhead/lhlib/ver5.0/LHKey.h> /* For enum LHKey, enum LHKeyMod */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SetupControl.h" /* For struct SetupControl */

struct SetupSlider
{
  struct SetupControl super;  /* 0x0 */
  float value;  /* 0x23c */
  float drag_start_value;  /* 0x240 */
  struct LHCoord drag_start;
  int height;
};
static_assert(sizeof(struct SetupSlider) == 0x250, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8158 mac inlined SetupSlider::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11SetupSlider asm("??_R0?AUSetupSlider@@@8");
// win1.41 009a6608 mac inlined SetupSlider::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11SetupSlider asm("??_R1A@?0A@A@SetupSlider@@8");
// win1.41 009a6620 mac inlined SetupSlider::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11SetupSlider asm("??_R2SetupSlider@@8");
// win1.41 009a6630 mac inlined SetupSlider::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11SetupSlider asm("??_R3SetupSlider@@8");
// win1.41 008ab2e8 mac 10731254 SetupSlider::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__11SetupSlider asm("??_R4SetupSlider@@6B@");
// win1.41 008ab2ec mac 1073125c SetupSlider::`vftable'
extern const struct SetupControlVftable __vt__11SetupSlider asm("??_7SetupSlider@@6B@");

// Constructors

// win1.41 00409bf0 mac 1043fbc0 SetupSlider::SetupSlider(int, int, int, int, int, float, wchar_t *)
struct SetupSlider* __fastcall __ct__11SetupSliderFiiiiifPw(struct SetupSlider* this, const void* edx, int id, int x, int y, int width, int height, float value, char16_t* label) asm("??0SetupSlider@@QAE@HHHHHMPA_W@Z");

// Override methods

// win1.41 00409a40 mac 10440200 SetupSlider::Draw(bool, bool)
void __fastcall Draw__11SetupSliderFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected) asm("?Draw@SetupSlider@@UAEX_N0@Z");
// win1.41 00409c70 mac 1043ff90 SetupSlider::Drag(int, int)
void __fastcall Drag__11SetupSliderFii(struct SetupControl* this, const void* edx, int x, int y) asm("?Drag@SetupSlider@@UAEXHH@Z");
// win1.41 00409d60 mac 1043c240 SetupSlider::MouseDown(int, int, bool)
void __fastcall MouseDown__11SetupSliderFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3) asm("?MouseDown@SetupSlider@@UAEXHH_N@Z");
// win1.41 00409d90 mac 100b4690 SetupSlider::MouseUp(int, int, bool)
void __fastcall MouseUp__11SetupSliderFiib(struct SetupControl* this, const void* edx, int x, int y, bool param_3) asm("?MouseUp@SetupSlider@@UAEXHH_N@Z");
// win1.41 00409960 mac 10103d10 SetupSlider::KeyDown(int, int)
void __fastcall KeyDown__11SetupSliderFii(struct SetupControl* this, const void* edx, enum LHKey key, enum LHKeyMod mod) asm("?KeyDown@SetupSlider@@UAEXHH@Z");
// win1.41 00409c50 mac 101c8450 SetupSlider::~SetupSlider(void)
void __fastcall __dt__11SetupSliderFb(struct SetupControl* this, const void* edx, bool param_1) asm("??_DSetupSlider@@QAEXXZ");

#endif /* BW1_DECOMP_SETUP_SLIDER_INCLUDED_H */
