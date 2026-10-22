#ifndef BW1_DECOMP_LH3D_TEXT_INCLUDED_H
#define BW1_DECOMP_LH3D_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uint16_t, uint32_t */
#include <string.h> /* For memset */
#include <uchar.h>  /* For char16_t */

enum TEXTJUSTIFY
{
	TEXTJUSTIFY_LEFT = 0x0,
	TEXTJUSTIFY_CENTRE = 0x1,
	TEXTJUSTIFY_RIGHT = 0x2,
	TEXTJUSTIFY_LEFT_BREAK = 0x3,
	TEXTJUSTIFY_CENTRE_BREAK = 0x4,
	_TEXTJUSTIFY_COUNT = 0x5
};

// Forward Declares

struct LH3DColor;
struct LHMatrix;

// This is one LH3DLib translation unit (0x830050..0x833a00, sitting between
// LH3DRender.cpp and LH3DWay.cpp in the binary -- see splits). It contains the
// GatheringText class, the private glyph-cache types below (FontFile,
// CacheEntry, CacheLine, CachePage, FontCache), and the CHAR2WCHAR/THAI_* free
// functions declared at the bottom of this header (the first functions in the
// TU, at 0x8300a0..0x8300e0). Their code is interleaved in the binary (e.g.
// FontCache::AddToCache at 0x831380 sits between GatheringText::GetStringWidth
// and GetFrac), which only happens within a single TU. The cache types are
// private to this TU (no other file references them); the TU ends with two
// empty trailing stubs (nullsub_114 @ 0x8339e0, nullsub_115 @ 0x8339f0).
// Declarations only: field layouts are unknown and return types are inferred
// from the demangled names -- confirm against the disassembly before relying on
// them.

struct FontFile
{
	// TODO(decomp): field layout unknown (fill from disassembly)

	// Non-virtual methods

	// BW1W120 008303c0 BW1M119 010c6630 (LHCombined Release)
	bool ReadFromFile(const char* filename);
};

#define FONT_CACHE_ENTRIES      2048
#define FONT_CACHE_PAGES        4
#define FONT_CACHE_LINES        4
#define FONT_CACHE_LINE_ENTRIES 16
#define FONT_CACHE_BITS_SIZE    0x8000

struct CacheEntry
{
	wchar_t Code;
	uint8_t field_0x2[6];
};
static_assert(sizeof(CacheEntry) == 0x8, "Data type is of wrong size");

struct CacheLine
{
	uint8_t     Width;
	uint8_t     Count;
	CacheEntry* Entries[FONT_CACHE_LINE_ENTRIES];

	// Non-virtual methods

	// BW1W120 inlined BW1M119 010a01b0 (LHCombined Release)
	void Clear()
	{
		for (int i = 0; i < Count; i++)
		{
			Entries[i]->Code = 0;
		}
		Width = 0;
		Count = 0;
	}
	// BW1W120 00830b80 BW1M119 010c5cc0 (LHCombined Release)
	void Rebuild();
};
static_assert(sizeof(CacheLine) == 0x44, "Data type is of wrong size");

struct CachePage
{
	uint8_t   field_0x0[0x18];
	CacheLine Lines[FONT_CACHE_LINES];

	// Non-virtual methods

	// BW1W120 00830210 BW1M119 010c7090 (LHCombined Release)
	void Init();
	// BW1W120 00830320 BW1M119 010c5480 (LHCombined Release)
	void Clear();
	// BW1W120 00830350 BW1M119 01034d30 (LHCombined Release)
	void Lock();
	// BW1W120 00830370 BW1M119 01034ed0 (LHCombined Release)
	void Unlock();
	// BW1W120 00830650 BW1M119 010c7000 (LHCombined Release)
	void Close();
	// BW1W120 00830c10 BW1M119 010c5590 (LHCombined Release)
	void RenderChar(CacheEntry* entry);
};
static_assert(sizeof(CachePage) == 0x128, "Data type is of wrong size");

struct FontCache
{
	// BW1W120 00eccd18 BW1M119 01332248 (LHCombined Release)
	static uint8_t cachetime;
	// BW1W120 00ecce20 BW1M119 01332b5c (LHCombined Release)
	static CacheEntry cache[FONT_CACHE_ENTRIES];
	// BW1W120 00ed0e20 BW1M119 0133224c (LHCombined Release)
	static CachePage page[FONT_CACHE_PAGES];
	// BW1W120 00ed12c0 BW1M119 01337b64 (LHCombined Release)
	static uint8_t bits[FONT_CACHE_BITS_SIZE];
	// BW1W120 00ed92c8 BW1M119 0133fc64 (LHCombined Release)
	static int cachedamage;

