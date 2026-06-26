#ifndef BW1_DECOMP_LH_POINT_INCLUDED_H
#define BW1_DECOMP_LH_POINT_INCLUDED_H

#include <assert.h> /* For static_assert */

struct Point2D
{
    float x; /* 0x0 */
    float y;

    // Constructors

    // win1.41 inlined mac inlined Point2D::Point2D(float, float)
    Point2D(float x, float y);
    // win1.41 inlined mac inlined Point2D::Point2D(long, long)
    Point2D(int x, int y);

    // Non-virtual methods

    // win1.41 00468480 mac 100a8d60 Point2D::operator=(const Point2D&)
    Point2D& operator=(const Point2D& other);
    // win1.41 00611170 mac inlined Point2D::DotProduct(Point2D&)
    float DotProduct(const Point2D& other);
    // win1.41 00611310 mac inlined Point2D::DotProduct(Point2D*)
    float DotProduct(const Point2D* other) const;
    // win1.41 00611190 mac 10033740 Point2D::operator*(float) const
    Point2D& operator*(float rhs) const;
    // win1.41 inlined mac 100a9540 Point2D::operator+( const(Point2D const &))
    Point2D& operator+(const Point2D& rhs) const;
    // win1.41 inlined mac inlined Point2D::operator+=(Point2D const &)
    Point2D& operator+=(const Point2D& other);
    // win1.41 inlined mac 10088c10 Point2D::operator-( const(Point2D const &))
    Point2D& operator-(const Point2D& rhs) const;
    // win1.41 inlined mac inlined Point2D::operator-=(Point2D const &)
    Point2D& operator-=(const Point2D& other);
    // win1.41 00611240 mac inlined Point2D::Cross(const Point2D&) const
    float Cross(const Point2D& other);
    // win1.41 00611330 mac 100e7550 Point2D::Normalize(void)
    float Normalize();
    // win1.41 006115f0 mac 1005ba40 Point2D::GetNormSq(void) const
    float GetNormSq();
    // win1.41 006159c0 mac inlined Point2D::operator==(const Point2D&)
    bool operator==(const Point2D* other);
    // win1.41 0086fd00 mac 10089260 Point2D::GetHeading(void) const
    float GetHeading();
    // win1.41 0086fd70 mac 10089100 Point2D::SetSize(float)
    void SetSize(float size);
    // win1.41 0086fdc0 mac 10089000 Point2D::GetRange(Point2D const &) const
    float GetRange(const Point2D* param_1);
};

struct LHPoint
{
    float x; /* 0x0 */
    float y;
    float z;

    // Constructors

    // win1.41 inlined mac inlined LHPoint::LHPoint(void)
    LHPoint();
    // win1.41 00442700 mac 1004a260 LHPoint::LHPoint(float, float, float)
    LHPoint(float x, float y, float z);
    // win1.41 0044cfc0 mac 1003a450 LHPoint::LHPoint(const LHPoint&)
    LHPoint(LHPoint* other);

    // Non-virtual methods

    // win1.41 inlined mac inlined LHPoint::operator=(Point const &)
    LHPoint& operator=(const LHPoint& other);
    // win1.41 inlined mac inlined LHPoint::operator*=(float)
    LHPoint& operator*=(float rhs);
    // win1.41 inlined mac inlined LHPoint::operator+(LHPoint const &) const
    LHPoint operator+(const LHPoint& rhs) const;
    // win1.41 inlined mac inlined LHPoint::operator-(LHPoint const &) const
    LHPoint operator-(const LHPoint& rhs) const;
    // win1.41 inlined mac inlined LHPoint::GetNormSq(void)
    float GetNormSq();
    // win1.41 inlined mac inlined LHPoint::GetNorm(void)
    float GetNorm();
    // win1.41 inlined mac inlined LHPoint::SetNull(void)
    void SetNull();
    // win1.41 0054e910 mac 10037ce0 LHPoint::FastNormalize(void)
    void FastNormalize();
};

#endif /* BW1_DECOMP_LH_POINT_INCLUDED_H */
