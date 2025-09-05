#ifndef BW1_DECOMP_TREE_INFO_INCLUDED_H
#define BW1_DECOMP_TREE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */

struct GTreeInfo
{
  struct GSingleMapFixedInfo super;  /* 0x0 */
  uint8_t field_0x100[0x40];
};
static_assert(sizeof(struct GTreeInfo) == 0x140, "Data type is of wrong size");

// win1.41 0099a120 mac 1075e054 GTreeInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__9GTreeInfo asm("??_R4GTreeInfo@@6B@");

// win1.41 0099a124 mac 1075e05c GTreeInfo::`vftable'
extern const struct GObjectInfoVftable __vt__9GTreeInfo asm("??_7GTreeInfo@@6B@");

#endif /* BW1_DECOMP_TREE_INFO_INCLUDED_H */
