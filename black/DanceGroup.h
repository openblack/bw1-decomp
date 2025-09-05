#ifndef BW1_DECOMP_DANCE_GROUP_INCLUDED_H
#define BW1_DECOMP_DANCE_GROUP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct GroupBehaviour;

enum DANCE_GROUP_ACTION_TYPE
{
  DANCE_GROUP_ACTION_TYPE_0 = 0x0,
  _DANCE_GROUP_ACTION_TYPE_COUNT = 0x1
};
static_assert(sizeof(enum DANCE_GROUP_ACTION_TYPE) == 0x4, "Data type is of wrong size");

static const char* DANCE_GROUP_ACTION_TYPE_strs[_DANCE_GROUP_ACTION_TYPE_COUNT] = {
  "DANCE_GROUP_ACTION_TYPE_0",
};

struct DanceGroup
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14[0x4];
  struct GroupBehaviour* behaviour;
  uint8_t field_0x1c[0x40];
  uint32_t field_0x5c;
  uint8_t field_0x60[0x11c];
};
static_assert(sizeof(struct DanceGroup) == 0x17c, "Data type is of wrong size");

// win1.41 008d44cc mac 10996e7c DanceGroup::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__10DanceGroup asm("??_R4DanceGroup@@6B@");

// win1.41 008d44d0 mac 10996e84 DanceGroup::`vftable'
extern const struct GameThingVftable __vt__10DanceGroup asm("??_7DanceGroup@@6B@");

#endif /* BW1_DECOMP_DANCE_GROUP_INCLUDED_H */
