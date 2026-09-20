#include <Lionhead/LHLib/ver5.0/LHText.h>

#include <string.h>
#include <windows.h>

#include <Lionhead/LH3DLib/development/LHColor.h>
#include <Lionhead/LH3DLib/development/LHCoord.h>
#include <Lionhead/LH3DLib/development/LHRegion.h>
#include <Lionhead/LHLib/ver5.0/LHDraw.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

extern int      g_lhTextFontUninit; // 0xC3417C
extern HFONT    g_lhTextFont;       // 0xE90608
extern LOGFONTA g_lhTextLogFont;    // 0xE90610

int LHText::FreeFont()
{
	int result = FreeSpriteList(0);
	if (!result)
	{
		Sprites = NULL;
		Count = 0;
	}
	return result;
}

int LHText::StringWidth(char* start, char* end)
{
	// TODO(nonmatching): register allocation differs
	int width = 0;
	int maxWidth = 0;
	if (!end)
		end = &start[strlen(start)];
	for (char* p = start; p < end; ++p)
	{
		char c = *p;
		switch (c)
		{
		case 0:
			break;
		case 9:
			width += TabWidth;
			break;
		case 10:
			if (maxWidth < width)
				maxWidth = width;
			width = 0;
			break;
		default: {
			int advance;
			if ((unsigned int)(c - 32) >= (unsigned int)Count)
				advance = 0;
			else
				advance = Sprites[c - 32].Width;
			width += advance;
		}
		break;
		}
	}
	return maxWidth > width ? maxWidth : width;
}

int LHText::StringHeight(char* start, char* end)
{
	// TODO(nonmatching): compiler folds the dead p==end checks the original keeps
	char* p = start;
	if (!end)
		end = &start[strlen(start)];
	int result = 0;
	if (start < end)
	{
		do
		{
			char c = *p;
			if (!c || p == end || c == 10)
			{
				result += LineHeight;
				if (!c || p == end)
					break;
			}
			++p;
		} while (p < end);
	}
	return result;
}

int LHText::WordWidth(char* text)
{
	int result = 0;
	for (char c = *text; c != 32; c = *++text)
	{
		if (c == 9 || c == 10 || !c)
			break;
		if (c >= 32)
		{
			int advance;
			if ((unsigned int)(c - 32) >= (unsigned int)Count)
				advance = 0;
			else
				advance = Sprites[c - 32].Width;
			result += advance;
		}
	}
	return result;
}

int LHText::DrawActualTextSprites(long x, long y, char* start, char* end, unsigned long extraSpacing)
{
	// TODO(nonmatching): register allocation / scheduling
	int penX = x;
	if (Flags & 0x40)
	{
		char* p = start;
		if (start < end)
		{
			while (1)
			{
				char c = *p;
				int  advance;
				if (c == 32)
				{
					advance = extraSpacing + SpaceWidth;
					goto add;
				}
				if (c >= 32)
				{
					LHSprite* glyph = &Sprites[c - 32];
					if (LHSys::GetScreen().depth == 16)
					{
						LHPixel16 pix;
						pix.Set(Color);
						LHSys::GetDraw().OneColorSprite16(penX, y, glyph, pix, 1);
					}
					else
					{
						LHColor col;
						col.b = Color.b;
						col.g = Color.g;
						col.r = Color.r;
						LHSys::GetDraw().OneColorSprite24(penX, y, glyph, col, 1);
					}
					if ((unsigned int)(*p - 32) >= (unsigned int)Count)
						advance = 0;
					else
						advance = Sprites[*p - 32].Width;
					goto add;
				}
				if (c == 9)
				{
					advance = TabSize * (extraSpacing + SpaceWidth);
					goto add;
				}
				goto next;
			add:
				penX += advance;
			next:
				if (++p >= end)
					goto underline;
			}
		}
		goto underline;
	}
	else if (Flags & 0x80)
	{
		char* p = start;
		if (start >= end)
			goto underline;
		while (1)
		{
			char c = *p;
			if (c == 32)
			{
				penX += extraSpacing + SpaceWidth;
			}
			else
			{
				if (c >= 32)
				{
					LHSprite* glyph = &Sprites[c - 32];
					if (LHSys::GetScreen().depth == 16)
						LHSys::GetDraw().Sprite16(penX, y, glyph);
					else
						LHSys::GetDraw().Sprite24(penX, y, glyph);
					int advance;
					if ((unsigned int)(*p - 32) >= (unsigned int)Count)
						advance = 0;
					else
						advance = Sprites[*p - 32].Width;
					penX += advance;
				}
				else if (c == 9)
				{
					penX += TabSize * (extraSpacing + SpaceWidth);
				}
			}
			if (++p >= end)
				goto underline;
		}
	}
	else
	{
		char* p = start;
		if (start < end)
		{
			do
			{
				char c = *p;
				if (c == 32)
				{
					penX += extraSpacing + SpaceWidth;
				}
				else if (c < 32)
				{
					if (c == 9)
						penX += TabSize * (extraSpacing + SpaceWidth);
				}
				else
				{
					LHSprite* glyph = &Sprites[c - 32];
					if (LHSys::GetScreen().depth == 16)
						LHSys::GetDraw().Sprite16(penX, y, glyph, 1, 0, (LHPixel16*)LHSys::GetScreen().backAddress,
						                          LHSys::GetScreen().backPixelPitch);
					else
						LHSys::GetDraw().Sprite24(penX, y, glyph, 1, (LHColor*)LHSys::GetScreen().backAddress,
						                          LHSys::GetScreen().backPixelPitch);
					if ((unsigned int)(*p - 32) < (unsigned int)Count)
						penX += Sprites[*p - 32].Width;
				}
				++p;
			} while (p < end);
		}
	}

underline:
	int result = Flags;
	if (result & 0x100)
	{
		int height1 = Count ? Sprites->Height : 0;
		int height2 = Count ? Sprites->Height : 0;
		int underlineY2 = height2 + y;
		int underlineY1 = height1 + y;
		if (LHSys::GetScreen().depth == 16)
		{
			unsigned int packed =
				((unsigned int)(uint8_t)(Color.r >> LHSys::GetScreen().redScale) << LHSys::GetScreen().RedShift) +
				((unsigned int)(uint8_t)(Color.b >> LHSys::GetScreen().BlueScale) << LHSys::GetScreen().BlueShift);
			packed += (unsigned int)(uint8_t)(Color.g >> LHSys::GetScreen().GreenScale)
			          << LHSys::GetScreen().GreenShift;
			LHPixel16 pix;
			pix.value = (uint16_t)packed;
			return LHSys::GetDraw().HVLine16(x, underlineY2, penX, underlineY1, pix, 1);
		}
		else
		{
			LHColor col;
			col.b = Color.b;
			col.g = Color.g;
			col.r = Color.r;
			return LHSys::GetDraw().HVLine24(x, underlineY2, penX, underlineY1, col, 1);
		}
	}
	return result;
}

