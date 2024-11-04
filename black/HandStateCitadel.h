#ifndef BW1_DECOMP_HAND_STATE_CITADEL_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;

struct HandStateCitadel
{
  struct HandState super;  /* 0x0 */
  uint32_t field_0x8;
  uint8_t field_0xC[0xc4];
};
static_assert(sizeof(struct HandStateCitadel) == 0xd0, "Data type is of wrong size");

static struct HandStateVftable* __vt__16HandStateCitadel = (struct HandStateVftable*)0x00900a80;

// Constructors

// win1.41 005b0bf0 mac 103377e0 HandStateCitadel::HandStateCitadel(CHand*)
struct HandStateCitadel* __fastcall __ct__16HandStateCitadelFP5CHand(struct HandStateCitadel* this, const void* edx, struct CHand* hand);

#endif /* BW1_DECOMP_HAND_STATE_CITADEL_INCLUDED_H */
