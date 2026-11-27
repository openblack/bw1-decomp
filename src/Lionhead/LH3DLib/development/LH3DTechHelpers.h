#ifndef BW1_DECOMP_LH3D_TECH_HELPERS_INCLUDED_H
#define BW1_DECOMP_LH3D_TECH_HELPERS_INCLUDED_H

#include "LH3DTech.h"   /* For LH3DTech */
#include "LH3DVertex.h" /* For struct Vertex3D */
#include "LHMatrix.h"   /* For struct LHMatrix */
#include "LHPoint.h"    /* For struct LHPoint */

// These can't live in LH3DTech.h: every game unit sees that header through BlackPCH.h, so declaring them there moves
// c2's symbol numbering and takes matched functions such as TattooEditor::CreateFakeCreature out of their matching
// windows.

// Inliner IL size: 163
// BW1W120 inlined BW1M119 inlined
inline void SetClipFlags(unsigned long* flags, const Vertex3D* vertex)
{
	if (vertex->rhw < LH3DTech::g_info_transform.NearClip)
	{
		*flags = LH3DTech::CLIP_CODE_NEAR;
	}
	else
	{
		*flags = LH3DTech::CLIP_CODE_NONE;
	}
	if (vertex->x > vertex->rhw)
	{
		*flags |= LH3DTech::CLIP_CODE_RIGHT;
	}
	else if (-vertex->rhw > vertex->x)
	{
		*flags |= LH3DTech::CLIP_CODE_LEFT;
	}
	if (vertex->y > vertex->rhw)
	{
		*flags |= LH3DTech::CLIP_CODE_TOP;
	}
	else if (-vertex->rhw > vertex->y)
	{
		*flags |= LH3DTech::CLIP_CODE_BOTTOM;
	}
}

// Inliner IL size: 156
// BW1W120 inlined BW1M119 inlined
inline void TransformToClipping(Vertex3D* out, const LHPoint* in, const LHMatrix* matrix)
{
	out->x = in->x * matrix->_11 + in->y * matrix->_21 + in->z * matrix->_31 + matrix->_41;
	out->y = in->x * matrix->_12 + in->y * matrix->_22 + in->z * matrix->_32 + matrix->_42;
	out->rhw = in->x * matrix->_13 + in->y * matrix->_23 + in->z * matrix->_33 + matrix->_43;
}

// Inliner IL size: 98
// BW1W120 inlined BW1M119 inlined
inline void SetProjection(LHMatrix& matrix, const LHPoint& camera)
{
	matrix._11 *= LH3DTech::g_info_transform.InvHalfTanFovY;
	matrix._21 *= LH3DTech::g_info_transform.InvHalfTanFovY;
	matrix._41 = camera.x * LH3DTech::g_info_transform.InvHalfTanFovY;
	matrix._12 *= LH3DTech::g_info_transform.InvHalfTanFovX;
	matrix._22 *= LH3DTech::g_info_transform.InvHalfTanFovX;
	matrix._42 = camera.y * LH3DTech::g_info_transform.InvHalfTanFovX;
	matrix._43 = camera.z;
}

#endif /* BW1_DECOMP_LH3D_TECH_HELPERS_INCLUDED_H */
