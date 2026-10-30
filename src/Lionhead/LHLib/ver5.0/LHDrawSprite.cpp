#include <Lionhead/LHLib/ver5.0/LHDraw.h>

#include <Lionhead/LH3DLib/development/LHColor.h>
#include <Lionhead/LH3DLib/development/LHRegion.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

extern uint16_t g_transColor[4]; // 0xE91EDC

int LHDraw::Pixel16(unsigned long x, unsigned long y, LHPixel16 color, unsigned long mode)
{
	uint16_t* p = (uint16_t*)(this->drawAddress + 2 * (x + y * this->pixelPitch));
	if (x > (unsigned long)LHSys::GetScreen().GraphicsWindow.end.x ||
	    y > (unsigned long)LHSys::GetScreen().GraphicsWindow.end.y)
		return 2;
	uint16_t out = color.value;
	if ((mode & 0x580E) == 0)
		*p = color.value;
	if ((mode & 2) != 0)
	{
		*p = (uint16_t)(((uint16_t)(LHSys::GetScreen().ColorLSBMask & *p) +
		                 (uint16_t)(LHSys::GetScreen().ColorLSBMask & color.value)) >>
		                1);
		return 0;
	}
	else if ((mode & 4) != 0)
	{
		uint16_t r = LHSys::GetScreen().RedMask;
		uint8_t  d = *(uint8_t*)p;
		int      rp = (uint8_t)(LHSys::GetScreen().RedMask & color.value);
		int      rd = (uint8_t)(LHSys::GetScreen().RedMask & d);
		if (rp + rd < (int)LHSys::GetScreen().RedMask)
			r = (uint16_t)(rp + rd);
		uint16_t g =
			(uint8_t)(LHSys::GetScreen().GreenMask & color.value) + (uint8_t)(d & LHSys::GetScreen().GreenMask);
		if ((unsigned)((uint8_t)(LHSys::GetScreen().GreenMask & color.value) +
		               (uint8_t)(d & LHSys::GetScreen().GreenMask)) >= LHSys::GetScreen().GreenMask)
			g = LHSys::GetScreen().GreenMask;
		unsigned b = (uint8_t)(d & LHSys::GetScreen().BlueMask) + (uint8_t)(LHSys::GetScreen().BlueMask & color.value);
		if (b >= LHSys::GetScreen().BlueMask)
			b = LHSys::GetScreen().BlueMask;
		*p = (uint16_t)(r + g + b);
		return 0;
	}
	else
	{
		if ((mode & 8) != 0)
		{
			uint8_t d = *(uint8_t*)p;
			out =
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
		*p = out;
		return 0;
	}
}

int LHDraw::Pixel24(unsigned long x, unsigned long y, LHColor color, unsigned long mode)
{
	uint8_t* p = (uint8_t*)(LHSys::GetScreen().backAddress + 2 * (x + y * LHSys::GetScreen().backPixelPitch) + x +
	                        y * LHSys::GetScreen().backPixelPitch);
	if (x > (unsigned long)LHSys::GetScreen().GraphicsWindow.end.x ||
	    y > (unsigned long)LHSys::GetScreen().GraphicsWindow.end.y)
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
		if (bch >= LHSys::GetScreen().MaxBlue)
			bch = LHSys::GetScreen().MaxBlue;
		int gch = p[1] + color.g;
		if (gch >= LHSys::GetScreen().MaxGreen)
			gch = LHSys::GetScreen().MaxGreen;
		int     rv = p[2];
		uint8_t rch = LHSys::GetScreen().maxRed;
		if (rv + color.r < LHSys::GetScreen().maxRed)
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
		LHSys::GetDraw().HVLine16(centerX - off, centerY - r, centerX + off, centerY - r, color, mode);
		LHSys::GetDraw().HVLine16(centerX - off, centerY + r, centerX + off, centerY + r, color, mode);
		LHSys::GetDraw().HVLine16(centerX - r, yTop, centerX + r, yTop, color, mode);
		LHSys::GetDraw().HVLine16(centerX - r, yBot, centerX + r, yBot, color, mode);
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
				LHSys::GetDraw().Pixel24(centerX - off, yTop, color, mode);
				LHSys::GetDraw().Pixel24(centerX + off, yTop, color, mode);
				LHSys::GetDraw().Pixel24(centerX - off, centerY + r, color, mode);
				LHSys::GetDraw().Pixel24(centerX + off, centerY + r, color, mode);
				LHSys::GetDraw().Pixel24(centerX - r, centerY - off, color, mode);
				LHSys::GetDraw().Pixel24(centerX + r, centerY - off, color, mode);
				LHSys::GetDraw().Pixel24(centerX - r, centerY + off, color, mode);
				LHSys::GetDraw().Pixel24(centerX + r, centerY + off, color, mode);
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
		LHSys::GetDraw().HVLine24(centerX - off, centerY - r, centerX + off, centerY - r, color, mode);
		LHSys::GetDraw().HVLine24(centerX - off, centerY + r, centerX + off, centerY + r, color, mode);
		LHSys::GetDraw().HVLine24(centerX - r, yTop, centerX + r, yTop, color, mode);
		LHSys::GetDraw().HVLine24(centerX - r, yBot, centerX + r, yBot, color, mode);
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
	uint16_t* dst = (uint16_t*)(LHSys::GetScreen().backAddress + 2 * (x + y * LHSys::GetScreen().backPixelPitch));
	int       rowGap = LHSys::GetScreen().backPixelPitch - sprite->Width;
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
	int      dst = LHSys::GetScreen().backAddress + 2 * (x + y * LHSys::GetScreen().backPixelPitch) + x +
	               y * LHSys::GetScreen().backPixelPitch;
	int      rowGap = LHSys::GetScreen().backPixelPitch - sprite->Width;
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
	uint16_t* dst = (uint16_t*)(LHSys::GetScreen().backAddress + 2 * (x + y * LHSys::GetScreen().backPixelPitch));
	int       rowGap = LHSys::GetScreen().backPixelPitch - sprite->Width;
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
						int red = (uint8_t)(src[2] >> LHSys::GetScreen().redScale);
						int green = (uint8_t)((uint8_t)(*(uint16_t*)src >> 8) >> LHSys::GetScreen().GreenScale);
						int v = (green << LHSys::GetScreen().GreenShift) + (red << LHSys::GetScreen().RedShift);
						int blue = (uint8_t)((uint8_t)*(uint16_t*)src >> LHSys::GetScreen().BlueScale);
						*dst = (uint16_t)((blue << LHSys::GetScreen().BlueShift) + v);
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
