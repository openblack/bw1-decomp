#ifndef BW1_DECOMP_CHANNEL_BOX_INCLUDED_H
#define BW1_DECOMP_CHANNEL_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct ChannelBox
{
  struct DialogBoxBase super;  /* 0x0 */
  uint8_t field_0x10[0xac4];
};
static_assert(sizeof(struct ChannelBox) == 0xad4, "Data type is of wrong size");

// win1.41 008dea38 mac 109a1fb0 ChannelBox::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10ChannelBox asm("??_R4ChannelBox@@6B@");

// win1.41 008dea3c mac 109a1fb8 ChannelBox::`vftable'
extern const struct DialogBoxBaseVftable __vt__10ChannelBox asm("??_7ChannelBox@@6B@");

#endif /* BW1_DECOMP_CHANNEL_BOX_INCLUDED_H */
