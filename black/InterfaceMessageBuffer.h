#ifndef BW1_DECOMP_INTERFACE_MESSAGE_BUFFER_INCLUDED_H
#define BW1_DECOMP_INTERFACE_MESSAGE_BUFFER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "Base.h" /* For struct Base */

struct GInterfaceMessageBuffer
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0xc];
};
static_assert(sizeof(struct GInterfaceMessageBuffer) == 0x14, "Data type is of wrong size");

// win1.41 0092aaa0 mac 1099f8dc GInterfaceMessageBuffer::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__23GInterfaceMessageBuffer asm("??_R4GInterfaceMessageBuffer@@6B@");

// win1.41 0092aaa4 mac 1099f8e4 GInterfaceMessageBuffer::`vftable'
extern const struct BaseVftable __vt__23GInterfaceMessageBuffer asm("??_7GInterfaceMessageBuffer@@6B@");

#endif /* BW1_DECOMP_INTERFACE_MESSAGE_BUFFER_INCLUDED_H */
