#include <Lionhead/LHLib/ver5.0/LHText.h>

#include <string.h>
#include <windows.h>

#include <re_common.h>

#include <Lionhead/LH3DLib/development/LHColor.h>
#include <Lionhead/LH3DLib/development/LHCoord.h>
#include <Lionhead/LH3DLib/development/LHRegion.h>
#include <Lionhead/LHLib/ver5.0/LHDraw.h>
#include <Lionhead/LHLib/ver5.0/LHScreen.h>
#include <Lionhead/LHLib/ver5.0/LHSystem.h>

#define FONT_POINT_SIZE         6
#define POINTS_PER_INCH_DIVISOR 18
#define FONT_WEIGHT             100
#define FONT_FACE               "Arial"
#define LINE_PITCH              13

bool32_t g_lhTextFontUninit = true;
HFONT    g_lhTextFont;
LOGFONTA g_lhTextLogFont;

LH_RETURN LHText::LoadFont(char* file_name, unsigned long flags)
{
	int       maxWidth = 0;
	LH_RETURN result = LHSys::GetConvert().ToSprites(file_name, this, NULL, flags, NULL, NULL, NULL);
	if (result == LH_OK)
	{
		for (char c = LH_TEXT_FIRST_GLYPH; (uint8_t)c < (uint32_t)(Count + LH_TEXT_FIRST_GLYPH); ++c)
		{
			int width = CharacterWidth(c);
			if (width > maxWidth)
				maxWidth = width;
		}
		LineHeight = CharacterHeight(LH_TEXT_CHAR_SPACE);
		SpaceWidth = CharacterWidth(LH_TEXT_CHAR_SPACE);
		MaxWidth = maxWidth;
		TabWidth = SpaceWidth * LH_TEXT_DEFAULT_TAB_SIZE;
		TabSize = LH_TEXT_DEFAULT_TAB_SIZE;
		LHColor black;
		black.b = black.g = black.r = 0;
		Color = black;
	}
	return result;
}

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
	int width = 0;
	int maxWidth = 0;
	if (!end)
		end = &start[strlen(start)];
	for (; start < end; ++start)
	{
		switch (*start)
		{
		case 0:
			break;
		case LH_TEXT_CHAR_TAB:
			width += TabWidth;
			break;
		case LH_TEXT_CHAR_NEWLINE:
			if (maxWidth < width)
				maxWidth = width;
			width = 0;
			break;
		default:
			width += CharacterWidth(*start);
			break;
		}
	}
	return max(maxWidth, width);
}

int LHText::StringHeight(char* start, char* end)
{
	if (!end)
		end = &start[strlen(start)];
	int result = 0;
	while (start < end)
	{
		char c = *start;
		if (!c || start == end || c == LH_TEXT_CHAR_NEWLINE)
		{
			result += LineHeight;
			if (!c || start == end)
				break;
		}
		++start;
	}
	return result;
}

int LHText::WordWidth(char* text)
{
	int result = 0;
	for (char c = *text; c != LH_TEXT_CHAR_SPACE; c = *++text)
	{
		if (c == LH_TEXT_CHAR_TAB || c == LH_TEXT_CHAR_NEWLINE || !c)
			break;
		if (c >= LH_TEXT_CHAR_SPACE)
		{
			result += CharacterWidth(c);
		}
	}
	return result;
}

