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

// win1.41 0092abcc mac 109a0a54 GLeashStatus::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12GLeashStatus asm("??_R4GLeashStatus@@6B@");

// win1.41 0092abd0 mac 109a0a5c GLeashStatus::`vftable'
extern const struct GameThingVftable __vt__12GLeashStatus asm("??_7GLeashStatus@@6B@");

#endif /* BW1_DECOMP_LEASH_STATUS_INCLUDED_H */
