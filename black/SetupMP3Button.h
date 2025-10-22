#ifndef BW1_DECOMP_SETUP_MP3_BUTTON_INCLUDED_H
#define BW1_DECOMP_SETUP_MP3_BUTTON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SetupButton.h" /* For struct SetupButton */

// Forward Declares

struct SetupControl;

struct SetupMP3Button
{
  struct SetupButton super;  /* 0x0 */
  uint32_t field_0x244;
  uint32_t field_0x248;
  struct LH3DColor color;
};
static_assert(sizeof(struct SetupMP3Button) == 0x250, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bef120 mac inlined SetupMP3Button::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14SetupMP3Button asm("??_R0?AUSetupMP3Button@@@8");
// win1.41 009b0548 mac inlined SetupMP3Button::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14SetupMP3Button asm("??_R1A@?0A@A@SetupMP3Button@@8");
// win1.41 009b0560 mac inlined SetupMP3Button::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14SetupMP3Button asm("??_R2SetupMP3Button@@8");
// win1.41 009b0570 mac inlined SetupMP3Button::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14SetupMP3Button asm("??_R3SetupMP3Button@@8");
// win1.41 0090005c mac 10731104 SetupMP3Button::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14SetupMP3Button asm("??_R4SetupMP3Button@@6B@");
// win1.41 00900060 mac 1073110c SetupMP3Button::`vftable'
extern const struct SetupControlVftable __vt__14SetupMP3Button asm("??_7SetupMP3Button@@6B@");

// Constructors

// win1.41 inlined mac inlined SetupMP3Button::SetupMP3Button(int, int, int, int, int, wchar_t *, int, unsigned int)
struct SetupMP3Button* __fastcall __ct__14SetupMP3ButtonFiiiiiPwiUi(struct SetupMP3Button* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label, int param_8, uint32_t param_9) asm("??0SetupMP3Button@@QAE@HHHHHPA_WHI@Z");

// Override methods

// win1.41 0040cda0 mac 10426080 SetupMP3Button::Draw(bool, bool)
void __fastcall Draw__14SetupMP3ButtonFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected) asm("?Draw@SetupMP3Button@@UAEX_N0@Z");
// win1.41 00571f30 mac 103547d0 SetupMP3Button::~SetupMP3Button(void)
void __fastcall __dt__14SetupMP3ButtonFb(struct SetupControl* this, const void* edx, bool param_1) asm("??_DSetupMP3Button@@QAEXXZ");

#endif /* BW1_DECOMP_SETUP_MP3_BUTTON_INCLUDED_H */
