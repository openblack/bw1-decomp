#ifndef BW1_DECOMP_ANIMAL_INFO_INCLUDED_H
#define BW1_DECOMP_ANIMAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "LivingInfo.h" /* For struct GLivingInfo */

// Forward Declares

struct Base;
struct GBaseInfo;
struct GObjectInfo;

struct GAnimalInfo
{
  struct GLivingInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GAnimalInfo) == 0x1f4, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c8d68 mac inlined GAnimalInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11GAnimalInfo asm("??_R0?AVGAnimalInfo@@@8");
// win1.41 009a6b38 mac inlined GAnimalInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11GAnimalInfo asm("??_R1A@?0A@A@GAnimalInfo@@8");
// win1.41 009a6b50 mac inlined GAnimalInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11GAnimalInfo asm("??_R2GAnimalInfo@@8");
// win1.41 009a6b70 mac inlined GAnimalInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11GAnimalInfo asm("??_R3GAnimalInfo@@8");

// Override methods

// win1.41 00416da0 mac 1016c970 GAnimalInfo::_dt(void)
void __fastcall __dt__11GAnimalInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGAnimalInfo@@UAEPAXI@Z");
// win1.41 00416d30 mac 1016cc70 GAnimalInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__11GAnimalInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GAnimalInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 00416d20 mac 1016cc30 GAnimalInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__11GAnimalInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GAnimalInfo@@UBEIXZ");

#endif /* BW1_DECOMP_ANIMAL_INFO_INCLUDED_H */
