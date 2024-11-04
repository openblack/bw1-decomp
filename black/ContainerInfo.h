#ifndef BW1_DECOMP_CONTAINER_INFO_INCLUDED_H
#define BW1_DECOMP_CONTAINER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

struct GContainerInfo
{
  struct GBaseInfo super;  /* 0x0 */
  uint32_t field_0x10;
  uint8_t field_0x14[0xfc];
  uint32_t field_0x110;
  uint8_t field_0x114[0x2c];
  float field_0x140;
  float field_0x144;
};
static_assert(sizeof(struct GContainerInfo) == 0x148, "Data type is of wrong size");

#endif /* BW1_DECOMP_CONTAINER_INFO_INCLUDED_H */
