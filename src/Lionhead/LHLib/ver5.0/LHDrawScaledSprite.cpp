#include <Lionhead/LHLib/ver5.0/LHDraw.h>

#include <Lionhead/LH3DLib/development/LHColor.h>
#include <Lionhead/LH3DLib/development/LHRegion.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>
#include <Lionhead/LHLib/ver5.0/LHSprite.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

LH_RETURN LHDraw::ScaledSprite16(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
                                 unsigned long flags)
{
	long       height = destHeight;
	uint32_t   xAccum = 0;
	uint32_t   yAccum = 0;
	long       width = destWidth;
	LHRegion   window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord    start = window.start;
	LHCoord    end = window.end;
	LHPixel16* src = (LHPixel16*)sprite->PixelData;
	long       right = x + width;
	long       bottom = y + height;

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

	uint32_t xScale = (destWidth << 12) / sprite->Width + 1;
	uint32_t yScale = (destHeight << 12) / sprite->Height + 1;

	long stepX;
	long stepY;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
		{
			src += sprite->Width * sprite->Height - 1;
			stepX = -1;
			stepY = -1;
		}
		else
		{
			src += sprite->Width - 1;
			stepX = -1;
			stepY = 1;
		}
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
	{
		src += sprite->Width * (sprite->Height - 1);
		stepX = 1;
		stepY = -1;
	}
	else
	{
		stepX = 1;
		stepY = 1;
	}

	if (x < start.X())
	{
		width -= start.X() - x;
		while (x < start.X())
		{
			xAccum += xScale;
			if (xAccum >> 12)
			{
				for (uint32_t n = xAccum >> 12; n != 0; n--)
				{
					xAccum -= LH_SPRITE_SCALE_ONE;
					x++;
					if (x >= start.X())
						goto xClipped;
				}
			}
			src += stepX;
		}
	}
xClipped:
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		height -= start.Y() - y;
		while (y < start.Y())
		{
			yAccum += yScale;
			if (yAccum >> 12)
			{
				for (uint32_t n = yAccum >> 12; n != 0; n--)
				{
					yAccum -= LH_SPRITE_SCALE_ONE;
					y++;
					if (y >= start.Y())
						goto yClipped;
				}
			}
			src += sprite->Width * stepY;
		}
	}
yClipped:
	if (bottom > end.Y())
		height -= bottom - end.Y();

	LHPixel16* dst = (LHPixel16*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long       srcSkip = sprite->Width * stepY;
	long       rows = height;
	long       dstSkip = LHSys::GetScreen().backPixelPitch - width;
	uint32_t   xAccumStart = xAccum;

	while (rows != 0)
	{
		if (!(yAccum >> 12))
			yAccum += yScale;
		if (yAccum >> 12)
		{
			uint32_t rowRepeat = yAccum >> 12;
			while (rowRepeat != 0 && rows != 0)
			{
				xAccum = xAccumStart;
				uint32_t   w = width;
				LHPixel16* rowSrc = src;
				while (w != 0)
				{
					if (!(xAccum >> 12))
						xAccum += xScale;
					if (xAccum >> 12)
					{
						uint32_t n = xAccum >> 12;
						if (w < n)
						{
							n = w;
							w = 0;
						}
						else
							w -= n;
						LHPixel16* rowEnd = dst + n;
						for (; dst < rowEnd; dst++)
						{
							if (!(*src == LHSprite::TransparentColor16))
							{
								if (!(flags & LH_DRAW_EFFECT_MASK))
									*dst = *src;
								else if (flags & LH_DRAW_STYLE_BLEND)
									dst->Glass(*src);
								else if (flags & LH_DRAW_STYLE_ADD)
									dst->Brighten(*src);
								else if (flags & LH_DRAW_STYLE_SUBTRACT)
									dst->Fade(*src);
								else
									*dst = *src;
							}
						}
						xAccum &= LH_SPRITE_SCALE_FRACTION_MASK;
					}
					src += stepX;
				}
				dst += dstSkip;
				src = rowSrc;
				rowRepeat--;
				rows--;
			}
			src += srcSkip;
			yAccum &= LH_SPRITE_SCALE_FRACTION_MASK;
		}
		else
			src += srcSkip;
	}

	return LH_OK;
}

