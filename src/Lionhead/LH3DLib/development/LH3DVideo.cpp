#include "LH3DVideo.h"

#include <windows.h> /* For HINSTANCE */

#include <Lionhead/LHLib/ver5.0/LHSystem.h> /* For LHSys */

LHColor video_colour;

long LH3DVideo::screen_height;
long LH3DVideo::screen_width;
long tri_fill_16;
long tri_fill_32;
long (*LH3DVideo::RGB16)(long r, long g, long b);

LH3DVideo::Col black;
LH3DVideo::Col red;
LH3DVideo::Col green;
LH3DVideo::Col yellow;
LH3DVideo::Col blue;
LH3DVideo::Col magenta;
LH3DVideo::Col cyan;
LH3DVideo::Col white;
LH3DVideo::Col grey;
LH3DVideo::Col lred;
LH3DVideo::Col lgreen;
LH3DVideo::Col lyellow;
LH3DVideo::Col lblue;
LH3DVideo::Col lmagenta;
LH3DVideo::Col lcyan;
LH3DVideo::Col orange;

uint16_t* LH3DVideo::nextline;

void LH3DVideo::SetUpColours()
{
	black.r = 0;
	black.g = 0;
	black.b = 0;
	black.a = 0;
	red.r = 0xff;
	red.g = 0;
	red.b = 0;
	red.a = 0;
	green.r = 0;
	green.g = 0xff;
	green.b = 0;
	green.a = 0;
	yellow.r = 0xff;
	yellow.g = 0xff;
	yellow.b = 0;
	yellow.a = 0;
	blue.r = 0;
	blue.g = 0;
	blue.b = 0xff;
	blue.a = 0;
	magenta.r = 0xff;
	magenta.g = 0;
	magenta.b = 0xff;
	magenta.a = 0;
	cyan.r = 0;
	cyan.g = 0xff;
	cyan.b = 0xff;
	cyan.a = 0;
	white.r = 0xff;
	white.g = 0xff;
	white.b = 0xff;
	white.a = 0;
	grey.r = 0xa0;
	grey.g = 0xa0;
	grey.b = 0xa0;
	grey.a = 0;
	lred.r = 0xd2;
	lred.g = 0xa0;
	lred.b = 0xa0;
	lred.a = 0;
	lgreen.r = 0xa0;
	lgreen.g = 0xd2;
	lgreen.b = 0xa0;
	lgreen.a = 0;
	lyellow.r = 0xd2;
	lyellow.g = 0xd2;
	lyellow.b = 0xa0;
	lyellow.a = 0;
	lblue.r = 0xa0;
	lblue.g = 0xa0;
	lblue.b = 0xd2;
	lblue.a = 0;
	lmagenta.r = 0xd2;
	lmagenta.g = 0xa0;
	lmagenta.b = 0xd2;
	lmagenta.a = 0;
	lcyan.r = 0xa0;
	lcyan.g = 0xd2;
	lcyan.b = 0xd2;
	lcyan.a = 0;
	orange.r = 0xd2;
	orange.g = 0xa0;
	orange.b = 0;
	orange.a = 0;
}

long LH3DVideo::RGB565(long r, long g, long b)
{
	return ((r & 0xf8) << 8) + ((g & 0xfc) << 3) + ((b >> 3) & 0x1f);
}

long LH3DVideo::RGB1555(long r, long g, long b)
{
	return ((r & 0xf8) << 7) + ((g & 0xf8) << 2) + ((b >> 3) & 0x1f);
}

void LH3DVideo::SetupVideo(long red_shift, long green_shift, long blue_shift)
{
	screen_width = LHSys::TheSystem.screen.Width();
	screen_height = LHSys::TheSystem.screen.Height();
	SetUpColours();
	if (red_shift == 10 && green_shift == 5 && blue_shift == 0)
	{
		RGB16 = RGB1555;
	}
	else
	{
		RGB16 = RGB565;
	}
}

void LH3DVideo::Dot(long x, long y, long colour)
{
	((uint16_t*)LHSys::TheSystem.screen.backAddress)[y * LHSys::TheSystem.screen.backPixelPitch + x] = colour;
}

void LH3DVideo::RectFill(long x1, long y1, long x2, long y2, long colour)
{
	Setfillcol(colour);
	Setvert(y1);
	for (long y = y1; y < y2; y++)
	{
		Horizln(x1, x2);
		Dropline();
	}
}

#if !defined(VERSION_BW1W100)
void LH3DVideo::HLine(long x1, long y, long x2, long colour)
{
	Setfillcol(colour);
	Setvert(y);
	Horizln(x1, x2);
}
#endif

void LH3DVideo::Horizln(long x1, long x2)
{
	uint16_t* end = nextline + x2;
	uint16_t* start = nextline + x1;
	if ((long)start & 3)
	{
		*start++ = tri_fill_16;
	}
	if ((long)end & 3)
	{
		*--end = tri_fill_16;
	}
	while (start < end)
	{
		*(long*)start = tri_fill_32;
		start += 2;
	}
}

void LH3DVideo::Setvert(long y)
{
	nextline = (uint16_t*)LHSys::TheSystem.screen.backAddress + y * LHSys::TheSystem.screen.backPixelPitch;
}

void LH3DVideo::Dropline()
{
	nextline += LHSys::TheSystem.screen.backPixelPitch;
}

void LH3DVideo::Setfillcol(long colour)
{
	tri_fill_16 = colour;
	tri_fill_32 = colour + (colour << 16);
}
