#include <Lionhead/LHLib/ver5.0/LHDraw.h>

#include <stdlib.h>

#include <Lionhead/LH3DLib/development/LHColor.h>
#include <Lionhead/LH3DLib/development/LHCoord.h>
#include <Lionhead/LH3DLib/development/LHRegion.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>

extern LHScreen g_lhScreen; // 0xE85050 the global LHScreen instance (draw target = back buffer)
extern LHDraw   gLHDraw;    // 0xE8586C the global LHDraw context

extern uint16_t g_transColor[4];  // 0xE91EDC
extern uint8_t  g_embossShade[4]; // 0xC34178

int LHDraw::HVLine16(long x0, long y0, long x1, long y1, LHPixel16 color)
{
	long left = x0;
	long right = x1;
	long top, bottom;
	if (x0 <= x1)
	{
		top = y0;
		bottom = y1;
		if (y0 > y1)
		{
			bottom = y0;
			top = y1;
		}
	}
	else
	{
		bottom = y1;
		top = y0;
		right = x0;
		left = x1;
	}
	if (top == bottom)
	{
		uint16_t* p = (uint16_t*)(g_lhScreen.backAddress + 2 * (left + top * g_lhScreen.backPixelPitch));
		for (long i = right - left + 1; i; --i)
			*p++ = color.value;
		return 0;
	}
	else if (left == right)
	{
		long n = bottom - top + 1;
		for (uint16_t* p = (uint16_t*)(g_lhScreen.backAddress + 2 * (left + top * g_lhScreen.backPixelPitch)); n;
		     p += g_lhScreen.backPixelPitch)
		{
			*p = color.value;
			--n;
		}
		return 0;
	}
	return 3;
}

int LHDraw::HVLine24(long x0, long y0, long x1, long y1, LHColor color)
{
	long right = x1;
	long left = x0;
	long top, bottom;
	if (x0 <= x1)
	{
		top = y0;
		bottom = y1;
		if (y0 > y1)
		{
			bottom = y0;
			top = y1;
		}
	}
	else
	{
		bottom = y1;
		top = y0;
		right = x0;
		left = x1;
	}
	if (top == bottom)
	{
		long     n = right - left + 1;
		uint8_t* p = (uint8_t*)(left + top * g_lhScreen.backPixelPitch + g_lhScreen.backAddress +
		                        2 * (left + top * g_lhScreen.backPixelPitch));
		while (n)
		{
			p[2] = color.r;
			p[1] = color.r; // NOTE: original writes red into the green slot too
			*p = color.b;
			p += 3;
			--n;
		}
		return 0;
	}
	else if (left == right)
	{
		long     n = bottom - top + 1;
		uint8_t* p = (uint8_t*)(left + top * g_lhScreen.backPixelPitch + g_lhScreen.backAddress +
		                        2 * (left + top * g_lhScreen.backPixelPitch));
		while (n)
		{
			p[2] = color.r;
			p[1] = color.r;
			*p = color.b;
			--n;
			p += 3 * g_lhScreen.backPixelPitch;
		}
		return 0;
	}
	return 3;
}

