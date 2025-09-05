#ifndef BW1_DECOMP_MOBILE_STATIC_INFO_INCLUDED_H
#define BW1_DECOMP_MOBILE_STATIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

struct GMobileStaticInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
  uint8_t field_0x120[0xc];
};
static_assert(sizeof(struct GMobileStaticInfo) == 0x12c, "Data type is of wrong size");

// win1.41 00930608 mac 109acc58 GMobileStaticInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__17GMobileStaticInfo asm("??_R4GMobileStaticInfo@@6B@");

// win1.41 0093060c mac 109acc60 GMobileStaticInfo::`vftable'
extern const struct GMultiMapFixedInfoVftable __vt__17GMobileStaticInfo asm("??_7GMobileStaticInfo@@6B@");

// Static methods

// win1.41 005ff2f0 mac 103c1190 GMobileStaticInfo::GetInfo(void)
struct GMobileStaticInfo* __cdecl GetInfo__17GMobileStaticInfoFv(void);

#endif /* BW1_DECOMP_MOBILE_STATIC_INFO_INCLUDED_H */
