#ifndef BW1_DECOMP_TERRAIN_MATERIAL_INFO_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MATERIAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GTerrainMaterialInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GTerrainMaterialInfo) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 00735290 mac 105420c0 GTerrainMaterialInfo::_dt(void)
void __fastcall __dt__20GTerrainMaterialInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGTerrainMaterialInfo@@UAEPAXI@Z");
// win1.41 00735230 mac 10542330 GTerrainMaterialInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__20GTerrainMaterialInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GTerrainMaterialInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_TERRAIN_MATERIAL_INFO_INCLUDED_H */
