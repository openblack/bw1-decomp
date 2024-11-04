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

static struct BaseVftable* __vt__18InterfaceHandState = (struct BaseVftable*)0x0092aae4;

#endif /* BW1_DECOMP_INTERFACE_HAND_STATE_INCLUDED_H */
