#ifndef BW1_DECOMP_GATHERING_TEXT_INCLUDED_H
#define BW1_DECOMP_GATHERING_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t, uint16_t, uint32_t */
#include <uchar.h> /* For char16_t */

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

// The glyph-cache types below (FontFile, CacheEntry, CacheLine, CachePage,
// FontCache) are all defined inside GatheringText.cpp -- their functions are
// interleaved with GatheringText's in the binary (e.g. FontCache::AddToCache at
// 0x831380 sits between GatheringText::GetStringWidth and GetFrac), which only
// happens within a single translation unit. They are private to this TU (no
// other file references them). The TU spans 0x830050..0x833a00, ending with two
// empty trailing stubs (nullsub_114 @ 0x8339e0, nullsub_115 @ 0x8339f0).
// Declarations only: field layouts are unknown and return types are inferred
// from the demangled names -- confirm against the disassembly before relying on
// them.

struct FontFile
{
    // TODO(decomp): field layout unknown (fill from disassembly)

    // Non-virtual methods

    // BW1W120 008303c0 FontFile::ReadFromFile(char *)
    bool ReadFromFile(const char* filename);
};

struct CacheEntry
{
    // TODO(decomp): field layout unknown (fill from disassembly)
    uint8_t field_0x0;
};

struct CacheLine
{
    // TODO(decomp): field layout unknown (fill from disassembly)

    // Non-virtual methods

    // BW1W120 00830b80 CacheLine::Rebuild(void)
    void Rebuild();
};

struct CachePage
{
    // TODO(decomp): field layout unknown (fill from disassembly)

    // Non-virtual methods

    // BW1W120 00830210 CachePage::Init(void)
    void Init();
    // BW1W120 00830320 CachePage::Clear(void)
    void Clear();
    // BW1W120 00830350 CachePage::Lock(void)
    void Lock();
    // BW1W120 00830370 CachePage::Unlock(void)
    void Unlock();
    // BW1W120 00830650 CachePage::Close(void)
    void Close();
    // BW1W120 00830c10 CachePage::RenderChar(CacheEntry *)
    void RenderChar(CacheEntry* entry);
};

struct FontCache
{
    // TODO(decomp): field layout unknown (fill from disassembly)

    // Non-virtual methods

    // BW1W120 008306a0 FontCache::Close(void)
    void Close();
    // BW1W120 00830750 FontCache::Init(void)
    void Init();
    // BW1W120 008307e0 FontCache::AddToCacheWork(CacheEntry *)
    void AddToCacheWork(CacheEntry* entry);
    // BW1W120 00831380 FontCache::AddToCache(wchar_t, uchar)
    CacheEntry* AddToCache(char16_t param_1, uint8_t param_2);
    // BW1W120 00832bb0 FontCache::Find(wchar_t, uchar)
    CacheEntry* Find(char16_t param_1, uint8_t param_2);
};

struct GatheringText
{
    uint8_t field_0x0;

    // Non-virtual methods

    // BW1W120 00830f60 GatheringText::SetupGameFonts(void)
    void SetupGameFonts();
    // BW1W120 008310d0 GatheringText::CloseGameFonts(void)
    void CloseGameFonts();
    // BW1W120 00831130 BW1M100 00033360 GatheringText::GetStringWidth(wchar_t *, int, float)
    float GetStringWidth(const char16_t* str, int len, float text_size);
    // BW1W120 00831550 GatheringText::GetFrac(float, float, float)
    static float GetFrac(float value, float lower, float upper);
    // BW1W120 008315b0 BW1M100 1061ca0c GatheringText::DrawText(wchar_t *, float, float, float, float, float, float, float, float, float, LH3DColor *, int, int, int)
    float DrawText(const char16_t* text, float param_2, float param_3, float param_4, float param_5, float param_6, float param_7, float param_8, float param_9, float param_10, const LH3DColor* p_color, int param_12, int param_13, int param_14);
    // BW1W120 008319e0 GatheringText::DrawChar2Texture(CacheEntry *, ushort *, int, float, float, float, float, ushort *)
    void DrawChar2Texture(CacheEntry* param_1, uint16_t* param_2, int param_3, float param_4, float param_5, float param_6, float param_7, uint16_t* param_8);
    // BW1W120 00831df0 GatheringText::DrawText2Texture(ushort *, int, wchar_t *, int, float, float, float, float, ushort)
    void DrawText2Texture(uint16_t* param_1, int param_2, const char16_t* param_3, int param_4, float param_5, float param_6, float param_7, float param_8, uint16_t param_9);
    // BW1W120 008321c0 GatheringText::DrawTextRawOriented(LHMatrix &, int, int, wchar_t *, int, float, float, float, float, float, LH3DColor *, int, LH3DColor *)
    void DrawTextRawOriented(LHMatrix& param_1, int param_2, int param_3, const char16_t* param_4, int param_5, float param_6, float param_7, float param_8, float param_9, float param_10, LH3DColor* param_11, int param_12, LH3DColor* param_13);
    // BW1W120 00832c60 BW1M100 10be2db8 GatheringText::DrawTextRaw(wchar_t *, int, float, float, float, float, LH3DColor *, int, LH3DColor *, float, float)
    void DrawTextRaw(const char16_t* text, int param_2, float x, float y, float param_5, float param_6, LH3DColor* param_7, int param_8, LH3DColor* param_9, float param_10, float param_11);
    // BW1W120 008334c0 GatheringText::DrawBubble(float, float, float, float, float, float, float, int, ulong, int, int, int)
    void DrawBubble(float param_1, float param_2, float param_3, float param_4, float param_5, float param_6, float param_7, int param_8, uint32_t param_9, int param_10, int param_11, int param_12);
};

#endif /* BW1_DECOMP_GATHERING_TEXT_INCLUDED_H */