int LHDraw::HVLine16(long x0, long y0, long x1, long y1, LHPixel16 color, unsigned long mode)
{
	long left = x0;
	long right = x1;
	long top, bottom;
	if (x0 <= x1)
	{
		top = y0;
		bottom = y1;
		if (y0 > y1)
		{
			bottom = y0;
			top = y1;
		}
	}
	else
	{
		bottom = y1;
		top = y0;
		right = x0;
		left = x1;
	}

	if (top != bottom)
	{
		// Vertical run.
		if (left != right)
			return 3;
		if (left > g_lhScreen.GraphicsWindow.end.x || left < g_lhScreen.GraphicsWindow.start.x ||
		    top > g_lhScreen.GraphicsWindow.end.y || bottom < g_lhScreen.GraphicsWindow.start.y)
			return 2;
		if (top < g_lhScreen.GraphicsWindow.start.y)
			top = g_lhScreen.GraphicsWindow.start.y;
		if (bottom > g_lhScreen.GraphicsWindow.end.y)
			bottom = g_lhScreen.GraphicsWindow.end.y;
		long      n = bottom - top + 1;
		uint16_t* p = (uint16_t*)(g_lhScreen.backAddress + 2 * (left + top * g_lhScreen.backPixelPitch));
		if (!n)
			return 0;
		while (true)
		{
			if ((mode & 0x580E) == 0)
			{
				*p = color.value;
			}
			else if ((mode & 2) != 0)
			{
				*p = (uint16_t)(((uint16_t)(g_lhScreen.ColorLSBMask & *p) +
				                 (uint16_t)(g_lhScreen.ColorLSBMask & color.value)) >>
				                1);
			}
			else if ((mode & 4) != 0)
			{
				uint16_t r = g_lhScreen.RedMask;
				uint8_t  d = *(uint8_t*)p;
				int      rr = (uint8_t)(g_lhScreen.RedMask & color.value) + (uint8_t)(g_lhScreen.RedMask & d);
				if (rr < (int)g_lhScreen.RedMask)
					r = (uint16_t)rr;
				uint16_t g = (uint8_t)(g_lhScreen.GreenMask & color.value) + (uint8_t)(d & g_lhScreen.GreenMask);
				if ((unsigned)((uint8_t)(g_lhScreen.GreenMask & color.value) + (uint8_t)(d & g_lhScreen.GreenMask)) >=
				    g_lhScreen.GreenMask)
					g = g_lhScreen.GreenMask;
				unsigned b = (uint8_t)(d & g_lhScreen.BlueMask) + (uint8_t)(g_lhScreen.BlueMask & color.value);
				if (b >= g_lhScreen.BlueMask)
					b = g_lhScreen.BlueMask;
				*p = (uint16_t)(r + g + b);
			}
			else if ((mode & 8) != 0)
			{
				uint8_t d = *(uint8_t*)p;
				*p = ((uint8_t)(g_lhScreen.RedMask & d) != (uint8_t)(g_lhScreen.RedMask & color.value)
				          ? (uint8_t)(g_lhScreen.RedMask & d) - (uint8_t)(g_lhScreen.RedMask & color.value)
				          : 0) +
				     ((uint8_t)(d & g_lhScreen.GreenMask) != (uint8_t)(g_lhScreen.GreenMask & color.value)
				          ? (uint8_t)(d & g_lhScreen.GreenMask) - (uint8_t)(g_lhScreen.GreenMask & color.value)
				          : 0) +
				     ((uint8_t)(d & g_lhScreen.BlueMask) != (uint8_t)(g_lhScreen.BlueMask & color.value)
				          ? (uint8_t)(d & g_lhScreen.BlueMask) - (uint8_t)(g_lhScreen.BlueMask & color.value)
				          : 0);
			}
			else
			{
				*p = color.value;
			}
			p += g_lhScreen.backPixelPitch;
			if (!--n)
				return 0;
		}
	}

	// Horizontal run.
	if (top > g_lhScreen.GraphicsWindow.end.y || top < g_lhScreen.GraphicsWindow.start.y ||
	    left > g_lhScreen.GraphicsWindow.end.x || right < g_lhScreen.GraphicsWindow.start.x)
		return 2;
	if (left < g_lhScreen.GraphicsWindow.start.x)
		left = g_lhScreen.GraphicsWindow.start.x;
	if (right > g_lhScreen.GraphicsWindow.end.x)
		right = g_lhScreen.GraphicsWindow.end.x;
	long      n = right - left + 1;
	uint16_t* p = (uint16_t*)(g_lhScreen.backAddress + 2 * (left + top * g_lhScreen.backPixelPitch));
	if (!n)
		return 0;
	while (true)
	{
		if ((mode & 0x580E) == 0)
		{
			*p = color.value;
		}
		else if ((mode & 2) != 0)
		{
			*p = (uint16_t)(((uint16_t)(g_lhScreen.ColorLSBMask & color.value) +
			                 (uint16_t)(g_lhScreen.ColorLSBMask & *p)) >>
			                1);
		}
		else if ((mode & 4) != 0)
		{
			uint16_t r = g_lhScreen.RedMask;
			uint8_t  d = *(uint8_t*)p;
			int      rr = (uint8_t)(g_lhScreen.RedMask & color.value) + (uint8_t)(g_lhScreen.RedMask & d);
			if (rr < (int)g_lhScreen.RedMask)
				r = (uint16_t)rr;
			uint16_t g = (uint8_t)(g_lhScreen.GreenMask & color.value) + (uint8_t)(d & g_lhScreen.GreenMask);
			if ((unsigned)((uint8_t)(g_lhScreen.GreenMask & color.value) + (uint8_t)(d & g_lhScreen.GreenMask)) >=
			    g_lhScreen.GreenMask)
				g = g_lhScreen.GreenMask;
			unsigned b = (uint8_t)(d & g_lhScreen.BlueMask) + (uint8_t)(g_lhScreen.BlueMask & color.value);
			if (b >= g_lhScreen.BlueMask)
				b = g_lhScreen.BlueMask;
			*p = (uint16_t)(r + g + b);
		}
		else if ((mode & 8) != 0)
		{
			uint8_t d = *(uint8_t*)p;
			*p = ((uint8_t)(g_lhScreen.RedMask & d) != (uint8_t)(g_lhScreen.RedMask & color.value)
			          ? (uint8_t)(g_lhScreen.RedMask & d) - (uint8_t)(g_lhScreen.RedMask & color.value)
			          : 0) +
			     ((uint8_t)(d & g_lhScreen.GreenMask) != (uint8_t)(g_lhScreen.GreenMask & color.value)
			          ? (uint8_t)(d & g_lhScreen.GreenMask) - (uint8_t)(g_lhScreen.GreenMask & color.value)
			          : 0) +
			     ((uint8_t)(d & g_lhScreen.BlueMask) != (uint8_t)(g_lhScreen.BlueMask & color.value)
			          ? (uint8_t)(d & g_lhScreen.BlueMask) - (uint8_t)(g_lhScreen.BlueMask & color.value)
			          : 0);
		}
		else
		{
			*p = color.value;
		}
		++p;
		if (!--n)
			return 0;
	}
}

