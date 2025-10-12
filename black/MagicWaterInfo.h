#ifndef BW1_DECOMP_MAGIC_WATER_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_WATER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

struct Base;

struct GMagicWaterInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicWaterInfo) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ccfc0 mac inlined GMagicWaterInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15GMagicWaterInfo asm("??_R0?AVGMagicWaterInfo@@@8");
// win1.41 009a80e8 mac inlined GMagicWaterInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15GMagicWaterInfo asm("??_R1A@?0A@A@GMagicWaterInfo@@8");
// win1.41 009a8100 mac inlined GMagicWaterInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15GMagicWaterInfo asm("??_R2GMagicWaterInfo@@8");
// win1.41 009a8118 mac inlined GMagicWaterInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15GMagicWaterInfo asm("??_R3GMagicWaterInfo@@8");

// Override methods

// win1.41 004357a0 mac 103ac480 GMagicWaterInfo::_dt(void)
void __fastcall __dt__15GMagicWaterInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicWaterInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_WATER_INFO_INCLUDED_H */
