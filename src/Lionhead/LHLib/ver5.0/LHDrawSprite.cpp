#include <Lionhead/LHLib/ver5.0/LHDraw.h>

#include <Lionhead/LH3DLib/development/LHColor.h>
#include <Lionhead/LH3DLib/development/LHRegion.h>
#include <Lionhead/LHLib/ver5.0/LHReturn.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>
#include <Lionhead/LHLib/ver5.0/LHSprite.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

#pragma warning(disable : 4716)

int LHDraw::Pixel16(unsigned long x, unsigned long y, LHPixel16 color, unsigned long mode)
{
	LHRegion   window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord    start = window.start;
	LHCoord    end = window.end;
	LHPixel16* pixel = (LHPixel16*)drawAddress + x + y * pixelPitch;

	if (x > end.X() || y > end.Y())
		return LH_FAIL;

	if (!(mode & LH_DRAW_EFFECT_MASK))
		*pixel = color;

	if (mode & LH_DRAW_STYLE_BLEND)
		pixel->Glass(color);
	else if (mode & LH_DRAW_STYLE_ADD)
		pixel->Brighten(color);
	else if (mode & LH_DRAW_STYLE_SUBTRACT)
		pixel->Fade(color);
	else
		*pixel = color;

	return LH_OK;
}

