#ifndef BW1_DECOMP_SETUP_STATIC_TEXT_NO_HIT_INCLUDED_H
#define BW1_DECOMP_SETUP_STATIC_TEXT_NO_HIT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <uchar.h> /* For char16_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GatheringText.h" /* For enum TEXTJUSTIFY */
#include "SetupStaticText.h" /* For struct SetupStaticText */

// Forward Declares

struct SetupControl;

struct SetupStaticTextNoHit
{
  struct SetupStaticText super;  /* 0x0 */
};
static_assert(sizeof(struct SetupStaticTextNoHit) == 0x244, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bef140 mac inlined SetupStaticTextNoHit::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20SetupStaticTextNoHit asm("??_R0?AUSetupStaticTextNoHit@@@8");
// win1.41 009b0598 mac inlined SetupStaticTextNoHit::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20SetupStaticTextNoHit asm("??_R1A@?0A@A@SetupStaticTextNoHit@@8");
// win1.41 009b05b0 mac inlined SetupStaticTextNoHit::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20SetupStaticTextNoHit asm("??_R2SetupStaticTextNoHit@@8");
// win1.41 009b05c0 mac inlined SetupStaticTextNoHit::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20SetupStaticTextNoHit asm("??_R3SetupStaticTextNoHit@@8");
// win1.41 00900094 mac 1099b094 SetupStaticTextNoHit::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__20SetupStaticTextNoHit asm("??_R4SetupStaticTextNoHit@@6B@");
// win1.41 00900098 mac 1099b09c SetupStaticTextNoHit::`vftable'
extern const struct SetupControlVftable __vt__20SetupStaticTextNoHit asm("??_7SetupStaticTextNoHit@@6B@");

// Constructors

// win1.41 inlined mac 10327f40 SetupStaticTextNoHit::SetupStaticTextNoHit(int, int, int, int, int, wchar_t *, TEXTJUSTIFY)
struct SetupStaticTextNoHit* __fastcall __ct__20SetupStaticTextNoHitFiiiiiPw11TEXTJUSTIFY(struct SetupStaticTextNoHit* this, const void* edx, int id, int x, int y, int width, int height, const char16_t* label, enum TEXTJUSTIFY text_justify) asm("??0SetupStaticTextNoHit@@QAE@HHHHHPA_WW4TEXTJUSTIFY@@@Z");

// Override methods

// win1.41 00571f00 mac 10328c60 SetupStaticTextNoHit::HitTest(int, int)
bool __fastcall HitTest__20SetupStaticTextNoHitFii(struct SetupControl* this, const void* edx, int x, int y) asm("?HitTest@SetupStaticTextNoHit@@UAE_NHH@Z");
// win1.41 00571f10 mac 10328bc0 SetupStaticTextNoHit::~SetupStaticTextNoHit(void)
void __fastcall __dt__20SetupStaticTextNoHitFb(struct SetupControl* this, const void* edx, bool param_1) asm("??_DSetupStaticTextNoHit@@QAEXXZ");

#endif /* BW1_DECOMP_SETUP_STATIC_TEXT_NO_HIT_INCLUDED_H */
