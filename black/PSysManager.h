#ifndef BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H
#define BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "PSysBase.h" /* For struct PSysBase */

struct PSysManager
{
  struct PSysBase super;  /* 0x0 */
  uint8_t field_0x14[0xd0];
};
static_assert(sizeof(struct PSysManager) == 0xe4, "Data type is of wrong size");

// win1.41 009353bc mac 109b86b8 PSysManager::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__11PSysManager asm("??_R4PSysManager@@6B@");

// win1.41 009353c0 mac 109b86c0 PSysManager::`vftable'
extern const struct GameThingVftable __vt__11PSysManager asm("??_7PSysManager@@6B@");

#endif /* BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H */
