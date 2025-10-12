#ifndef BW1_DECOMP_ANIMAL_STATE_TABLE_INFO_INCLUDED_H
#define BW1_DECOMP_ANIMAL_STATE_TABLE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GAnimalStateTableInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GAnimalStateTableInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8d88 mac inlined GAnimalStateTableInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21GAnimalStateTableInfo asm("??_R0?AVGAnimalStateTableInfo@@@8");
// win1.41 009a6b98 mac inlined GAnimalStateTableInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21GAnimalStateTableInfo asm("??_R1A@?0A@A@GAnimalStateTableInfo@@8");
// win1.41 009a6bb0 mac inlined GAnimalStateTableInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21GAnimalStateTableInfo asm("??_R2GAnimalStateTableInfo@@8");
// win1.41 009a6bc0 mac inlined GAnimalStateTableInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21GAnimalStateTableInfo asm("??_R3GAnimalStateTableInfo@@8");

// Override methods

// win1.41 00416e80 mac 1016b620 GAnimalStateTableInfo::_dt(void)
void __fastcall __dt__21GAnimalStateTableInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGAnimalStateTableInfo@@UAEPAXI@Z");
// win1.41 00416e10 mac 1016cd20 GAnimalStateTableInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__21GAnimalStateTableInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GAnimalStateTableInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_ANIMAL_STATE_TABLE_INFO_INCLUDED_H */