int LHDraw::HVLine24(long x0, long y0, long x1, long y1, LHColor color, unsigned long mode)
{
	long right = x1;
	long left = x0;
	long top, bottom;
	if (x0 <= x1)
	{
		top = y0;
		bottom = y1;
		if (y0 > y1)
		{
			bottom = y0;
			top = y1;
		}
	}
	else
	{
		bottom = y1;
		top = y0;
		right = x0;
		left = x1;
	}

	if (top != bottom)
	{
		if (left != right)
			return 3;
		if (left > g_lhScreen.GraphicsWindow.end.x || left < g_lhScreen.GraphicsWindow.start.x ||
		    top > g_lhScreen.GraphicsWindow.end.y || bottom < g_lhScreen.GraphicsWindow.start.y)
			return 2;
		if (top < g_lhScreen.GraphicsWindow.start.y)
			top = g_lhScreen.GraphicsWindow.start.y;
		if (bottom > g_lhScreen.GraphicsWindow.end.y)
			bottom = g_lhScreen.GraphicsWindow.end.y;
		uint8_t* p = (uint8_t*)(left + top * g_lhScreen.backPixelPitch + g_lhScreen.backAddress +
		                        2 * (left + top * g_lhScreen.backPixelPitch));
		long     n = bottom - top + 1;
		while (n)
		{
			if ((mode & 0x580E) == 0)
			{
				p[2] = color.r;
				p[1] = color.r;
				*p = color.b;
			}
			else if ((mode & 2) != 0)
			{
				p[2] = (uint8_t)((color.r + p[2]) / 2);
				p[1] = (uint8_t)((p[1] + color.g) / 2);
				*p = (uint8_t)((*p + color.b) / 2);
			}
			else if ((mode & 4) != 0)
			{
				int bch = *p + color.b;
				if (bch >= g_lhScreen.MaxBlue)
					bch = g_lhScreen.MaxBlue;
				int gch = color.g + p[1];
				if (gch >= g_lhScreen.MaxGreen)
					gch = g_lhScreen.MaxGreen;
				uint8_t rch = g_lhScreen.maxRed;
				if (color.r + p[2] < g_lhScreen.maxRed)
					rch = (uint8_t)(color.r + p[2]);
				p[2] = rch;
				p[1] = (uint8_t)gch;
				*p = (uint8_t)bch;
			}
			else if ((mode & 8) != 0)
			{
				int rr = p[2] - color.r;
				p[2] = (uint8_t)((rr <= 0) ? 0 : rr);
				int gg = p[1] - color.g;
				p[1] = (uint8_t)((gg <= 0) ? 0 : gg);
				int bb = *p - color.b;
				*p = (uint8_t)((bb <= 0) ? 0 : bb);
			}
			else
			{
				p[2] = color.r;
				p[1] = color.r;
				*p = color.b;
			}
			p += 3 * g_lhScreen.backPixelPitch;
			--n;
		}
		return 0;
	}

	if (top > g_lhScreen.GraphicsWindow.end.y || top < g_lhScreen.GraphicsWindow.start.y ||
	    left > g_lhScreen.GraphicsWindow.end.x || right < g_lhScreen.GraphicsWindow.start.x)
		return 2;
	if (left < g_lhScreen.GraphicsWindow.start.x)
		left = g_lhScreen.GraphicsWindow.start.x;
	if (right > g_lhScreen.GraphicsWindow.end.x)
		right = g_lhScreen.GraphicsWindow.end.x;
	uint8_t* p = (uint8_t*)(left + top * g_lhScreen.backPixelPitch + g_lhScreen.backAddress +
	                        2 * (left + top * g_lhScreen.backPixelPitch));
	long     n = right - left + 1;
	while (n)
	{
		if ((mode & 0x580E) == 0)
		{
			p[2] = color.r;
			p[1] = color.r;
			*p = color.b;
		}
		else if ((mode & 2) != 0)
		{
			p[2] = (uint8_t)((color.r + p[2]) / 2);
			p[1] = (uint8_t)((p[1] + color.g) / 2);
			*p = (uint8_t)((*p + color.b) / 2);
		}
		else if ((mode & 4) != 0)
		{
			int bch = color.b + *p;
			if (bch >= g_lhScreen.MaxBlue)
				bch = g_lhScreen.MaxBlue;
			int gch = color.g + p[1];
			if (gch >= g_lhScreen.MaxGreen)
				gch = g_lhScreen.MaxGreen;
			int rch = p[2] + color.r;
			if (rch >= g_lhScreen.maxRed)
				rch = g_lhScreen.maxRed;
			p[2] = (uint8_t)rch;
			p[1] = (uint8_t)gch;
			*p = (uint8_t)bch;
		}
		else if ((mode & 8) != 0)
		{
			int     bb = *p - color.b;
			uint8_t nb = (uint8_t)((bb <= 0) ? 0 : bb);
			int     rv = p[2];
			int     gg = p[1] - color.g;
			p[1] = (uint8_t)((gg <= 0) ? 0 : gg);
			*p = nb;
			int rr = rv - color.r;
			p[2] = (uint8_t)((rr <= 0) ? 0 : rr);
		}
		else
		{
			p[2] = color.r;
			p[1] = color.r;
			*p = color.b;
		}
		p += 3;
		--n;
	}
	return 0;
}

