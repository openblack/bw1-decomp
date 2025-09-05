#ifndef BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H
#define BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

struct CreatureCommandState
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0x14];
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  int field_0x28;
};
static_assert(sizeof(struct CreatureCommandState) == 0x2c, "Data type is of wrong size");

// win1.41 008cf96c mac 10787554 CreatureCommandState::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__20CreatureCommandState asm("??_R4CreatureCommandState@@6B@");

// win1.41 008cf970 mac 1078755c CreatureCommandState::`vftable'
extern const struct BaseVftable __vt__20CreatureCommandState asm("??_7CreatureCommandState@@6B@");

#endif /* BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H */
