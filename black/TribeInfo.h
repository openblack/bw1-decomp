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

// win1.41 0099a18c mac 1075e974 GTribeInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10GTribeInfo asm("??_R4GTribeInfo@@6B@");

// win1.41 0099a190 mac 1075e97c GTribeInfo::`vftable'
extern const struct GBaseInfoVftable __vt__10GTribeInfo asm("??_7GTribeInfo@@6B@");

// Static methods

// win1.41 0074c940 mac 10159bc0 GTribeInfo::GetTribeFromText(char const *)
struct GTribeInfo* __cdecl GetTribeFromText__10GTribeInfoFPCc(const char* str);

#endif /* BW1_DECOMP_TRIBE_INFO_INCLUDED_H */
