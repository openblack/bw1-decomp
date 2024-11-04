#ifndef BW1_DECOMP_LEASH_STATUS_INCLUDED_H
#define BW1_DECOMP_LEASH_STATUS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct GInterfaceStatus;

struct GLeashStatus
{
  struct GameThing super;  /* 0x0 */
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint32_t field_0x2c;
  uint8_t player_number;  /* 0x30 */
  uint32_t field_0x34;
  struct GInterfaceStatus* interface_status;
};
static_assert(sizeof(struct GLeashStatus) == 0x3c, "Data type is of wrong size");

static struct GameThingVftable* __vt__12GLeashStatus = (struct GameThingVftable*)0x0092abd0;

#endif /* BW1_DECOMP_LEASH_STATUS_INCLUDED_H */
