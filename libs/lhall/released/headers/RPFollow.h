#ifndef BW1_DECOMP_RP_FOLLOW_INCLUDED_H
#define BW1_DECOMP_RP_FOLLOW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t, uint32_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct Point2D */

#include "RPHolder.h" /* For struct RPHolder */

// Forward Declares

struct RPlan;
struct RouteNode;

struct RPFollow
{
  struct RPHolder super;  /* 0x0 */
  struct Point2D field_0x6402c;
  float field_0x64034;
  float field_0x64038;
  float field_0x6403c;
  float field_0x64040;
  struct Point2D field_0x64044;
  float field_0x6404c;
  float field_0x64050;
  uint32_t field_0x64054;
  uint32_t field_0x64058;
  int32_t field_0x6405c;
  uint32_t field_0x64060;
  void (__cdecl* field_0x64064)(int param_0, int param_1);
  void (__cdecl* field_0x64068)(int param_0, float param_1, float param_2);
  float (__cdecl* field_0x6406c)(int param_0);
  struct RouteNode* field_0x64070;
  struct Point2D field_0x64074;
  float field_0x6407c;
  float field_0x64080;
  float field_0x64084;
  uint32_t field_0x64088;
  struct RPlan* field_0x6408c;
  struct RPlan* field_0x64090[0x5];
  struct RouteNode* field_0x640a4[0x5];
  int field_0x640b8;
  int field_0x640bc;
};
static_assert(sizeof(struct RPFollow) == 0x640c0, "Data type is of wrong size");

// Constructors

// win1.41 008639e0 mac 100aad00 RPFollow::RPFollow(void)
struct RPFollow* __fastcall __ct__8RPFollowFv(struct RPFollow* this) asm("??0RPFollow@@QAE@XZ");

// Non-virtual methods

// win1.41 00863ac0 mac 100aab50 RPFollow::Init(int, void (*)(int, int), void (*)(int, float, float), float (*)(int), int)
void __fastcall Init__8RPFollowFiPFii_vPFiff_vPFi_fi(struct RPFollow* this, const void* edx, int param_1, void (__cdecl* param_2)(int param_1, int param_2), void (__cdecl* param_3)(int param_1, float param_2, float param_3), float (__cdecl* param_4)(int param_1), int param_5) asm("?Init@RPFollow@@QAEXHP6AXHH@ZP6AXHMM@ZP6AMH@ZH@Z");
// win1.41 00863b70 mac 100aa690 RPFollow::SetDest(Point2D const &, float, float, float, float)
void __fastcall SetDest__8RPFollowFRC7Point2Dffff(struct RPFollow* this, const void* edx, struct Point2D* param_1, float param_2, float param_3, float param_4, float param_5) asm("?SetDest@RPFollow@@QAEXABUPoint2D@@MMMM@Z");
// win1.41 00864990 mac 100a95a0 RPFollow::MoveAlongRoute(void)
void __fastcall MoveAlongRoute__8RPFollowFv(struct RPFollow* this) asm("?MoveAlongRoute@RPFollow@@QAEXXZ");
// win1.41 00864ba0 mac 100a92c0 RPFollow::FillPosAndHeading(Point2D &, float &, float)
void __fastcall FillPosAndHeading__8RPFollowFR7Point2DRff(struct RPFollow* this, const void* edx, struct Point2D* param_1, float* param_2, float param_3) asm("?FillPosAndHeading@RPFollow@@QAEXAAUPoint2D@@AAMM@Z");

#endif /* BW1_DECOMP_RP_FOLLOW_INCLUDED_H */