int LHDraw::Pixel24(unsigned long x, unsigned long y, LHColor color, unsigned long mode)
{
	LHRegion window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord  start = window.start;
	LHCoord  end = window.end;
	LHColor* pixel = (LHColor*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;

	if (x > end.X() || y > end.Y())
		return LH_FAIL;

	if (!(mode & LH_DRAW_EFFECT_MASK))
	{
		pixel->r = color.GetR();
		pixel->g = color.GetR();
		pixel->b = color.GetB();
	}

	if (mode & LH_DRAW_STYLE_BLEND)
	{
		pixel->Set((color.GetR() + pixel->GetR()) / 2, (color.GetG() + pixel->GetG()) / 2,
		           (color.GetB() + pixel->GetB()) / 2);
	}
	else if (mode & LH_DRAW_STYLE_ADD)
	{
		pixel->Set(color.GetR() + pixel->GetR() < LHSys::GetScreen().GetMaxRed() ? color.GetR() + pixel->GetR()
		                                                                         : LHSys::GetScreen().GetMaxRed(),
		           color.GetG() + pixel->GetG() < LHSys::GetScreen().GetMaxGreen() ? color.GetG() + pixel->GetG()
		                                                                           : LHSys::GetScreen().GetMaxGreen(),
		           color.GetB() + pixel->GetB() < LHSys::GetScreen().GetMaxBlue() ? color.GetB() + pixel->GetB()
		                                                                          : LHSys::GetScreen().GetMaxBlue());
	}
	else if (mode & LH_DRAW_STYLE_SUBTRACT)
	{
		pixel->Set(pixel->GetR() - color.GetR() > 0 ? pixel->GetR() - color.GetR() : 0,
		           pixel->GetG() - color.GetG() > 0 ? pixel->GetG() - color.GetG() : 0,
		           pixel->GetB() - color.GetB() > 0 ? pixel->GetB() - color.GetB() : 0);
	}
	else
	{
		pixel->r = color.GetR();
		pixel->g = color.GetR();
		pixel->b = color.GetB();
	}

	return LH_OK;
}

int LHColor::FadeColor(long amount)
{
	unsigned long red = r + amount;
	unsigned long green = g + amount;
	unsigned long blue = b + amount;

	if (red >= LH_COLOR_LEVELS || green >= LH_COLOR_LEVELS || blue > LH_COLOR_LEVELS)
		return LH_FAIL;

	r = red;
	g = green;
	b = blue;
	return LH_OK;
}

int LHPixel16::FadeColor(long amount)
{
	unsigned long red = amount + GetR();
	unsigned long green = amount + GetG();
	unsigned long blue = amount + GetB();

	if (red >= LHSys::GetScreen().GetMaxRed() || green >= LHSys::GetScreen().GetMaxGreen() ||
	    blue >= LHSys::GetScreen().GetMaxBlue())
		return LH_FAIL;

	Set(red, green, blue);
	return LH_OK;
}

int LHDraw::Circle16(long centerX, long centerY, unsigned long radius, LHPixel16 color, unsigned long mode)
{
	long x = 0;
	long y = radius;
	long d = 3 - 2 * radius;

	if (mode & LH_DRAW_STYLE_FILL)
	{
		for (; x <= y; x++)
		{
			HVLine16(centerX - y, centerY - x, centerX + y, centerY - x, color, mode);
			HVLine16(centerX - y, centerY + x, centerX + y, centerY + x, color, mode);
			HVLine16(centerX - x, centerY - y, centerX + x, centerY - y, color, mode);
			HVLine16(centerX - x, centerY + y, centerX + x, centerY + y, color, mode);
			if (d < 0)
				d += 4 * x + 6;
			else
			{
				d += 4 * (x - y) + 10;
				y--;
			}
		}
	}
	else
	{
		for (; x <= y; x++)
		{
			Pixel16(centerX - x, centerY - y, color, mode);
			Pixel16(centerX + x, centerY - y, color, mode);
			Pixel16(centerX - x, centerY + y, color, mode);
			Pixel16(centerX + x, centerY + y, color, mode);
			Pixel16(centerX - y, centerY - x, color, mode);
			Pixel16(centerX + y, centerY - x, color, mode);
			Pixel16(centerX - y, centerY + x, color, mode);
			Pixel16(centerX + y, centerY + x, color, mode);
			if (d < 0)
				d += 4 * x + 6;
			else
			{
				d += 4 * (x - y) + 10;
				y--;
			}
		}
	}

	return LH_OK;
}

int LHDraw::Circle24(long centerX, long centerY, unsigned long radius, LHColor color, unsigned long mode)
{
	long x = 0;
	long y = radius;
	long d = 3 - 2 * radius;

	if (mode & LH_DRAW_STYLE_FILL)
	{
		for (; x <= y; x++)
		{
			HVLine24(centerX - y, centerY - x, centerX + y, centerY - x, color, mode);
			HVLine24(centerX - y, centerY + x, centerX + y, centerY + x, color, mode);
			HVLine24(centerX - x, centerY - y, centerX + x, centerY - y, color, mode);
			HVLine24(centerX - x, centerY + y, centerX + x, centerY + y, color, mode);
			if (d < 0)
				d += 4 * x + 6;
			else
			{
				d += 4 * (x - y) + 10;
				y--;
			}
		}
	}
	else
	{
		for (; x <= y; x++)
		{
			Pixel24(centerX - x, centerY - y, color, mode);
			Pixel24(centerX + x, centerY - y, color, mode);
			Pixel24(centerX - x, centerY + y, color, mode);
			Pixel24(centerX + x, centerY + y, color, mode);
			Pixel24(centerX - y, centerY - x, color, mode);
			Pixel24(centerX + y, centerY - x, color, mode);
			Pixel24(centerX - y, centerY + x, color, mode);
			Pixel24(centerX + y, centerY + x, color, mode);
			if (d < 0)
				d += 4 * x + 6;
			else
			{
				d += 4 * (x - y) + 10;
				y--;
			}
		}
	}

	return LH_OK;
}

LHPixel16 LHSprite::TransparentColor16;
LHColor   LHSprite::TransparentColor24;

int LHDraw::Sprite16(long x, long y, LHSprite* sprite)
{
	LHPixel16* dst = (LHPixel16*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long       skip = LHSys::GetScreen().backPixelPitch - sprite->Width;
	LHPixel16* src = (LHPixel16*)sprite->PixelData;

	for (long h = sprite->Height; h != 0; h--)
	{
		for (long w = sprite->Width; w != 0; w--)
		{
			if (!(*src == LHSprite::TransparentColor16))
				*dst = *src;
			dst++;
			src++;
		}
		dst += skip;
	}
	return skip;
}

int LHDraw::Sprite24(long x, long y, LHSprite* sprite)
{
	LHColor* src = (LHColor*)sprite->PixelData;
	LHColor* dst = (LHColor*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long     skip = LHSys::GetScreen().backPixelPitch - sprite->Width;

	for (long h = sprite->Height; h != 0; h--)
	{
		for (long w = sprite->Width; w != 0; w--)
		{
			if (!(*src == LHSprite::TransparentColor24))
			{
				LHColor color = *src;
				dst->r = color.GetR();
				dst->g = color.GetR();
				dst->b = color.GetB();
			}
			dst++;
			src++;
		}
		dst += skip;
	}
}

int LHDraw::Sprite24To16(long x, long y, LHSprite* sprite)
{
	LHColor*   src = (LHColor*)sprite->PixelData;
	LHPixel16* dst = (LHPixel16*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long       skip = LHSys::GetScreen().backPixelPitch - sprite->Width;

	for (long h = sprite->Height; h != 0; h--)
	{
		for (long w = sprite->Width; w != 0; w--)
		{
			if (!(*src == LHSprite::TransparentColor24))
				*dst = LHPixel16(*src);
			dst++;
			src++;
		}
		dst += skip;
	}
}

int LHDraw::Sprite24(long x, long y, LHSprite* sprite, unsigned long flags, LHColor* drawBuffer,
                     unsigned long pixelPitch)
{
	long     width = sprite->Width;
	long     height = sprite->Height;
	LHColor* src = (LHColor*)sprite->PixelData;
	LHRegion window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord  start = window.start;
	LHCoord  end = window.end;
	long     right = x + sprite->Width;
	long     bottom = y + sprite->Height;

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

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
		long clip = start.X() - x;
		src += clip * stepX;
		width -= clip;
		x = start.X();
	}
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		long clip = start.Y() - y;
		src += sprite->Width * (clip * stepY);
		height -= clip;
		y = start.Y();
	}
	if (bottom > end.Y())
		height -= bottom - end.Y();

	long srcSkip;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
			srcSkip = width - sprite->Width;
		else
			srcSkip = sprite->Width + width;
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
		srcSkip = -(sprite->Width + width);
	else
		srcSkip = sprite->Width - width;

	drawBuffer += x + y * pixelPitch;
	long    dstSkip = pixelPitch - width;
	LHColor transparent = LHSprite::TransparentColor24;

	if (flags == LH_DRAW_STYLE_SOLID)
	{
		LHColor* dstEnd = drawBuffer + width * height;
		for (; drawBuffer < dstEnd; drawBuffer += dstSkip, src += srcSkip)
		{
			LHColor* rowEnd = drawBuffer + width;
			for (; drawBuffer < rowEnd; drawBuffer++, src++)
			{
				if (!(*src == transparent))
				{
					LHColor color = *src;
					drawBuffer->r = color.GetR();
					drawBuffer->g = color.GetR();
					drawBuffer->b = color.GetB();
				}
			}
		}
	}
	else
	{
		for (long h = height; h != 0; h--)
		{
			for (long w = width; w != 0; w--)
			{
				if (!(*src == transparent))
				{
					if (!(flags & LH_DRAW_EFFECT_MASK))
					{
						LHColor color = *src;
						drawBuffer->r = color.GetR();
						drawBuffer->g = color.GetR();
						drawBuffer->b = color.GetB();
					}
					else if (flags & LH_DRAW_STYLE_BLEND)
					{
						LHColor color = *src;
						drawBuffer->Set((drawBuffer->GetR() + color.GetR()) / 2,
						                (drawBuffer->GetG() + color.GetG()) / 2,
						                (drawBuffer->GetB() + color.GetB()) / 2);
					}
					else if (flags & LH_DRAW_STYLE_ADD)
					{
						LHColor color = *src;
						drawBuffer->Set(color.GetR() + drawBuffer->GetR() < LHSys::GetScreen().GetMaxRed()
						                    ? color.GetR() + drawBuffer->GetR()
						                    : LHSys::GetScreen().GetMaxRed(),
						                color.GetG() + drawBuffer->GetG() < LHSys::GetScreen().GetMaxGreen()
						                    ? color.GetG() + drawBuffer->GetG()
						                    : LHSys::GetScreen().GetMaxGreen(),
						                color.GetB() + drawBuffer->GetB() < LHSys::GetScreen().GetMaxBlue()
						                    ? color.GetB() + drawBuffer->GetB()
						                    : LHSys::GetScreen().GetMaxBlue());
					}
					else if (flags & LH_DRAW_STYLE_SUBTRACT)
					{
						LHColor color = *src;
						drawBuffer->Set(drawBuffer->GetR() - color.GetR() > 0 ? drawBuffer->GetR() - color.GetR() : 0,
						                drawBuffer->GetG() - color.GetG() > 0 ? drawBuffer->GetG() - color.GetG() : 0,
						                drawBuffer->GetB() - color.GetB() > 0 ? drawBuffer->GetB() - color.GetB() : 0);
					}
					else
					{
						LHColor color = *src;
						drawBuffer->r = color.GetR();
						drawBuffer->g = color.GetR();
						drawBuffer->b = color.GetB();
					}
				}
				drawBuffer++;
				src += stepX;
			}
			drawBuffer += dstSkip;
			src += srcSkip;
		}
	}

	return LH_OK;
}

int LHDraw::Sprite24To16(long x, long y, LHSprite* sprite, unsigned long flags, LHPixel16* drawBuffer,
                         unsigned long pixelPitch)
{
	long     width = sprite->Width;
	long     height = sprite->Height;
	LHColor* src = (LHColor*)sprite->PixelData;
	LHRegion window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord  start = window.start;
	LHCoord  end = window.end;
	long     right = x + sprite->Width;
	long     bottom = y + sprite->Height;

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

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
		long clip = start.X() - x;
		src += clip * stepX;
		width -= clip;
		x = start.X();
	}
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		long clip = start.Y() - y;
		src += sprite->Width * (clip * stepY);
		height -= clip;
		y = start.Y();
	}
	if (bottom > end.Y())
		height -= bottom - end.Y();

	long srcSkip;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
			srcSkip = width - sprite->Width;
		else
			srcSkip = sprite->Width + width;
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
		srcSkip = -(sprite->Width + width);
	else
		srcSkip = sprite->Width - width;

	drawBuffer += x + y * pixelPitch;
	long    dstSkip = pixelPitch - width;
	LHColor transparent = LHSprite::TransparentColor24;

	if (flags == LH_DRAW_STYLE_SOLID)
	{
		LHPixel16* dstEnd = drawBuffer + width * height;
		for (; drawBuffer < dstEnd; drawBuffer += dstSkip, src += srcSkip)
		{
			LHPixel16* rowEnd = drawBuffer + width;
			for (; drawBuffer < rowEnd; drawBuffer++, src++)
			{
				if (!(*src == transparent))
					*drawBuffer = LHPixel16(*src);
			}
		}
	}
	else
	{
		for (long h = height; h != 0; h--)
		{
			for (long w = width; w != 0; w--)
			{
				if (!(*src == transparent))
				{
					if (!(flags & LH_DRAW_EFFECT_MASK))
						*drawBuffer = LHPixel16(*src);
					else if (flags & LH_DRAW_STYLE_BLEND)
						drawBuffer->Glass(LHPixel16(*src));
					else if (flags & LH_DRAW_STYLE_ADD)
						drawBuffer->Brighten(LHPixel16(*src));
					else if (flags & LH_DRAW_STYLE_SUBTRACT)
						drawBuffer->Fade(LHPixel16(*src));
					else
						*drawBuffer = LHPixel16(*src);
				}
				drawBuffer++;
				src += stepX;
			}
			drawBuffer += dstSkip;
			src += srcSkip;
		}
	}

	return LH_OK;
}

