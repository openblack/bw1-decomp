#include "GestureSystemResult.h"

#include <math.h>    /* For fabs */
#include <windows.h> /* For max */

#include <Lionhead/LH3DLib/development/LHColor.h>   /* For struct LHColor */
#include <Lionhead/LH3DLib/development/LHRegion.h>  /* For struct LHRegion */
#include <Lionhead/LH3DLib/development/LHRegionF.h> /* For struct LHRegionF */
#include <Lionhead/LHLib/ver5.0/LHSystem.h>         /* For LHSys::TheSystem */

#include "Game.h"
#include "Global.h"
#include "GestureSystem.h"
#include "GestureSystemData.h"
#include "GestureSystemDataList.h"

#include "GestureConstants.h"

enum
{
	GESTURE_DEBUG_CATEGORY = 10
};

static char* GestureNames[] = {
	"None",
	"Spiral",
	"Inverse Spiral",
	"S Shape",
	"Circle",
	"Scribble",
	"Three",
	"Vertical",
	"Star",
	"Fork Right",
	"Fork Up",
	"Fork Left",
	"Fork Down",
	"Heart",
	"R Shape",
	"Square spiral",
	"Cyrillic L",
	"E Shape",
	"Reverse S",
	"Infinity",
	"W Shape",
	"House",
	"Inverse Square spiral",
	"Square Wave",
};

void GestureSystem::fn_0057A9C0(LHRegion* rect, long start, long end)
{
	LHRegionF region;
	CalculateTransformedRegion(&region, start, end);
	float width = region.end.x - region.start.x + 1.0f;
	float height = region.end.y - region.start.y + 1.0f;
	float size = max(width, height);
	float offsetX = (size - width) * 0.5f;
	float offsetY = (size - height) * 0.5f;
	LHSys::GetDraw().Box(rect->start.x, rect->start.y, rect->end.x, rect->end.y, LHColor(0xff, 0xf4, 0xff));
	float lastY = (float)start;
	float lastX = lastY;
	for (long i = (long)lastY; i < PointCount && i <= end; i++)
	{
		LHPoint* position = &GetSampleAt(i)->Position;
		if (fabs(position->x) > GESTURE_POSITION_EPSILON || fabs(position->y) > GESTURE_POSITION_EPSILON ||
		    fabs(position->z) > GESTURE_POSITION_EPSILON)
		{
			float x = position->x - region.start.x;
			if (x < 0.0f)
			{
				x = 0.0f;
			}
			else if (x > size)
			{
				x = size;
			}
			float screenX = (x + offsetX) * (rect->end.x - rect->start.x + 1) / size + rect->start.x;
			float y = position->z - region.start.y;
			if (y < 0.0f)
			{
				y = 0.0f;
			}
			else if (y > size)
			{
				y = size;
			}
			float screenY = (y + offsetY) * (rect->end.y - rect->start.y + 1) / size + rect->start.y;
			float dx = lastX - screenX;
			float dy = lastY - screenY;
			if (i != start && (fabs(dx) > 2.0f || fabs(dy) > 2.0f))
			{
				long x0 = (long)lastX;
				long y0 = (long)lastY;
				LHSys::GetDraw().Line(x0, y0, (long)screenX, (long)screenY, LHColor(0x9b, 0x9b, 0x9b), 1);
				LHSys::GetDraw().Box16(x0 - 1, y0 - 1, x0 + 1, y0 + 1, LHPixel16(LHColor(0x00, 0x00, 0x00)), 1);
				LHSys::GetDraw().Pixel(x0, y0, LHColor(0xff, 0xf4, 0xff), 1);
			}
			if (i == end)
			{
				long x1 = (long)screenX;
				long y1 = (long)screenY;
				LHSys::GetDraw().Box16(x1 - 1, y1 - 1, x1 + 1, y1 + 1, LHPixel16(LHColor(0x00, 0x00, 0x00)), 1);
				LHSys::GetDraw().Pixel(x1, y1, LHColor(0xff, 0xf4, 0xff), 1);
			}
			if (fabs(dx) > 2.0f || fabs(dy) > 2.0f)
			{
				lastX = screenX;
				lastY = screenY;
			}
		}
		else
		{
			start++;
		}
	}
}

int LHDraw::Box(long left, long top, long right, long bottom, LHColor color)
{
	if (LHSys::GetScreen().depth == 16)
	{
		return Box16(left, top, right, bottom, LHPixel16(color));
	}
	return Box24(left, top, right, bottom, color);
}

int LHDraw::Box(long left, long top, long right, long bottom, LHColor color, unsigned long style)
{
	if (LHSys::GetScreen().depth == 16)
	{
		return Box16(left, top, right, bottom, LHPixel16(color), style);
	}
	return Box24(left, top, right, bottom, color, style);
}

