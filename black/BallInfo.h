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

// win1.41 008c4f30 mac 10737af4 GBallInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__9GBallInfo asm("??_R4GBallInfo@@6B@");

// win1.41 008c4f34 mac 10737afc GBallInfo::`vftable'
extern const struct GBaseInfoVftable __vt__9GBallInfo asm("??_7GBallInfo@@6B@");

#endif /* BW1_DECOMP_BALL_INFO_INCLUDED_H */
