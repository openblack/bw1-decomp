#ifndef BW1_DECOMP_LANGUAGE_INCLUDED_H
#define BW1_DECOMP_LANGUAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct GLanguage
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
};
static_assert(sizeof(struct GLanguage) == 0xc, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf3600 mac inlined GLanguage::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9GLanguage asm("??_R0?AVGLanguage@@@8");
// win1.41 009b1878 mac inlined GLanguage::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9GLanguage asm("??_R1A@?0A@A@GLanguage@@8");
// win1.41 009b1890 mac inlined GLanguage::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9GLanguage asm("??_R2GLanguage@@8");
// win1.41 009b18a0 mac inlined GLanguage::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9GLanguage asm("??_R3GLanguage@@8");
// win1.41 0092b340 mac 10733c04 GLanguage::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9GLanguage asm("??_R4GLanguage@@6B@");
// win1.41 0092b344 mac 10733c0c GLanguage::`vftable'
extern const struct BaseVftable __vt__9GLanguage asm("??_7GLanguage@@6B@");

// Constructors

// win1.41 005e6750 mac 1019cef0 GLanguage::GLanguage(void)
void __fastcall __ct__9GLanguageFv(struct GLanguage* this) asm("??0GLanguage@@QAE@XZ");

// Override methods

// win1.41 005e6770 mac 1017a5a0 GLanguage::_dt(void)
void __fastcall __dt__9GLanguageFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGLanguage@@UAEPAXI@Z");

#endif /* BW1_DECOMP_LANGUAGE_INCLUDED_H */
