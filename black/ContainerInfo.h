#ifndef BW1_DECOMP_CONTAINER_INFO_INCLUDED_H
#define BW1_DECOMP_CONTAINER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GContainerInfo
{
  struct GBaseInfo super;  /* 0x0 */
  uint32_t field_0x10;
  uint8_t field_0x14[0xfc];
  uint32_t field_0x110;
  uint8_t field_0x114[0x2c];
  float field_0x140;
  float field_0x144;
};
static_assert(sizeof(struct GContainerInfo) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce7f0 mac inlined GContainerInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14GContainerInfo asm("??_R0?AVGContainerInfo@@@8");
// win1.41 009a8d50 mac inlined GContainerInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14GContainerInfo asm("??_R1A@?0A@A@GContainerInfo@@8");
// win1.41 009a91d8 mac inlined GContainerInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14GContainerInfo asm("??_R2GContainerInfo@@8");
// win1.41 009a91e8 mac inlined GContainerInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14GContainerInfo asm("??_R3GContainerInfo@@8");

// Override methods

// win1.41 0046b880 mac 100bfd60 GContainerInfo::_dt(void)
void __fastcall __dt__14GContainerInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGContainerInfo@@UAEPAXI@Z");
// win1.41 0046b820 mac 100bfe80 GContainerInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__14GContainerInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GContainerInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CONTAINER_INFO_INCLUDED_H */