	// Static methods

	// BW1W120 inlined BW1M119 010a0050 (LHCombined Release)
	static void Reset()
	{
		int i;
		for (i = 0; i < FONT_CACHE_ENTRIES; i++)
		{
			cache[i].Code = 0;
		}
		for (i = 0; i < FONT_CACHE_PAGES; i++)
		{
			for (int j = 0; j < FONT_CACHE_LINES; j++)
			{
				page[i].Lines[j].Clear();
			}
		}
		memset(bits, 0, sizeof(bits));
		cachedamage = 0;
	}

	// Non-virtual methods

	// BW1W120 008306a0 BW1M119 010c63d0 (LHCombined Release)
	void Close();
	// BW1W120 00830750 BW1M119 010c6220 (LHCombined Release)
	void Init();
	// BW1W120 008307e0 BW1M119 010c5da0 (LHCombined Release)
	void AddToCacheWork(CacheEntry* entry);
	// BW1W120 00831380
	CacheEntry* AddToCache(char16_t param_1, uint8_t param_2);
	// BW1W120 00832bb0
	CacheEntry* Find(char16_t param_1, uint8_t param_2);
};

struct GatheringText
{
	// BW1W120 00eccd08
	static GatheringText* gamefont;
	uint8_t               field_0x0;

	// Non-virtual methods

	// BW1W120 00830f60 BW1M119 010c5220 (LHCombined Release)
	void SetupGameFonts();
	// BW1W120 008310d0 BW1M119 010c5150 (LHCombined Release)
	void CloseGameFonts();
	// BW1W120 00831130 BW1M119 01033370 (LHCombined Release)
	float GetStringWidth(char16_t* str, int len, float text_size);
	// BW1W120 00831550 BW1M119 010c5080 (LHCombined Release)
	static float GetFrac(float value, float lower, float upper);
	// BW1W120 008315b0 BW1M119 010c4970 (LHCombined Release)
	float DrawTextA(char16_t* text, float param_2, float param_3, float param_4, float param_5, float param_6,
	                float param_7, float param_8, float param_9, float param_10, LH3DColor* p_color, int param_12,
	                int param_13, int param_14);
	// BW1W120 008319e0 BW1M119 010c43c0 (LHCombined Release)
	void DrawChar2Texture(CacheEntry* param_1, uint16_t* param_2, int param_3, float param_4, float param_5,
	                      float param_6, float param_7, uint16_t* param_8);
	// BW1W120 00831df0 BW1M119 010c3e20 (LHCombined Release)
	void DrawText2Texture(uint16_t* param_1, int param_2, const char16_t* param_3, int param_4, float param_5,
	                      float param_6, float param_7, float param_8, uint16_t param_9);
	// BW1W120 00832c60 BW1M119 01030e80 (LHCombined Release)
	void DrawTextRaw(char16_t* text, int count, float x, float y, float z, float size, LH3DColor* color_top,
	                 int no_z_test, LH3DColor* color_bottom, float fade_top, float fade_bottom);
	// BW1W120 008321c0 BW1M119 010c31f0 (LHCombined Release)
	void DrawTextRawOriented(LHMatrix& param_1, int param_2, int param_3, const char16_t* param_4, int param_5,
	                         float param_6, float param_7, float param_8, float param_9, float param_10,
	                         LH3DColor* param_11, int param_12, LH3DColor* param_13);
	// BW1W120 00832c60 BW1M119 01030e80 (LHCombined Release)
	void DrawTextRaw(const char16_t* text, int param_2, float x, float y, float param_5, float param_6,
	                 LH3DColor* param_7, int param_8, LH3DColor* param_9, float param_10, float param_11);
	// BW1W120 008334c0 BW1M119 010c1fd0 (LHCombined Release)
	void DrawBubble(float param_1, float param_2, float param_3, float param_4, float param_5, float param_6,
	                float param_7, int param_8, uint32_t param_9, int param_10, int param_11, int param_12);
};

// Free functions at the head of this TU (originally declared in Utils.h).

// BW1W120 008300a0 BW1M119 0100f7a0 (LHCombined Release)
char16_t* __cdecl CHAR2WCHAR(const char* param_1);
// BW1W120 008300d0
void __cdecl THAI_RESET();
// BW1W120 008300e0 BW1M119 01030cd0 (LHCombined Release)
char16_t __cdecl THAI_PROCESS(char16_t param_1); /* return type inferred; confirm from disassembly */

#endif /* BW1_DECOMP_LH3D_TEXT_INCLUDED_H */
