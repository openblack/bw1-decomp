#ifndef BW1_DECOMP_MAGIC_FLOCK_GROUND_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_FLOCK_GROUND_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

struct Base;

struct GMagicFlockGroundInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicFlockGroundInfo) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd008 mac inlined GMagicFlockGroundInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21GMagicFlockGroundInfo asm("??_R0?AVGMagicFlockGroundInfo@@@8");
// win1.41 009a8198 mac inlined GMagicFlockGroundInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21GMagicFlockGroundInfo asm("??_R1A@?0A@A@GMagicFlockGroundInfo@@8");
// win1.41 009a81b0 mac inlined GMagicFlockGroundInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21GMagicFlockGroundInfo asm("??_R2GMagicFlockGroundInfo@@8");
// win1.41 009a81c8 mac inlined GMagicFlockGroundInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21GMagicFlockGroundInfo asm("??_R3GMagicFlockGroundInfo@@8");

// Override methods

// win1.41 004357e0 mac 1051ece0 GMagicFlockGroundInfo::_dt(void)
void __fastcall __dt__21GMagicFlockGroundInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicFlockGroundInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_FLOCK_GROUND_INFO_INCLUDED_H */