int LHDraw::Line24(long x0, long y0, long x1, long y1, LHColor color, unsigned long mode, LHColor* drawBuffer,
                   unsigned long pixelPitch)
{
	(void)x0;
	(void)y0;
	(void)x1;
	(void)y1;
	(void)color;
	(void)mode;
	(void)drawBuffer;
	(void)pixelPitch;
	return 0; // TODO: transcribe faithfully (see RE/LHDraw.md).
}

int LHDraw::Line16(long x0, long y0, long x1, long y1, LHPixel16 color, unsigned long mode, LHPixel16* drawBuffer,
                   unsigned long pixelPitch)
{
	(void)x0;
	(void)y0;
	(void)x1;
	(void)y1;
	(void)color;
	(void)mode;
	(void)drawBuffer;
	(void)pixelPitch;
	return 0; // TODO: transcribe faithfully (see RE/LHDraw.md).
}

int LHDraw::Box16(long left, long top, long right, long bottom, LHPixel16 color)
{
	gLHDraw.HVLine16(left, top, right, top, color);
	gLHDraw.HVLine16(right, top, right, bottom, color);
	gLHDraw.HVLine16(left, bottom, right, bottom, color);
	return gLHDraw.HVLine16(left, top, left, bottom, color);
}

int LHDraw::Box24(long left, long top, long right, long bottom, LHColor color)
{
	gLHDraw.HVLine24(left, top, right, top, color);
	gLHDraw.HVLine24(right, top, right, bottom, color);
	gLHDraw.HVLine24(left, bottom, right, bottom, color);
	return gLHDraw.HVLine24(left, top, left, bottom, color);
}

int LHDraw::Box16(long left, long top, long right, long bottom, LHPixel16 color, unsigned long style)
{
	long l = left;
	long r = right;
	char clipped = 0;
	int  result = 2;
	char clip = 0;
	if (left > right)
	{
		r = left;
		l = right;
	}
	long t = top;
	long b = bottom;
	if (top > bottom)
	{
		b = top;
		t = bottom;
	}
	if (l > g_lhScreen.GraphicsWindow.end.x || r < g_lhScreen.GraphicsWindow.start.x ||
	    t > g_lhScreen.GraphicsWindow.end.y || b < g_lhScreen.GraphicsWindow.start.y)
		return 2;
	if (l < g_lhScreen.GraphicsWindow.start.x)
	{
		clip = 8;
		l = g_lhScreen.GraphicsWindow.start.x;
		clipped = 8;
	}
	if (r > g_lhScreen.GraphicsWindow.end.x)
	{
		clip |= 2;
		r = g_lhScreen.GraphicsWindow.end.x;
		clipped = clip;
	}
	if (t < g_lhScreen.GraphicsWindow.start.y)
	{
		clip |= 1;
		t = g_lhScreen.GraphicsWindow.start.y;
		clipped = clip;
	}
	if (b > g_lhScreen.GraphicsWindow.end.y)
	{
		clip |= 4;
		b = g_lhScreen.GraphicsWindow.end.y;
		clipped = clip;
	}

	if (style == 1)
	{
		if ((clip & 1) == 0)
		{
			result = gLHDraw.HVLine16(l, t, r, t, color);
			clip = clipped;
		}
		if ((clip & 2) == 0)
		{
			result = gLHDraw.HVLine16(r, t, r, b, color);
			clip = clipped;
		}
		if ((clip & 4) == 0)
		{
			result = gLHDraw.HVLine16(l, b, r, b, color);
			clip = clipped;
		}
		if ((clip & 8) == 0)
			return gLHDraw.HVLine16(l, t, l, b, color);
	}
	else
	{
		if ((style & 0x10) != 0)
		{
			if (style == 17)
			{
				for (; t <= b; ++t)
					gLHDraw.HVLine16(l, t, r, t, color);
			}
			else
			{
				for (; t <= b; ++t)
					gLHDraw.HVLine16(l, t, r, t, color, style);
			}
			return 0;
		}
		if ((clip & 1) == 0)
		{
			result = gLHDraw.HVLine16(l, t, r, t, color, style);
			clip = clipped;
		}
		if ((clip & 2) == 0)
		{
			result = gLHDraw.HVLine16(r, t, r, b, color, style);
			clip = clipped;
		}
		if ((clip & 4) == 0)
		{
			result = gLHDraw.HVLine16(l, b, r, b, color, style);
			clip = clipped;
		}
		if ((clip & 8) == 0)
			return gLHDraw.HVLine16(l, t, l, b, color, style);
	}
	return result;
}