int LHDraw::Sprite16(long x, long y, LHSprite* sprite, unsigned long flags, unsigned short alpha, LHPixel16* drawBuffer,
                     unsigned long pixelPitch)
{
	if (alpha)
		flags = (flags | LH_DRAW_STYLE_ALPHA) & ~(LH_DRAW_STYLE_BLEND | LH_DRAW_STYLE_ADD | LH_DRAW_STYLE_SUBTRACT |
		                                          LH_DRAW_STYLE_TINT_ADD | LH_DRAW_STYLE_TINT_SUBTRACT);

	long       width = sprite->Width;
	long       height = sprite->Height;
	LHPixel16* src = (LHPixel16*)sprite->PixelData;
	LHRegion   window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord    start = window.start;
	LHCoord    end = window.end;
	long       right = x + sprite->Width;
	long       bottom = y + sprite->Height;

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

	long clip;
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
		clip = start.X() - x;
		src += clip * stepX;
		width -= clip;
		x = start.X();
	}
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		clip = start.Y() - y;
		src += sprite->Width * (clip * stepY);
		height -= clip;
		y = start.Y();
	}
	if (bottom > end.Y())
		height -= bottom - end.Y();

	long srcSkip;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
			srcSkip = width - sprite->Width;
		else
			srcSkip = sprite->Width + width;
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
		srcSkip = -(sprite->Width + width);
	else
		srcSkip = sprite->Width - width;

	LHPixel16* dst = drawBuffer + x + y * pixelPitch;
	long       dstSkip = pixelPitch - width;
	LHPixel16  transparent = LHSprite::TransparentColor16;
	uint32_t   transparent32 = (transparent.value << 16) + transparent.value;

	if (flags == LH_DRAW_STYLE_SOLID || flags == 0)
	{
		LHPixel16* dstEnd = dst + (dstSkip + width) * height;
		dstSkip *= sizeof(LHPixel16);
		srcSkip *= sizeof(LHPixel16);
		width = -(width * sizeof(LHPixel16));
		__asm
		{
			pushad
			mov edi, dst
			mov esi, src
			mov eax, transparent32
			jmp row_start
		write_high:
			shr ebx, 16
			mov [edi + ecx - 2], bx
		next_pair:
			add ecx, 4
			jg row_end
			mov edx, [esi + ecx - 4]
			mov ebx, edx
			xor edx, eax
			je next_pair
			test edx, 0xffff
			je write_high
			test edx, 0xffff0000
			je write_low
			mov [edi + ecx - 4], ebx
			jmp next_pair
		write_low:
			mov [edi + ecx - 4], bx
			jmp next_pair
		row_end:
			cmp ecx, 2
			jne next_row
			mov bx, [esi + ecx - 4]
			cmp bx, ax
			je next_row
			mov [edi + ecx - 4], bx
		next_row:
			add edi, dstSkip
			add esi, srcSkip
		row_start:
			cmp edi, dstEnd
			jae done
			mov ecx, width
			sub edi, ecx
			sub esi, ecx
			jmp next_pair
		done:
			popad
		}
	}
	else
	{
		for (long h = height; h != 0; h--)
		{
			for (long w = width; w != 0; w--)
			{
				if (!(*src == transparent))
				{
					if (!(flags & LH_DRAW_EFFECT_MASK))
						*dst = *src;
					else if (flags & LH_DRAW_STYLE_BLEND)
						dst->Glass(*src);
					else if (flags & LH_DRAW_STYLE_ADD)
						dst->Brighten(*src);
					else if (flags & LH_DRAW_STYLE_SUBTRACT)
						dst->Fade(*src);
					else if (flags & LH_DRAW_STYLE_SUBTRACT)
						dst->Fade(*src);
					else if (flags & LH_DRAW_STYLE_ALPHA)
					{
						LHPixel16 color = *src;
						dst->value = (((color.GetR() * (LH_SPRITE_ALPHA_ONE - alpha) + dst->GetR() * alpha) /
						               LH_SPRITE_ALPHA_ONE)
						              << LHSys::GetScreen().GetRedShift()) +
						             (((color.GetG() * (LH_SPRITE_ALPHA_ONE - alpha) + dst->GetG() * alpha) /
						               LH_SPRITE_ALPHA_ONE)
						              << LHSys::GetScreen().GetGreenShift()) +
						             (((color.GetB() * (LH_SPRITE_ALPHA_ONE - alpha) + dst->GetB() * alpha) /
						               LH_SPRITE_ALPHA_ONE)
						              << LHSys::GetScreen().GetBlueShift());
					}
					else
						*dst = *src;
				}
				dst++;
				src += stepX;
			}
			dst += dstSkip;
			src += srcSkip;
		}
	}

	return LH_OK;
}

