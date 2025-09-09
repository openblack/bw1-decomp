#ifndef BW1_DECOMP_FURNITURE_INFO_INCLUDED_H
#define BW1_DECOMP_FURNITURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h" /* For struct GObjectInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GFurnitureInfo
{
  struct GObjectInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GFurnitureInfo) == 0x100, "Data type is of wrong size");

// Override methods

// win1.41 0054a3c0 mac 100f2b20 GFurnitureInfo::_dt(void)
void __fastcall __dt__14GFurnitureInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGFurnitureInfo@@UAEPAXI@Z");
// win1.41 0054a350 mac 100f2c30 GFurnitureInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__14GFurnitureInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GFurnitureInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_FURNITURE_INFO_INCLUDED_H */
