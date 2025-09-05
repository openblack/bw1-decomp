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

// win1.41 008de970 mac 109ed4ac HistoryBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10HistoryBox asm("??_R4HistoryBox@@6B@");

// win1.41 008de974 mac 109ed4b4 HistoryBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__10HistoryBox asm("??_7HistoryBox@@6B@");

#endif /* BW1_DECOMP_HISTORY_BOX_INCLUDED_H */
