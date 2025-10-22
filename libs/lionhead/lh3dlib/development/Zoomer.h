#ifndef BW1_DECOMP_ZOOMER_INCLUDED_H
#define BW1_DECOMP_ZOOMER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHPoint.h" /* For struct LHPoint */

struct Zoomer
{
  float current_value;  /* 0x0 */
  float destination;
  float destination_speed;
  float current_speed;
  float time_m2;  /* 0x10 */
  float current_time;
  float duration;
  float start_value;
  float start_speed;  /* 0x20 */
  struct LHPoint non_linear_acceleration;
};
static_assert(sizeof(struct Zoomer) == 0x30, "Data type is of wrong size");

// Constructors

// win1.41 inlined mac 1056a120 Zoomer::Zoomer()
struct Zoomer* __fastcall __ct__6ZoomerFv(struct Zoomer* this) asm("??0Zoomer@@QAE@XZ");

// Non-virtual methods

// win1.41 inlined mac inlined Zoomer::SetDestination(float)
void __fastcall SetDestination__6ZoomerFf(struct Zoomer* this, const void* edx, float destination) asm("?SetDestination@Zoomer@@QAEXM@Z");
// win1.41 inlined mac 10038020 Zoomer::GetCurrentValue(void)
float __fastcall GetCurrentValue__6ZoomerFv(struct Zoomer* this) asm("?GetCurrentValue@Zoomer@@QAEMXZ");
// win1.41 inlined mac 10020df0 Zoomer::GetDestination(void)
float __fastcall GetDestination__6ZoomerFv(struct Zoomer* this) asm("?GetDestination@Zoomer@@QAEMXZ");
// win1.41 00407d60 mac 1004ee60 Zoomer::SetDestinationWithSpeedAndTime(float, float, float)
void __fastcall SetDestinationWithSpeedAndTime__6ZoomerFfff(struct Zoomer* this, const void* edx, float destination, float speed, float time) asm("?SetDestinationWithSpeedAndTime@Zoomer@@QAEXMMM@Z");
// win1.41 00441ac0 mac 1035b310 Zoomer::SetPosition(float)
void __fastcall SetPosition__6ZoomerFf(struct Zoomer* this, const void* edx, float position) asm("?SetPosition@Zoomer@@QAEXM@Z");
// win1.41 00442720 mac 1002c480 Zoomer::Update(float)
void __fastcall Update__6ZoomerFf(struct Zoomer* this, const void* edx, float dt) asm("?Update@Zoomer@@QAEXM@Z");

struct Zoomer3d
{
  struct Zoomer x;  /* 0x0 */
  struct Zoomer y;  /* 0x30 */
  struct Zoomer z;  /* 0x60 */
};
static_assert(sizeof(struct Zoomer3d) == 0x90, "Data type is of wrong size");

// Non-virtual methods

// win1.41 004605d0 mac 10031e60 Zoomer3d::GetCurrentValue(void)
struct LHPoint* __fastcall GetCurrentValue__8Zoomer3dFv(struct Zoomer3d* this, const void* edx, struct LHPoint* out_point) asm("?GetCurrentValue@Zoomer3d@@QAEPAULHPoint@@XZ");
// win1.41 inlined mac 10020d50 Zoomer3d::GetDestination(void)
struct LHPoint* __fastcall GetDestination__8Zoomer3dFv(struct Zoomer3d* this, const void* edx, struct LHPoint* out_point) asm("?GetDestination@Zoomer3d@@QAEPAULHPoint@@XZ");
// win1.41 inlined mac inlined Zoomer3d::Update(float)
void __fastcall Update__8Zoomer3dFf(struct Zoomer3d* this, const void* edx, float dt) asm("?Update@Zoomer3d@@QAEXM@Z");
// win1.41 inlined mac inlined Zoomer3d::SetDestinationWithSpeedAndTime(LHPoint const &, float, float)
void __fastcall SetDestinationWithSpeedAndTime__8Zoomer3dFRC7LHPointff(struct Zoomer3d* this, const void* edx, const struct LHPoint* destination, float speed, float time) asm("?SetDestinationWithSpeedAndTime@Zoomer3d@@QAEXABULHPoint@@MM@Z");
// win1.41 0044e760 mac inlined Zoomer3d::SetDestinationWithTime(LHPoint const &, float)
void __fastcall SetDestinationWithTime__8Zoomer3dFRC7LHPointf(struct Zoomer3d* this, const void* edx, const struct LHPoint* destination, float time) asm("?SetDestinationWithTime@Zoomer3d@@QAEXABULHPoint@@M@Z");
// win1.41 inlined mac inlined Zoomer3d::SetPosition(LHPoint const &)
void __fastcall SetPosition__8Zoomer3dFRC7LHPoint(struct Zoomer3d* this, const void* edx, const struct LHPoint* destination) asm("?SetPosition@Zoomer3d@@QAEXABULHPoint@@@Z");

#endif /* BW1_DECOMP_ZOOMER_INCLUDED_H */