int LHText::DrawActualTextSprites(long x, long y, char* start, char* end, unsigned long extraSpacing)
{
	long startX = x;
	if (Flags & LH_TEXT_ONE_COLOR)
	{
		for (; start < end; ++start)
		{
			char c = *start;
			if (c == LH_TEXT_CHAR_SPACE)
				x += extraSpacing + SpaceWidth;
			else if (c >= LH_TEXT_FIRST_GLYPH)
			{
				c -= LH_TEXT_FIRST_GLYPH;
				LHSys::GetDraw().OneColorSprite(x, y, &Sprites[c], Color, 1);
				x += CharacterWidth(*start);
			}
			else if (c == LH_TEXT_CHAR_TAB)
				x += TabSize * (extraSpacing + SpaceWidth);
		}
	}
	else if (Flags & LH_TEXT_UNCLIPPED)
	{
		for (; start < end; ++start)
		{
			char c = *start;
			if (c == LH_TEXT_CHAR_SPACE)
				x += extraSpacing + SpaceWidth;
			else if (c >= LH_TEXT_FIRST_GLYPH)
			{
				c -= LH_TEXT_FIRST_GLYPH;
				LHSys::GetDraw().Sprite(x, y, &Sprites[c]);
				x += CharacterWidth(*start);
			}
			else if (c == LH_TEXT_CHAR_TAB)
				x += TabSize * (extraSpacing + SpaceWidth);
		}
	}
	else
	{
		for (; start < end; ++start)
		{
			char c = *start;
			if (c == LH_TEXT_CHAR_SPACE)
				x += extraSpacing + SpaceWidth;
			else if (c >= LH_TEXT_FIRST_GLYPH)
			{
				c -= LH_TEXT_FIRST_GLYPH;
				LHSys::GetDraw().Sprite(x, y, &Sprites[c], 1, LHSys::GetScreen().backAddress,
				                        LHSys::GetScreen().backPixelPitch);
				x += CharacterWidth(*start);
			}
			else if (c == LH_TEXT_CHAR_TAB)
				x += TabSize * (extraSpacing + SpaceWidth);
		}
	}
	if (Flags & LH_TEXT_UNDERLINE)
		return LHSys::GetDraw().HVLine(startX, y + CharacterHeight(LH_TEXT_CHAR_SPACE), x,
		                               y + CharacterHeight(LH_TEXT_CHAR_SPACE), Color, 1);
	return Flags;
}