int LHDraw::Box24(long left, long top, long right, long bottom, LHColor color, unsigned long style)
{
	long l = left;
	long r = right;
	char clip = 0;
	int  result = 2;
	char clipped = 0;
	if (left > right)
	{
		r = left;
		l = right;
	}
	long t = top;
	long b = bottom;
	if (top > bottom)
	{
		b = top;
		t = bottom;
	}
	if (l > g_lhScreen.GraphicsWindow.end.x || r < g_lhScreen.GraphicsWindow.start.x ||
	    t > g_lhScreen.GraphicsWindow.end.y || b < g_lhScreen.GraphicsWindow.start.y)
		return 2;
	if (l < g_lhScreen.GraphicsWindow.start.x)
	{
		clipped = 8;
		l = g_lhScreen.GraphicsWindow.start.x;
		clip = 8;
	}
	if (r > g_lhScreen.GraphicsWindow.end.x)
	{
		clip |= 2;
		r = g_lhScreen.GraphicsWindow.end.x;
		clipped = clip;
	}
	if (t < g_lhScreen.GraphicsWindow.start.y)
	{
		clip |= 1;
		t = g_lhScreen.GraphicsWindow.start.y;
		clipped = clip;
	}
	if (b > g_lhScreen.GraphicsWindow.end.y)
	{
		clip |= 4;
		b = g_lhScreen.GraphicsWindow.end.y;
		clipped = clip;
	}

	if (style == 1)
	{
		if ((clip & 1) == 0)
		{
			result = gLHDraw.HVLine24(l, t, r, t, color);
			clip = clipped;
		}
		if ((clip & 2) == 0)
		{
			result = gLHDraw.HVLine24(r, t, r, b, color);
			clip = clipped;
		}
		if ((clip & 4) == 0)
		{
			result = gLHDraw.HVLine24(l, b, r, b, color);
			clip = clipped;
		}
		if ((clip & 8) == 0)
			return gLHDraw.HVLine24(l, t, l, b, color);
	}
	else
	{
		if ((style & 0x10) != 0)
		{
			if (style == 17)
			{
				for (; t <= b; ++t)
					gLHDraw.HVLine24(l, t, r, t, color);
			}
			else
			{
				for (; t <= b; ++t)
					gLHDraw.HVLine24(l, t, r, t, color, style);
			}
			return 0;
		}
		if ((clip & 1) == 0)
		{
			result = gLHDraw.HVLine24(l, t, r, t, color, style);
			clip = clipped;
		}
		if ((clip & 2) == 0)
		{
			result = gLHDraw.HVLine24(r, t, r, b, color, style);
			clip = clipped;
		}
		if ((clip & 4) == 0)
		{
			result = gLHDraw.HVLine24(l, b, r, b, color, style);
			clip = clipped;
		}
		if ((clip & 8) == 0)
			return gLHDraw.HVLine24(l, t, l, b, color, style);
	}
	return result;
}

int LHDraw::EmbossedBox16(long left, long top, long right, long bottom, LHPixel16 fillColor, LHPixel16 edgeColor,
                          uint8_t lightDir, uint8_t bevelWidth, unsigned long style)
{
	(void)left;
	(void)top;
	(void)right;
	(void)bottom;
	(void)fillColor;
	(void)edgeColor;
	(void)lightDir;
	(void)bevelWidth;
	(void)style;
	return 2;
}

int LHDraw::EmbossedBox24(long left, long top, long right, long bottom, LHColor fillColor, LHColor edgeColor,
                          uint8_t lightDir, uint8_t bevelWidth, unsigned long style)
{
	(void)left;
	(void)top;
	(void)right;
	(void)bottom;
	(void)fillColor;
	(void)edgeColor;
	(void)lightDir;
	(void)bevelWidth;
	(void)style;
	return 2;
}

