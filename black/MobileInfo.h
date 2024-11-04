#ifndef BW1_DECOMP_MOBILE_INFO_INCLUDED_H
#define BW1_DECOMP_MOBILE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h" /* For struct GObjectInfo */

struct GMobileInfo
{
  struct GObjectInfo super;  /* 0x0 */
  uint32_t field_0x100;
};
static_assert(sizeof(struct GMobileInfo) == 0x104, "Data type is of wrong size");

#endif /* BW1_DECOMP_MOBILE_INFO_INCLUDED_H */
