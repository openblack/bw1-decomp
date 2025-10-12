#ifndef BW1_DECOMP_MAGIC_TELEPORT_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_TELEPORT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

struct Base;

struct GMagicTeleportInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicTeleportInfo) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cb9a8 mac inlined GMagicTeleportInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18GMagicTeleportInfo asm("??_R0?AVGMagicTeleportInfo@@@8");
// win1.41 009a7dc0 mac inlined GMagicTeleportInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18GMagicTeleportInfo asm("??_R1A@?0A@A@GMagicTeleportInfo@@8");
// win1.41 009a7dd8 mac inlined GMagicTeleportInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18GMagicTeleportInfo asm("??_R2GMagicTeleportInfo@@8");
// win1.41 009a7df0 mac inlined GMagicTeleportInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18GMagicTeleportInfo asm("??_R3GMagicTeleportInfo@@8");

// Override methods

// win1.41 004356c0 mac 103b2190 GMagicTeleportInfo::_dt(void)
void __fastcall __dt__18GMagicTeleportInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicTeleportInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_TELEPORT_INFO_INCLUDED_H */
