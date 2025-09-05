#ifndef BW1_DECOMP_INTERFACE_HAND_STATE_INCLUDED_H
#define BW1_DECOMP_INTERFACE_HAND_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Base.h" /* For struct Base */
#include "HandState.h" /* For enum HAND_STATES */

struct InterfaceHandState
{
  struct Base super;  /* 0x0 */
  enum HAND_STATES hand_state;
};
static_assert(sizeof(struct InterfaceHandState) == 0xc, "Data type is of wrong size");

// win1.41 0092aae0 mac 1099e2ac InterfaceHandState::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__18InterfaceHandState asm("??_R4InterfaceHandState@@6B@");

// win1.41 0092aae4 mac 1099e2b4 InterfaceHandState::`vftable'
extern const struct BaseVftable __vt__18InterfaceHandState asm("??_7InterfaceHandState@@6B@");

#endif /* BW1_DECOMP_INTERFACE_HAND_STATE_INCLUDED_H */