int LHDraw::HeightSprite16(long x, long y, LHSprite* sprite, unsigned long height, unsigned long flags)
{
	long       width = sprite->Width;
	long       spriteHeight = sprite->Height;
	LHPixel16* src = (LHPixel16*)sprite->PixelData;
	LHRegion   window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord    start = window.start;
	LHCoord    end = window.end;
	LHRegion   visible(x, y, x + sprite->Width, y + height);

	if (height > sprite->Height)
		height = sprite->Height;
	if (flags & LH_SPRITE_DRAW_FROM_BOTTOM)
		y -= sprite->Height - height;

	long right = x + sprite->Width;
	long bottom = y + sprite->Height;

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

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
		long clip = start.X() - x;
		src += clip * stepX;
		width -= clip;
		x = start.X();
	}
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		long clip = start.Y() - y;
		src += sprite->Width * (clip * stepY);
		spriteHeight -= clip;
		y = start.Y();
	}
	if (bottom > end.Y())
		spriteHeight -= bottom - end.Y();

	if (x < visible.start.X())
	{
		long clip = visible.start.X() - x;
		src += clip * stepX;
		width -= clip;
		x = visible.start.X();
	}
	if (right > visible.end.X())
		width -= right - visible.end.X();
	if (y < visible.start.Y())
	{
		long clip = visible.start.Y() - y;
		src += sprite->Width * (clip * stepY);
		spriteHeight -= clip;
		y = visible.start.Y();
	}
	if (bottom > visible.end.Y())
		spriteHeight -= bottom - visible.end.Y();

	long srcSkip;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
			srcSkip = width - sprite->Width;
		else
			srcSkip = sprite->Width + width;
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
		srcSkip = -(sprite->Width + width);
	else
		srcSkip = sprite->Width - width;

	LHPixel16* dst = (LHPixel16*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long       dstSkip = LHSys::GetScreen().backPixelPitch - width;

	for (long h = spriteHeight; h > 0; h--)
	{
		for (long w = width; w > 0; w--)
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
			dst++;
			src += stepX;
		}
		dst += dstSkip;
		src += srcSkip;
	}

	return LH_OK;
}