int LHText::Draw(long x, long y, char* text, unsigned long flags)
{
	char*    lineStart = text;
	int      spaceCount = 0;
	LHRegion savedGraphicsWindow = LHSys::GetScreen().GraphicsWindow;
	LHRegion textWindow = LHSys::GetScreen().GetTextWindow();
	LHSys::GetScreen().GraphicsWindow = LHSys::GetScreen().TextWindow;
	int  lineWidth = textWindow.Width();
	long penX = textWindow.start.x + x;
	long penY = LHSys::GetScreen().GetTextWindow().Y1() + y;
	Flags = flags;
	long startX = penX;
	if (*text)
	{
		char* wordStart = text + 1;
		do
		{
			switch (*text)
			{
			case LH_TEXT_CHAR_TAB:
				penX += TabWidth;
				if (penX + WordWidth(wordStart) > lineWidth)
				{
					int  extra = 0;
					long lineX;
					if (flags & LH_TEXT_RIGHT)
						lineX = startX + lineWidth - (penX - TabWidth - startX);
					else if (flags & LH_TEXT_CENTRE)
						lineX = startX + (lineWidth - (penX - TabWidth - startX)) / 2;
					else
					{
						if ((flags & LH_TEXT_JUSTIFY) && spaceCount)
							extra = (lineWidth - (penX - SpaceWidth - startX)) / spaceCount;
						lineX = startX;
					}
					DrawActualTextSprites(lineX, penY, lineStart, text, extra);
					lineStart = wordStart;
					penX = startX;
					penY += LineHeight;
					spaceCount = 0;
				}
				else
					spaceCount += TabSize;
				break;
			case LH_TEXT_CHAR_NEWLINE: {
				long lineX;
				if (flags & LH_TEXT_RIGHT)
					lineX = startX + lineWidth - (penX - startX);
				else
				{
					lineX = startX;
					if (flags & LH_TEXT_CENTRE)
						lineX = startX + (lineWidth - (penX - startX)) / 2;
				}
				DrawActualTextSprites(lineX, penY, lineStart, text, 0);
				lineStart = text;
				penX = startX;
				penY += LineHeight;
				spaceCount = 0;
				break;
			}
			case LH_TEXT_CHAR_SPACE:
				penX += SpaceWidth;
				if (penX - textWindow.start.x + WordWidth(wordStart) > lineWidth)
				{
					int  extra = 0;
					long lineX;
					if (flags & LH_TEXT_RIGHT)
						lineX = startX + lineWidth - (penX - SpaceWidth - startX);
					else if (flags & LH_TEXT_CENTRE)
						lineX = startX + (lineWidth - (penX - SpaceWidth - startX)) / 2;
					else
					{
						if ((flags & LH_TEXT_JUSTIFY) && spaceCount)
							extra = (lineWidth - (penX - SpaceWidth - startX)) / spaceCount;
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
				}
				else
					spaceCount++;
				break;
			default:
				penX += CharacterWidth(*text);
				if (penX - textWindow.start.x > lineWidth && !(flags & LH_TEXT_NO_BREAK))
				{
					long lineX;
					if (flags & LH_TEXT_RIGHT)
						lineX = startX + lineWidth - (penX - CharacterWidth(*text) - startX);
					else if (flags & LH_TEXT_CENTRE)
						lineX = startX + (lineWidth - (penX - CharacterWidth(*text) - startX)) / 2;
					else
						lineX = startX;
					if (lineStart == text)
					{
						++text;
						++wordStart;
					}
					DrawActualTextSprites(lineX, penY, lineStart, text, 0);
					lineStart = text;
					--text;
					--wordStart;
					penX = startX;
					penY += LineHeight;
					spaceCount = 0;
				}
				break;
			}
			++text;
			++wordStart;
		} while (*text);
	}
	long lineX;
	if (flags & LH_TEXT_RIGHT)
		lineX = startX + lineWidth - (penX - startX);
	else
	{
		lineX = startX;
		if (flags & LH_TEXT_CENTRE)
			lineX = startX + (lineWidth - (penX - startX)) / 2;
	}
	DrawActualTextSprites(lineX, penY, lineStart, text, 0);
	LHSys::GetScreen().GraphicsWindow = savedGraphicsWindow;
	return 0;
}

int LHText::DrawSimple(long x, long y, char* text, LHColor* color, int mode)
{
	HDC      hdc;
	uint8_t  b = 0;
	uint8_t  g = 0;
	bool32_t done = false;
	uint8_t  r = 0;
	if (LHSys::GetScreen().PBackSurface->GetDC(&hdc))
		return LH_FAIL;
	if (g_lhTextFontUninit)
	{
		g_lhTextFontUninit = false;
		g_lhTextLogFont.lfHeight = -MulDiv(FONT_POINT_SIZE, GetDeviceCaps(hdc, LOGPIXELSY), POINTS_PER_INCH_DIVISOR);
		g_lhTextLogFont.lfWidth = 0;
		g_lhTextLogFont.lfEscapement = 0;
		g_lhTextLogFont.lfOrientation = 0;
		g_lhTextLogFont.lfWeight = FONT_WEIGHT;
		g_lhTextLogFont.lfItalic = 0;
		g_lhTextLogFont.lfUnderline = 0;
		g_lhTextLogFont.lfStrikeOut = 0;
		g_lhTextLogFont.lfCharSet = 0;
		g_lhTextLogFont.lfOutPrecision = 0;
		g_lhTextLogFont.lfClipPrecision = 0;
		g_lhTextLogFont.lfQuality = 0;
		g_lhTextLogFont.lfPitchAndFamily = 0;
		strcpy(g_lhTextLogFont.lfFaceName, FONT_FACE);
		g_lhTextFont = CreateFontIndirectA(&g_lhTextLogFont);
		if (g_lhTextFont)
			SelectObject(hdc, g_lhTextFont);
	}
	if (color)
	{
		g = color->g;
		r = color->r;
		b = color->b;
	}
	if (mode == 1)
		SetBkColor(hdc, RGB((uint8_t)(255 - r), (uint8_t)(255 - g), (uint8_t)(255 - b)));
	else
		SetBkMode(hdc, TRANSPARENT);
	SetTextColor(hdc, RGB(r, g, b));

	int lineBreak = -1;
	do
	{
		int i = lineBreak + 1;
		if (i == -1)
			i = 0;
		char* line = &text[i];
		while (text[i])
		{
			if (text[i] == LH_TEXT_CHAR_NEWLINE)
			{
				lineBreak = i;
				break;
			}
			++i;
		}
		if (!text[i])
			done = true;
		if (lineBreak != -1)
			text[lineBreak] = 0;
		TextOutA(hdc, x, y, line, strlen(line));
		if (lineBreak != -1)
			text[lineBreak] = LH_TEXT_CHAR_NEWLINE;
		y += LINE_PITCH;
	} while (!done);

	LHSys::GetScreen().PBackSurface->ReleaseDC(hdc);
	return 0;
}
