#include "LHPoint.h"

#include <math.h> /* For atan, sqrt */

#include "LH3DMathConstants.h" /* For PI, PI_OVER_2 */

#define POINT2D_EPSILON 0.000001f

// BW1W120 0086fc30 BW1M119 inlined
float ArcTan(float x, float y);

float ArcTan(float x, float y)
{
	if (x >= y && -y <= x)
	{
		return atan(y / x);
	}
	if (y >= x && -x <= y)
	{
		return PI_OVER_2 - atan(x / y);
	}
	if (-y >= x && x < y)
	{
		if (y >= 0.0f)
		{
			return atan(y / x) + PI;
		}
		return atan(y / x) - PI;
	}
	return -PI_OVER_2 - atan(x / y);
}

float Point2D::GetHeading() const
{
	if (x * x + y * y > POINT2D_EPSILON)
	{
		return ArcTan(-y, x);
	}
	return 0.0f;
}

float Point2D::GetSize() const
{
	return sqrt(y * y + x * x);
}

void Point2D::SetSize(float size)
{
	float length = sqrt(y * y + x * x);
	float scale = size / length;
	x *= scale;
	y *= scale;
}

float Point2D::GetSizeSq() const
{
	return y * y + x * x;
}

float Point2D::GetRange(const Point2D& other) const
{
	float dx = x - other.x;
	float dy = y - other.y;
	return sqrt(dy * dy + dx * dx);
}

#ifndef VERSION_BW1W100
void Point2D::GetReflectedPoint(Point2D& reflected, const Point2D& line_start, const Point2D& line_end)
{
	Point2D toPoint = *this - line_start;
	Point2D line = line_end - line_start;
	Point2D normal(-line.y, line.x);
	normal.MakeUnit();
	float dot = (toPoint.x * normal.x + toPoint.y * normal.y) * 2.0f;
	reflected = *this - normal * dot;
}
#endif

float Point2D::MakeUnit()
{
	float length = sqrt(y * y + x * x);
	float scale = 1.0f / length;
	x *= scale;
	y *= scale;
	return length;
}
