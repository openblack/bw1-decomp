#ifndef BW1_DECOMP_FIELD_TYPE_INFO_INCLUDED_H
#define BW1_DECOMP_FIELD_TYPE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

struct GFieldTypeInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
  uint8_t field_0x20[0x34];  /* 0x120 */
};
static_assert(sizeof(struct GFieldTypeInfo) == 0x154, "Data type is of wrong size");

// win1.41 008d9b2c mac 1073ed24 GFieldTypeInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14GFieldTypeInfo asm("??_R4GFieldTypeInfo@@6B@");

// win1.41 008d9b30 mac 1073ed2c GFieldTypeInfo::`vftable'
extern const struct MultiMapFixedVftable __vt__14GFieldTypeInfo asm("??_7GFieldTypeInfo@@6B@");

// win1.41 00527cf0 mac inlined __sinit_GFieldTypeInfo_cpp
void __cdecl __sinit_GFieldTypeInfo_cpp(void);

#endif /* BW1_DECOMP_FIELD_TYPE_INFO_INCLUDED_H */
