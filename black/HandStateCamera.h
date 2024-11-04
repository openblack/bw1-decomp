#ifndef BW1_DECOMP_HAND_STATE_CAMERA_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_CAMERA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uintptr_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;

struct HandStateCamera
{
  struct HandState super;  /* 0x0 */
  uintptr_t field_0x8;
  uint8_t field_0xC[0xcc];
};
static_assert(sizeof(struct HandStateCamera) == 0xd8, "Data type is of wrong size");

static struct HandStateVftable* const __vt__15HandStateCamera = (struct HandStateVftable* const)0x00900a54;

// Constructors

// win1.41 005b02b0 mac 10336ec0 HandStateCamera::HandStateCamera(CHand*)
struct HandStateCamera* __fastcall __ct__15HandStateCameraFP5CHand(struct HandStateCamera* this, const void* edx, struct CHand* hand);

#endif /* BW1_DECOMP_HAND_STATE_CAMERA_INCLUDED_H */