int LHDraw::HeightSprite24(long x, long y, LHSprite* sprite, unsigned long height, unsigned long flags)
{
	long     width = sprite->Width;
	long     spriteHeight = sprite->Height;
	LHColor* src = (LHColor*)sprite->PixelData;
	LHRegion window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord  start = window.start;
	LHCoord  end = window.end;
	LHRegion visible(x, y, x + sprite->Width, y + height);

	if (height > sprite->Height)
		height = sprite->Height;
	if (flags & LH_SPRITE_DRAW_FROM_BOTTOM)
		y -= sprite->Height - height;

	long right = x + sprite->Width;
	long bottom = y + sprite->Height;

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

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
		long clip = start.X() - x;
		src += clip * stepX;
		width -= clip;
		x = start.X();
	}
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		long clip = start.Y() - y;
		src += sprite->Width * (clip * stepY);
		spriteHeight -= clip;
		y = start.Y();
	}
	if (bottom > end.Y())
		spriteHeight -= bottom - end.Y();

	if (x < visible.start.X())
	{
		long clip = visible.start.X() - x;
		src += clip * stepX;
		width -= clip;
		x = visible.start.X();
	}
	if (right > visible.end.X())
		width -= right - visible.end.X();
	if (y < visible.start.Y())
	{
		long clip = visible.start.Y() - y;
		src += sprite->Width * (clip * stepY);
		spriteHeight -= clip;
		y = visible.start.Y();
	}
	if (bottom > visible.end.Y())
		spriteHeight -= bottom - visible.end.Y();

	long srcSkip;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
			srcSkip = width - sprite->Width;
		else
			srcSkip = sprite->Width + width;
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
		srcSkip = -(sprite->Width + width);
	else
		srcSkip = sprite->Width - width;

	LHColor* dst = (LHColor*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long     dstSkip = LHSys::GetScreen().backPixelPitch - width;

	for (long h = spriteHeight; h > 0; h--)
	{
		for (long w = width; w > 0; w--)
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
					dst->Set(
						color.GetR() + dst->GetR() < LHSys::GetScreen().GetMaxRed() ? color.GetR() + dst->GetR()
																					: LHSys::GetScreen().GetMaxRed(),
						color.GetG() + dst->GetG() < LHSys::GetScreen().GetMaxGreen()
							? color.GetG() + dst->GetG()
							: LHSys::GetScreen().GetMaxGreen(),
						color.GetB() + dst->GetB() < LHSys::GetScreen().GetMaxBlue() ? color.GetB() + dst->GetB()
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
			dst++;
			src += stepX;
		}
		dst += dstSkip;
		src += srcSkip;
	}

	return LH_OK;
}

