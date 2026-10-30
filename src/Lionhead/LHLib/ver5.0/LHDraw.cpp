#include <Lionhead/LHLib/ver5.0/LHDraw.h>

#include <string.h>

#include <Lionhead/LH3DLib/development/LHColor.h>
#include <Lionhead/LH3DLib/development/LHCoord.h>
#include <Lionhead/LH3DLib/development/LHRegion.h>
#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

static int8_t EmbossShades[LH_BOX_EDGE_LAST] = {2, 1, -2, -1};

int LHDraw::Box16(long left, long top, long right, long bottom, LHPixel16 color)
{
	LHSys::GetDraw().HVLine16(left, top, right, top, color);
	LHSys::GetDraw().HVLine16(right, top, right, bottom, color);
	LHSys::GetDraw().HVLine16(left, bottom, right, bottom, color);
	return LHSys::GetDraw().HVLine16(left, top, left, bottom, color);
}

int LHDraw::Box24(long left, long top, long right, long bottom, LHColor color)
{
	LHSys::GetDraw().HVLine24(left, top, right, top, color);
	LHSys::GetDraw().HVLine24(right, top, right, bottom, color);
	LHSys::GetDraw().HVLine24(left, bottom, right, bottom, color);
	return LHSys::GetDraw().HVLine24(left, top, left, bottom, color);
}

int LHDraw::Box16(long left, long top, long right, long bottom, LHPixel16 color, unsigned long style)
{
	int      result = LH_FAIL;
	uint32_t clip = 0;
	LHRegion window = LHSys::GetScreen().GetGraphicsWindow();
	if (left > right)
	{
		left ^= right;
		right ^= left;
		left ^= right;
	}
	if (top > bottom)
	{
		top ^= bottom;
		bottom ^= top;
		top ^= bottom;
	}
	if (left > window.end.X() || right < window.start.X() || top > window.end.Y() || bottom < window.start.Y())
		return LH_FAIL;
	if (left < window.start.X())
	{
		clip |= 1 << LH_BOX_EDGE_LEFT;
		left = window.start.X();
	}
	if (right > window.end.X())
	{
		clip |= 1 << LH_BOX_EDGE_RIGHT;
		right = window.end.X();
	}
	if (top < window.start.Y())
	{
		clip |= 1 << LH_BOX_EDGE_TOP;
		top = window.start.Y();
	}
	if (bottom > window.end.Y())
	{
		clip |= 1 << LH_BOX_EDGE_BOTTOM;
		bottom = window.end.Y();
	}

	if (style == LH_DRAW_STYLE_SOLID)
	{
		if (!(clip & (1 << LH_BOX_EDGE_TOP)))
			result = LHSys::GetDraw().HVLine16(left, top, right, top, color);
		if (!(clip & (1 << LH_BOX_EDGE_RIGHT)))
			result = LHSys::GetDraw().HVLine16(right, top, right, bottom, color);
		if (!(clip & (1 << LH_BOX_EDGE_BOTTOM)))
			result = LHSys::GetDraw().HVLine16(left, bottom, right, bottom, color);
		if (!(clip & (1 << LH_BOX_EDGE_LEFT)))
			result = LHSys::GetDraw().HVLine16(left, top, left, bottom, color);
	}
	else
	{
		if (style & LH_DRAW_STYLE_FILL)
		{
			if (style == (LH_DRAW_STYLE_FILL | LH_DRAW_STYLE_SOLID))
			{
				for (; top <= bottom; top++)
					LHSys::GetDraw().HVLine16(left, top, right, top, color);
			}
			else
			{
				for (; top <= bottom; top++)
					LHSys::GetDraw().HVLine16(left, top, right, top, color, style);
			}
			return LH_OK;
		}
		if (!(clip & (1 << LH_BOX_EDGE_TOP)))
			result = LHSys::GetDraw().HVLine16(left, top, right, top, color, style);
		if (!(clip & (1 << LH_BOX_EDGE_RIGHT)))
			result = LHSys::GetDraw().HVLine16(right, top, right, bottom, color, style);
		if (!(clip & (1 << LH_BOX_EDGE_BOTTOM)))
			result = LHSys::GetDraw().HVLine16(left, bottom, right, bottom, color, style);
		if (!(clip & (1 << LH_BOX_EDGE_LEFT)))
			result = LHSys::GetDraw().HVLine16(left, top, left, bottom, color, style);
	}
	return result;
}

