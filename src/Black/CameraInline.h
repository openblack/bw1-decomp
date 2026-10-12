#ifndef BW1_DECOMP_CAMERA_INLINE_INCLUDED_H
#define BW1_DECOMP_CAMERA_INLINE_INCLUDED_H

#include <Lionhead/LH3DLib/development/LH3DTech.h> /* For LH3DTech */

#include "Camera.h" /* For GCamera */

inline void GCamera::GetPosition(LHPoint& pos)
{
	pos = LH3DTech::g_camera.pos;
}

#endif /* BW1_DECOMP_CAMERA_INLINE_INCLUDED_H */
