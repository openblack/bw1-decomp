#ifndef BW1_DECOMP_MAGIC_FIRE_BALL_INCLUDED_H
#define BW1_DECOMP_MAGIC_FIRE_BALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lhlib/VER5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */

#include "Object.h" /* For struct Object */

struct MagicFireBall
{
  struct Object super;  /* 0x0 */
  uint32_t field_0x54;
  bool field_0x58;
  uint32_t field_0x5c;
};
static_assert(sizeof(struct MagicFireBall) == 0x60, "Data type is of wrong size");

static struct ObjectVftable* __vt__13MagicFireBall = (struct ObjectVftable*)0x0093595c;

// Constructors

// win1.41 00682a20 mac 103fca90 MagicFireBall::MagicFireBall(void)
struct MagicFireBall* __fastcall __ct__13MagicFireBallFv(struct MagicFireBall* this);

DECLARE_LH_LIST_HEAD(MagicFireBall);

#endif /* BW1_DECOMP_MAGIC_FIRE_BALL_INCLUDED_H */
