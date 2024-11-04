#ifndef BW1_DECOMP_MAGIC_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <chlasm/Enum.h> /* For enum MAGIC_TYPE */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct GMagicEffectInfo;

struct GMagicInfo
{
  struct GBaseInfo super;  /* 0x0 */
  int field_0x10;
  uint8_t field_0x14[0x44];
};
static_assert(sizeof(struct GMagicInfo) == 0x58, "Data type is of wrong size");

static struct GBaseInfoVftable* __vt__10GMagicInfo = (struct GBaseInfoVftable*)0x008c4cbc;

// Static methods

// win1.41 005fb3b0 mac 103ae320 GMagicInfo::GetInfoFromText(char const *)
enum MAGIC_TYPE __cdecl GetInfoFromText__10GMagicInfoFPCc(const char* text);

// Constructors

// win1.41 00435520 mac 1018eec0 GMagicInfo::GMagicInfo(void)
void __fastcall __ct__10GMagicInfoFv(struct GMagicInfo* this);

// Non-virtual methods

// win1.41 005fb3f0 mac 103ae2c0 GMagicInfo::GetMagicInfoText(void) const
const char* __fastcall GetMagicInfoText__10GMagicInfoCFv(const struct GMagicInfo* this);
// win1.41 005fb680 mac 103adc30 GMagicInfo::GetMagicEffectInfo(void) const
struct GMagicEffectInfo* __fastcall GetMagicEffectInfo__10GMagicInfoCFv(const struct GMagicInfo* this);

#endif /* BW1_DECOMP_MAGIC_INFO_INCLUDED_H */