int LHDraw::HeightSprite24To16(long x, long y, LHSprite* sprite, unsigned long height, unsigned long flags)
{
	long     width = sprite->Width;
	long     spriteHeight = sprite->Height;
	LHColor* src = (LHColor*)sprite->PixelData;
	LHRegion window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord  start = window.start;
	LHCoord  end = window.end;
	LHRegion visible(x, y, x + sprite->Width, y + height);

	if (height > sprite->Height)
		height = sprite->Height;
	if (flags & LH_SPRITE_DRAW_FROM_BOTTOM)
		y -= sprite->Height - height;

	long right = x + sprite->Width;
	long bottom = y + sprite->Height;

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

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
		long clip = start.X() - x;
		src += clip * stepX;
		width -= clip;
		x = start.X();
	}
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		long clip = start.Y() - y;
		src += sprite->Width * (clip * stepY);
		spriteHeight -= clip;
		y = start.Y();
	}
	if (bottom > end.Y())
		spriteHeight -= bottom - end.Y();

	if (x < visible.start.X())
	{
		long clip = visible.start.X() - x;
		src += clip * stepX;
		width -= clip;
		x = visible.start.X();
	}
	if (right > visible.end.X())
		width -= right - visible.end.X();
	if (y < visible.start.Y())
	{
		long clip = visible.start.Y() - y;
		src += sprite->Width * (clip * stepY);
		spriteHeight -= clip;
		y = visible.start.Y();
	}
	if (bottom > visible.end.Y())
		spriteHeight -= bottom - visible.end.Y();

	long srcSkip;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
			srcSkip = width - sprite->Width;
		else
			srcSkip = sprite->Width + width;
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
		srcSkip = -(sprite->Width + width);
	else
		srcSkip = sprite->Width - width;

	LHPixel16* dst = (LHPixel16*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long       dstSkip = LHSys::GetScreen().backPixelPitch - width;

	for (long h = spriteHeight; h > 0; h--)
	{
		for (long w = width; w > 0; w--)
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
			dst++;
			src += stepX;
		}
		dst += dstSkip;
		src += srcSkip;
	}

	return LH_OK;
}

int LHDraw::RegionSprite16(long x, long y, LHSprite* sprite, LHRegion* region, unsigned long flags)
{
	LHRegion   window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord    start = window.start;
	LHCoord    end = window.end;
	long       width = sprite->Width;
	long       spriteHeight = sprite->Height;
	LHPixel16* src = (LHPixel16*)sprite->PixelData;
	LHRegion   visible(x, y, region->Width(), region->Height());

	x -= region->start.X();
	y -= region->start.Y();

	long right = x + sprite->Width;
	long bottom = y + sprite->Height;

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

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
		long clip = start.X() - x;
		src += clip * stepX;
		width -= clip;
		x = start.X();
	}
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		long clip = start.Y() - y;
		src += sprite->Width * (clip * stepY);
		spriteHeight -= clip;
		y = start.Y();
	}
	if (bottom > end.Y())
		spriteHeight -= bottom - end.Y();

	if (x < visible.start.X())
	{
		long clip = visible.start.X() - x;
		src += clip * stepX;
		width -= clip;
		x = visible.start.X();
	}
	if (right > visible.end.X())
		width -= right - visible.end.X();
	if (y < visible.start.Y())
	{
		long clip = visible.start.Y() - y;
		src += sprite->Width * (clip * stepY);
		spriteHeight -= clip;
		y = visible.start.Y();
	}
	if (bottom > visible.end.Y())
		spriteHeight -= bottom - visible.end.Y();

	long srcSkip;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
			srcSkip = width - sprite->Width;
		else
			srcSkip = sprite->Width + width;
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
		srcSkip = -(sprite->Width + width);
	else
		srcSkip = sprite->Width - width;

	LHPixel16* dst = (LHPixel16*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long       dstSkip = LHSys::GetScreen().backPixelPitch - width;

	for (long h = spriteHeight; h > 0; h--)
	{
		for (long w = width; w > 0; w--)
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
			dst++;
			src += stepX;
		}
		dst += dstSkip;
		src += srcSkip;
	}

	return LH_OK;
}

