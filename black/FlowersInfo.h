#ifndef BW1_DECOMP_FLOWERS_INFO_INCLUDED_H
#define BW1_DECOMP_FLOWERS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "FeatureInfo.h" /* For struct GFeatureInfo */

// Forward Declares

struct Base;
struct GObjectInfo;

struct GFlowersInfo
{
  struct GFeatureInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GFlowersInfo) == 0x120, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9ce0 mac inlined GFlowersInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12GFlowersInfo asm("??_R0?AVGFlowersInfo@@@8");
// win1.41 009ac0b0 mac inlined GFlowersInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12GFlowersInfo asm("??_R1A@?0A@A@GFlowersInfo@@8");
// win1.41 009ac0c8 mac inlined GFlowersInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12GFlowersInfo asm("??_R2GFlowersInfo@@8");
// win1.41 009ac0e8 mac inlined GFlowersInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12GFlowersInfo asm("??_R3GFlowersInfo@@8");

// Override methods

// win1.41 00527910 mac 100d06a0 GFlowersInfo::_dt(void)
void __fastcall __dt__12GFlowersInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGFlowersInfo@@UAEPAXI@Z");
// win1.41 005278b0 mac 100d15c0 GFlowersInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__12GFlowersInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GFlowersInfo@@UBEIXZ");

#endif /* BW1_DECOMP_FLOWERS_INFO_INCLUDED_H */