int LHDraw::Pixel16(unsigned long x, unsigned long y, LHPixel16 color, unsigned long mode)
{
	uint16_t* p = (uint16_t*)(this->drawAddress + 2 * (x + y * this->pixelPitch));
	if (x > (unsigned long)g_lhScreen.GraphicsWindow.end.x || y > (unsigned long)g_lhScreen.GraphicsWindow.end.y)
		return 2;
	uint16_t out = color.value;
	if ((mode & 0x580E) == 0)
		*p = color.value;
	if ((mode & 2) != 0)
	{
		*p =
			(uint16_t)(((uint16_t)(g_lhScreen.ColorLSBMask & *p) + (uint16_t)(g_lhScreen.ColorLSBMask & color.value)) >>
		               1);
		return 0;
	}
	else if ((mode & 4) != 0)
	{
		uint16_t r = g_lhScreen.RedMask;
		uint8_t  d = *(uint8_t*)p;
		int      rp = (uint8_t)(g_lhScreen.RedMask & color.value);
		int      rd = (uint8_t)(g_lhScreen.RedMask & d);
		if (rp + rd < (int)g_lhScreen.RedMask)
			r = (uint16_t)(rp + rd);
		uint16_t g = (uint8_t)(g_lhScreen.GreenMask & color.value) + (uint8_t)(d & g_lhScreen.GreenMask);
		if ((unsigned)((uint8_t)(g_lhScreen.GreenMask & color.value) + (uint8_t)(d & g_lhScreen.GreenMask)) >=
		    g_lhScreen.GreenMask)
			g = g_lhScreen.GreenMask;
		unsigned b = (uint8_t)(d & g_lhScreen.BlueMask) + (uint8_t)(g_lhScreen.BlueMask & color.value);
		if (b >= g_lhScreen.BlueMask)
			b = g_lhScreen.BlueMask;
		*p = (uint16_t)(r + g + b);
		return 0;
	}
	else
	{
		if ((mode & 8) != 0)
		{
			uint8_t d = *(uint8_t*)p;
			out = ((uint8_t)(g_lhScreen.RedMask & d) != (uint8_t)(g_lhScreen.RedMask & color.value)
			           ? (uint8_t)(g_lhScreen.RedMask & d) - (uint8_t)(g_lhScreen.RedMask & color.value)
			           : 0) +
			      ((uint8_t)(d & g_lhScreen.GreenMask) != (uint8_t)(g_lhScreen.GreenMask & color.value)
			           ? (uint8_t)(d & g_lhScreen.GreenMask) - (uint8_t)(g_lhScreen.GreenMask & color.value)
			           : 0) +
			      ((uint8_t)(d & g_lhScreen.BlueMask) != (uint8_t)(g_lhScreen.BlueMask & color.value)
			           ? (uint8_t)(d & g_lhScreen.BlueMask) - (uint8_t)(g_lhScreen.BlueMask & color.value)
			           : 0);
		}
		*p = out;
		return 0;
	}
}

int LHDraw::Pixel24(unsigned long x, unsigned long y, LHColor color, unsigned long mode)
{
	uint8_t* p = (uint8_t*)(g_lhScreen.backAddress + 2 * (x + y * g_lhScreen.backPixelPitch) + x +
	                        y * g_lhScreen.backPixelPitch);
	if (x > (unsigned long)g_lhScreen.GraphicsWindow.end.x || y > (unsigned long)g_lhScreen.GraphicsWindow.end.y)
		return 2;
	if ((mode & 0x580E) == 0)
	{
		p[2] = color.r;
		p[1] = color.r;
		*p = color.b;
	}
	if ((mode & 2) != 0)
	{
		p[2] = (uint8_t)((color.r + p[2]) / 2);
		p[1] = (uint8_t)((color.g + p[1]) / 2);
		*p = (uint8_t)((color.b + *p) / 2);
		return 0;
	}
	else if ((mode & 4) != 0)
	{
		int bch = *p + color.b;
		if (bch >= g_lhScreen.MaxBlue)
			bch = g_lhScreen.MaxBlue;
		int gch = p[1] + color.g;
		if (gch >= g_lhScreen.MaxGreen)
			gch = g_lhScreen.MaxGreen;
		int     rv = p[2];
		uint8_t rch = g_lhScreen.maxRed;
		if (rv + color.r < g_lhScreen.maxRed)
			rch = (uint8_t)(rv + color.r);
		p[2] = rch;
		p[1] = (uint8_t)gch;
		*p = (uint8_t)bch;
		return 0;
	}
	else
	{
		if ((mode & 8) != 0)
		{
			int gv = p[1];
			int bb = *p - color.b;
			*p = (uint8_t)((bb <= 0) ? 0 : bb);
			int rr = p[2] - color.r;
			p[2] = (uint8_t)((rr <= 0) ? 0 : rr);
			int gg = gv - color.g;
			p[1] = (uint8_t)((gg <= 0) ? 0 : gg);
		}
		else
		{
			p[2] = color.r;
			p[1] = color.r;
			*p = color.b;
		}
		return 0;
	}
}

int LHDraw::Circle16(long centerX, long centerY, unsigned long radius, LHPixel16 color, unsigned long mode)
{
	int r = (int)radius;
	int off = 0;
	int d = 3 - 2 * r;
	if ((mode & 0x10) == 0)
	{
		if (r >= 0)
		{
			while (true)
			{
				int yTop = centerY - r;
				this->Pixel16(centerX - off, yTop, color, mode);
				this->Pixel16(centerX + off, yTop, color, mode);
				this->Pixel16(centerX - off, centerY + r, color, mode);
				this->Pixel16(centerX + off, centerY + r, color, mode);
				this->Pixel16(centerX - r, centerY - off, color, mode);
				this->Pixel16(centerX + r, centerY - off, color, mode);
				this->Pixel16(centerX - r, centerY + off, color, mode);
				this->Pixel16(centerX + r, centerY + off, color, mode);
				if (d >= 0)
				{
					int t = off - r--;
					d += 4 * t + 10;
				}
				else
				{
					d += 4 * off + 6;
				}
				if (++off > r)
					break;
			}
		}
		return 0;
	}
	if (r < 0)
		return 0;
	int yTop = centerY - r;
	int yBot = centerY + r;
	while (true)
	{
		gLHDraw.HVLine16(centerX - off, centerY - r, centerX + off, centerY - r, color, mode);
		gLHDraw.HVLine16(centerX - off, centerY + r, centerX + off, centerY + r, color, mode);
		gLHDraw.HVLine16(centerX - r, yTop, centerX + r, yTop, color, mode);
		gLHDraw.HVLine16(centerX - r, yBot, centerX + r, yBot, color, mode);
		if (d >= 0)
		{
			++yTop;
			--r;
			d += 4 * (off - r) + 10;
			--yBot;
		}
		else
		{
			d += 4 * off + 6;
		}
		if (++off > r)
			break;
	}
	return 0;
}