int LHDraw::Box24(long left, long top, long right, long bottom, LHColor color, unsigned long style)
{
	int      result = LH_FAIL;
	uint32_t clip = 0;
	LHRegion window = LHSys::GetScreen().GetGraphicsWindow();
	if (left > right)
	{
		left ^= right;
		right ^= left;
		left ^= right;
	}
	if (top > bottom)
	{
		top ^= bottom;
		bottom ^= top;
		top ^= bottom;
	}
	if (left > window.end.X() || right < window.start.X() || top > window.end.Y() || bottom < window.start.Y())
		return LH_FAIL;
	if (left < window.start.X())
	{
		clip |= 1 << LH_BOX_EDGE_LEFT;
		left = window.start.X();
	}
	if (right > window.end.X())
	{
		clip |= 1 << LH_BOX_EDGE_RIGHT;
		right = window.end.X();
	}
	if (top < window.start.Y())
	{
		clip |= 1 << LH_BOX_EDGE_TOP;
		top = window.start.Y();
	}
	if (bottom > window.end.Y())
	{
		clip |= 1 << LH_BOX_EDGE_BOTTOM;
		bottom = window.end.Y();
	}

	if (style == LH_DRAW_STYLE_SOLID)
	{
		if (!(clip & (1 << LH_BOX_EDGE_TOP)))
			result = LHSys::GetDraw().HVLine24(left, top, right, top, color);
		if (!(clip & (1 << LH_BOX_EDGE_RIGHT)))
			result = LHSys::GetDraw().HVLine24(right, top, right, bottom, color);
		if (!(clip & (1 << LH_BOX_EDGE_BOTTOM)))
			result = LHSys::GetDraw().HVLine24(left, bottom, right, bottom, color);
		if (!(clip & (1 << LH_BOX_EDGE_LEFT)))
			result = LHSys::GetDraw().HVLine24(left, top, left, bottom, color);
	}
	else
	{
		if (style & LH_DRAW_STYLE_FILL)
		{
			if (style == (LH_DRAW_STYLE_FILL | LH_DRAW_STYLE_SOLID))
			{
				for (; top <= bottom; top++)
					LHSys::GetDraw().HVLine24(left, top, right, top, color);
			}
			else
			{
				for (; top <= bottom; top++)
					LHSys::GetDraw().HVLine24(left, top, right, top, color, style);
			}
			return LH_OK;
		}
		if (!(clip & (1 << LH_BOX_EDGE_TOP)))
			result = LHSys::GetDraw().HVLine24(left, top, right, top, color, style);
		if (!(clip & (1 << LH_BOX_EDGE_RIGHT)))
			result = LHSys::GetDraw().HVLine24(right, top, right, bottom, color, style);
		if (!(clip & (1 << LH_BOX_EDGE_BOTTOM)))
			result = LHSys::GetDraw().HVLine24(left, bottom, right, bottom, color, style);
		if (!(clip & (1 << LH_BOX_EDGE_LEFT)))
			result = LHSys::GetDraw().HVLine24(left, top, left, bottom, color, style);
	}
	return result;
}

