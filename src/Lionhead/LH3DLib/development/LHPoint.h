#ifndef BW1_DECOMP_LH_POINT_INCLUDED_H
#define BW1_DECOMP_LH_POINT_INCLUDED_H

#include <assert.h> /* For static_assert */

struct Point2D
{
	float x; /* 0x0 */
	float y;

	// Constructors

	// BW1W120 inlined BW1M100 inlined Point2D::Point2D(float, float)
	Point2D(float x, float y);
	// BW1W120 inlined BW1M100 inlined Point2D::Point2D(long, long)
	Point2D(int x, int y);

	// Non-virtual methods

	// BW1W120 00468480 BW1M100 100a8d60 Point2D::operator=(const Point2D&)
	Point2D& operator=(const Point2D& other);
	// BW1W120 00611170 BW1M100 inlined Point2D::DotProduct(Point2D&)
	float DotProduct(const Point2D& other);
	// BW1W120 00611310 BW1M100 inlined Point2D::DotProduct(Point2D*)
	float DotProduct(const Point2D* other) const;
	// BW1W120 00611190 BW1M100 10033740 Point2D::operator*(float) const
	Point2D& operator*(float rhs) const;
	// BW1W120 inlined BW1M100 100a9540 Point2D::operator+( const(Point2D const &))
	Point2D& operator+(const Point2D& rhs) const;
	// BW1W120 inlined BW1M100 inlined Point2D::operator+=(Point2D const &)
	Point2D& operator+=(const Point2D& other);
	// BW1W120 inlined BW1M100 10088c10 Point2D::operator-( const(Point2D const &))
	Point2D& operator-(const Point2D& rhs) const;
	// BW1W120 inlined BW1M100 inlined Point2D::operator-=(Point2D const &)
	Point2D& operator-=(const Point2D& other);
	// BW1W120 00611240 BW1M100 inlined Point2D::Cross(const Point2D&) const
	float Cross(const Point2D& other);
	// BW1W120 00611330 BW1M100 100e7550 Point2D::Normalize(void)
	float Normalize();
	// BW1W120 006115f0 BW1M100 1005ba40 Point2D::GetNormSq(void) const
	float GetNormSq();
	// BW1W120 006159c0 BW1M100 inlined Point2D::operator==(const Point2D&)
	bool operator==(const Point2D* other);
	// BW1W120 0086fd00 BW1M100 10089260 Point2D::GetHeading(void) const
	float GetHeading();
	// BW1W120 0086fd70 BW1M100 10089100 Point2D::SetSize(float)
	void SetSize(float size);
	// BW1W120 0086fdc0 BW1M100 10089000 Point2D::GetRange(Point2D const &) const
	float GetRange(const Point2D* param_1);
};

struct LHPoint
{
	float x; /* 0x0 */
	float y;
	float z;

	// Constructors

	// BW1W120 inlined BW1M100 inlined LHPoint::LHPoint(void)
	LHPoint();
	// BW1W120 00442700 BW1M100 1004a260 LHPoint::LHPoint(float, float, float)
	LHPoint(float x, float y, float z);
	// BW1W120 0044cfc0 BW1M100 1003a450 LHPoint::LHPoint(const LHPoint&)
	LHPoint(LHPoint* other);

	// Non-virtual methods

	// BW1W120 inlined BW1M100 inlined LHPoint::operator=(Point const &)
	LHPoint& operator=(const LHPoint& other);
	// BW1W120 inlined BW1M100 inlined LHPoint::operator*=(float)
	LHPoint& operator*=(float rhs);
	// BW1W120 inlined BW1M100 inlined LHPoint::operator+(LHPoint const &) const
	LHPoint operator+(const LHPoint& rhs) const;
	// BW1W120 inlined BW1M100 inlined LHPoint::operator-(LHPoint const &) const
	LHPoint operator-(const LHPoint& rhs) const;
	// BW1W120 inlined BW1M100 inlined LHPoint::GetNormSq(void)
	float GetNormSq();
	// BW1W120 inlined BW1M100 inlined LHPoint::GetNorm(void)
	float GetNorm();
	// BW1W120 004a1ba0 BW1M100 10005db0 LHPoint::GetNorme(void)
	float GetNorme();
	// BW1W120 inlined BW1M100 inlined LHPoint::SetNull(void)
	void SetNull();
	// BW1W120 0054e910 BW1M100 10037ce0 LHPoint::FastNormalize(void)
	void FastNormalize();
};

#endif /* BW1_DECOMP_LH_POINT_INCLUDED_H */
