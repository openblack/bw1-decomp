#ifndef BW1_DECOMP_RP_AVOID_INCLUDED_H
#define BW1_DECOMP_RP_AVOID_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct Point2D */

struct RPAvoid
{
  float field_0x0;
  float field_0x4;
  struct Point2D field_0x8;
  float field_0x10;
};
static_assert(sizeof(struct RPAvoid) == 0x14, "Data type is of wrong size");

// Non-virtual methods

// win1.41 008690a0 mac 100a8da0 RPAvoid::PointIsTotallyInside(Point2D const &, float)
uint32_t __fastcall PointIsTotallyInside__7RPAvoidFRC7Point2Df(struct RPAvoid* this, const void* edx, struct Point2D* param_1, float param_2) asm("?PointIsTotallyInside@RPAvoid@@QAEIABUPoint2D@@M@Z");

#endif /* BW1_DECOMP_RP_AVOID_INCLUDED_H */
