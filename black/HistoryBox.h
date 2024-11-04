#ifndef BW1_DECOMP_HISTORY_BOX_INCLUDED_H
#define BW1_DECOMP_HISTORY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct HistoryBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0xc];
};
static_assert(sizeof(struct HistoryBox) == 0x1c, "Data type is of wrong size");

static struct DialogBoxBaseVftable* __vt__10HistoryBox = (struct DialogBoxBaseVftable*)0x008de974;

#endif /* BW1_DECOMP_HISTORY_BOX_INCLUDED_H */