int LHText::Draw(long x, long y, char* text, unsigned long flags)
{
	// TODO(nonmatching): stack layout / register allocation
	char*    lineStart = text;
	LHRegion savedGraphicsWindow = LHSys::GetScreen().GraphicsWindow;
	LHSys::GetScreen().GraphicsWindow = LHSys::GetScreen().TextWindow;
	int lineWidth = LHSys::GetScreen().TextWindow.end.x - LHSys::GetScreen().TextWindow.start.x + 1;
	int penY = LHSys::GetScreen().TextWindow.start.y + y;
	int textLeft = LHSys::GetScreen().TextWindow.start.x;
	int penX = LHSys::GetScreen().TextWindow.start.x + x;
	Flags = flags;
	int startX = penX;
	int spaceCount = 0;
	if (*text)
	{
		char* wordStart = text + 1;
		do
		{
			char c = *text;
			switch (c)
			{
			case 9:
				penX += TabWidth;
				if (penX + WordWidth(wordStart) > lineWidth)
				{
					int extra = 0;
					int lineX;
					if (flags & 2)
					{
						lineX = lineWidth + TabWidth + 2 * startX - penX;
					}
					else if (flags & 8)
					{
						lineX = startX + ((unsigned int)(lineWidth + startX + TabWidth - penX) >> 1);
					}
					else
					{
						if ((flags & 4) && spaceCount)
							extra = (lineWidth + startX + SpaceWidth - penX) / spaceCount;
						lineX = startX;
					}
					DrawActualTextSprites(lineX, penY, lineStart, text, extra);
					lineStart = wordStart;
					penX = startX;
					penY += LineHeight;
					spaceCount = 0;
					goto nextChar;
				}
				spaceCount += TabSize;
				break;
			case 10: {
				int lineX;
				if (flags & 2)
				{
					lineX = lineWidth + 2 * startX - penX;
				}
				else
				{
					lineX = startX;
					if (flags & 8)
						lineX = startX + (lineWidth + startX - penX) / 2;
				}
				DrawActualTextSprites(lineX, penY, lineStart, text, 0);
				penX = startX;
				lineStart = text;
				penY += LineHeight;
				spaceCount = 0;
			}
				goto nextChar;
			case 32:
				penX += SpaceWidth;
				if (penX - textLeft + WordWidth(wordStart) > lineWidth)
				{
					int extra = 0;
					int lineX;
					if (flags & 2)
					{
						lineX = lineWidth + SpaceWidth + 2 * startX - penX;
					}
					else if (flags & 8)
					{
						lineX = startX + (lineWidth + startX + SpaceWidth - penX) / 2;
					}
					else
					{
						if ((flags & 4) && spaceCount)
							extra = (lineWidth + startX + SpaceWidth - penX) / spaceCount;
						lineX = startX;
					}
					if (lineStart == text)
						DrawActualTextSprites(lineX, penY, lineStart, wordStart, extra);
					else
						DrawActualTextSprites(lineX, penY, lineStart, text, extra);
					lineStart = wordStart;
					penX = startX;
					penY += LineHeight;
					spaceCount = 0;
					goto nextChar;
				}
				spaceCount += 1;
				break;
			default: {
				int advance;
				if ((unsigned int)(c - 32) >= (unsigned int)Count)
					advance = 0;
				else
					advance = Sprites[c - 32].Width;
				penX += advance;
				if (penX - textLeft > lineWidth && (flags & 0x20) == 0)
				{
					int lineX;
					if (flags & 2)
					{
						int d;
						if ((unsigned int)(*text - 32) < (unsigned int)Count)
							d = Sprites[*text - 32].Width + 2 * startX - penX;
						else
							d = 2 * startX - penX;
						lineX = lineWidth + d;
					}
					else if (flags & 8)
					{
						int w;
						if ((unsigned int)(*text - 32) < (unsigned int)Count)
							w = Sprites[*text - 32].Width;
						else
							w = 0;
						lineX = startX + (lineWidth + startX + w - penX) / 2;
					}
					else
					{
						lineX = startX;
					}
					char* lineEnd = text;
					if (lineStart == text)
					{
						lineEnd = ++text;
						++wordStart;
					}
					DrawActualTextSprites(lineX, penY, lineStart, lineEnd, 0);
					lineStart = text--;
					penX = startX;
					--wordStart;
					penY += LineHeight;
					spaceCount = 0;
				}
			}
				goto nextChar;
			}
		nextChar:
			++text;
			++wordStart;
		} while (*text);
	}
	int lineX;
	if (flags & 2)
	{
		lineX = lineWidth + 2 * startX - penX;
	}
	else
	{
		lineX = startX;
		if (flags & 8)
			lineX = startX + (lineWidth + startX - penX) / 2;
	}
	DrawActualTextSprites(lineX, penY, lineStart, text, 0);
	LHSys::GetScreen().GraphicsWindow = savedGraphicsWindow;
	return 0;
}

