#ifndef BW1_DECOMP_BW_LAN_INCLUDED_H
#define BW1_DECOMP_BW_LAN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LayerCommunication.h" /* For struct LayerCommunication */

struct BWLan
{
  struct LayerCommunication super;  /* 0x0 */
};
static_assert(sizeof(struct BWLan) == 0x4, "Data type is of wrong size");

// Override methods

// win1.41 00440ac0 mac 10180f20 BWLan::Connect(void)
uint32_t __fastcall Connect__5BWLanFv(struct LayerCommunication* this);

#endif /* BW1_DECOMP_BW_LAN_INCLUDED_H */
