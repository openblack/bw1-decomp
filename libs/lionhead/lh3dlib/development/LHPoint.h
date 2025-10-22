#ifndef BW1_DECOMP_LH_POINT_INCLUDED_H
#define BW1_DECOMP_LH_POINT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */

struct Point2D
{
  float x;  /* 0x0 */
  float y;
};
static_assert(sizeof(struct Point2D) == 0x8, "Data type is of wrong size");

// Constructors

// win1.41 inlined mac inlined Point2D::Point2D(float, float)
struct Point2D* __fastcall __ct__7Point2DFff(struct Point2D* this, const void* edx, float x, float y) asm("??0Point2D@@QAE@MM@Z");
// win1.41 inlined mac inlined Point2D::Point2D(long, long)
struct Point2D* __fastcall __ct__7Point2DFll(struct Point2D* this, const void* edx, int x, int y) asm("??0Point2D@@QAE@JJ@Z");

// Non-virtual methods

// win1.41 00468480 mac 100a8d60 Point2D::operator=(const Point2D&)
struct Point2D* __fastcall __as__7Point2DFRC7Point2D(struct Point2D* this, const void* edx, const struct Point2D* other) asm("?__as@Point2D@@QAEPAV1@ABV1@@Z");
// win1.41 00611170 mac inlined Point2D::DotProduct(Point2D&)
float __fastcall DotProduct__7Point2DRP7Point2D(const struct Point2D* this, const void* edx, const struct Point2D* other);
// win1.41 00611220 mac inlined Point2D::operator=(const Point2D&) copy
struct Point2D* __fastcall __as__7Point2DFRC7Point2D_2(struct Point2D* this, const void* edx, const struct Point2D* other);
// win1.41 00611310 mac inlined Point2D::DotProduct(Point2D*)
float __fastcall DotProduct__7Point2DFP7Point2D(const struct Point2D* this, const void* edx, const struct Point2D* other) asm("?DotProduct@Point2D@@QAEMPAV1@@Z");
// win1.41 00611190 mac 10033740 Point2D::operator*(float) const
struct Point2D* __fastcall __ml__7Point2DCFf(const struct Point2D* this, const void* edx, struct Point2D* result, float rhs) asm("?__ml@Point2D@@QBEPAV1@M@Z");
// win1.41 inlined mac 100a9540 Point2D::operator+( const(Point2D const &))
struct Point2D* __fastcall __pl__7Point2DCFRC7Point2D(struct Point2D* this, const void* edx, const struct Point2D* lhs, const struct Point2D* rhs) asm("?__pl@Point2D@@QBEPAV1@ABV1@@Z");
// win1.41 inlined mac inlined Point2D::operator+=(Point2D const &)
struct Point2D* __fastcall __apl__7Point2DFRC7Point2D(struct Point2D* this, const void* edx, const struct Point2D* other) asm("?__apl@Point2D@@QAEPAV1@ABV1@@Z");
// win1.41 inlined mac 10088c10 Point2D::operator-( const(Point2D const &))
struct Point2D* __fastcall __mi__7Point2DCFRC7Point2D(struct Point2D* this, const void* edx, const struct Point2D* lhs, const struct Point2D* rhs) asm("?__mi@Point2D@@QBEPAV1@ABV1@@Z");
// win1.41 inlined mac inlined Point2D::operator-=(Point2D const &)
struct Point2D* __fastcall __ami__7Point2DFRC7Point2D(struct Point2D* this, const void* edx, const struct Point2D* other) asm("?__ami@Point2D@@QAEPAV1@ABV1@@Z");
// win1.41 00611240 mac inlined Point2D::Cross(const Point2D&) const
float __fastcall Cross__7Point2DCFRC7Point2D(const struct Point2D* this, const void* edx, const struct Point2D* other) asm("?Cross@Point2D@@QBEMABV1@@Z");
// win1.41 00611330 mac 100e7550 Point2D::Normalize(void)
float __fastcall Normalize__7Point2DFv(struct Point2D* this) asm("?Normalize@Point2D@@QAEMXZ");
// win1.41 006115f0 mac 1005ba40 Point2D::GetNormSq(void) const
float __fastcall GetNormSq__7Point2DFv(const struct Point2D* this) asm("?GetNormSq@Point2D@@QAEMXZ");
// win1.41 0086fda0 mac inlined Point2D::GetNormSq(void) const copy
float __fastcall GetNormSq__7Point2DFv_2(const struct Point2D* this);
// win1.41 006159c0 mac inlined Point2D::operator==(const Point2D&)
bool __fastcall __eq__7Point2DFRC7Point2D(struct Point2D* this, const void* edx, const struct Point2D* other) asm("?__eq@Point2D@@QAE_NABV1@@Z");
// win1.41 0086fd00 mac 10089260 Point2D::GetHeading(void) const
float __fastcall GetHeading__7Point2DCFv(const struct Point2D* this) asm("?GetHeading@Point2D@@QBEMXZ");
// win1.41 0086fd70 mac 10089100 Point2D::SetSize(float)
void __fastcall SetSize__7Point2DFf(struct Point2D* this, const void* edx, float size) asm("?SetSize@Point2D@@QAEXM@Z");
// win1.41 0086fdc0 mac 10089000 Point2D::GetRange(Point2D const &) const
float __fastcall GetRange__7Point2DCFRC7Point2D(const struct Point2D* this, const void* edx, const struct Point2D* param_1) asm("?GetRange@Point2D@@QBEMABV1@@Z");