int LHText::DrawSimple(long x, long y, char* text, LHColor* color, int mode)
{
	// TODO(nonmatching): colour-byte register/stack placement
	HDC     hdc;
	uint8_t b = 0;
	uint8_t g = 0;
	uint8_t r = 0;
	if (LHSys::GetScreen().PBackSurface->GetDC(&hdc))
		return 2;
	if (g_lhTextFontUninit)
	{
		g_lhTextFontUninit = 0;
		g_lhTextLogFont.lfHeight = -MulDiv(6, GetDeviceCaps(hdc, LOGPIXELSY), 18);
		g_lhTextLogFont.lfWidth = 0;
		g_lhTextLogFont.lfEscapement = 0;
		g_lhTextLogFont.lfOrientation = 0;
		g_lhTextLogFont.lfWeight = 100;
		g_lhTextLogFont.lfItalic = 0;
		g_lhTextLogFont.lfUnderline = 0;
		g_lhTextLogFont.lfStrikeOut = 0;
		g_lhTextLogFont.lfCharSet = 0;
		g_lhTextLogFont.lfOutPrecision = 0;
		g_lhTextLogFont.lfClipPrecision = 0;
		g_lhTextLogFont.lfQuality = 0;
		g_lhTextLogFont.lfPitchAndFamily = 0;
		strcpy(g_lhTextLogFont.lfFaceName, "Arial");
		g_lhTextFont = CreateFontIndirectA(&g_lhTextLogFont);
		if (g_lhTextFont)
			SelectObject(hdc, g_lhTextFont);
	}
	if (color)
	{
		b = color->b;
		g = color->g;
		r = color->r;
	}
	if (mode == 1)
		SetBkColor(hdc, RGB((uint8_t)(255 - r), (uint8_t)(255 - g), (uint8_t)(255 - b)));
	else
		SetBkMode(hdc, TRANSPARENT);
	SetTextColor(hdc, RGB(r, g, b));

	int done = 0;
	int lineBreak = -1;
	do
	{
		int i = lineBreak + 1;
		if (lineBreak == -2)
			i = 0;
		char        c = text[i];
		const char* line = &text[i];
		if (c)
		{
			while (c != 10)
			{
				c = text[++i];
				if (!c)
					goto emit;
			}
			lineBreak = i;
		}
	emit:
		if (!text[i])
			done = 1;
		if (lineBreak != -1)
			text[lineBreak] = 0;
		TextOutA(hdc, x, y, line, strlen(line));
		if (lineBreak != -1)
			text[lineBreak] = 10;
		y += 13;
	} while (!done);

	LHSys::GetScreen().PBackSurface->ReleaseDC(hdc);
	return 0;
}
