#ifndef BW1_DECOMP_TRIBE_INFO_INCLUDED_H
#define BW1_DECOMP_TRIBE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum TRIBE_TYPE */

#include "BaseInfo.h" /* For struct GBaseInfo */

struct GTribeInfo
{
  struct GBaseInfo super;  /* 0x0 */
  enum TRIBE_TYPE type;  /* 0x10 */
  uint32_t field_0x14;
  uint32_t field_0x18;
};
static_assert(sizeof(struct GTribeInfo) == 0x1c, "Data type is of wrong size");

static struct GBaseInfoVftable* __vt__10GTribeInfo = (struct GBaseInfoVftable*)0x0099a190;

// Static methods

// win1.41 0074c940 mac 10159bc0 GTribeInfo::GetTribeFromText(char const *)
struct GTribeInfo* __cdecl GetTribeFromText__10GTribeInfoFPCc(const char* str);

#endif /* BW1_DECOMP_TRIBE_INFO_INCLUDED_H */