int LHDraw::EmbossedBox16(long left, long top, long right, long bottom, LHPixel16 fillColor, LHPixel16 edgeColor,
                          uint8_t lightDir, uint8_t bevelWidth, unsigned long style)
{
	int       result = LH_FAIL;
	long      x0 = left;
	long      y0 = top;
	long      x1 = right;
	long      y1 = bottom;
	LHRegion  window = LHSys::GetScreen().GetGraphicsWindow();
	uint32_t  clip[LH_BOX_EDGE_LAST];
	int       shade[LH_BOX_EDGE_LAST];
	int       i;
	LHPixel16 pixel;
	long      pos;
	long      start;
	long      end;

	memset(clip, 0, sizeof(clip));

	if (left > right)
	{
		left ^= right;
		right ^= left;
		left ^= right;
	}
	if (top > bottom)
	{
		top ^= bottom;
		bottom ^= top;
		top ^= bottom;
	}
	if (bottom - top < bevelWidth * 2 + 1)
		return LH_FAIL;
	if (right - left < bevelWidth * 2 + 1)
		return LH_FAIL;
	if (left > window.end.X() || right < window.start.X() || top > window.end.Y() || bottom < window.start.Y())
		return LH_FAIL;
	if (left < window.start.X())
	{
		clip[LH_BOX_EDGE_LEFT] = window.start.X() - left;
		left = window.start.X();
	}
	if (right > window.end.X())
	{
		clip[LH_BOX_EDGE_RIGHT] = right - window.end.X();
		right = window.end.X() - 1;
	}
	if (top < window.start.Y())
	{
		clip[LH_BOX_EDGE_TOP] = window.start.Y() - top;
		top = window.start.Y();
	}
	if (bottom > window.end.Y())
	{
		clip[LH_BOX_EDGE_BOTTOM] = bottom - window.end.Y();
		bottom = window.end.Y() - 1;
	}

	if (style & LH_DRAW_STYLE_SUNKEN)
		lightDir ^= LH_BOX_EDGE_LAST / 2;
	int side = lightDir;
	for (i = 0; i < LH_BOX_EDGE_LAST; i++)
	{
		shade[side] = EmbossShades[i];
		if (++side >= LH_BOX_EDGE_LAST)
			side = 0;
	}

	if (!(style & LH_DRAW_STYLE_NO_FILL))
	{
		if (style == 0)
		{
			for (pos = top; pos <= bottom; pos++)
				result = LHSys::GetDraw().HVLine16(left, pos, right, pos, fillColor);
		}
		else if (style & LH_DRAW_STYLE_BLEND_FILL)
		{
			for (pos = top; pos <= bottom; pos++)
				result = LHSys::GetDraw().HVLine16(left, pos, right, pos, fillColor, style | LH_DRAW_STYLE_BLEND);
		}
		else
		{
			for (pos = top; pos <= bottom; pos++)
				result = LHSys::GetDraw().HVLine16(left, pos, right, pos, fillColor, style);
		}
	}

	pos = y0;
	start = x0;
	end = x1;
	for (i = bevelWidth; i; i--)
	{
		if (clip[LH_BOX_EDGE_TOP] == 0)
		{
			int blue =
				min(fillColor.GetB() + shade[LH_BOX_EDGE_TOP] * edgeColor.GetB(), LHSys::GetScreen().GetMaxBlue());
			int green =
				min(fillColor.GetG() + shade[LH_BOX_EDGE_TOP] * edgeColor.GetG(), LHSys::GetScreen().GetMaxGreen());
			int red = min(fillColor.GetR() + shade[LH_BOX_EDGE_TOP] * edgeColor.GetR(), LHSys::GetScreen().GetMaxRed());
			pixel.Set(red, green, blue);
			result = LHSys::GetDraw().HVLine16(start++, pos, end--, pos, pixel, style | LH_DRAW_STYLE_SOLID);
			pos++;
		}
		else
		{
			clip[LH_BOX_EDGE_TOP]--;
		}
	}
	pos = x1;
	start = y0;
	end = y1;
	for (i = bevelWidth; i; i--)
	{
		if (clip[LH_BOX_EDGE_RIGHT] == 0)
		{
			int blue =
				min(fillColor.GetB() + shade[LH_BOX_EDGE_RIGHT] * edgeColor.GetB(), LHSys::GetScreen().GetMaxBlue());
			int green =
				min(fillColor.GetG() + shade[LH_BOX_EDGE_RIGHT] * edgeColor.GetG(), LHSys::GetScreen().GetMaxGreen());
			int red =
				min(fillColor.GetR() + shade[LH_BOX_EDGE_RIGHT] * edgeColor.GetR(), LHSys::GetScreen().GetMaxRed());
			pixel.Set(red, green, blue);
			result = LHSys::GetDraw().HVLine16(pos, start++, pos, end--, pixel, style | LH_DRAW_STYLE_SOLID);
			pos--;
		}
		else
		{
			clip[LH_BOX_EDGE_RIGHT]--;
		}
	}
	pos = y1;
	start = x0;
	end = x1;
	for (i = bevelWidth; i; i--)
	{
		if (clip[LH_BOX_EDGE_BOTTOM] == 0)
		{
			int blue =
				min(fillColor.GetB() + shade[LH_BOX_EDGE_BOTTOM] * edgeColor.GetB(), LHSys::GetScreen().GetMaxBlue());
			int green =
				min(fillColor.GetG() + shade[LH_BOX_EDGE_BOTTOM] * edgeColor.GetG(), LHSys::GetScreen().GetMaxGreen());
			int red =
				min(fillColor.GetR() + shade[LH_BOX_EDGE_BOTTOM] * edgeColor.GetR(), LHSys::GetScreen().GetMaxRed());
			pixel.Set(red, green, blue);
			result = LHSys::GetDraw().HVLine16(start++, pos, end--, pos, pixel, style | LH_DRAW_STYLE_SOLID);
			pos--;
		}
		else
		{
			clip[LH_BOX_EDGE_BOTTOM]--;
		}
	}
	pos = x0;
	start = y0;
	end = y1;
	for (i = bevelWidth; i; i--)
	{
		if (clip[LH_BOX_EDGE_LEFT] == 0)
		{
			int blue =
				min(fillColor.GetB() + shade[LH_BOX_EDGE_LEFT] * edgeColor.GetB(), LHSys::GetScreen().GetMaxBlue());
			int green =
				min(fillColor.GetG() + shade[LH_BOX_EDGE_LEFT] * edgeColor.GetG(), LHSys::GetScreen().GetMaxGreen());
			int red =
				min(fillColor.GetR() + shade[LH_BOX_EDGE_LEFT] * edgeColor.GetR(), LHSys::GetScreen().GetMaxRed());
			pixel.Set(red, green, blue);
			result = LHSys::GetDraw().HVLine16(pos, start++, pos, end--, pixel, style | LH_DRAW_STYLE_SOLID);
			pos++;
		}
		else
		{
			clip[LH_BOX_EDGE_LEFT]--;
		}
	}
	return result;
}