int LHDraw::RegionSprite24(long x, long y, LHSprite* sprite, LHRegion* region, unsigned long flags)
{
	long     width = sprite->Width;
	long     spriteHeight = sprite->Height;
	LHColor* src = (LHColor*)sprite->PixelData;
	LHRegion window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord  start = window.start;
	LHCoord  end = window.end;
	LHRegion visible(x, y, region->Width(), region->Height());

	x -= region->start.X();
	y -= region->start.Y();

	long right = x + sprite->Width;
	long bottom = y + sprite->Height;

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

	long clip;
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
		clip = start.X() - x;
		src += clip * stepX;
		width -= clip;
		x = start.X();
	}
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		clip = start.Y() - y;
		src += sprite->Width * (clip * stepY);
		spriteHeight -= clip;
		y = start.Y();
	}
	if (bottom > end.Y())
		spriteHeight -= bottom - end.Y();

	if (x < visible.start.X())
	{
		clip = visible.start.X() - x;
		src += clip * stepX;
		width -= clip;
		x = visible.start.X();
	}
	if (right > visible.end.X())
		width -= right - visible.end.X();
	if (y < visible.start.Y())
	{
		clip = visible.start.Y() - y;
		src += sprite->Width * (clip * stepY);
		spriteHeight -= clip;
		y = visible.start.Y();
	}
	if (bottom > visible.end.Y())
		spriteHeight -= bottom - visible.end.Y();

	long srcSkip;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
			srcSkip = width - sprite->Width;
		else
			srcSkip = sprite->Width + width;
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
		srcSkip = -(sprite->Width + width);
	else
		srcSkip = sprite->Width - width;

	LHColor* dst = (LHColor*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long     dstSkip = LHSys::GetScreen().backPixelPitch - width;

	for (long h = spriteHeight; h > 0; h--)
	{
		for (long w = width; w > 0; w--)
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
					dst->Set(
						color.GetR() + dst->GetR() < LHSys::GetScreen().GetMaxRed() ? color.GetR() + dst->GetR()
																					: LHSys::GetScreen().GetMaxRed(),
						color.GetG() + dst->GetG() < LHSys::GetScreen().GetMaxGreen()
							? color.GetG() + dst->GetG()
							: LHSys::GetScreen().GetMaxGreen(),
						color.GetB() + dst->GetB() < LHSys::GetScreen().GetMaxBlue() ? color.GetB() + dst->GetB()
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
			dst++;
			src += stepX;
		}
		dst += dstSkip;
		src += srcSkip;
	}

	return LH_OK;
}

int LHDraw::RegionSprite24To16(long x, long y, LHSprite* sprite, LHRegion* region, unsigned long flags)
{
	long     width = sprite->Width;
	long     spriteHeight = sprite->Height;
	LHColor* src = (LHColor*)sprite->PixelData;
	LHRegion window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord  start = window.start;
	LHCoord  end = window.end;
	LHRegion visible(x, y, region->Width(), region->Height());

	x -= region->start.X();
	y -= region->start.Y();

	long right = x + sprite->Width;
	long bottom = y + sprite->Height;

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

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
		long clip = start.X() - x;
		src += clip * stepX;
		width -= clip;
		x = start.X();
	}
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		long clip = start.Y() - y;
		src += sprite->Width * (clip * stepY);
		spriteHeight -= clip;
		y = start.Y();
	}
	if (bottom > end.Y())
		spriteHeight -= bottom - end.Y();

	if (x < visible.start.X())
	{
		long clip = visible.start.X() - x;
		src += clip * stepX;
		width -= clip;
		x = visible.start.X();
	}
	if (right > visible.end.X())
		width -= right - visible.end.X();
	if (y < visible.start.Y())
	{
		long clip = visible.start.Y() - y;
		src += sprite->Width * (clip * stepY);
		spriteHeight -= clip;
		y = visible.start.Y();
	}
	if (bottom > visible.end.Y())
		spriteHeight -= bottom - visible.end.Y();

	long srcSkip;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
			srcSkip = width - sprite->Width;
		else
			srcSkip = sprite->Width + width;
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
		srcSkip = -(sprite->Width + width);
	else
		srcSkip = sprite->Width - width;

	LHPixel16* dst = (LHPixel16*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long       dstSkip = LHSys::GetScreen().backPixelPitch - width;

	for (long h = spriteHeight; h > 0; h--)
	{
		for (long w = width; w > 0; w--)
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
			dst++;
			src += stepX;
		}
		dst += dstSkip;
		src += srcSkip;
	}

	return LH_OK;
}

