#ifndef BW1_DECOMP_LH_TEXT_INCLUDED_H
#define BW1_DECOMP_LH_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint8_t */

#include <Lionhead/LH3DLib/development/LHColor.h> /* For struct LHColor */
#include <Lionhead/LHLib/ver5.0/LHDraw.h>         /* For struct LHSprite */
#include <Lionhead/LHLib/ver5.0/LHReturn.h>       /* For enum LH_RETURN */

#define LH_TEXT_RIGHT     0x2
#define LH_TEXT_JUSTIFY   0x4
#define LH_TEXT_CENTRE    0x8
#define LH_TEXT_NO_BREAK  0x20
#define LH_TEXT_ONE_COLOR 0x40
#define LH_TEXT_UNCLIPPED 0x80
#define LH_TEXT_UNDERLINE 0x100

#define LH_TEXT_CHAR_TAB         9
#define LH_TEXT_CHAR_NEWLINE     10
#define LH_TEXT_CHAR_SPACE       32
#define LH_TEXT_FIRST_GLYPH      LH_TEXT_CHAR_SPACE
#define LH_TEXT_DEFAULT_TAB_SIZE 4

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

	// BW1W120 007e89f0
	LHSpriteList() { Set(NULL, 0); }

	// Non-virtual methods

	// (comdat, emitted from LHScript.cpp) TODO: fabricated name
	// BW1W120 007e8a00
	void Set(LHSprite* sprites, long count)
	{
		Sprites = sprites;
		Count = count;
		OwnsSprites = 1;
	}
	// BW1W120 007ee540 BW1M119 011547c0 (LHCombined Release)
	int FreeSpriteList(int keepPixelData);
	// BW1W120 007ee5b0 BW1M119 011546a0 (LHCombined Release)
	int FreeSprite(long index);
	// BW1W120 007ee620 BW1M119 011545c0 (LHCombined Release)
	int FreeSpriteRange(long first, long last);
	// BW1W120 007ee6a0 BW1M119 01154500 (LHCombined Release)
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
	LHColor  Color;      /* 0x0c */
	int      SpaceWidth; /* 0x10 */
	int      MaxWidth;   /* 0x14 */
	int      LineHeight; /* 0x18 */
	uint32_t TabWidth;   /* 0x1c */
	uint8_t  TabSize;    /* 0x20 */
	uint8_t  _pad0x21[0x3];
	int      Flags; /* 0x24 */

	// Non-virtual methods

	// BW1W120 007e3c20 BW1M119 0115e4a0 (LHCombined Release)
	LH_RETURN LoadFont(char* file_name, unsigned long flags);
	// BW1W120 007e3d00 BW1M119 0115e430 (LHCombined Release)
	int FreeFont();
	// BW1W120 inlined BW1M119 inlined
	int CharacterWidth(char c)
	{
		return (unsigned int)(c - LH_TEXT_FIRST_GLYPH) >= (unsigned int)Count ? 0
		                                                                      : Sprites[c - LH_TEXT_FIRST_GLYPH].Width;
	}
	// BW1W120 inlined BW1M119 0115e120 (LHCombined Release)
	int CharacterHeight(char c)
	{
		return (unsigned int)(c - LH_TEXT_FIRST_GLYPH) >= (unsigned int)Count ? 0
		                                                                      : Sprites[c - LH_TEXT_FIRST_GLYPH].Height;
	}
	// BW1W120 007e3d20 BW1M119 0115e2f0 (LHCombined Release)
	int StringWidth(char* start, char* end);
	// BW1W120 007e3db0 BW1M119 0115e220 (LHCombined Release)
	int StringHeight(char* start, char* end);
	// BW1W120 007e3e00 BW1M119 0115e180 (LHCombined Release)
	int WordWidth(char* text);
	// BW1W120 007e3e60 BW1M119 0115dfe0 (LHCombined Release)
	int DrawActualTextSprites(long x, long y, char* start, char* end, unsigned long extraSpacing);
	// BW1W120 007e41b0 BW1M119 0115dee0 (LHCombined Release)
	int Draw(long x, long y, char* text, unsigned long flags);
	// BW1W120 007e45f0 BW1M119 0115dd60 (LHCombined Release)
	int DrawSimple(long x, long y, char* text, LHColor* color, int mode);
};
static_assert(sizeof(LHText) == 0x28, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_TEXT_INCLUDED_H */
