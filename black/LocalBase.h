#ifndef BW1_DECOMP_LOCAL_BASE_INCLUDED_H
#define BW1_DECOMP_LOCAL_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct LocalBase
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct LocalBase) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf0738 mac inlined LocalBase::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9LocalBase asm("??_R0?AVLocalBase@@@8");
// win1.41 009b11e0 mac inlined LocalBase::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9LocalBase asm("??_R1A@?0A@A@LocalBase@@8");
// win1.41 009b11a8 mac inlined LocalBase::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9LocalBase asm("??_R2LocalBase@@8");
// win1.41 009b11b8 mac inlined LocalBase::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9LocalBase asm("??_R3LocalBase@@8");
// win1.41 008a9a40 mac 1099bd98 LocalBase::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9LocalBase asm("??_R4LocalBase@@6B@");
// win1.41 00900d24 mac 1099bda8 LocalBase::`vftable'
extern const struct BaseVftable __vt__9LocalBase asm("??_7LocalBase@@6B@");

// Static methods

// win1.41 005f8790 mac 1009eb9c LocalBase::operator new(unsigned long)
struct LocalBase* __cdecl __nw__9LocalBaseFUl(size_t size, const char* file_name, uint32_t line) asm("?__nw@LocalBase@@SAPAV1@K@Z");

// Constructors

// win1.41 inlined mac 1034ab30 LocalBase::LocalBase(void)
struct LocalBase* __fastcall __ct__9LocalBaseFv(struct LocalBase* this) asm("??0LocalBase@@QAE@XZ");

// Override methods

// win1.41 005c2150 mac 1033f600 LocalBase::_dt(void)
void __fastcall __dt__9LocalBaseFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GLocalBase@@UAEPAXI@Z");

#endif /* BW1_DECOMP_LOCAL_BASE_INCLUDED_H */