struct LHPoint
{
  float x;  /* 0x0 */
  float y;
  float z;
};
static_assert(sizeof(struct LHPoint) == 0xc, "Data type is of wrong size");

// Constructors

// win1.41 inlined mac inlined LHPoint::LHPoint(void)
struct LHPoint* __fastcall __ct__7LHPointFv(struct LHPoint* this) asm("??0LHPoint@@QAE@XZ");
// win1.41 00442700 mac 1004a260 LHPoint::LHPoint(float, float, float)
struct LHPoint* __fastcall __ct__7LHPointFfff(struct LHPoint* this, const void* edx, float x, float y, float z) asm("??0LHPoint@@QAE@MMM@Z");
// win1.41 0044cfc0 mac 1003a450 LHPoint::LHPoint(const LHPoint&)
struct LHPoint* __fastcall __ct__7LHPointFRC7LHPoint(struct LHPoint* this, const void* edx, struct LHPoint* other) asm("??0LHPoint@@QAE@ABV0@@Z");

// Non-virtual methods

// win1.41 inlined mac inlined LHPoint::operator=(Point const &)
struct LHPoint* __fastcall __as__5PointFRC5Point(struct LHPoint* this, const void* edx, const struct LHPoint* other) asm("?__as@Point@@QAEPAULHPoint@@ABV1@@Z");
// win1.41 inlined mac inlined LHPoint::operator*=(float)
struct LHPoint* __fastcall __aml__7LHPointFf(struct LHPoint* this, const void* edx, float rhs) asm("?__aml@LHPoint@@QAEPAV1@M@Z");
// win1.41 inlined mac inlined LHPoint::operator+(LHPoint const &) const
struct LHPoint* __fastcall __pl__7LHPointCFRC7LHPoint(struct LHPoint* this, const void* edx, const struct LHPoint* lhs, const struct LHPoint* rhs) asm("?__pl@LHPoint@@QBEPAV1@ABV1@@Z");
// win1.41 inlined mac inlined LHPoint::operator-(LHPoint const &) const
struct LHPoint* __fastcall __mi__7LHPointCFRC7LHPoint(struct LHPoint* this, const void* edx, const struct LHPoint* lhs, const struct LHPoint* rhs) asm("?__mi@LHPoint@@QBEPAV1@ABV1@@Z");
// win1.41 inlined mac inlined LHPoint::GetNormSq(void)
float __fastcall GetNormSq__7LHPointFv(const struct LHPoint* this) asm("?GetNormSq@LHPoint@@QAEMXZ");
// win1.41 inlined mac inlined LHPoint::GetNorm(void)
float __fastcall GetNorm__7LHPointFv(const struct LHPoint* this) asm("?GetNorm@LHPoint@@QAEMXZ");
// win1.41 inlined mac inlined LHPoint::SetNull(void)
void __fastcall SetNull__7LHPointFv(struct LHPoint* this) asm("?SetNull@LHPoint@@QAEXXZ");
// win1.41 0054e910 mac 10037ce0 LHPoint::FastNormalize(void)
void __fastcall FastNormalize__7LHPointFv(struct LHPoint* this) asm("?FastNormalize@LHPoint@@QAEXXZ");

#endif /* BW1_DECOMP_LH_POINT_INCLUDED_H */
