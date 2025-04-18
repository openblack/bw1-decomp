#ifndef BW1_DECOMP_RP_HOLDER_INCLUDED_H
#define BW1_DECOMP_RP_HOLDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_common.h> /* For struct vec2u16 */

#include "RPAvoid.h" /* For struct RPAvoid */

// Forward Declares

struct Point2D;
struct RPFollow;

struct RPHolder
{
  struct RPAvoid avoid_array[0x4000];  /* 0x0 */
  int avoid_count;  /* 0x50000 */
  struct Point2D* field_0x50004;
  struct Point2D* field_0x50008;
  uint32_t field_0x5000c[0x4];
  uint8_t field_0x5001c;
  float field_0x50020;
  struct RPFollow* field_0x50024;
  struct vec2u16 field_0x50028[0x1000];
  struct vec2u16 field_0x54028[0x4000];
  uint32_t field_0x64028;
};
static_assert(sizeof(struct RPHolder) == 0x6402c, "Data type is of wrong size");

// Constructors

// win1.41 0083b2e0 mac 1061b374 RPHolder::RPHolder(void)
struct RPHolder* __fastcall __ct__8RPHolderFv(struct RPHolder* this);

// Non-virtual methods

// win1.41 0083b330 mac 1061c58c RPHolder::Empty(void)
void __fastcall Empty__8RPHolderFv(struct RPHolder* this);
// win1.41 0083b860 mac 100ac020 RPHolder::GetSidePointOfStartObject(int, Point2D const &, Point2D &, int)
uint32_t __fastcall GetSidePointOfStartObject__8RPHolderFiRC7Point2DR7Point2Di(struct RPHolder* this, const void* edx, int param_1, struct Point2D* param_2, struct Point2D* param_3, int param_4);
// win1.41 0083bb60 mac 100ab580 RPHolder::GetFirstObject(Point2D const &, Point2D &, int, Point2D &, int &, float)
int __fastcall GetFirstObject__8RPHolderFRC7Point2DR7Point2DiR7Point2DRif(struct RPHolder* this, const void* edx, struct Point2D* param_1, struct Point2D* param_2, int param_3, struct Point2D* param_4, int* param_5, float param_6);

#endif /* BW1_DECOMP_RP_HOLDER_INCLUDED_H */
