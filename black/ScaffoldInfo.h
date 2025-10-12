#ifndef BW1_DECOMP_SCAFFOLD_INFO_INCLUDED_H
#define BW1_DECOMP_SCAFFOLD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

struct Base;

struct GScaffoldInfo
{
  struct GMobileObjectInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GScaffoldInfo) == 0x114, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c0bfc8 mac inlined GScaffoldInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13GScaffoldInfo asm("??_R0?AVGScaffoldInfo@@@8");
// win1.41 009b8da8 mac inlined GScaffoldInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13GScaffoldInfo asm("??_R1A@?0A@A@GScaffoldInfo@@8");
// win1.41 009b8dc0 mac inlined GScaffoldInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13GScaffoldInfo asm("??_R2GScaffoldInfo@@8");
// win1.41 009b8de0 mac inlined GScaffoldInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13GScaffoldInfo asm("??_R3GScaffoldInfo@@8");

// Override methods

// win1.41 006e8360 mac 10144060 GScaffoldInfo::_dt(void)
void __fastcall __dt__13GScaffoldInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGScaffoldInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_SCAFFOLD_INFO_INCLUDED_H */