int LHDraw::Circle24(long centerX, long centerY, unsigned long radius, LHColor color, unsigned long mode)
{
	int r = (int)radius;
	int off = 0;
	int d = 3 - 2 * r;
	if ((mode & 0x10) == 0)
	{
		if (r >= 0)
		{
			while (true)
			{
				int yTop = centerY - r;
				gLHDraw.Pixel24(centerX - off, yTop, color, mode);
				gLHDraw.Pixel24(centerX + off, yTop, color, mode);
				gLHDraw.Pixel24(centerX - off, centerY + r, color, mode);
				gLHDraw.Pixel24(centerX + off, centerY + r, color, mode);
				gLHDraw.Pixel24(centerX - r, centerY - off, color, mode);
				gLHDraw.Pixel24(centerX + r, centerY - off, color, mode);
				gLHDraw.Pixel24(centerX - r, centerY + off, color, mode);
				gLHDraw.Pixel24(centerX + r, centerY + off, color, mode);
				if (d >= 0)
				{
					int t = off - r--;
					d += 4 * t + 10;
				}
				else
				{
					d += 4 * off + 6;
				}
				if (++off > r)
					break;
			}
		}
		return 0;
	}
	if (r < 0)
		return 0;
	int yTop = centerY - r;
	int yBot = centerY + r;
	while (true)
	{
		gLHDraw.HVLine24(centerX - off, centerY - r, centerX + off, centerY - r, color, mode);
		gLHDraw.HVLine24(centerX - off, centerY + r, centerX + off, centerY + r, color, mode);
		gLHDraw.HVLine24(centerX - r, yTop, centerX + r, yTop, color, mode);
		gLHDraw.HVLine24(centerX - r, yBot, centerX + r, yBot, color, mode);
		if (d >= 0)
		{
			++yTop;
			--r;
			d += 4 * (off - r) + 10;
			--yBot;
		}
		else
		{
			d += 4 * off + 6;
		}
		if (++off > r)
			break;
	}
	return 0;
}

int LHDraw::Sprite16(long x, long y, LHSprite* sprite)
{
	uint8_t*  src = sprite->PixelData;
	uint16_t* dst = (uint16_t*)(g_lhScreen.backAddress + 2 * (x + y * g_lhScreen.backPixelPitch));
	int       rowGap = g_lhScreen.backPixelPitch - sprite->Width;
	if (sprite->Height)
	{
		int h = sprite->Height;
		do
		{
			if (sprite->Width)
			{
				int w = sprite->Width;
				do
				{
					if (g_transColor[0] != *(uint16_t*)src)
						*dst = *(uint16_t*)src;
					++dst;
					src += 2;
					--w;
				} while (w);
			}
			--h;
			dst += rowGap;
		} while (h);
	}
	return rowGap;
}

int LHDraw::Sprite24(long x, long y, LHSprite* sprite)
{
	uint8_t* src = sprite->PixelData;
	int      dst = g_lhScreen.backAddress + 2 * (x + y * g_lhScreen.backPixelPitch) + x + y * g_lhScreen.backPixelPitch;
	int      rowGap = g_lhScreen.backPixelPitch - sprite->Width;
	if (sprite->Height)
	{
		int h = sprite->Height;
		do
		{
			if (sprite->Width)
			{
				int w = sprite->Width;
				do
				{
					if (src[2] != (uint8_t)g_transColor[3] || *(uint16_t*)src != g_transColor[2])
					{
						uint16_t bg = *(uint16_t*)src;
						uint8_t  rr = src[2];
						*(uint8_t*)(dst + 2) = rr;
						*(uint8_t*)(dst + 1) = rr;
						*(uint8_t*)dst = (uint8_t)bg;
					}
					dst += 3;
					src += 3;
					--w;
				} while (w);
			}
			dst += rowGap + 2 * rowGap;
			--h;
		} while (h);
	}
	return dst;
}

int LHDraw::Sprite24To16(long x, long y, LHSprite* sprite)
{
	uint8_t*  src = sprite->PixelData;
	uint16_t* dst = (uint16_t*)(g_lhScreen.backAddress + 2 * (x + y * g_lhScreen.backPixelPitch));
	int       rowGap = g_lhScreen.backPixelPitch - sprite->Width;
	int       result = sprite->Height;
	if ((uint16_t)result)
	{
		int h = sprite->Height;
		do
		{
			if (sprite->Width)
			{
				int w = sprite->Width;
				do
				{
					if (src[2] != (uint8_t)g_transColor[3] || *(uint16_t*)src != g_transColor[2])
					{
						int red = (uint8_t)(src[2] >> g_lhScreen.redScale);
						int green = (uint8_t)((uint8_t)(*(uint16_t*)src >> 8) >> g_lhScreen.GreenScale);
						int v = (green << g_lhScreen.GreenShift) + (red << g_lhScreen.RedShift);
						int blue = (uint8_t)((uint8_t)*(uint16_t*)src >> g_lhScreen.BlueScale);
						*dst = (uint16_t)((blue << g_lhScreen.BlueShift) + v);
					}
					++dst;
					src += 3;
					--w;
				} while (w);
			}
			result = h - 1;
			dst += rowGap;
			--h;
		} while (h);
	}
	return result;
}

