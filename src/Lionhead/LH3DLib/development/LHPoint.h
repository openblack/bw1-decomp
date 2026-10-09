#ifndef BW1_DECOMP_LH_POINT_INCLUDED_H
#define BW1_DECOMP_LH_POINT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <math.h>   /* For sqrt */

#include <re_common.h> /* For bool32_t */

struct Point2D
{
	float x; /* 0x0 */
	float y;

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	Point2D() {}
	// BW1W120 inlined BW1M119 inlined
	Point2D(float x, float y) : x(x), y(y) {}
	// BW1W120 inlined BW1M119 inlined
	Point2D(int x, int y);
	// BW1W120 00468480 BW1M119 010eb810
	Point2D(const Point2D& other) : x(other.x), y(other.y) {}

	// Non-virtual methods

	// BW1W120 00611220 BW1M119 010eb7d0
	Point2D& operator=(const Point2D& other)
	{
		x = other.x;
		y = other.y;
		return *this;
	}
	// Dot product.
	// BW1W120 00611170 BW1M119 010f2a00
	float operator*(const Point2D& other) { return x * other.x + y * other.y; }
	// BW1W120 00611310 BW1M119 inlined
	float DotProduct(const Point2D* other) const { return other->y * y + other->x * x; }
	// BW1W120 00611190 BW1M119 010621c0
	Point2D operator*(float rhs) const { return Point2D(x * rhs, y * rhs); }
	// BW1W120 00611080 BW1M119 010f29a0
	Point2D operator+(const Point2D& rhs) const { return Point2D(x + rhs.x, y + rhs.y); }
	// BW1W120 inlined BW1M119 inlined
	void operator+=(const Point2D& other)
	{
		x += other.x;
		y += other.y;
	}
	// BW1W120 006110a0 BW1M119 010eb710
	Point2D operator-(const Point2D& rhs) const { return Point2D(x - rhs.x, y - rhs.y); }
	// BW1W120 inlined BW1M119 inlined
	Point2D& operator*=(float rhs)
	{
		x *= rhs;
		y *= rhs;
		return *this;
	}
	// BW1W120 inlined BW1M119 inlined
	void operator-=(const Point2D& other)
	{
		x -= other.x;
		y -= other.y;
	}
	// BW1W120 00611240 BW1M119 inlined
	float Cross(const Point2D& other) const { return y * other.x - other.y * x; }
	// Returns the length before normalising; a zero vector is left alone.
	// BW1W120 00611330 BW1M119 010eb640
	float Normalize()
	{
		float px = x;
		float py = y;
		float length;
		if (px == 0.0f && py == 0.0f)
		{
			length = 0.0f;
		}
		else
		{
			length = sqrt(py * py + px * px);
			float scale = 1.0f / length;
			x = scale * px;
			y = scale * py;
		}
		return length;
	}
	// BW1W120 006115f0 BW1M119 0105e6f0
	float GetNormSq() { return x * x + y * y; }
	// BW1W120 006159c0 BW1M119 inlined
	bool32_t operator==(const Point2D& other) { return x == other.x && y == other.y; }
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
	LHPoint(const LHPoint& other) : x(other.x), y(other.y), z(other.z) {}
	// BW1W120 0045a7d0 BW1M119 01047670
	LHPoint(const LHPoint* other) : x(other->x), y(other->y), z(other->z) {}

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	LHPoint& operator*=(float rhs)
	{
		x *= rhs;
		y *= rhs;
		z *= rhs;
		return *this;
	}
	// BW1W120 inlined BW1M119 inlined
	void operator+=(const LHPoint& other)
	{
		x += other.x;
		y += other.y;
		z += other.z;
	}
	// BW1W120 0044ea40 BW1M119 010c8ba0 (LHCombined Release)
	void Add(const LHPoint& other)
	{
		x += other.x;
		y += other.y;
		z += other.z;
	}
	// BW1W120 0044ea20 BW1M119 01016330 (LHCombined Release)
	void Mul(float rhs)
	{
		x *= rhs;
		y *= rhs;
		z *= rhs;
	}
	// BW1W120 inlined BW1M119 01012250 (LHCombined Release)
	void CrossProduct(const LHPoint& a, const LHPoint& b)
	{
		x = a.y * b.z - a.z * b.y;
		y = a.z * b.x - a.x * b.z;
		z = a.x * b.y - a.y * b.x;
	}
	// BW1W120 004c2b90 BW1M119 01003790
	void Sub(const LHPoint& other)
	{
		x -= other.x;
		y -= other.y;
		z -= other.z;
	}
	// BW1W120 00460620 BW1M119 inlined
	void operator-=(const LHPoint& other)
	{
		x -= other.x;
		y -= other.y;
		z -= other.z;
	}
	// BW1W120 0044e9f0 BW1M119 01043e70
	LHPoint operator*(float rhs) const { return LHPoint(x * rhs, y * rhs, z * rhs); }
	// BW1W120 inlined BW1M119 010ef580
	float operator*(const LHPoint& other) const { return x * other.x + y * other.y + z * other.z; }
	// BW1W120 inlined BW1M119 inlined
	LHPoint operator+(const LHPoint& rhs) const { return LHPoint(x + rhs.x, y + rhs.y, z + rhs.z); }
	// BW1W120 0044cf90 BW1M119 01043e00
	LHPoint operator-(const LHPoint& rhs) const { return LHPoint(x - rhs.x, y - rhs.y, z - rhs.z); }
	// Cross product.
	// BW1W120 inlined BW1M119 01021150
	LHPoint operator^(const LHPoint& rhs) const
	{
		return LHPoint(y * rhs.z - z * rhs.y, z * rhs.x - x * rhs.z, x * rhs.y - y * rhs.x);
	}
	// BW1W120 inlined BW1M119 inlined
	bool operator==(const LHPoint& other) const { return x == other.x && y == other.y && z == other.z; }
	// BW1W120 inlined BW1M119 inlined
	float DotProductInline(const LHPoint& other) const { return z * other.z + y * other.y + x * other.x; }
	// BW1W120 inlined BW1M119 inlined
	float GetNormSq() const { return sqrt(GetNorm()); }
	// BW1W120 inlined BW1M119 inlined
	float GetNorm() const { return DotProductInline(*this); }
	// BW1W120 004a1ba0 BW1M119 01005cc0
	float GetNorme() const
	{
		float px = x;
		float py = y;
		float pz = z;
		return sqrt(px * px + py * py + pz * pz);
	}
	// BW1W120 inlined BW1M119 0101fdf0
	void Set(float _x, float _y, float _z)
	{
		x = _x;
		y = _y;
		z = _z;
	}
	// BW1W120 inlined BW1M119 01032ed0
	void Set(const LHPoint& other)
	{
		x = other.x;
		y = other.y;
		z = other.z;
	}
	// BW1W120 inlined BW1M119 0103a610
	void Set(const LHPoint* other)
	{
		x = other->x;
		y = other->y;
		z = other->z;
	}
	// BW1W120 inlined BW1M119 0101b360
	void SetNull()
	{
		z = 0.0f;
		y = 0.0f;
		x = 0.0f;
	}
	// BW1W120 0044f130 BW1M119 010ef530
	float GetNormeSq() const
	{
		float px = x;
		float py = y;
		float pz = z;
		return px * px + py * py + pz * pz;
	}
	// BW1W120 00453f50 BW1M119 01091d00
	float __fastcall DotProduct(const LHPoint& other) const { return other.z * z + other.y * y + other.x * x; }
	// BW1W120 inlined BW1M119 inlined
	void SetSize(float size)
	{
		if (x != 0.0f || y != 0.0f || z != 0.0f)
		{
			*this *= size / (float)sqrt(x * x + y * y + z * z);
		}
	}
	// BW1W120 00460710 BW1M119 inlined
	float Normalise()
	{
		float px = x;
		float py = y;
		float pz = z;
		if (px == 0.0f && py == 0.0f && pz == 0.0f)
		{
			return 0.0f;
		}
		float length = sqrt(pz * pz + py * py + px * px);
		float scale = 1.0f / length;
		x = scale * px;
		y = scale * py;
		z = scale * pz;
		return length;
	}
	// BW1W120 inlined BW1M119 inlined
	float GetDistance(const LHPoint& other) const
	{
		float dx = x - other.x;
		float dy = y - other.y;
		float dz = z - other.z;
		return sqrt(dz * dz + dy * dy + dx * dx);
	}
	// BW1W120 00460690 BW1M119 inlined
	float GetDistanceSq(const LHPoint& other) const
	{
		float dx = x - other.x;
		float dy = y - other.y;
		float dz = z - other.z;
		return dz * dz + dy * dy + dx * dx;
	}
	// BW1W120 inlined BW1M119 01089dc0
	float GetRange(const LHPoint& other) const
	{
		float dx = x - other.x;
		float dy = y - other.y;
		float dz = z - other.z;
		return sqrt(dy * dy + dx * dx + dz * dz);
	}
	// BW1W120 004606f0 BW1M119 inlined
	float GetDistance2DSq(const LHPoint& other) const
	{
		float dx = x - other.x;
		float dz = z - other.z;
		return dz * dz + dx * dx;
	}
	// BW1W120 004606c0 BW1M119 inlined
	float GetDistance2D(const LHPoint& other) const
	{
		float dx = x - other.x;
		float dz = z - other.z;
		return sqrt(dz * dz + dx * dx);
	}
	// BW1W120 0054e910 BW1M119 01084bc0
	void FastNormalize();
	// BW1W120 00459be0 BW1M119 inlined
	inline void SetToLandAltitude();
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
