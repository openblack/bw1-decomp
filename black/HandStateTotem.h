#ifndef BW1_DECOMP_HAND_STATE_TOTEM_INCLUDED_H
#define BW1_DECOMP_HAND_STATE_TOTEM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "HandState.h" /* For struct HandState */

// Forward Declares

struct CHand;

struct HandStateTotem
{
  struct HandState super;  /* 0x0 */
  uint8_t field_0x8[0xa4];
};
static_assert(sizeof(struct HandStateTotem) == 0xac, "Data type is of wrong size");

static struct HandStateVftable* __vt__14HandStateTotem = (struct HandStateVftable*)0x00900be4;

// Constructors

// win1.41 005b7670 mac 1033d4c0 HandStateTotem::HandStateTotem(CHand*)
struct HandStateTotem* __fastcall __ct__14HandStateTotemFP5CHand(struct HandStateTotem* this, const void* edx, struct CHand* hand);

#endif /* BW1_DECOMP_HAND_STATE_TOTEM_INCLUDED_H */