void GestureSystem::fn_0057B0E0(LHRegion* rect, GestureSystemData* data)
{
	LHSys::GetDraw().Box(rect->start.x, rect->start.y, rect->end.x, rect->end.y, LHColor(0xff, 0xf4, 0xff));
	if (data == NULL)
	{
		return;
	}
	float lastX;
	float lastY;
	for (int i = 0; i < data->SampleCount; i++)
	{
		GestureSampleBase* sample = &data->Samples[i];
		float              x = (rect->end.x - rect->start.x + 1) * sample->Position.x + rect->start.x;
		float              y = (rect->end.y - rect->start.y + 1) * sample->Position.z + rect->start.y;
		if (i != 0)
		{
			long x0 = (long)lastX;
			long y0 = (long)lastY;
			LHSys::GetDraw().Line(x0, y0, (long)x, (long)y, LHColor(0x9b, 0x9b, 0x9b), 1);
			LHColor black(0x00, 0x00, 0x00);
			if (LHSys::GetScreen().depth == 16)
			{
				LHPixel16 pixel;
				pixel.Set(black);
				LHSys::GetDraw().Box16(x0 - 1, y0 - 1, x0 + 1, y0 + 1, pixel, 1);
			}
			else
			{
				LHSys::GetDraw().Box24(x0 - 1, y0 - 1, x0 + 1, y0 + 1, black, 1);
			}
			LHSys::GetDraw().Pixel(x0, y0, LHColor(0xff, 0xf4, 0xff), 1);
		}
		if (i >= data->SampleCount - 1)
		{
			long    x1 = (long)x;
			long    y1 = (long)y;
			LHColor black(0x00, 0x00, 0x00);
			if (LHSys::GetScreen().depth == 16)
			{
				LHPixel16 pixel;
				pixel.Set(black);
				LHSys::GetDraw().Box16(x1 - 1, y1 - 1, x1 + 1, y1 + 1, pixel, 1);
			}
			else
			{
				LHSys::GetDraw().Box24(x1 - 1, y1 - 1, x1 + 1, y1 + 1, black, 1);
			}
			LHSys::GetDraw().Pixel(x1, y1, LHColor(0xff, 0xf4, 0xff), 1);
		}
		lastX = x;
		lastY = y;
	}
}

void GestureSystem::fn_0057B460(LHRegion* rect)
{
	GestureSystemData* data = NULL;
	if (GGame::g_game->gesture_system_result->Gesture != 0)
	{
		uint8_t gesture = GGame::g_game->gesture_system_result->Gesture;
		data = GGame::g_game->gesture_system_data_list->GetGestureFromResult(gesture);
	}
	fn_0057B0E0(rect, data);
}

void GestureSystem::fn_0057B4B0(LHRegion* rect)
{
	float screenWidth = LHSys::GetScreen().width - 1 + 1.0f;
	float screenHeight = LHSys::GetScreen().height - 1 + 1.0f;
	LHSys::GetDraw().Box(rect->start.x, rect->start.y, rect->end.x, rect->end.y, LHColor(0xff, 0xf4, 0xff));
	float lastX = 0.0f;
	float lastY = 0.0f;
	long  first = 0;
	for (long i = 0; i < PointCount; i++)
	{
		LHPoint* position = &GetSampleAt(i)->Position;
		if (fabs(position->x) > GESTURE_POSITION_EPSILON || fabs(position->y) > GESTURE_POSITION_EPSILON ||
		    fabs(position->z) > GESTURE_POSITION_EPSILON)
		{
			float screenX = (rect->end.x - rect->start.x + 1) * position->x / screenWidth + rect->start.x;
			float screenY = (rect->end.y - rect->start.y + 1) * position->z / screenHeight + rect->start.y;
			float dx = lastX - screenX;
			float dy = lastY - screenY;
			if (i != first && (fabs(dx) > 2.0f || fabs(dy) > 2.0f))
			{
				long x0 = (long)lastX;
				long y0 = (long)lastY;
				LHSys::GetDraw().Line(x0, y0, (long)screenX, (long)screenY, LHColor(0x9b, 0x9b, 0x9b), 1);
				LHSys::GetDraw().Box16(x0 - 1, y0 - 1, x0 + 1, y0 + 1, LHPixel16(LHColor(0x00, 0x00, 0x00)), 1);
				LHSys::GetDraw().Pixel(x0, y0, LHColor(0xff, 0xf4, 0xff), 1);
			}
			if (i == PointCount - 1)
			{
				long x1 = (long)screenX;
				long y1 = (long)screenY;
				LHSys::GetDraw().Box16(x1 - 1, y1 - 1, x1 + 1, y1 + 1, LHPixel16(LHColor(0x00, 0x00, 0x00)), 1);
				LHSys::GetDraw().Pixel(x1, y1, LHColor(0xff, 0xf4, 0xff), 1);
			}
			if (fabs(dx) > 2.0f || fabs(dy) > 2.0f)
			{
				lastX = screenX;
				lastY = screenY;
			}
		}
		else
		{
			first++;
		}
	}
}

void fn_0057B980()
{
	GestureSystemData   data;
	GestureSystemResult result;
	data.CalculateContent(GGame::g_game->gesture_system);
	for (int i = 0; i < GGame::g_game->gesture_system_data_list->Count; i++)
	{
		if (GGame::g_game->gesture_system_data_list->MatchGestureAt(i, &data, &result))
		{
			GGlobal::Global.debug.SetMessage(GESTURE_DEBUG_CATEGORY, "Match: %s", GestureNames[result.Gesture]);
		}
	}
}
