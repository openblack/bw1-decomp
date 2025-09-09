#ifndef BW1_DECOMP_BALL_INFO_INCLUDED_H
#define BW1_DECOMP_BALL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GBallInfo
{
  struct GMobileObjectInfo super;  /* 0x0 */
  uint8_t field_0x114[0x2c];
};
static_assert(sizeof(struct GBallInfo) == 0x140, "Data type is of wrong size");

// win1.41 008c4f30 mac 10737af4 GBallInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__9GBallInfo asm("??_R4GBallInfo@@6B@");

// win1.41 008c4f34 mac 10737afc GBallInfo::`vftable'
extern const struct GBaseInfoVftable __vt__9GBallInfo asm("??_7GBallInfo@@6B@");

// Override methods

// win1.41 00435980 mac 100b0ff0 GBallInfo::_dt(void)
void __fastcall __dt__9GBallInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGBallInfo@@UAEPAXI@Z");
// win1.41 00435930 mac 100b1090 GBallInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__9GBallInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GBallInfo@@UAEPAVGBaseInfo@@AAI@Z");

struct GPBallInfo
{
  struct GMobileObjectInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GPBallInfo) == 0x114, "Data type is of wrong size");

// Override methods

// win1.41 0063e8c0 mac 10110ff0 GPBallInfo::_dt(void)
void __fastcall __dt__10GPBallInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGPBallInfo@@UAEPAXI@Z");
// win1.41 0063e870 mac 10111090 GPBallInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__10GPBallInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GPBallInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_BALL_INFO_INCLUDED_H */
