#ifndef BW1_DECOMP_R_PLAN_INCLUDED_H
#define BW1_DECOMP_R_PLAN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct Point2D */

// Forward Declares

struct RPHolder;
struct Route;
struct VisitBlock;

struct RPlan
{
  struct RPHolder* holder;  /* 0x0 */
  float field_0x4;
  int field_0x8;
  int field_0xc;
  int field_0x10;
  int field_0x14;
  int field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  struct Point2D field_0x24;
  struct Point2D field_0x2c;
  struct Point2D field_0x34;
  float field_0x3c;
  float field_0x40;
  float field_0x44;
  float field_0x48;
  float field_0x4c;
  uint32_t field_0x50;
  uint32_t field_0x54;
  struct VisitBlock* visit_blocks;
  float field_0x5c;
  struct Route* route_0x60;
  uint32_t field_0x64;
  struct Route* route_0x68;
  struct Route* route_0x6c;
  struct Route* route_0x70;
};
static_assert(sizeof(struct RPlan) == 0x74, "Data type is of wrong size");

// Constructors

// win1.41 0086e0d0 mac 100aefe0 RPlan::RPlan(void)
struct RPlan* __fastcall __ct__5RPlanFv(struct RPlan* this) asm("??0RPlan@@QAE@XZ");

// Non-virtual methods

// win1.41 0086e100 mac 100aee30 RPlan::FreeRoutes(void)
void __fastcall FreeRoutes__5RPlanFv(struct RPlan* this) asm("?FreeRoutes@RPlan@@QAEXXZ");
// win1.41 0086e200 mac 100aed70 RPlan::SetStart(Point2D const &, float, RPHolder *, int, int, int)
void __fastcall SetStart__5RPlanFRC7Point2DfP8RPHolderiii(struct RPlan* this, const void* edx, struct Point2D* param_1, float param_2, struct RPHolder* holder, int param_4, int param_5, int param_6) asm("?SetStart@RPlan@@QAEXABUPoint2D@@MPAURPHolder@@HHH@Z");
// win1.41 0086e250 mac 100ae750 RPlan::SetDest(Point2D const &, float, float, float, int, int, float, int)
void __fastcall SetDest__5RPlanFRC7Point2Dfffiifi(struct RPlan* this, const void* edx, const struct Point2D* param_1, float param_2, float param_3, float param_4, int param_5, int param_6, float param_7, int param_8) asm("?SetDest@RPlan@@QAEXABUPoint2D@@MMMHHMH@Z");
// win1.41 0086e9a0 mac 1061b3ec RPlan::GameTurnUpdate(int)
void __fastcall GameTurnUpdate__5RPlanFi(struct RPlan* this, const void* edx, int param_2) asm("?GameTurnUpdate@RPlan@@QAEXH@Z");
// win1.41 0086e0f0 mac 100aef60 RPlan::~RPlan(void)
void __fastcall __dt__5RPlanFv(struct RPlan* this) asm("??_DRPlan@@QAEXXZ");

#endif /* BW1_DECOMP_R_PLAN_INCLUDED_H */
