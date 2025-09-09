#ifndef BW1_DECOMP_INTERFACE_HAND_STATE_INCLUDED_H
#define BW1_DECOMP_INTERFACE_HAND_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

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

// Override methods

// win1.41 005ce360 mac 1035c790 InterfaceHandState::_dt(void)
void __fastcall __dt__18InterfaceHandStateFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GInterfaceHandState@@UAEPAXI@Z");

#endif /* BW1_DECOMP_INTERFACE_HAND_STATE_INCLUDED_H */
