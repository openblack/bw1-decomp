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
	long     height = destHeight;
	long     width = destWidth;
	uint32_t xAccum = 0;
	uint32_t yAccum = 0;
	LHRegion window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord  start = window.start;
	LHCoord  end = window.end;
	LHColor* src = (LHColor*)sprite->PixelData;
	long     right = x + width;
	long     bottom = y + height;

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

	LHColor* dst = (LHColor*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long     dstSkip = LHSys::GetScreen().backPixelPitch - width;
	long     srcSkip = sprite->Width * stepY;
	uint32_t xAccumStart = xAccum;
	long     rows = height;

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
				uint32_t w = width;
				LHColor* rowSrc = src;
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
						LHColor* rowEnd = dst + n;
						for (; dst < rowEnd; dst++)
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

LH_RETURN LHDraw::ScaledSprite24To16(long x, long y, unsigned long destWidth, unsigned long destHeight,
                                     LHSprite* sprite, unsigned long flags)
{
	long     width = destWidth;
	uint32_t xAccum = 0;
	uint32_t yAccum = 0;
	long     height = destHeight;
	LHRegion window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord  start = window.start;
	LHCoord  end = window.end;
	long     right = x + width;
	LHColor* src = (LHColor*)sprite->PixelData;
	long     bottom = y + height;

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

	long       srcSkip = sprite->Width * stepY;
	LHPixel16* dst = (LHPixel16*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
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
				uint32_t w = width;
				LHColor* rowSrc = src;
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
	long     height = destHeight;
	long     width = destWidth;
	LHColor* src = (LHColor*)sprite->PixelData;
	uint32_t xAccum = 0;
	uint32_t yAccum = 0;
	LHRegion window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord  start = window.start;
	LHCoord  end = window.end;
	long     right = x + width;
	long     bottom = y + height;

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

	LHColor* dst = (LHColor*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long     rows = height;
	long     dstSkip = LHSys::GetScreen().backPixelPitch - width;
	long     srcSkip = sprite->Width * stepY;

	while (rows != 0)
	{
		if (!(yAccum >> 12))
			yAccum += yScale;
		if (yAccum >> 12)
		{
			uint32_t rowRepeat = yAccum >> 12;
			while (rowRepeat != 0 && rows != 0)
			{
				uint32_t w = width;
				LHColor* rowSrc = src;
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
						LHColor* rowEnd = dst + n;
						for (; dst < rowEnd; dst++)
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
									dst->Set(color.GetR() + pixel.GetR() < LHSys::GetScreen().GetMaxRed()
									             ? color.GetR() + pixel.GetR()
									             : LHSys::GetScreen().GetMaxRed(),
									         color.GetG() + pixel.GetG() < LHSys::GetScreen().GetMaxGreen()
									             ? color.GetG() + pixel.GetG()
									             : LHSys::GetScreen().GetMaxGreen(),
									         color.GetB() + pixel.GetB() < LHSys::GetScreen().GetMaxBlue()
									             ? color.GetB() + pixel.GetB()
									             : LHSys::GetScreen().GetMaxBlue());
								}
								else if (flags & LH_DRAW_STYLE_TINT_SUBTRACT)
								{
									LHColor pixel = *src;
									dst->Set(pixel.GetR() - color.GetR() > 0 ? pixel.GetR() - color.GetR() : 0,
									         pixel.GetG() - color.GetG() > 0 ? pixel.GetG() - color.GetG() : 0,
									         pixel.GetB() - color.GetB() > 0 ? pixel.GetB() - color.GetB() : 0);
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