int LHDraw::OneColorSprite16(long x, long y, LHSprite* sprite, LHPixel16 color, unsigned long flags)
{
	long       width = sprite->Width;
	long       spriteHeight = sprite->Height;
	LHPixel16* src = (LHPixel16*)sprite->PixelData;
	LHRegion   window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord    start = window.start;
	LHCoord    end = window.end;
	long       right = x + sprite->Width;
	long       bottom = y + sprite->Height;

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

	long stepX;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
		{
			src += sprite->Width * sprite->Height - 1;
			stepX = -1;
		}
		else
		{
			src += sprite->Width - 1;
			stepX = -1;
		}
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
	{
		src += sprite->Width * (sprite->Height - 1);
		stepX = 1;
	}
	else
	{
		stepX = 1;
	}

	if (x < start.X())
	{
		long clip = start.X() - x;
		src += clip;
		width -= clip;
		x = start.X();
	}
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		long clip = start.Y() - y;
		src += sprite->Width * clip;
		spriteHeight -= clip;
		y = start.Y();
	}
	if (bottom > end.Y())
		spriteHeight -= bottom - end.Y();

	long srcSkip;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
			srcSkip = width - sprite->Width;
		else
			srcSkip = sprite->Width + width;
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
		srcSkip = -(sprite->Width + width);
	else
		srcSkip = sprite->Width - width;

	LHPixel16* dst = (LHPixel16*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long       dstSkip = LHSys::GetScreen().backPixelPitch - width;

	for (long h = spriteHeight; h != 0; h--)
	{
		for (long w = width; w != 0; w--)
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
			dst++;
			src += stepX;
		}
		dst += dstSkip;
		src += srcSkip;
	}

	return LH_OK;
}

int LHDraw::OneColorSprite24(long x, long y, LHSprite* sprite, LHColor color, unsigned long flags)
{
	long     width = sprite->Width;
	long     spriteHeight = sprite->Height;
	LHColor* src = (LHColor*)sprite->PixelData;
	LHRegion window = LHSys::GetScreen().GetGraphicsWindow();
	LHCoord  start = window.start;
	LHCoord  end = window.end;
	long     right = x + sprite->Width;
	long     bottom = y + sprite->Height;

	if (x > end.X() || right < start.X() || y > end.Y() || bottom < start.Y())
		return LH_FAIL;

	long stepX;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
		{
			src += sprite->Width * sprite->Height - 1;
			stepX = -1;
		}
		else
		{
			src += sprite->Width - 1;
			stepX = -1;
		}
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
	{
		src += sprite->Width * (sprite->Height - 1);
		stepX = 1;
	}
	else
	{
		stepX = 1;
	}

	if (x < start.X())
	{
		long clip = start.X() - x;
		src += clip;
		width -= clip;
		x = start.X();
	}
	if (right > end.X())
		width -= right - end.X();
	if (y < start.Y())
	{
		long clip = start.Y() - y;
		src += sprite->Width * clip;
		spriteHeight -= clip;
		y = start.Y();
	}
	if (bottom > end.Y())
		spriteHeight -= bottom - end.Y();

	long srcSkip;
	if (flags & LH_SPRITE_DRAW_FLIP_X)
	{
		if (flags & LH_SPRITE_DRAW_FLIP_Y)
			srcSkip = width - sprite->Width;
		else
			srcSkip = sprite->Width + width;
	}
	else if (flags & LH_SPRITE_DRAW_FLIP_Y)
		srcSkip = -(sprite->Width + width);
	else
		srcSkip = sprite->Width - width;

	LHColor* dst = (LHColor*)LHSys::GetScreen().backAddress + x + y * LHSys::GetScreen().backPixelPitch;
	long     dstSkip = LHSys::GetScreen().backPixelPitch - width;

	for (long h = spriteHeight; h != 0; h--)
	{
		for (long w = width; w != 0; w--)
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
					dst->Set(
						color.GetR() + dst->GetR() < LHSys::GetScreen().GetMaxRed() ? color.GetR() + dst->GetR()
																					: LHSys::GetScreen().GetMaxRed(),
						color.GetG() + dst->GetG() < LHSys::GetScreen().GetMaxGreen()
							? color.GetG() + dst->GetG()
							: LHSys::GetScreen().GetMaxGreen(),
						color.GetB() + dst->GetB() < LHSys::GetScreen().GetMaxBlue() ? color.GetB() + dst->GetB()
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
			dst++;
			src += stepX;
		}
		dst += dstSkip;
		src += srcSkip;
	}

	return LH_OK;
}
