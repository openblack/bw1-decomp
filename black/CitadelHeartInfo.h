#ifndef BW1_DECOMP_CITADEL_HEART_INFO_INCLUDED_H
#define BW1_DECOMP_CITADEL_HEART_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CitadelPartInfo.h" /* For struct GCitadelPartInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GCitadelHeartInfo
{
  struct GCitadelPartInfo super;  /* 0x0 */
  uint32_t field_0x134;
  uint32_t field_0x138;
  uint32_t field_0x13c;
  float field_0x140;
  float field_0x144;
  float field_0x148;
  float field_0x14c;
  float field_0x150;
  float field_0x154;
};
static_assert(sizeof(struct GCitadelHeartInfo) == 0x158, "Data type is of wrong size");

// Override methods

// win1.41 004643e0 mac 101c1bf0 GCitadelHeartInfo::_dt(void)
void __fastcall __dt__17GCitadelHeartInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGCitadelHeartInfo@@UAEPAXI@Z");
// win1.41 00464390 mac 101c1de0 GCitadelHeartInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__17GCitadelHeartInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GCitadelHeartInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CITADEL_HEART_INFO_INCLUDED_H */