int LHDraw::Sprite24(long x, long y, LHSprite* sprite, unsigned long flags, LHColor* drawBuffer,
                     unsigned long pixelPitch)
{
	(void)x;
	(void)y;
	(void)sprite;
	(void)flags;
	(void)drawBuffer;
	(void)pixelPitch;
	return 0;
}

int LHDraw::Sprite24To16(long x, long y, LHSprite* sprite, unsigned long flags, LHPixel16* drawBuffer,
                         unsigned long pixelPitch)
{
	(void)x;
	(void)y;
	(void)sprite;
	(void)flags;
	(void)drawBuffer;
	(void)pixelPitch;
	return 0;
}

int LHDraw::Sprite16(long x, long y, LHSprite* sprite, unsigned long flags, unsigned short alpha, LHPixel16* drawBuffer,
                     unsigned long pixelPitch)
{
	(void)x;
	(void)y;
	(void)sprite;
	(void)flags;
	(void)alpha;
	(void)drawBuffer;
	(void)pixelPitch;
	return 0;
}

int LHDraw::HeightSprite16(long x, long y, LHSprite* sprite, unsigned long height, unsigned long flags)
{
	(void)x;
	(void)y;
	(void)sprite;
	(void)height;
	(void)flags;
	return 0;
}

int LHDraw::HeightSprite24(long x, long y, LHSprite* sprite, unsigned long height, unsigned long flags)
{
	(void)x;
	(void)y;
	(void)sprite;
	(void)height;
	(void)flags;
	return 0;
}

int LHDraw::HeightSprite24To16(long x, long y, LHSprite* sprite, unsigned long height, unsigned long flags)
{
	(void)x;
	(void)y;
	(void)sprite;
	(void)height;
	(void)flags;
	return 0;
}

int LHDraw::RegionSprite16(long x, long y, LHSprite* sprite, LHRegion* region, unsigned long flags)
{
	(void)x;
	(void)y;
	(void)sprite;
	(void)region;
	(void)flags;
	return 0;
}

int LHDraw::RegionSprite24(long x, long y, LHSprite* sprite, LHRegion* region, unsigned long flags)
{
	(void)x;
	(void)y;
	(void)sprite;
	(void)region;
	(void)flags;
	return 0;
}

int LHDraw::RegionSprite24To16(long x, long y, LHSprite* sprite, LHRegion* region, unsigned long flags)
{
	(void)x;
	(void)y;
	(void)sprite;
	(void)region;
	(void)flags;
	return 0;
}

int LHDraw::OneColorSprite16(long x, long y, LHSprite* sprite, LHPixel16 color, unsigned long flags)
{
	(void)x;
	(void)y;
	(void)sprite;
	(void)color;
	(void)flags;
	return 0;
}

int LHDraw::OneColorSprite24(long x, long y, LHSprite* sprite, LHColor color, unsigned long flags)
{
	(void)x;
	(void)y;
	(void)sprite;
	(void)color;
	(void)flags;
	return 0;
}

int LHDraw::ScaledSprite16xxx(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
                              unsigned long flags)
{
	(void)x;
	(void)y;
	(void)destWidth;
	(void)destHeight;
	(void)sprite;
	(void)flags;
	return 0;
}

int LHDraw::ScaledSprite24(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
                           unsigned long flags)
{
	(void)x;
	(void)y;
	(void)destWidth;
	(void)destHeight;
	(void)sprite;
	(void)flags;
	return 0;
}

int LHDraw::ScaledSprite24To16(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
                               unsigned long flags)
{
	(void)x;
	(void)y;
	(void)destWidth;
	(void)destHeight;
	(void)sprite;
	(void)flags;
	return 0;
}

int LHDraw::ScaledSprite16(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
                           unsigned long flags)
{
	(void)x;
	(void)y;
	(void)destWidth;
	(void)destHeight;
	(void)sprite;
	(void)flags;
	return 0;
}

int LHDraw::OneColorScaledSprite16(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
                                   LHPixel16 color, unsigned long flags)
{
	(void)x;
	(void)y;
	(void)destWidth;
	(void)destHeight;
	(void)sprite;
	(void)color;
	(void)flags;
	return 0;
}

int LHDraw::OneColorScaledSprite24(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
                                   LHColor color, unsigned long flags)
{
	(void)x;
	(void)y;
	(void)destWidth;
	(void)destHeight;
	(void)sprite;
	(void)color;
	(void)flags;
	return 0;
}
