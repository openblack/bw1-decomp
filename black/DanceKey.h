#ifndef BW1_DECOMP_DANCE_KEY_INCLUDED_H
#define BW1_DECOMP_DANCE_KEY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint8_t */

#include "DanceGroup.h" /* For enum DANCE_GROUP_ACTION_TYPE */
#include "GameThing.h" /* For struct GameThing */

// Forward Declares

struct DanceGroupActionArgument;

struct DanceKeyFrame
{
  struct GameThing super;  /* 0x0 */
  uint8_t field_0x14[0x10];
};
static_assert(sizeof(struct DanceKeyFrame) == 0x24, "Data type is of wrong size");

static struct GameThingVftable* __vt__13DanceKeyFrame = (struct GameThingVftable*)0x008d46f0;

// Constructors

// win1.41 0050eb60 mac 102ae450 DanceKeyFrame::DanceKeyFrame(long, LHDynamicStack<Ul> &, DANCE_GROUP_ACTION_TYPE, DanceGroupActionArgument const &)
struct DanceKeyFrame* __fastcall __ct__13DanceKeyFrameFlR18LHDynamicStack_Ul_23DANCE_GROUP_ACTION_TYPERC24DanceGroupActionArgument(struct DanceKeyFrame* this, const void* edx, int32_t param_1, struct LHDynamicStack__Ul stack, enum DANCE_GROUP_ACTION_TYPE action_type, const struct DanceGroupActionArgument* arguments);

#endif /* BW1_DECOMP_DANCE_KEY_INCLUDED_H */
