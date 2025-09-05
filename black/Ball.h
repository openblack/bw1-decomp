#ifndef BW1_DECOMP_BALL_INCLUDED_H
#define BW1_DECOMP_BALL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <lionhead/lhlib/ver5.0/LHListHead.h> /* For DECLARE_LH_LIST_HEAD */
#include <reversing_utils/re_common.h> /* For bool32_t */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

struct GBallInfo;
struct MapCoords;
struct Town;

struct Ball
{
  struct MobileObject super;  /* 0x0 */
  uint32_t field_0x68;
  struct LHPoint field_0x6c;
  struct LHPoint field_0x78;
  uint32_t field_0x84;
  uint32_t field_0x88;
  uint32_t field_0x8c;
  bool32_t is_owned;  /* 0x90 */
  uint32_t field_0x94;
  uint32_t field_0x98;
  uint32_t field_0x9c;
  struct Town* town;  /* 0xa0 */
  uint32_t field_0xa4;
  uint32_t field_0xa8;
  uint32_t field_0xac;
  uint32_t field_0xb0;
  uint32_t field_0xb4;
};
static_assert(sizeof(struct Ball) == 0xb8, "Data type is of wrong size");

// win1.41 008c4f70 mac 107371dc Ball::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__4Ball asm("??_R4Ball@@6B@");

// win1.41 008c4f74 mac 107371e4 Ball::`vftable'
extern const struct MobileVftable __vt__4Ball asm("??_7Ball@@6B@");

// Constructors

// win1.41 004359b0 mac 100b0df0 Ball::Ball(MapCoords const &, GBallInfo const *)
struct Ball* __fastcall __ct__4BallFRC9MapCoordsPC9GBallInfo(struct Ball* this, const void* edx, const struct MapCoords* coords, const struct GBallInfo* info);

// Non-virtual methods

// win1.41 004360e0 mac 100b04d0 Ball::IsBallFree(void)
bool __fastcall IsBallFree__4BallFv(struct Ball* this);

DECLARE_LH_LIST_HEAD(Ball);

#endif /* BW1_DECOMP_BALL_INCLUDED_H */
