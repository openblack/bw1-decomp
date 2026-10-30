#include <Lionhead/LHLib/ver5.0/LHDraw.h>

#include <Lionhead/LH3DLib/development/LHColor.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

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
		uint16_t* p =
			(uint16_t*)(LHSys::GetScreen().backAddress + 2 * (left + top * LHSys::GetScreen().backPixelPitch));
		for (long i = right - left + 1; i; --i)
			*p++ = color.value;
		return 0;
	}
	else if (left == right)
	{
		long n = bottom - top + 1;
		for (uint16_t* p =
		         (uint16_t*)(LHSys::GetScreen().backAddress + 2 * (left + top * LHSys::GetScreen().backPixelPitch));
		     n; p += LHSys::GetScreen().backPixelPitch)
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
		uint8_t* p = (uint8_t*)(left + top * LHSys::GetScreen().backPixelPitch + LHSys::GetScreen().backAddress +
		                        2 * (left + top * LHSys::GetScreen().backPixelPitch));
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
		uint8_t* p = (uint8_t*)(left + top * LHSys::GetScreen().backPixelPitch + LHSys::GetScreen().backAddress +
		                        2 * (left + top * LHSys::GetScreen().backPixelPitch));
		while (n)
		{
			p[2] = color.r;
			p[1] = color.r;
			*p = color.b;
			--n;
			p += 3 * LHSys::GetScreen().backPixelPitch;
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
		if (left > LHSys::GetScreen().GraphicsWindow.end.x || left < LHSys::GetScreen().GraphicsWindow.start.x ||
		    top > LHSys::GetScreen().GraphicsWindow.end.y || bottom < LHSys::GetScreen().GraphicsWindow.start.y)
			return 2;
		if (top < LHSys::GetScreen().GraphicsWindow.start.y)
			top = LHSys::GetScreen().GraphicsWindow.start.y;
		if (bottom > LHSys::GetScreen().GraphicsWindow.end.y)
			bottom = LHSys::GetScreen().GraphicsWindow.end.y;
		long      n = bottom - top + 1;
		uint16_t* p =
			(uint16_t*)(LHSys::GetScreen().backAddress + 2 * (left + top * LHSys::GetScreen().backPixelPitch));
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
				*p = (uint16_t)(((uint16_t)(LHSys::GetScreen().ColorLSBMask & *p) +
				                 (uint16_t)(LHSys::GetScreen().ColorLSBMask & color.value)) >>
				                1);
			}
			else if ((mode & 4) != 0)
			{
				uint16_t r = LHSys::GetScreen().RedMask;
				uint8_t  d = *(uint8_t*)p;
				int      rr =
					(uint8_t)(LHSys::GetScreen().RedMask & color.value) + (uint8_t)(LHSys::GetScreen().RedMask & d);
				if (rr < (int)LHSys::GetScreen().RedMask)
					r = (uint16_t)rr;
				uint16_t g =
					(uint8_t)(LHSys::GetScreen().GreenMask & color.value) + (uint8_t)(d & LHSys::GetScreen().GreenMask);
				if ((unsigned)((uint8_t)(LHSys::GetScreen().GreenMask & color.value) +
				               (uint8_t)(d & LHSys::GetScreen().GreenMask)) >= LHSys::GetScreen().GreenMask)
					g = LHSys::GetScreen().GreenMask;
				unsigned b =
					(uint8_t)(d & LHSys::GetScreen().BlueMask) + (uint8_t)(LHSys::GetScreen().BlueMask & color.value);
				if (b >= LHSys::GetScreen().BlueMask)
					b = LHSys::GetScreen().BlueMask;
				*p = (uint16_t)(r + g + b);
			}
			else if ((mode & 8) != 0)
			{
				uint8_t d = *(uint8_t*)p;
				*p = ((uint8_t)(LHSys::GetScreen().RedMask & d) != (uint8_t)(LHSys::GetScreen().RedMask & color.value)
				          ? (uint8_t)(LHSys::GetScreen().RedMask & d) -
				                (uint8_t)(LHSys::GetScreen().RedMask & color.value)
				          : 0) +
				     ((uint8_t)(d & LHSys::GetScreen().GreenMask) !=
				              (uint8_t)(LHSys::GetScreen().GreenMask & color.value)
				          ? (uint8_t)(d & LHSys::GetScreen().GreenMask) -
				                (uint8_t)(LHSys::GetScreen().GreenMask & color.value)
				          : 0) +
				     ((uint8_t)(d & LHSys::GetScreen().BlueMask) != (uint8_t)(LHSys::GetScreen().BlueMask & color.value)
				          ? (uint8_t)(d & LHSys::GetScreen().BlueMask) -
				                (uint8_t)(LHSys::GetScreen().BlueMask & color.value)
				          : 0);
			}
			else
			{
				*p = color.value;
			}
			p += LHSys::GetScreen().backPixelPitch;
			if (!--n)
				return 0;
		}
	}

	// Horizontal run.
	if (top > LHSys::GetScreen().GraphicsWindow.end.y || top < LHSys::GetScreen().GraphicsWindow.start.y ||
	    left > LHSys::GetScreen().GraphicsWindow.end.x || right < LHSys::GetScreen().GraphicsWindow.start.x)
		return 2;
	if (left < LHSys::GetScreen().GraphicsWindow.start.x)
		left = LHSys::GetScreen().GraphicsWindow.start.x;
	if (right > LHSys::GetScreen().GraphicsWindow.end.x)
		right = LHSys::GetScreen().GraphicsWindow.end.x;
	long      n = right - left + 1;
	uint16_t* p = (uint16_t*)(LHSys::GetScreen().backAddress + 2 * (left + top * LHSys::GetScreen().backPixelPitch));
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
			*p = (uint16_t)(((uint16_t)(LHSys::GetScreen().ColorLSBMask & color.value) +
			                 (uint16_t)(LHSys::GetScreen().ColorLSBMask & *p)) >>
			                1);
		}
		else if ((mode & 4) != 0)
		{
			uint16_t r = LHSys::GetScreen().RedMask;
			uint8_t  d = *(uint8_t*)p;
			int rr = (uint8_t)(LHSys::GetScreen().RedMask & color.value) + (uint8_t)(LHSys::GetScreen().RedMask & d);
			if (rr < (int)LHSys::GetScreen().RedMask)
				r = (uint16_t)rr;
			uint16_t g =
				(uint8_t)(LHSys::GetScreen().GreenMask & color.value) + (uint8_t)(d & LHSys::GetScreen().GreenMask);
			if ((unsigned)((uint8_t)(LHSys::GetScreen().GreenMask & color.value) +
			               (uint8_t)(d & LHSys::GetScreen().GreenMask)) >= LHSys::GetScreen().GreenMask)
				g = LHSys::GetScreen().GreenMask;
			unsigned b =
				(uint8_t)(d & LHSys::GetScreen().BlueMask) + (uint8_t)(LHSys::GetScreen().BlueMask & color.value);
			if (b >= LHSys::GetScreen().BlueMask)
				b = LHSys::GetScreen().BlueMask;
			*p = (uint16_t)(r + g + b);
		}
		else if ((mode & 8) != 0)
		{
			uint8_t d = *(uint8_t*)p;
			*p =
				((uint8_t)(LHSys::GetScreen().RedMask & d) != (uint8_t)(LHSys::GetScreen().RedMask & color.value)
			         ? (uint8_t)(LHSys::GetScreen().RedMask & d) - (uint8_t)(LHSys::GetScreen().RedMask & color.value)
			         : 0) +
				((uint8_t)(d & LHSys::GetScreen().GreenMask) != (uint8_t)(LHSys::GetScreen().GreenMask & color.value)
			         ? (uint8_t)(d & LHSys::GetScreen().GreenMask) -
			               (uint8_t)(LHSys::GetScreen().GreenMask & color.value)
			         : 0) +
				((uint8_t)(d & LHSys::GetScreen().BlueMask) != (uint8_t)(LHSys::GetScreen().BlueMask & color.value)
			         ? (uint8_t)(d & LHSys::GetScreen().BlueMask) - (uint8_t)(LHSys::GetScreen().BlueMask & color.value)
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
		if (left > LHSys::GetScreen().GraphicsWindow.end.x || left < LHSys::GetScreen().GraphicsWindow.start.x ||
		    top > LHSys::GetScreen().GraphicsWindow.end.y || bottom < LHSys::GetScreen().GraphicsWindow.start.y)
			return 2;
		if (top < LHSys::GetScreen().GraphicsWindow.start.y)
			top = LHSys::GetScreen().GraphicsWindow.start.y;
		if (bottom > LHSys::GetScreen().GraphicsWindow.end.y)
			bottom = LHSys::GetScreen().GraphicsWindow.end.y;
		uint8_t* p = (uint8_t*)(left + top * LHSys::GetScreen().backPixelPitch + LHSys::GetScreen().backAddress +
		                        2 * (left + top * LHSys::GetScreen().backPixelPitch));
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
				if (bch >= LHSys::GetScreen().MaxBlue)
					bch = LHSys::GetScreen().MaxBlue;
				int gch = color.g + p[1];
				if (gch >= LHSys::GetScreen().MaxGreen)
					gch = LHSys::GetScreen().MaxGreen;
				uint8_t rch = LHSys::GetScreen().maxRed;
				if (color.r + p[2] < LHSys::GetScreen().maxRed)
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
			p += 3 * LHSys::GetScreen().backPixelPitch;
			--n;
		}
		return 0;
	}

	if (top > LHSys::GetScreen().GraphicsWindow.end.y || top < LHSys::GetScreen().GraphicsWindow.start.y ||
	    left > LHSys::GetScreen().GraphicsWindow.end.x || right < LHSys::GetScreen().GraphicsWindow.start.x)
		return 2;
	if (left < LHSys::GetScreen().GraphicsWindow.start.x)
		left = LHSys::GetScreen().GraphicsWindow.start.x;
	if (right > LHSys::GetScreen().GraphicsWindow.end.x)
		right = LHSys::GetScreen().GraphicsWindow.end.x;
	uint8_t* p = (uint8_t*)(left + top * LHSys::GetScreen().backPixelPitch + LHSys::GetScreen().backAddress +
	                        2 * (left + top * LHSys::GetScreen().backPixelPitch));
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
			if (bch >= LHSys::GetScreen().MaxBlue)
				bch = LHSys::GetScreen().MaxBlue;
			int gch = color.g + p[1];
			if (gch >= LHSys::GetScreen().MaxGreen)
				gch = LHSys::GetScreen().MaxGreen;
			int rch = p[2] + color.r;
			if (rch >= LHSys::GetScreen().maxRed)
				rch = LHSys::GetScreen().maxRed;
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
	return 0;
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
	return 0;
}
