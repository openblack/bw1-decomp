#ifndef BW1_DECOMP_LH_TEXT_INCLUDED_H
#define BW1_DECOMP_LH_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint8_t */

#include <Lionhead/LH3DLib/development/LHColor.h> /* For struct LHColor */
#include <Lionhead/LHLib/ver5.0/LHReturn.h>       /* For enum LH_RETURN */

// Forward Declares

struct LHSprite;

// A flat array of LHSprite images owned as a unit. The base of every sprite-set
// class in the engine (fonts, flics, ...). OwnsSprites@0 is set to 1 by the
// constructor (LHSpriteList::LHSpriteList); it is NOT a vtable pointer - the
// class is not polymorphic.
struct LHSpriteList
{
	int       OwnsSprites; /* 0x0 */
	LHSprite* Sprites;     /* 0x4 */
	int       Count;       /* 0x8 */

	// Constructors

	// BW1W120 007e89f0 LHSpriteList::LHSpriteList(void) (comdat, emitted from LHScript.cpp)
	LHSpriteList() { Set(NULL, 0); }

	// Non-virtual methods

	// BW1W120 007e8a00 (comdat, emitted from LHScript.cpp) TODO: fabricated name
	void Set(LHSprite* sprites, long count)
	{
		Sprites = sprites;
		Count = count;
		OwnsSprites = 1;
	}
	// BW1W120 007ee540 LHSpriteList::FreeSpriteList(int)
	int FreeSpriteList(int keepPixelData);
	// BW1W120 007ee5b0 LHSpriteList::FreeSprite(long)
	int FreeSprite(long index);
	// BW1W120 007ee620 LHSpriteList::FreeSpriteRange(long, long)
	int FreeSpriteRange(long first, long last);
	// BW1W120 007ee6a0 LHSpriteList::GetSize(unsigned long)
	int GetSize(unsigned long index);
};
static_assert(sizeof(LHSpriteList) == 0xc, "Data type is of wrong size");

// LHText is Black & White's bitmap sprite-glyph font renderer. It derives from
// LHSpriteList: the inherited Sprites array holds one LHSprite per glyph, indexed
// by (character - 32). It measures and lays out strings (word-wrap, alignment,
// tabs) and blits each glyph through the LHDraw sprite rasteriser, temporarily
// swapping the global LHScreen graphics window for its text window.
struct LHText : LHSpriteList
{
	LHColor Color;      /* 0x0c */
	int     SpaceWidth; /* 0x10 */
	int     field_20;   /* 0x14 */
	int     LineHeight; /* 0x18 */
	int     TabWidth;   /* 0x1c */
	uint8_t TabSize;    /* 0x20 */
	uint8_t _pad0x21[0x3];
	int     Flags; /* 0x24 */

	// Non-virtual methods

	// BW1W120 007e3c20 LHText::LoadFont(char*, unsigned long)
	LH_RETURN LoadFont(char* file_name, unsigned long flags);
	// BW1W120 007e3d00 LHText::FreeFont(void)
	int FreeFont();
	// BW1W120 007e3d20 LHText::StringWidth(char *, char *)
	int StringWidth(char* start, char* end);
	// BW1W120 007e3db0 LHText::StringHeight(char *, char *)
	int StringHeight(char* start, char* end);
	// BW1W120 007e3e00 LHText::WordWidth(char *)
	int WordWidth(char* text);
	// BW1W120 007e3e60 LHText::DrawActualTextSprites(long, long, char *, char *, unsigned long)
	int DrawActualTextSprites(long x, long y, char* start, char* end, unsigned long extraSpacing);
	// BW1W120 007e41b0 LHText::Draw(long, long, char *, unsigned long)
	int Draw(long x, long y, char* text, unsigned long flags);
	// BW1W120 007e45f0 LHText::DrawSimple(long, long, char *, LHColor *, int)
	int DrawSimple(long x, long y, char* text, LHColor* color, int mode);
};
static_assert(sizeof(LHText) == 0x28, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_TEXT_INCLUDED_H */
