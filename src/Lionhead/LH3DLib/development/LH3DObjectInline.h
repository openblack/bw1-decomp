#ifndef BW1_DECOMP_LH3D_OBJECT_INLINE_INCLUDED_H
#define BW1_DECOMP_LH3D_OBJECT_INLINE_INCLUDED_H

#include "LH3DObject.h" /* For struct LH3DObject */

inline void __fastcall LH3DObject::SetPosition(const LHPoint& point, float y_angle, float scale)
{
	if (y_angle != 0.0f)
	{
		if (scale != 1.0f)
		{
			matrix.SetScale(scale);
			matrix.PostTranslation(point);
			matrix.RotateY(y_angle);
		}
		else
		{
			matrix.Translation(point);
			matrix.RotateY(y_angle);
		}
	}
	else
	{
		if (scale != 1.0f)
		{
			matrix.SetScale(scale);
			matrix.PostTranslation(point);
		}
		else
		{
			matrix.Translation(point);
		}
	}
	this->scale = scale;
	this->y_angle = y_angle;
}

#endif /* BW1_DECOMP_LH3D_OBJECT_INLINE_INCLUDED_H */
