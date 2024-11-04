#ifndef BW1_DECOMP_BALL_INFO_INCLUDED_H
#define BW1_DECOMP_BALL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

struct GBallInfo
{
  struct GMobileObjectInfo super;  /* 0x0 */
  uint8_t field_0x114[0x2c];
};
static_assert(sizeof(struct GBallInfo) == 0x140, "Data type is of wrong size");

static struct GBaseInfoVftable* const __vt__9GBallInfo = (struct GBaseInfoVftable* const)0x008c4f34;

#endif /* BW1_DECOMP_BALL_INFO_INCLUDED_H */
