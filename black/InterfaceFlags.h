#ifndef BW1_DECOMP_INTERFACE_FLAGS_INCLUDED_H
#define BW1_DECOMP_INTERFACE_FLAGS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct GInterfaceFlags
{
  struct Base super;  /* 0x0 */
  int field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
};
static_assert(sizeof(struct GInterfaceFlags) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf1b20 mac inlined GInterfaceFlags::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15GInterfaceFlags asm("??_R0?AVGInterfaceFlags@@@8");
// win1.41 009b1538 mac inlined GInterfaceFlags::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15GInterfaceFlags asm("??_R1A@?0A@A@GInterfaceFlags@@8");
// win1.41 009b1550 mac inlined GInterfaceFlags::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15GInterfaceFlags asm("??_R2GInterfaceFlags@@8");
// win1.41 009b1560 mac inlined GInterfaceFlags::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15GInterfaceFlags asm("??_R3GInterfaceFlags@@8");
// win1.41 0092ab00 mac 1099e274 GInterfaceFlags::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15GInterfaceFlags asm("??_R4GInterfaceFlags@@6B@");
// win1.41 0092ab04 mac 1099e27c GInterfaceFlags::`vftable'
extern const struct BaseVftable __vt__15GInterfaceFlags asm("??_7GInterfaceFlags@@6B@");

// Override methods

// win1.41 005ce340 mac 1035c820 GInterfaceFlags::_dt(void)
void __fastcall __dt__15GInterfaceFlagsFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGInterfaceFlags@@UAEPAXI@Z");

#endif /* BW1_DECOMP_INTERFACE_FLAGS_INCLUDED_H */
