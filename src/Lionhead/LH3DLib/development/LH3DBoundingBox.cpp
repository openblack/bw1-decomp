#include "LH3DBoundingBox.h"

#include "LH3DObject.h" /* For LH3DObject */
#include "LH3DP3.h"     /* For LH3DP3 */
#include "LH3DTech.h"   /* For LH3DTech */

bool32_t LH3DBoundingBox::CheckRegionOnScreen(LH3DObject* object)
{
	if (LH3DTech::g_b_P3)
	{
		return LH3DP3::CheckRegionOnScreenWrapper(this, object);
	}

	float radius = DiagonalLength * object->scale;
	LH3DObject::g_last_selected_box = false;
	LH3DObject::g_b_last_on_screen = false;

	LHPoint world = object->matrix * centre;
	LHPoint camera = LH3DTech::g_world_to_clipping * world;
	LH3DObject::g_last_distance = camera.z;
	if (camera.z + radius < LH3DTech::g_info_transform.NearClip)
	{
		return false;
	}

	LHPoint offset = object->matrix.GetPos() - LH3DTech::g_camera.pos;
	if (offset * offset < radius * radius)
	{
		object->SetNeedClipping(true);
		LH3DObject::g_b_last_on_screen = true;
		LH3DObject::g_last_selected_box = true;
		LH3DObject::g_last_radius = radius;
		return true;
	}

	float invZ = 1.0f / camera.z;
	LH3DObject::g_last_radius = radius;
	float sx = (camera.x * invZ + 1.0f) * LH3DTech::g_info_transform.HalfRes.x;
	float sy = (1.0f - camera.y * invZ) * LH3DTech::g_info_transform.HalfRes.y;
	float width = (float)LH3DTech::g_info_transform.resolution.x;
	radius = radius * invZ * LH3DTech::g_info_transform.NearClip * width * 0.5f / LH3DTech::g_meter_width_screen_on_2;

	float right = sx + radius;
	if (right >= 0.0f)
	{
		float left = sx - radius;
		if (left <= width)
		{
			float bottom = sy + radius;
			if (bottom >= 0.0f)
			{
				float top = sy - radius;
				float height = (float)LH3DTech::g_info_transform.resolution.y;
				if (top <= height)
				{
					LH3DObject::g_b_last_on_screen = true;
					float selectX = (float)LH3DObject::g_selected_px - sx;
					float selectY = (float)LH3DObject::g_selected_py - sy;
					if (selectX * selectX + selectY * selectY < radius * radius)
					{
						LH3DObject::g_last_selected_box = true;
					}

					if (left > 0.0f && right < width && top > 0.0f && bottom < height)
					{
						object->SetNeedClipping(false);
						return true;
					}
					object->SetNeedClipping(true);
					return true;
				}
			}
		}
	}
	return false;
}