LH_RETURN LHDraw::ScaledSprite24(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
                                 unsigned long flags)
{
	unsigned long xAccumStart;
	unsigned long width = destWidth;
	unsigned long height = destHeight;
	long          stepX;
	long          dstSkip;
	unsigned long xAccum = 0;
	long          stepY;
	unsigned long yAccum = 0;
	LHRegion      window = LHSys::GetScreen().GetGraphicsWindow();
	LHColor*      src = (LHColor*)sprite->PixelData;
	long          right = x + destWidth;
	LHCoord       start(window.start.X(), window.start.Y());
	unsigned long yScale;
	unsigned long xScale;
	LHColor*      dst;
	long          srcSkip;
	long          bottom = y + destHeight;
	LHCoord       end(window.end.X(), window.end.Y());

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

	xScale = (destWidth << 12) / sprite->Width + 1;
	yScale = (destHeight << 12) / sprite->Height + 1;

	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
		{
			src += sprite->Width * sprite->Height - 1;
			stepX = -1;
			stepY = -1;
		}
		else
		{
			src += sprite->Width - 1;
			stepX = -1;
			stepY = 1;
		}
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
	{
		src += sprite->Width * (sprite->Height - 1);
		stepX = 1;
		stepY = -1;
	}
	else
	{
		stepX = 1;
		stepY = 1;
	}

	if (x < start.X())
	{
		width -= start.X() - x;
		while (x < start.X())
		{
			xAccum += xScale;
			if (xAccum >> 12)
			{
				for (unsigned long n = xAccum >> 12; n != 0; n--)
				{
					xAccum -= LH_SPRITE_SCALE_ONE;
					if (++x >= start.X())
						goto xClipped;
				}
			}
			src += stepX;
		}
	}
xClipped:
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		height -= start.Y() - y;
		while (y < start.Y())
		{
			yAccum += yScale;
			if (yAccum >> 12)
			{
				for (unsigned long n = yAccum >> 12; n != 0; n--)
				{
					yAccum -= LH_SPRITE_SCALE_ONE;
					if (++y >= start.Y())
						goto yClipped;
				}
			}
			src += sprite->Width * stepY;
		}
	}
yClipped:
	if (bottom > end.Y())
		height -= bottom - end.Y();

	dst = (LHColor*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	dstSkip = LHSys::GetScreen().backPixelPitch - width;
	srcSkip = sprite->Width * stepY;
	destHeight = height;
	xAccumStart = xAccum;

	while (destHeight != 0)
	{
		if (!(yAccum >> 12))
			yAccum += yScale;
		if (yAccum >> 12)
		{
			for (unsigned long rows = yAccum >> 12; rows != 0 && destHeight != 0; rows--, destHeight--)
			{
				xAccum = xAccumStart;
				unsigned long w = width;
				LHColor*      line = src;
				while (w != 0)
				{
					if (!(xAccum >> 12))
						xAccum += xScale;
					if (xAccum >> 12)
					{
						unsigned long n = xAccum >> 12;
						if (w < n)
						{
							n = w;
							w = 0;
						}
						else
							w -= n;
						for (LHColor* dstEnd = dst + n; dst < dstEnd; dst++)
						{
							if (!(*src == LHSprite::TransparentColor24))
							{
								if (!(flags & LH_DRAW_EFFECT_MASK))
								{
									LHColor color = *src;
									dst->r = color.GetR();
									dst->g = color.GetR();
									dst->b = color.GetB();
								}
								else if (flags & LH_DRAW_STYLE_BLEND)
								{
									LHColor color = *src;
									dst->Set((dst->GetR() + color.GetR()) / 2, (dst->GetG() + color.GetG()) / 2,
									         (dst->GetB() + color.GetB()) / 2);
								}
								else if (flags & LH_DRAW_STYLE_ADD)
								{
									LHColor color = *src;
									dst->Set(color.GetR() + dst->GetR() < LHSys::GetScreen().GetMaxRed()
									             ? color.GetR() + dst->GetR()
									             : LHSys::GetScreen().GetMaxRed(),
									         color.GetG() + dst->GetG() < LHSys::GetScreen().GetMaxGreen()
									             ? color.GetG() + dst->GetG()
									             : LHSys::GetScreen().GetMaxGreen(),
									         color.GetB() + dst->GetB() < LHSys::GetScreen().GetMaxBlue()
									             ? color.GetB() + dst->GetB()
									             : LHSys::GetScreen().GetMaxBlue());
								}
								else if (flags & LH_DRAW_STYLE_SUBTRACT)
								{
									LHColor color = *src;
									dst->Set(dst->GetR() - color.GetR() > 0 ? dst->GetR() - color.GetR() : 0,
									         dst->GetG() - color.GetG() > 0 ? dst->GetG() - color.GetG() : 0,
									         dst->GetB() - color.GetB() > 0 ? dst->GetB() - color.GetB() : 0);
								}
								else
								{
									LHColor color = *src;
									dst->r = color.GetR();
									dst->g = color.GetR();
									dst->b = color.GetB();
								}
							}
						}
						xAccum &= LH_SPRITE_SCALE_FRACTION_MASK;
					}
					src += stepX;
				}
				src = line;
				dst += dstSkip;
			}
			src += srcSkip;
			yAccum &= LH_SPRITE_SCALE_FRACTION_MASK;
		}
		else
			src += srcSkip;
	}

	return LH_OK;
}

