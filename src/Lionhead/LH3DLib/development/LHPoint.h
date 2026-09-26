#ifndef BW1_DECOMP_LH_POINT_INCLUDED_H
#define BW1_DECOMP_LH_POINT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <math.h>   /* For sqrt */

struct Point2D
{
	float x; /* 0x0 */
	float y;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	Point2D(float x, float y) : x(x), y(y) {}
	// BW1W120 inlined BW1M119 inlined
	Point2D(int x, int y);
	// BW1W120 00468480 BW1M119 010eb810
	Point2D(const Point2D& other) : x(other.x), y(other.y) {}

	// Non-virtual methods

	// BW1W120 00468480 BW1M119 010eb7d0
	Point2D& operator=(const Point2D& other);
	// BW1W120 00611170 BW1M119 inlined
	float DotProduct(const Point2D& other);
	// BW1W120 00611310 BW1M119 inlined
	float DotProduct(const Point2D* other) const;
	// BW1W120 00611190 BW1M119 010621c0
	Point2D operator*(float rhs) const { return Point2D(x * rhs, y * rhs); }
	// BW1W120 inlined BW1M119 010f29a0
	Point2D& operator+(const Point2D& rhs) const;
	// BW1W120 inlined BW1M119 inlined
	Point2D& operator+=(const Point2D& other)
	{
		x += other.x;
		y += other.y;
		return *this;
	}
	// BW1W120 inlined BW1M119 010eb710
	Point2D& operator-(const Point2D& rhs) const;
	// BW1W120 inlined BW1M119 inlined
	Point2D& operator-=(const Point2D& other)
	{
		x -= other.x;
		y -= other.y;
		return *this;
	}
	// BW1W120 00611240 BW1M119 inlined
	float Cross(const Point2D& other) const;
	// BW1W120 00611330 BW1M119 010eb640
	float Normalize();
	// BW1W120 006115f0 BW1M119 0105e6f0
	float GetNormSq() const;
	// BW1W120 006159c0 BW1M119 inlined
	bool operator==(const Point2D& other);
	// BW1W120 0086fd00 BW1M119 01086c70 (LHCombined Release)
	float GetHeading() const;
	// BW1W120 0086fd70 BW1M119 01086b10 (LHCombined Release)
	void SetSize(float size);
	// BW1W120 0086fdc0 BW1M119 01086a00 (LHCombined Release)
	float GetRange(const Point2D& param_1) const;
};

struct LHPoint
{
	float x; /* 0x0 */
	float y;
	float z;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	LHPoint() {}
	// BW1W120 00442700 BW1M119 0104cc10
	LHPoint(float x, float y, float z) : x(x), y(y), z(z) {}
	// BW1W120 0044cfc0 BW1M119 0103cdd0
	LHPoint(LHPoint* other);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	LHPoint& operator*=(float rhs)
	{
		x *= rhs;
		y *= rhs;
		z *= rhs;
		return *this;
	}
	// BW1W120 inlined BW1M119 010c8ba0 (LHCombined Release)
	void Add(const LHPoint& other)
	{
		x += other.x;
		y += other.y;
		z += other.z;
	}
	// BW1W120 inlined BW1M119 01043e70
	LHPoint operator*(float rhs) const { return LHPoint(x * rhs, y * rhs, z * rhs); }
	// BW1W120 inlined BW1M119 inlined
	LHPoint operator+(const LHPoint& rhs) const { return LHPoint(x + rhs.x, y + rhs.y, z + rhs.z); }
	// BW1W120 inlined BW1M119 01043e00
	LHPoint operator-(const LHPoint& rhs) const { return LHPoint(x - rhs.x, y - rhs.y, z - rhs.z); }
	// BW1W120 inlined BW1M119 inlined
	float DotProductInline(const LHPoint& other) const { return z * other.z + y * other.y + x * other.x; }
	// BW1W120 inlined BW1M119 inlined
	float GetNormSq() const { return sqrt(GetNorm()); }
	// BW1W120 inlined BW1M119 inlined
	float GetNorm() const { return DotProductInline(*this); }
	// BW1W120 004a1ba0 BW1M119 01005cc0
	float GetNorme();
	// BW1W120 inlined BW1M119 0101fdf0
	void Set(float _x, float _y, float _z)
	{
		x = _x;
		y = _y;
		z = _z;
	}
	// BW1W120 inlined BW1M119 0101b360
	void SetNull()
	{
		z = 0.0f;
		y = 0.0f;
		x = 0.0f;
	}
	// BW1W120 0054e910 BW1M119 01084bc0
	void FastNormalize();
	// BW1W120 inlined BW1M119 inlined
	void FastNormalizeInline()
	{
		if (x != 0.0f || y != 0.0f || z != 0.0f)
		{
			float invsqr = 1.0f / (float)sqrt(x * x + y * y + z * z);
			x *= invsqr;
			y *= invsqr;
			z *= invsqr;
		}
	}
};

#endif /* BW1_DECOMP_LH_POINT_INCLUDED_H */
