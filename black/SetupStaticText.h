#ifndef BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H
#define BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "GatheringText.h" /* For enum TEXTJUSTIFY */
#include "SetupControl.h" /* For struct SetupControl */

struct SetupStaticText
{
  struct SetupControl super;  /* 0x0 */
  enum TEXTJUSTIFY text_justify;  /* 0x23c */
  int display_text_size;  /* 0x240 */
};
static_assert(sizeof(struct SetupStaticText) == 0x244, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c82f8 mac inlined SetupStaticText::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15SetupStaticText asm("??_R0?AUSetupStaticText@@@8");
// win1.41 009a6978 mac inlined SetupStaticText::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15SetupStaticText asm("??_R1A@?0A@A@SetupStaticText@@8");
// win1.41 009a6990 mac inlined SetupStaticText::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15SetupStaticText asm("??_R2SetupStaticText@@8");
// win1.41 009a69a0 mac inlined SetupStaticText::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15SetupStaticText asm("??_R3SetupStaticText@@8");
// win1.41 008ab5bc mac 107312e0 SetupStaticText::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15SetupStaticText asm("??_R4SetupStaticText@@6B@");
// win1.41 008ab5c0 mac 107312e8 SetupStaticText::`vftable'
extern const struct SetupControlVftable __vt__15SetupStaticText asm("??_7SetupStaticText@@6B@");

// Override methods

// win1.41 00409430 mac 105436e0 SetupStaticText::Draw(bool, bool)
void __fastcall Draw__15SetupStaticTextFbb(struct SetupControl* this, const void* edx, bool hovered, bool selected) asm("?Draw@SetupStaticText@@UAEX_N0@Z");
// win1.41 00411670 mac 100cb300 SetupStaticText::~SetupStaticText(void)
void __fastcall __dt__15SetupStaticTextFb(struct SetupControl* this, const void* edx, bool param_1) asm("??_DSetupStaticText@@QAEXXZ");

#endif /* BW1_DECOMP_SETUP_STATIC_TEXT_INCLUDED_H */