int LHDraw::EmbossedBox24(long left, long top, long right, long bottom, LHColor fillColor, LHColor edgeColor,
                          uint8_t lightDir, uint8_t bevelWidth, unsigned long style)
{
	int      result = LH_FAIL;
	long     x0 = left;
	long     y0 = top;
	long     x1 = right;
	long     y1 = bottom;
	LHRegion window = LHSys::GetScreen().GetGraphicsWindow();
	uint32_t clip[LH_BOX_EDGE_LAST];
	int      shade[LH_BOX_EDGE_LAST];
	int      i;
	LHColor  color;
	long     pos;
	long     start;
	long     end;

	memset(clip, 0, sizeof(clip));

	if (left > right)
	{
		left ^= right;
		right ^= left;
		left ^= right;
	}
	if (top > bottom)
	{
		top ^= bottom;
		bottom ^= top;
		top ^= bottom;
	}
	if (bottom - top < bevelWidth * 2 + 1)
		return LH_FAIL;
	if (right - left < bevelWidth * 2 + 1)
		return LH_FAIL;
	if (left > window.end.X() || right < window.start.X() || top > window.end.Y() || bottom < window.start.Y())
		return LH_FAIL;
	if (left < window.start.X())
	{
		clip[LH_BOX_EDGE_LEFT] = window.start.X() - left;
		left = window.start.X();
	}
	if (right > window.end.X())
	{
		clip[LH_BOX_EDGE_RIGHT] = right - window.end.X();
		right = window.end.X() - 1;
	}
	if (top < window.start.Y())
	{
		clip[LH_BOX_EDGE_TOP] = window.start.Y() - top;
		top = window.start.Y();
	}
	if (bottom > window.end.Y())
	{
		clip[LH_BOX_EDGE_BOTTOM] = bottom - window.end.Y();
		bottom = window.end.Y() - 1;
	}

	if (style & LH_DRAW_STYLE_SUNKEN)
		lightDir ^= LH_BOX_EDGE_LAST / 2;
	int side = lightDir;
	for (i = 0; i < LH_BOX_EDGE_LAST; i++)
	{
		shade[side] = EmbossShades[i];
		if (++side >= LH_BOX_EDGE_LAST)
			side = 0;
	}

	if (!(style & LH_DRAW_STYLE_NO_FILL))
	{
		if (style == 0)
		{
			for (pos = top; pos <= bottom; pos++)
				result = LHSys::GetDraw().HVLine24(left, pos, right, pos, fillColor);
		}
		else if (style & LH_DRAW_STYLE_BLEND_FILL)
		{
			for (pos = top; pos <= bottom; pos++)
				result = LHSys::GetDraw().HVLine24(left, pos, right, pos, fillColor, style | LH_DRAW_STYLE_BLEND);
		}
		else
		{
			for (pos = top; pos <= bottom; pos++)
				result = LHSys::GetDraw().HVLine24(left, pos, right, pos, fillColor, style);
		}
	}

	pos = y0;
	start = x0;
	end = x1;
	for (i = bevelWidth; i; i--)
	{
		if (clip[LH_BOX_EDGE_TOP] == 0)
		{
			int blue =
				min(fillColor.GetB() + shade[LH_BOX_EDGE_TOP] * edgeColor.GetB(), LHSys::GetScreen().GetMaxBlue());
			int green =
				min(fillColor.GetG() + shade[LH_BOX_EDGE_TOP] * edgeColor.GetG(), LHSys::GetScreen().GetMaxGreen());
			int red = min(fillColor.GetR() + shade[LH_BOX_EDGE_TOP] * edgeColor.GetR(), LHSys::GetScreen().GetMaxRed());
			color.r = red;
			color.g = green;
			color.b = blue;
			result = LHSys::GetDraw().HVLine24(start++, pos, end--, pos, color, style | LH_DRAW_STYLE_SOLID);
			pos++;
		}
		else
		{
			clip[LH_BOX_EDGE_TOP]--;
		}
	}
	pos = x1;
	start = y0;
	end = y1;
	for (i = bevelWidth; i; i--)
	{
		if (clip[LH_BOX_EDGE_RIGHT] == 0)
		{
			int blue =
				min(fillColor.GetB() + shade[LH_BOX_EDGE_RIGHT] * edgeColor.GetB(), LHSys::GetScreen().GetMaxBlue());
			int green =
				min(fillColor.GetG() + shade[LH_BOX_EDGE_RIGHT] * edgeColor.GetG(), LHSys::GetScreen().GetMaxGreen());
			int red =
				min(fillColor.GetR() + shade[LH_BOX_EDGE_RIGHT] * edgeColor.GetR(), LHSys::GetScreen().GetMaxRed());
			color.r = red;
			color.g = green;
			color.b = blue;
			result = LHSys::GetDraw().HVLine24(pos, start++, pos, end--, color, style | LH_DRAW_STYLE_SOLID);
			pos--;
		}
		else
		{
			clip[LH_BOX_EDGE_RIGHT]--;
		}
	}
	pos = y1;
	start = x0;
	end = x1;
	for (i = bevelWidth; i; i--)
	{
		if (clip[LH_BOX_EDGE_BOTTOM] == 0)
		{
			int blue =
				min(fillColor.GetB() + shade[LH_BOX_EDGE_BOTTOM] * edgeColor.GetB(), LHSys::GetScreen().GetMaxBlue());
			int green =
				min(fillColor.GetG() + shade[LH_BOX_EDGE_BOTTOM] * edgeColor.GetG(), LHSys::GetScreen().GetMaxGreen());
			int red =
				min(fillColor.GetR() + shade[LH_BOX_EDGE_BOTTOM] * edgeColor.GetR(), LHSys::GetScreen().GetMaxRed());
			color.r = red;
			color.g = green;
			color.b = blue;
			result = LHSys::GetDraw().HVLine24(start++, pos, end--, pos, color, style | LH_DRAW_STYLE_SOLID);
			pos--;
		}
		else
		{
			clip[LH_BOX_EDGE_BOTTOM]--;
		}
	}
	pos = x0;
	start = y0;
	end = y1;
	for (i = bevelWidth; i; i--)
	{
		if (clip[LH_BOX_EDGE_LEFT] == 0)
		{
			int blue =
				min(fillColor.GetB() + shade[LH_BOX_EDGE_LEFT] * edgeColor.GetB(), LHSys::GetScreen().GetMaxBlue());
			int green =
				min(fillColor.GetG() + shade[LH_BOX_EDGE_LEFT] * edgeColor.GetG(), LHSys::GetScreen().GetMaxGreen());
			int red =
				min(fillColor.GetR() + shade[LH_BOX_EDGE_LEFT] * edgeColor.GetR(), LHSys::GetScreen().GetMaxRed());
			color.r = red;
			color.g = green;
			color.b = blue;
			result = LHSys::GetDraw().HVLine24(pos, start++, pos, end--, color, style | LH_DRAW_STYLE_SOLID);
			pos++;
		}
		else
		{
			clip[LH_BOX_EDGE_LEFT]--;
		}
	}
	return result;
}
