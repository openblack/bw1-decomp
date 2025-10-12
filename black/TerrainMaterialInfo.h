#ifndef BW1_DECOMP_TERRAIN_MATERIAL_INFO_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MATERIAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GTerrainMaterialInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GTerrainMaterialInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22ae0 mac inlined GTerrainMaterialInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20GTerrainMaterialInfo asm("??_R0?AVGTerrainMaterialInfo@@@8");
// win1.41 009b9940 mac inlined GTerrainMaterialInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20GTerrainMaterialInfo asm("??_R1A@?0A@A@GTerrainMaterialInfo@@8");
// win1.41 009b9958 mac inlined GTerrainMaterialInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20GTerrainMaterialInfo asm("??_R2GTerrainMaterialInfo@@8");
// win1.41 009b9968 mac inlined GTerrainMaterialInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20GTerrainMaterialInfo asm("??_R3GTerrainMaterialInfo@@8");

// Override methods

// win1.41 00735290 mac 105420c0 GTerrainMaterialInfo::_dt(void)
void __fastcall __dt__20GTerrainMaterialInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGTerrainMaterialInfo@@UAEPAXI@Z");
// win1.41 00735230 mac 10542330 GTerrainMaterialInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__20GTerrainMaterialInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GTerrainMaterialInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_TERRAIN_MATERIAL_INFO_INCLUDED_H */
