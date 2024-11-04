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

static struct GObjectInfoVftable* const __vt__9GTreeInfo = (struct GObjectInfoVftable* const)0x0099a124;

#endif /* BW1_DECOMP_TREE_INFO_INCLUDED_H */
