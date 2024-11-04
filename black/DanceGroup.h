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

static struct GameThingVftable* __vt__10DanceGroup = (struct GameThingVftable*)0x008d44d0;

#endif /* BW1_DECOMP_DANCE_GROUP_INCLUDED_H */
