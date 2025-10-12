#ifndef BW1_DECOMP_FISH_FARM_INFO_INCLUDED_H
#define BW1_DECOMP_FISH_FARM_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

struct Base;
struct GBaseInfo;
struct MapCoords;

struct GFishFarmInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GFishFarmInfo) == 0x120, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9e08 mac inlined GFishFarmInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__13GFishFarmInfo asm("??_R0?AVGFishFarmInfo@@@8");
// win1.41 009ac2e8 mac inlined GFishFarmInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__13GFishFarmInfo asm("??_R1A@?0A@A@GFishFarmInfo@@8");
// win1.41 009ac300 mac inlined GFishFarmInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__13GFishFarmInfo asm("??_R2GFishFarmInfo@@8");
// win1.41 009ac318 mac inlined GFishFarmInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__13GFishFarmInfo asm("??_R3GFishFarmInfo@@8");

// Override methods

// win1.41 0052c330 mac 100da430 GFishFarmInfo::_dt(void)
void __fastcall __dt__13GFishFarmInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGFishFarmInfo@@UAEPAXI@Z");
// win1.41 0052c2e0 mac 100da3d0 GFishFarmInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__13GFishFarmInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GFishFarmInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 0052d100 mac 100db8c0 GFishFarmInfo::IsOkToCreateAtPos( const(MapCoords const &, float, float))
bool __fastcall IsOkToCreateAtPos__13GFishFarmInfoCFRC9MapCoordsff(const struct GMultiMapFixedInfo* this, const void* edx, const struct MapCoords* param_1, float param_2, float param_3) asm("?IsOkToCreateAtPos@GFishFarmInfo@@UBE_NABUMapCoords@@MM@Z");

#endif /* BW1_DECOMP_FISH_FARM_INFO_INCLUDED_H */