LH_RETURN LHDraw::ScaledSprite24To16(long x, long y, unsigned long destWidth, unsigned long destHeight,
                                     LHSprite* sprite, unsigned long flags)
{
	unsigned long width = destWidth;
	unsigned long height = destHeight;
	long          stepX;
	long          dstSkip;
	unsigned long xAccum = 0;
	long          stepY;
	unsigned long yAccum = 0;
	LHRegion      window = LHSys::GetScreen().GetGraphicsWindow();
	LHColor*      src = (LHColor*)sprite->PixelData;
	long          right = x + destWidth;
	unsigned long yScale;
	unsigned long xScale;
	LHPixel16*    dst;
	long          srcSkip;
	long          bottom = y + destHeight;

	if (x > window.end.X() || right < window.start.X() || y > window.end.Y() || bottom < window.start.Y())
		return LH_FAIL;

	xScale = (destWidth << 12) / sprite->Width + 1;
	yScale = (destHeight << 12) / sprite->Height + 1;

	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
		{
			src += sprite->Width * sprite->Height - 1;
			stepX = -1;
			stepY = -1;
		}
		else
		{
			src += sprite->Width - 1;
			stepX = -1;
			stepY = 1;
		}
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
	{
		src += sprite->Width * (sprite->Height - 1);
		stepX = 1;
		stepY = -1;
	}
	else
	{
		stepX = 1;
		stepY = 1;
	}

	if (x < window.start.X())
	{
		width -= window.start.X() - x;
		while (x < window.start.X())
		{
			xAccum += xScale;
			if (xAccum >> 12)
			{
				for (unsigned long n = xAccum >> 12; n != 0; n--)
				{
					xAccum -= LH_SPRITE_SCALE_ONE;
					if (++x >= window.start.X())
						goto xClipped;
				}
			}
			src += stepX;
		}
	}
xClipped:
	if (right > window.end.X())
		width -= right - window.end.X();
	if (y < window.start.Y())
	{
		height -= window.start.Y() - y;
		while (y < window.start.Y())
		{
			yAccum += yScale;
			if (yAccum >> 12)
			{
				for (unsigned long n = yAccum >> 12; n != 0; n--)
				{
					yAccum -= LH_SPRITE_SCALE_ONE;
					if (++y >= window.start.Y())
						goto yClipped;
				}
			}
			src += sprite->Width * stepY;
		}
	}
yClipped:
	if (bottom > window.end.Y())
		height -= bottom - window.end.Y();

	dst = (LHPixel16*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	dstSkip = LHSys::GetScreen().backPixelPitch - width;
	srcSkip = sprite->Width * stepY;
	destHeight = height;

	while (destHeight != 0)
	{
		if (!(yAccum >> 12))
			yAccum += yScale;
		if (yAccum >> 12)
		{
			for (unsigned long rows = yAccum >> 12; rows != 0 && destHeight != 0; rows--)
			{
				unsigned long fx = xAccum;
				unsigned long w = width;
				LHColor*      line = src;
				while (w != 0)
				{
					if (!(fx >> 12))
						fx += xScale;
					if (fx >> 12)
					{
						unsigned long n = fx >> 12;
						if (w < n)
						{
							n = w;
							w = 0;
						}
						else
							w -= n;
						for (LHPixel16* dstEnd = dst + n; dst < dstEnd; dst++)
						{
							if (!(*src == LHSprite::TransparentColor24))
							{
								if (!(flags & LH_DRAW_EFFECT_MASK))
									*dst = LHPixel16(*src);
								else if (flags & LH_DRAW_STYLE_BLEND)
									dst->Glass(LHPixel16(*src));
								else if (flags & LH_DRAW_STYLE_ADD)
									dst->Brighten(LHPixel16(*src));
								else if (flags & LH_DRAW_STYLE_SUBTRACT)
									dst->Fade(LHPixel16(*src));
								else
									*dst = LHPixel16(*src);
							}
						}
						fx &= LH_SPRITE_SCALE_FRACTION_MASK;
					}
					src += stepX;
				}
				src = line;
				dst += dstSkip;
				destHeight--;
			}
			src += srcSkip;
			yAccum &= LH_SPRITE_SCALE_FRACTION_MASK;
		}
		else
			src += srcSkip;
	}

	return LH_OK;
}

LH_RETURN LHDraw::ScaledSprite16xxx(long x, long y, unsigned long destWidth, unsigned long destHeight, LHSprite* sprite,
                                    unsigned long flags)
{
	long       height = destHeight;
	long       width = destWidth;
	LHPixel16* src = (LHPixel16*)sprite->PixelData;
	uint32_t   xAccum = 0;
	uint32_t   yAccum = 0;
	LHRegion   window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord    start = window.start;
	LHCoord    end = window.end;
	long       right = x + width;
	long       bottom = y + height;

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

	uint32_t xScale = (destWidth << 12) / sprite->Width + 1;
	uint32_t yScale = (destHeight << 12) / sprite->Height + 1;

	long stepX;
	long stepY;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
		{
			src += sprite->Width * sprite->Height - 1;
			stepX = -1;
			stepY = -1;
		}
		else
		{
			src += sprite->Width - 1;
			stepX = -1;
			stepY = 1;
		}
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
	{
		src += sprite->Width * (sprite->Height - 1);
		stepX = 1;
		stepY = -1;
	}
	else
	{
		stepX = 1;
		stepY = 1;
	}

	if (x < start.X())
	{
		width -= start.X() - x;
		while (x < start.X())
		{
			xAccum += xScale;
			if (xAccum >> 12)
			{
				for (uint32_t n = xAccum >> 12; n != 0; n--)
				{
					xAccum -= LH_SPRITE_SCALE_ONE;
					x++;
					if (x >= start.X())
						goto xClipped;
				}
			}
			src += stepX;
		}
	}
xClipped:
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		height -= start.Y() - y;
		while (y < start.Y())
		{
			yAccum += yScale;
			if (yAccum >> 12)
			{
				for (uint32_t n = yAccum >> 12; n != 0; n--)
				{
					yAccum -= LH_SPRITE_SCALE_ONE;
					y++;
					if (y >= start.Y())
						goto yClipped;
				}
			}
			src += sprite->Width * stepY;
		}
	}
yClipped:
	if (bottom > end.Y())
		height -= bottom - end.Y();

	LHPixel16* dst = (LHPixel16*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long       srcSkip = sprite->Width * stepY;
	long       rows = height;
	long       dstSkip = LHSys::GetScreen().backPixelPitch - width;
	uint32_t   xAccumStart = xAccum;

	while (rows != 0)
	{
		if (!(yAccum >> 12))
			yAccum += yScale;
		if (yAccum >> 12)
		{
			uint32_t rowRepeat = yAccum >> 12;
			while (rowRepeat != 0 && rows != 0)
			{
				xAccum = xAccumStart;
				uint32_t   w = width;
				LHPixel16* rowSrc = src;
				while (w != 0)
				{
					if (!(xAccum >> 12))
						xAccum += xScale;
					if (xAccum >> 12)
					{
						uint32_t n = xAccum >> 12;
						if (w < n)
						{
							n = w;
							w = 0;
						}
						else
							w -= n;
						LHPixel16* rowEnd = dst + n;
						for (; dst < rowEnd; dst++)
						{
							if (!(*src == LHSprite::TransparentColor16))
							{
								if (!(flags & LH_DRAW_EFFECT_MASK))
									*dst = *src;
								else if (flags & LH_DRAW_STYLE_BLEND)
									dst->Glass(*src);
								else if (flags & LH_DRAW_STYLE_ADD)
									dst->Brighten(*src);
								else if (flags & LH_DRAW_STYLE_SUBTRACT)
									dst->Fade(*src);
								else
									*dst = *src;
							}
						}
						xAccum &= LH_SPRITE_SCALE_FRACTION_MASK;
					}
					src += stepX;
				}
				dst += dstSkip;
				src = rowSrc;
				rowRepeat--;
				rows--;
			}
			src += srcSkip;
			yAccum &= LH_SPRITE_SCALE_FRACTION_MASK;
		}
		else
			src += srcSkip;
	}

	return LH_OK;
}

LH_RETURN LHDraw::OneColorScaledSprite16(long x, long y, unsigned long destWidth, unsigned long destHeight,
                                         LHSprite* sprite, LHPixel16 color, unsigned long flags)
{
	long       height = destHeight;
	long       width = destWidth;
	LHPixel16* src = (LHPixel16*)sprite->PixelData;
	uint32_t   xAccum = 0;
	uint32_t   yAccum = 0;
	LHRegion   window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord    start = window.start;
	LHCoord    end = window.end;
	long       right = x + width;
	long       bottom = y + height;

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

	uint32_t xScale = (destWidth << 12) / sprite->Width + 1;
	uint32_t yScale = (destHeight << 12) / sprite->Height + 1;

	long stepX;
	long stepY;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
		{
			src += sprite->Width * sprite->Height - 1;
			stepX = -1;
			stepY = -1;
		}
		else
		{
			src += sprite->Width - 1;
			stepX = -1;
			stepY = 1;
		}
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
	{
		src += sprite->Width * (sprite->Height - 1);
		stepX = 1;
		stepY = -1;
	}
	else
	{
		stepX = 1;
		stepY = 1;
	}

	if (x < start.X())
	{
		width -= start.X() - x;
		while (x < start.X())
		{
			xAccum += xScale;
			if (xAccum >> 12)
			{
				for (uint32_t n = xAccum >> 12; n != 0; n--)
				{
					xAccum -= LH_SPRITE_SCALE_ONE;
					x++;
					if (x >= start.X())
						goto xClipped;
				}
			}
			src += stepX;
		}
	}
xClipped:
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		height -= start.Y() - y;
		while (y < start.Y())
		{
			yAccum += yScale;
			if (yAccum >> 12)
			{
				for (uint32_t n = yAccum >> 12; n != 0; n--)
				{
					yAccum -= LH_SPRITE_SCALE_ONE;
					y++;
					if (y >= start.Y())
						goto yClipped;
				}
			}
			src += sprite->Width * stepY;
		}
	}
yClipped:
	if (bottom > end.Y())
		height -= bottom - end.Y();

	LHPixel16* dst = (LHPixel16*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long       dstSkip = LHSys::GetScreen().backPixelPitch - width;
	long       srcSkip = sprite->Width * stepY;
	long       rows = height;

	while (rows != 0)
	{
		if (!(yAccum >> 12))
			yAccum += yScale;
		if (yAccum >> 12)
		{
			uint32_t rowRepeat = yAccum >> 12;
			while (rowRepeat != 0 && rows != 0)
			{
				uint32_t   w = width;
				LHPixel16* rowSrc = src;
				while (w != 0)
				{
					if (!(xAccum >> 12))
						xAccum += xScale;
					if (xAccum >> 12)
					{
						uint32_t n = xAccum >> 12;
						if (w < n)
						{
							n = w;
							w = 0;
						}
						else
							w -= n;
						LHPixel16* rowEnd = dst + n;
						for (; dst < rowEnd; dst++)
						{
							if (!(*src == LHSprite::TransparentColor16))
							{
								if (!(flags & LH_DRAW_EFFECT_MASK))
									*dst = color;
								else if (flags & LH_DRAW_STYLE_BLEND)
									dst->Glass(color);
								else if (flags & LH_DRAW_STYLE_ADD)
									dst->Brighten(color);
								else if (flags & LH_DRAW_STYLE_SUBTRACT)
									dst->Fade(color);
								else if (flags & LH_DRAW_STYLE_TINT_ADD)
								{
									LHPixel16 pixel = *src;
									pixel.Brighten(color);
									*dst = pixel;
								}
								else if (flags & LH_DRAW_STYLE_TINT_SUBTRACT)
								{
									LHPixel16 pixel = *src;
									pixel.Fade(color);
									*dst = pixel;
								}
								else
									*dst = color;
							}
						}
						xAccum &= LH_SPRITE_SCALE_FRACTION_MASK;
					}
					src += stepX;
				}
				dst += dstSkip;
				src = rowSrc;
				rowRepeat--;
				rows--;
			}
			src += srcSkip;
			yAccum &= LH_SPRITE_SCALE_FRACTION_MASK;
		}
		else
			src += srcSkip;
	}

	return LH_OK;
}

LH_RETURN LHDraw::OneColorScaledSprite24(long x, long y, unsigned long destWidth, unsigned long destHeight,
                                         LHSprite* sprite, LHColor color, unsigned long flags)
{
	unsigned long width = destWidth;
	unsigned long height = destHeight;
	long          stepX;
	LHColor*      src = (LHColor*)sprite->PixelData;
	long          stepY;
	unsigned long xAccum = 0;
	unsigned long yAccum = 0;
	LHRegion      window = LHSys::GetScreen().GetGraphicsWindow();
	long          dstSkip;
	long          right = x + destWidth;
	LHCoord       start(window.start.X(), window.start.Y());
	unsigned long yScale;
	unsigned long xScale;
	LHColor*      dst;
	long          srcSkip;
	long          bottom = y + destHeight;
	LHCoord       end(window.end.X(), window.end.Y());

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

	xScale = (destWidth << 12) / sprite->Width + 1;
	yScale = (destHeight << 12) / sprite->Height + 1;

	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
		{
			src += sprite->Width * sprite->Height - 1;
			stepX = -1;
			stepY = -1;
		}
		else
		{
			src += sprite->Width - 1;
			stepX = -1;
			stepY = 1;
		}
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
	{
		src += sprite->Width * (sprite->Height - 1);
		stepX = 1;
		stepY = -1;
	}
	else
	{
		stepX = 1;
		stepY = 1;
	}

	if (x < start.X())
	{
		width -= start.X() - x;
		while (x < start.X())
		{
			xAccum += xScale;
			if (xAccum >> 12)
			{
				for (unsigned long n = xAccum >> 12; n != 0; n--)
				{
					xAccum -= LH_SPRITE_SCALE_ONE;
					if (++x >= start.X())
						goto xClipped;
				}
			}
			src += stepX;
		}
	}
xClipped:
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		height -= start.Y() - y;
		while (y < start.Y())
		{
			yAccum += yScale;
			if (yAccum >> 12)
			{
				for (unsigned long n = yAccum >> 12; n != 0; n--)
				{
					yAccum -= LH_SPRITE_SCALE_ONE;
					if (++y >= start.Y())
						goto yClipped;
				}
			}
			src += sprite->Width * stepY;
		}
	}
yClipped:
	if (bottom > end.Y())
		height -= bottom - end.Y();

	dst = (LHColor*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	dstSkip = LHSys::GetScreen().backPixelPitch - width;
	srcSkip = sprite->Width * stepY;
	destHeight = height;

	while (destHeight != 0)
	{
		if (!(yAccum >> 12))
			yAccum += yScale;
		if (yAccum >> 12)
		{
			for (unsigned long rows = yAccum >> 12; rows != 0 && destHeight != 0; rows--, destHeight--)
			{
				unsigned long w = width;
				LHColor*      line = src;
				while (w != 0)
				{
					if (!(xAccum >> 12))
						xAccum += xScale;
					if (xAccum >> 12)
					{
						unsigned long n = xAccum >> 12;
						if (w < n)
						{
							n = w;
							w = 0;
						}
						else
							w -= n;
						for (LHColor* dstEnd = dst + n; dst < dstEnd; dst++)
						{
							if (!(*src == LHSprite::TransparentColor24))
							{
								if (!(flags & LH_DRAW_EFFECT_MASK))
								{
									dst->r = color.GetR();
									dst->g = color.GetR();
									dst->b = color.GetB();
								}
								else if (flags & LH_DRAW_STYLE_BLEND)
								{
									dst->Set((color.GetR() + dst->GetR()) / 2, (color.GetG() + dst->GetG()) / 2,
									         (color.GetB() + dst->GetB()) / 2);
								}
								else if (flags & LH_DRAW_STYLE_ADD)
								{
									dst->Set(color.GetR() + dst->GetR() < LHSys::GetScreen().GetMaxRed()
									             ? color.GetR() + dst->GetR()
									             : LHSys::GetScreen().GetMaxRed(),
									         color.GetG() + dst->GetG() < LHSys::GetScreen().GetMaxGreen()
									             ? color.GetG() + dst->GetG()
									             : LHSys::GetScreen().GetMaxGreen(),
									         color.GetB() + dst->GetB() < LHSys::GetScreen().GetMaxBlue()
									             ? color.GetB() + dst->GetB()
									             : LHSys::GetScreen().GetMaxBlue());
								}
								else if (flags & LH_DRAW_STYLE_SUBTRACT)
								{
									dst->Set(dst->GetR() - color.GetR() > 0 ? dst->GetR() - color.GetR() : 0,
									         dst->GetG() - color.GetG() > 0 ? dst->GetG() - color.GetG() : 0,
									         dst->GetB() - color.GetB() > 0 ? dst->GetB() - color.GetB() : 0);
								}
								else if (flags & LH_DRAW_STYLE_TINT_ADD)
								{
									LHColor pixel = *src;
									dst->Set(color.GetR() + pixel.r < LHSys::GetScreen().GetMaxRed()
									             ? color.GetR() + pixel.r
									             : LHSys::GetScreen().GetMaxRed(),
									         color.GetG() + pixel.g < LHSys::GetScreen().GetMaxGreen()
									             ? color.GetG() + pixel.g
									             : LHSys::GetScreen().GetMaxGreen(),
									         color.GetB() + pixel.b < LHSys::GetScreen().GetMaxBlue()
									             ? color.GetB() + pixel.b
									             : LHSys::GetScreen().GetMaxBlue());
								}
								else if (flags & LH_DRAW_STYLE_TINT_SUBTRACT)
								{
									LHColor pixel = *src;
									dst->Set(pixel.r - color.GetR() > 0 ? pixel.r - color.GetR() : 0,
									         pixel.g - color.GetG() > 0 ? pixel.g - color.GetG() : 0,
									         pixel.b - color.GetB() > 0 ? pixel.b - color.GetB() : 0);
								}
								else
								{
									dst->r = color.GetR();
									dst->g = color.GetR();
									dst->b = color.GetB();
								}
							}
						}
						xAccum &= LH_SPRITE_SCALE_FRACTION_MASK;
					}
					src += stepX;
				}
				src = line;
				dst += dstSkip;
			}
			src += srcSkip;
			yAccum &= LH_SPRITE_SCALE_FRACTION_MASK;
		}
		else
			src += srcSkip;
	}

	return LH_OK;
}
