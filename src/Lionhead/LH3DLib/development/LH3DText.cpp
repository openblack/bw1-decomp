#include "LH3DText.h"

#define WIN32_LEAN_AND_MEAN
#define NOGDI
#define NOUSER
#include <windows.h>

#include <stdio.h>  /* For sprintf */
#include <stdlib.h> /* For rand */
#include <string.h> /* For memmove, memset, strcat, strcpy */
#include <wchar.h>  /* For wcslen */

#include "LH3DAtmos.h"  /* For LH3DAtmos */
#include "LH3DRender.h" /* For LH3DRender */
#include "LH3DTech.h"   /* For LH3DTech */
#include "LHCoord.h"    /* For LHCoord */
#include "LHPoint.h"    /* For LHPoint */

#include <Lionhead/LHFile/ver3.0/LHReleasedOSFile.h> /* For class LHReleasedOSFile */

#define FONT_PAGE_SIZE            256
#define FONT_CACHE_LINE_WIDTH     FONT_PAGE_SIZE
#define FONT_CACHE_LINE_HEIGHT    (FONT_PAGE_SIZE / FONT_CACHE_LINES)
#define FONT_CACHE_EXPIRE_TIME    4
#define FONT_CACHE_DAMAGE_PENALTY 1000
#define FONT_CHAR_ROWS            40
#define FONT_CHAR_MIP_ROWS        (FONT_CHAR_ROWS / 2)
#define FONT_CHAR_BORDER_PIXELS   2
#define FONT_ALPHA_REFERENCE      5
#define FONT_PIXEL_BYTES          2

#define FONT_PIXEL_ALPHA_MASK   0xf000
#define FONT_PIXEL_RED_MASK     0x0f00
#define FONT_PIXEL_GREEN_MASK   0x00f0
#define FONT_PIXEL_BLUE_MASK    0x000f
#define FONT_PIXEL_RGB_MASK     (FONT_PIXEL_RED_MASK | FONT_PIXEL_GREEN_MASK | FONT_PIXEL_BLUE_MASK)
#define FONT_PIXEL_WHITE        FONT_PIXEL_RGB_MASK
#define FONT_ALPHA_QUARTER_MASK (FONT_PIXEL_ALPHA_MASK >> 2)

#define FONT_CODE_INVALID            0xffff
#define FONT_CHAR_NON_BREAKING_SPACE 0xf8fe
#define FONT_RLE_LONG_RUN            255

#define THAI_RANGE_FIRST        0x0e00
#define THAI_RANGE_LAST         0x0e50
#define THAI_BASE_LAST          0x0e30
#define THAI_PO_PLA             0x0e1b
#define THAI_FO_FA              0x0e1d
#define THAI_FO_FAN             0x0e1f
#define THAI_LO_CHULA           0x0e2c
#define THAI_MAI_HAN_AKAT       0x0e31
#define THAI_SARA_I             0x0e34
#define THAI_SARA_II            0x0e35
#define THAI_SARA_UE            0x0e36
#define THAI_SARA_UEE           0x0e37
#define THAI_MAITAIKHU          0x0e47
#define THAI_MAI_EK             0x0e48
#define THAI_THANTHAKHAT        0x0e4c
#define THAI_NIKHAHIT           0x0e4d
#define THAI_SARA_I_TALL        0xf701
#define THAI_MAI_EK_AFTER_TALL  0xf705
#define THAI_MAI_HAN_AKAT_TALL  0xf710
#define THAI_NIKHAHIT_TALL      0xf711
#define THAI_MAITAIKHU_TALL     0xf712
#define THAI_MAI_EK_AFTER_VOWEL 0xf713

#define FONT_WIDTH_DIVISOR   80.0f
#define FONT_SMALL_SIZE      26.0f
#define FONT_SMALL_SCALE     0.5f
#define FONT_FIXED_ONE       65536.0f
#define FONT_BLEND_LEVELS    16
#define FONT_BLEND_LEVEL_MAX (FONT_BLEND_LEVELS - 1)
#define FONT_BYTE_VALUES     256

#define FONT_VERTICES_PER_CHAR    4
#define FONT_INDICES_PER_CHAR     6
#define FONT_INDICES_PER_TRIANGLE 3
#define FONT_QUAD_MARGIN          1.0f
#define FONT_GLYPH_MARGIN         2
#define FONT_NEAR_CLIP_MARGIN     0.5f
#define FONT_TEXTURE_HALF_TEXEL   (0.5f / FONT_PAGE_SIZE)
#define FONT_LINE_V               (1.0f / FONT_CACHE_LINES)
#define FONT_SMALL_V_OFFSET       (FONT_CHAR_ROWS / (float)FONT_PAGE_SIZE)
#define FONT_GLYPH_HEIGHT_V       ((FONT_CHAR_ROWS - 1) / (float)FONT_PAGE_SIZE)

#define DRAW_TEXT_MIN_WIDTH_SCALE 0.5f
#define DRAW_TEXT_SCAN_STEP       4

#define BUBBLE_GRID_SIZE      4
#define BUBBLE_GRID_VERTICES  (BUBBLE_GRID_SIZE * BUBBLE_GRID_SIZE)
#define BUBBLE_TAIL_VERTICES  4
#define BUBBLE_VERTICES       (BUBBLE_GRID_VERTICES + BUBBLE_TAIL_VERTICES)
#define BUBBLE_GRID_TRIANGLES 18
#define BUBBLE_TAIL_TRIANGLES 2
#define BUBBLE_TEXTURE_CELL   0.25f
#define BUBBLE_TAIL_TOP_V     0.3f
#define BUBBLE_TAIL_MARGIN    1.8f
#define BUBBLE_TAIL_TIP_LEFT  0.15f
#define BUBBLE_TAIL_TIP_RIGHT 0.85f
#define BUBBLE_TAIL_OVERLAP   0.091f
#define BUBBLE_ALPHA_SCALE    (1.0f / LH3D_COLOR_CHANNEL_MAX)

uint8_t        FontCache::bits[FONT_CACHE_BITS_SIZE];
CachePage      FontCache::page[FONT_CACHE_PAGES];
CacheEntry     FontCache::cache[FONT_CACHE_ENTRIES];
uint8_t        HASHTABLE[FONT_CACHE_HASH_SIZE];
uint8_t        FontCache::cachetime;
GatheringText* GatheringText::gamefont[GAME_FONT_LAST];
int            FontCache::overhang_bottom = 0;
int            FontCache::overhang_top = 0;
int            FontCache::cachedamage = 0;

// BW1W120 00edc334 BW1M119 013453dc (LHCombined Release)
extern int v_max[LH3D_ATMOS_BUFFER_COUNT];

bool32_t thai_tall = false;
bool32_t thai_vowel = false;

static char* gamefont_names[GAME_FONT_LAST] = {"data\\j0", "data\\f1", "data\\fneutral", "data\\f3"};

static const uint16_t font_alpha[5] = {0x0fff, 0x4fff, 0x8fff, 0xcfff, 0xffff};

static const long bubble_indices[(BUBBLE_GRID_TRIANGLES + BUBBLE_TAIL_TRIANGLES) * 3] = {
	0,  1,  5,  5,  4,  0,  //
	1,  2,  6,  6,  5,  1,  //
	2,  3,  7,  7,  6,  2,  //
	4,  5,  9,  9,  8,  4,  //
	5,  6,  10, 10, 9,  5,  //
	6,  7,  11, 11, 10, 6,  //
	8,  9,  13, 13, 12, 8,  //
	9,  10, 14, 14, 13, 9,  //
	10, 11, 15, 15, 14, 10, //
	16, 17, 19, 19, 18, 16, //
};

inline void CachePage::Clear()
{
	for (int i = 0; i < FONT_CACHE_LINES; i++)
	{
		Lines[i].Clear();
	}
}

inline GatheringText::GatheringText(int font)
{
	Font = font;
	numgt++;
}

inline GatheringText::~GatheringText()
{
	numgt--;
}

inline void FontCache::ClearInCache(uint8_t font, uint16_t code)
{
	bits[font * FONT_CACHE_BITS_STRIDE + (code >> 3)] &= ~(1 << (code & 7));
}

inline void FontCache::SetInCache(uint8_t font, uint16_t code)
{
	bits[font * FONT_CACHE_BITS_STRIDE + (code >> 3)] |= 1 << (code & 7);
}

inline uint8_t FontCache::IsInCache(uint8_t font, uint16_t code)
{
	return bits[font * FONT_CACHE_BITS_STRIDE + (code >> 3)] & (1 << (code & 7));
}

inline int FontCache::HASH(wchar_t code, uint8_t font)
{
	__asm
	{
		xor eax, eax
		xor ebx, ebx
		xor ecx, ecx
		mov ax, code
		mov bx, ax
		rol ax, 5
		mov cl, font
		xor bx, ax
		xor bl, cl
		not ax
		rol bx, 3
		xor ax, bx
		mov bx, ax
		shr ax, 11
		not bx
		xor ax, bx
		and ax, FONT_CACHE_ENTRIES - 1
		movzx ebx, al
		mov al, HASHTABLE[ebx]
	}
}

wchar_t* CHAR2WCHAR(const char* string)
{
	static wchar_t wbuffer[2048];
	wbuffer[MultiByteToWideChar(CP_ACP, MB_PRECOMPOSED, string, -1, wbuffer, ARRAY_SIZE(wbuffer) - 1)] = L'\0';
	return wbuffer;
}

FontFile FontCache::font[GAME_FONT_LAST];

void THAI_RESET()
{
	thai_vowel = false;
	thai_tall = false;
}

wchar_t THAI_PROCESS(wchar_t c)
{
	if (c < THAI_RANGE_FIRST || c > THAI_RANGE_LAST)
	{
		thai_vowel = false;
		thai_tall = false;
		return c;
	}
	if (c >= THAI_RANGE_FIRST && c <= THAI_BASE_LAST)
	{
		if (c == THAI_PO_PLA || c == THAI_FO_FA || c == THAI_FO_FAN || c == THAI_LO_CHULA)
		{
			thai_tall = true;
			return c;
		}
		thai_tall = false;
		return c;
	}
	if (c >= THAI_MAI_HAN_AKAT && c <= THAI_MAITAIKHU)
	{
		if (c == THAI_MAI_HAN_AKAT || c == THAI_SARA_I || c == THAI_SARA_II || c == THAI_SARA_UE ||
		    c == THAI_SARA_UEE || c == THAI_MAITAIKHU)
			thai_vowel = true;
		else
			thai_vowel = false;
		if (thai_tall)
		{
			if (c == THAI_MAI_HAN_AKAT)
				c = THAI_MAI_HAN_AKAT_TALL;
			else if (c == THAI_NIKHAHIT)
				c = THAI_NIKHAHIT_TALL;
			else if (c == THAI_MAITAIKHU)
				c = THAI_MAITAIKHU_TALL;
			else if (c >= THAI_SARA_I && c < THAI_SARA_UEE)
				c += THAI_SARA_I_TALL - THAI_SARA_I;
		}
		return c;
	}
	if (c >= THAI_MAI_EK && c <= THAI_THANTHAKHAT)
	{
		if (thai_vowel)
		{
			c += THAI_MAI_EK_AFTER_VOWEL - THAI_MAI_EK;
			thai_tall = false;
			thai_vowel = false;
		}
		else
		{
			if (thai_tall)
				c += THAI_MAI_EK_AFTER_TALL - THAI_MAI_EK;
			thai_tall = false;
			thai_vowel = false;
		}
		return c;
	}
	thai_vowel = false;
	thai_tall = false;
	return c;
}

void CachePage::Init()
{
	TextureFormat format;
	format.Type = LH3D_TEXTURE_FORMAT_ALWAYS_256X256_4444;
	if (!LH3DTexture::g_b_use_low_res)
		format.Type = LH3D_TEXTURE_FORMAT_4444;
	LH3DTexture* texture = LH3DTexture::Create(NULL, LH3D_TEXTURE_TYPE_SYSTEM_MEMORY | LH3D_TEXTURE_FLAGS_ALPHA,
	                                           LH3D_TEXTURE_ID_NONE, &format);
	Material = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_TEXTURED_CHROMA_ALPHA_NZ, texture);
	Material->AlphaReference = FONT_ALPHA_REFERENCE;
	Material->Flags |= LH3DMaterial::FLAG_NEED_TILLING;
	Material->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
	LH3DSurfDesc desc;
	texture->Lock(&desc);
	if (desc.Surface)
	{
		for (int y = 0; y < desc.Height; y++)
		{
			memset(desc.Surface, 0, desc.Width * FONT_PIXEL_BYTES);
			desc.Surface = (uint16_t*)desc.Surface + desc.Pitch / FONT_PIXEL_BYTES;
		}
	}
	texture->Unlock();
	if (texture->GetType() == LH3D_TEXTURE_TYPE_NAMED || texture->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
		texture->ReloadPending = true;
	memset(Lines, 0, sizeof(Lines));
	Clear();
	Locked = false;
}

void CachePage::Close()
{
	if (Locked)
		Unlock();
	if (Material)
	{
		Material->texture->Release();
		Material->texture = NULL;
	}
	Material = NULL;
}

void CachePage::Lock()
{
	if (!Locked)
	{
		Material->texture->Lock(&Desc);
		Locked = true;
	}
}

void CachePage::Unlock()
{
	if (Locked)
	{
		Material->texture->Unlock();
		if (Damaged)
		{
			LH3DTexture* texture = Material->texture;
			if (texture->GetType() == LH3D_TEXTURE_TYPE_NAMED || texture->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
				texture->ReloadPending = true;
		}
		Locked = false;
		Damaged = false;
	}
}

void FontFile::ReadFromFile(char* filename)
{
	char path[256];
	strcpy(path, filename);
	strcat(path, ".met");
	delete Chars;
	Chars = NULL;
	if (File)
	{
		File->Close();
		delete File;
		File = NULL;
	}
	LHReleasedOSFile file;
	if (file.Open(path, LH_FILE_READ_ONLY) == LH_FILE_RESULT_OK)
	{
		file.Read(&Height, sizeof(Height), NULL);
		file.Read(Unused, sizeof(Unused), NULL);
		file.Read(&NumChars, sizeof(NumChars), NULL);
		Chars = new FontChar[NumChars];
		file.Read(Chars, NumChars * sizeof(FontChar), NULL);
		file.Close();
		for (int i = 0; i < NumChars; i++)
		{
			if (Chars[i].Code == ' ')
				Space = Chars[i].Spacing;
		}
	}
	strcpy(path, filename);
	strcat(path, ".fnt");
	File = new LHReleasedOSFile;
	if (File->Open(path, LH_FILE_READ_ONLY) != LH_FILE_RESULT_OK)
	{
		delete File;
		File = NULL;
	}
}

void FontFile::Close()
{
	delete Chars;
	Chars = NULL;
	if (File)
	{
		File->Close();
		delete File;
		File = NULL;
	}
}

void FontCache::Close()
{
	int i;
	Reset();
	for (i = 0; i < FONT_CACHE_PAGES; i++)
		page[i].Close();
	for (i = 0; i < GAME_FONT_LAST; i++)
		font[i].Close();
}

void FontCache::Init()
{
	int i;
	for (i = 0; i < FONT_CACHE_HASH_SIZE; i++)
		HASHTABLE[i] = i;
	for (i = 0; i < FONT_CACHE_HASH_SIZE - 1; i++)
	{
		int r = rand() % (FONT_CACHE_HASH_SIZE - i);
		int t = HASHTABLE[i];
		HASHTABLE[i] = HASHTABLE[r];
		HASHTABLE[r] = t;
	}
	cachetime = 0;
	for (i = 0; i < FONT_CACHE_PAGES; i++)
		page[i].Init();
	for (i = 0; i < GAME_FONT_LAST; i++)
	{
		font[i].Chars = NULL;
		font[i].File = NULL;
		font[i].NumChars = 0;
	}
}

int FontCache::AddToCacheWork(CacheEntry* entry)
{
	static int curline = 0;
	wchar_t    code = entry->Code;
	if (code == 0 || code == FONT_CODE_INVALID)
		return -1;
	int fontIndex = entry->Font;
	int index = -1;
	int high = font[fontIndex].NumChars - 1;
	int low = 0;
	while (high >= low)
	{
		int mid = (low + high) / 2;
		int diff = font[fontIndex].Chars[mid].Code - code;
		if (diff == 0)
		{
			index = mid;
			break;
		}
		if (diff < 0)
			low = mid + 1;
		else
			high = mid - 1;
	}
	if (index < 0)
		return -1;
	entry->Index = index;
	static uint32_t curpage = 0;
	int             cellWidth = font[fontIndex].Chars[index].Width / 2 + FONT_CHAR_BORDER_PIXELS;
	CacheLine*      line;
	int             linesTried;
	int             linesChecked;
	int             pagesTried;
	int             slot;
	int             pagesChecked;
	int             pass;
	CachePage*      cachePage;
	for (pagesTried = 0; pagesTried < FONT_CACHE_PAGES; pagesTried++)
	{
		cachePage = &page[curpage];
		for (linesTried = 0; linesTried < FONT_CACHE_LINES; linesTried++)
		{
			line = &cachePage->Lines[curline];
			if (line->Count < FONT_CACHE_LINE_ENTRIES && line->Width < FONT_CACHE_LINE_WIDTH - cellWidth)
				goto found;
			curline = (curline + 1) % FONT_CACHE_LINES;
		}
		curpage = (curpage + 1) % FONT_CACHE_PAGES;
	}
	for (pass = 0; pass < FONT_CACHE_PAGES; pass++)
	{
		curline = (curline + 1) % FONT_CACHE_LINES;
		curpage = (curpage + 1) % FONT_CACHE_PAGES;
		for (pagesChecked = 0; pagesChecked < FONT_CACHE_PAGES;
		     pagesChecked++, curpage = (curpage + 1) % FONT_CACHE_PAGES)
		{
			for (linesChecked = 0; linesChecked < FONT_CACHE_LINES;
			     linesChecked++, curline = (curline + 1) % FONT_CACHE_LINES)
			{
				line = &page[curpage].Lines[curline];
				bool32_t freed = false;
				for (slot = 0; slot < line->Count; slot++)
				{
					uint8_t age = cachetime - line->Entries[slot]->LastUsed;
					if (age >= FONT_CACHE_EXPIRE_TIME)
					{
						cachedamage++;
						ClearInCache(line->Entries[slot]->Font, line->Entries[slot]->Code);
						line->Entries[slot]->Code = 0;
						line->Count--;
						memmove(&line->Entries[slot], &line->Entries[slot + 1],
						        (line->Count - slot) * sizeof(CacheEntry*));
						freed = true;
						if (line->Count < FONT_CACHE_LINE_ENTRIES && line->Width < FONT_CACHE_LINE_WIDTH - cellWidth)
							goto rebuild;
					}
				}
				if (freed)
				{
					line->Rebuild();
					if (line->Count < FONT_CACHE_LINE_ENTRIES && line->Width < FONT_CACHE_LINE_WIDTH - cellWidth)
						goto found;
				}
			}
		}
		cachetime++;
		cachedamage += FONT_CACHE_DAMAGE_PENALTY;
	}
	return -1;
rebuild:
	line->Rebuild();
found:
	entry->Page = curpage;
	entry->Line = curline;
	entry->X = line->Width;
	line->Entries[line->Count] = entry;
	line->Count++;
	line->Width += cellWidth;
	if (entry->Code != 0)
		page[entry->Page].RenderChar(entry);
	return 0;
}

void CacheLine::Rebuild()
{
	int x = 0;
	for (int i = 0; i < Count; i++)
	{
		Entries[i]->X = x;
		x += FontCache::font[Entries[i]->Font].Chars[Entries[i]->Index].Width / 2 + FONT_CHAR_BORDER_PIXELS;
		if (Entries[i]->Code != 0)
			FontCache::page[Entries[i]->Page].RenderChar(Entries[i]);
	}
	Width = x;
}

void CachePage::RenderChar(CacheEntry* entry)
{
	FontFile* file = &FontCache::font[entry->Font];
	if (!file->File)
		return;
	FontChar* character = &file->Chars[entry->Index];
	int       width = character->Width;
	int       pixelCount = file->Height * width;
	uint16_t* bitmapBuffer = new uint16_t[pixelCount + width * 2];
	uint16_t* rleBuffer = new uint16_t[character->Size];
	uint8_t*  source = (uint8_t*)rleBuffer;
	file->File->Seek(character->Offset, LH_SEEK_BEGIN, NULL);
	file->File->Read(rleBuffer, character->Size, NULL);
	uint8_t* bitmap = (uint8_t*)bitmapBuffer;
	int      count = 0;
	int      value = 0;
	while (count < pixelCount)
	{
		int run = *source++;
		if (run == FONT_RLE_LONG_RUN)
		{
			run = *(uint16_t*)source;
			source += 2;
		}
		if (count + run > pixelCount)
			run = pixelCount - count;
		count += run;
		if (run)
		{
			memset(bitmap, value, run);
			bitmap += run;
		}
		value = !value;
	}
	if (width * 2 > 0)
		memset(bitmap, 0, width * 2);
	LH3DTexture* texture = Material->texture;
	if (!Locked)
		texture->Lock(&Desc);
	if (Desc.Surface)
	{
		uint16_t* dest =
			(uint16_t*)Desc.Surface + entry->Line * (Desc.Pitch / FONT_PIXEL_BYTES) * FONT_CACHE_LINE_HEIGHT + entry->X;
		bitmap = (uint8_t*)bitmapBuffer;
		int skip = Desc.Pitch / FONT_PIXEL_BYTES - width / 2 - FONT_CHAR_BORDER_PIXELS;
		int row;
		int x;
		for (row = 0; row < FONT_CHAR_ROWS; row++)
		{
			*dest++ = FONT_PIXEL_WHITE;
			for (x = 0; x < width; x += 2)
			{
				*dest++ = font_alpha[bitmap[1] + bitmap[width + 1] + bitmap[0] + bitmap[width]];
				bitmap += 2;
			}
			*dest++ = FONT_PIXEL_WHITE;
			dest += skip;
			bitmap += width;
		}
		int       mipPitch = Desc.Pitch / FONT_PIXEL_BYTES;
		int       mipWidth = (width + 3) / 4;
		int       mipSkip = mipPitch - mipWidth;
		int       sourceSkip = mipPitch - mipWidth;
		uint16_t* mip = dest - mipPitch * FONT_CHAR_ROWS + 1;
		for (row = 0; row < FONT_CHAR_MIP_ROWS; row++)
		{
			*dest++ = FONT_PIXEL_WHITE;
			for (x = 0; x < mipWidth; x++)
			{
				*dest++ = (((mip[mipPitch] >> 2) & FONT_ALPHA_QUARTER_MASK) +
				           ((mip[mipPitch + 1] >> 2) & FONT_ALPHA_QUARTER_MASK) +
				           ((mip[1] >> 2) & FONT_ALPHA_QUARTER_MASK) + ((mip[0] >> 2) & FONT_ALPHA_QUARTER_MASK)) |
				          FONT_PIXEL_WHITE;
				mip += 2;
			}
			*dest++ = FONT_PIXEL_WHITE;
			dest += mipSkip - FONT_CHAR_BORDER_PIXELS;
			mip += mipSkip + sourceSkip;
		}
	}
	if (!Locked)
	{
		texture->Unlock();
		if (texture->GetType() == LH3D_TEXTURE_TYPE_NAMED || texture->GetType() == LH3D_TEXTURE_TYPE_SYSTEM_MEMORY)
			texture->ReloadPending = true;
	}
	else
	{
		Damaged = true;
	}
	delete rleBuffer;
	delete bitmapBuffer;
}

LH3DMaterial* GatheringText::bubmat = NULL;
LH3DTexture*  GatheringText::bubtex = NULL;
int           GatheringText::numgt = 0;

void GatheringText::SetupGameFonts()
{
	char path[256];
	CloseGameFonts();
	FontCache::Init();
	for (int i = 0; i < GAME_FONT_LAST; i++)
	{
		sprintf(path, "%s.met", gamefont_names[i]);
		if (LHOSFile::Exists(path) == LH_FILE_RESULT_OK)
		{
			char* name = gamefont_names[i];
			FontCache::font[i].ReadFromFile(name);
			if (gamefont[i])
				delete gamefont[i];
			gamefont[i] = new GatheringText(name ? i : 0);
		}
		else
		{
			gamefont[i] = NULL;
		}
	}
	FontCache::Reset();
	if (!bubmat || !bubtex)
	{
		bubtex = LH3DTexture::Create("data/textures/gatheringtext.raw",
		                             LH3D_TEXTURE_TYPE_FILE | LH3D_TEXTURE_FLAGS_ALPHA, 0, NULL);
		bubmat = LH3DRender::CreateMaterial(LH3DMaterial::LH3D_MATERIAL_RENDER_MODE_ALPHA_TEXTURED_ALPHA_NZ, bubtex);
		bubmat->Flags |= LH3DMaterial::FLAG_DOUBLE_SIDED;
	}
}

void GatheringText::CloseGameFonts()
{
	FontCache::Close();
	for (int i = 0; i < GAME_FONT_LAST; i++)
	{
		if (gamefont[i])
			delete gamefont[i];
	}
	if (bubmat)
		bubmat->Release();
	if (bubtex)
		bubtex->Release();
	bubmat = NULL;
	bubtex = NULL;
}

float GatheringText::GetStringWidth(wchar_t* str, int len, float text_size)
{
	if (len <= 0)
		return 0.0f;
	text_size += (int)(FontCache::overhang_top * text_size / FONT_CHAR_ROWS);
	float width = 0.0f;
	THAI_RESET();
	for (; len > 0; len--, str++)
	{
		wchar_t ch = THAI_PROCESS(*str);
		if (ch == FONT_CHAR_NON_BREAKING_SPACE)
			continue;
		CacheEntry* entry = FontCache::AddToCache(ch, Font);
		if (entry)
		{
			FontChar* character = &FontCache::font[entry->Font].Chars[entry->Index];
			width += character->Spacing.LeftBearing + character->Spacing.Width + character->Spacing.RightBearing;
		}
	}
	return width * text_size / FONT_WIDTH_DIVISOR;
}

inline CacheEntry* FontCache::AddToCache(wchar_t code, uint8_t font)
{
	CacheEntry* entry = &cache[HASH(code, font)];
	if (IsInCache(font, code))
	{
		return Find(code, font);
	}
	SetInCache(font, code);
	for (int i = 0; i < FONT_CACHE_ENTRIES; i++)
	{
		if (entry->Code == code && entry->Font == font)
		{
			entry->LastUsed = cachetime;
			return entry;
		}
		if (entry->Code == 0)
		{
			entry->Code = code;
			entry->Font = font;
			if (AddToCacheWork(entry) != 0)
			{
				entry->Code = 0;
				ClearInCache(font, code);
				if (code == '?')
				{
					return NULL;
				}
				return AddToCache('?', font);
			}
			entry->LastUsed = cachetime;
			return entry;
		}
		entry++;
		if (entry >= &cache[FONT_CACHE_ENTRIES])
		{
			entry = cache;
		}
	}
	return NULL;
}

float GatheringText::GetFrac(float value, float lower, float upper)
{
	if (value <= lower)
	{
		return 0.0f;
	}
	if (value >= upper)
	{
		return 1.0f;
	}
	if (upper == lower)
	{
		return 0.5f;
	}
	return (value - lower) / (upper - lower);
}

float GatheringText::DrawTextA(wchar_t* text, float x_min, float y_min, float fade_top, float x_max, float fade_bottom,
                               float y_max, float y, float z, float size, LH3DColor* color, bool32_t centred,
                               bool32_t draw, bool32_t z_test)
{
	if (draw)
	{
		if (x_max - x_min < size * DRAW_TEXT_MIN_WIDTH_SCALE)
		{
			return 0.0f;
		}
		if (y_max - y_min < size)
		{
			return 0.0f;
		}
		if (y > y_max)
		{
			return 0.0f;
		}
	}
	float start_y = y;
	float box_width = x_max - x_min;
	x_max -= x_min;
	while (*text != 0)
	{
		float    line_width = 0.0f;
		int      count = 0;
		wchar_t* cursor = text;
		while (*cursor != 0 && line_width <= x_max)
		{
			wchar_t c = *cursor;
			for (int step = 0; step < DRAW_TEXT_SCAN_STEP; step++)
			{
				if (c == '\r' || c == '\n')
				{
					count++;
					break;
				}
				c = *++cursor;
				count++;
				if (c == 0)
				{
					break;
				}
			}
			line_width = GetStringWidth(text, count, size);
		}
		wchar_t* end = text + count;
		for (;;)
		{
		wrap:
			if (line_width <= x_max)
			{
				break;
			}
			wchar_t* split = &text[count - 1];
			while (!iswspace(*split) && *split != FONT_CHAR_NON_BREAKING_SPACE && split > text)
			{
				split--;
				if (*split == '-')
				{
					break;
				}
			}
			if (*split == '-')
			{
				end = split + 1;
				count = split - text + 1;
			}
			else if (iswspace(*split) || *split == FONT_CHAR_NON_BREAKING_SPACE)
			{
				end = split + 1;
				while ((iswspace(*split) || *split == FONT_CHAR_NON_BREAKING_SPACE) && split > text)
				{
					split--;
				}
				count = split - text + 1;
			}
			else
			{
				count--;
				end = text + count;
			}
			line_width = GetStringWidth(text, count, size);
			if (*text == 0 || count == 0)
			{
				break;
			}
			if (count < 0)
			{
				goto wrap;
			}
		}
		if (*text != 0 && count != 0)
		{
			for (wchar_t* newline = text; newline < end; newline++)
			{
				if (*newline == '\r' || *newline == '\n')
				{
					int length = newline - text;
					if (length < count)
					{
						count = length;
					}
					end = newline + 1;
					break;
				}
			}
			line_width = GetStringWidth(text, count, size);
			if (draw && color && y + size > y_min)
			{
				LH3DColor color_top = *color;
				LH3DColor color_bottom = *color;
				if (y < fade_top)
				{
					color_top.a = (uint8_t)(GetFrac(y, y_min, fade_top) * color_top.a);
				}
				if (y > fade_bottom)
				{
					color_top.a = (uint8_t)((1.0f - GetFrac(y, fade_bottom, y_max)) * color_top.a);
				}
				y += size;
				if (y < fade_top)
				{
					color_bottom.a = (uint8_t)(GetFrac(y, y_min, fade_top) * color_bottom.a);
				}
				if (y > fade_bottom)
				{
					color_bottom.a = (uint8_t)((1.0f - GetFrac(y, fade_bottom, y_max)) * color_bottom.a);
				}
				if (centred)
				{
					DrawTextRaw(text, count, x_min + (box_width - line_width) * 0.5f, y - size, z, size, &color_top,
					            z_test, &color_bottom, y_min, y_max);
				}
				else
				{
					DrawTextRaw(text, count, x_min, y - size, z, size, &color_top, z_test, &color_bottom, y_min, y_max);
				}
			}
			else
			{
				y += size;
			}
			if (y > y_max && draw)
			{
				break;
			}
		}
		wchar_t* previous = text;
		text = end;
		if (text <= previous && *text != 0)
		{
			break;
		}
		if (y > y_max && draw)
		{
			break;
		}
	}
	return y - start_y;
}

void GatheringText::DrawChar2Texture(CacheEntry* entry, uint16_t* buffer, int stride, float x, float y, float scale,
                                     float size, uint16_t* colours)
{
	static bool32_t build_table = true;
	static uint8_t  blend[FONT_BLEND_LEVELS][FONT_BYTE_VALUES];
	bool32_t        half_size = true;
	if (size >= FONT_SMALL_SIZE)
		half_size = false;
	int alpha = ((colours[0] >> 8) & 0xf0) / FONT_BLEND_LEVEL_MAX;
	if (build_table)
	{
		build_table = false;
		for (int i = 0; i < FONT_BLEND_LEVELS; i++)
		{
			for (int j = 0; j < FONT_BYTE_VALUES; j++)
			{
				blend[FONT_BLEND_LEVEL_MAX - i][j] = ((((j & 0xf0) * i) >> 4) & 0xf0) | ((((j & 0xf) * i) >> 4) & 0xf);
			}
		}
	}
	FontChar* character = &FontCache::font[entry->Font].Chars[entry->Index];
	uint16_t* surface = (uint16_t*)FontCache::page[entry->Page].Desc.Surface;
	if (!surface)
		return;
	int pitch = FontCache::page[entry->Page].Desc.Pitch / FONT_PIXEL_BYTES;
	int x0 = (int)x;
	int x1 = (int)(character->Width * scale + x);
	int y0 = (int)y;
	int y1 = (int)(y + size);
	if (x1 <= x0 || y1 <= y0)
		return;
	float cell_width = character->Width * 0.5f;
	int   u0 = entry->X;
	float cell_height = FONT_CHAR_ROWS;
	int   v0 = (int)(entry->Line * (float)FONT_CACHE_LINE_HEIGHT);
	if (half_size)
	{
		cell_width *= 0.5f;
		cell_height = FONT_CHAR_MIP_ROWS;
		v0 += FONT_CHAR_ROWS;
	}
	float u_step = cell_width / (float)(x1 - x0);
	float v_step = cell_height / (float)(y1 - y0);
	if (x0 < 0)
	{
		u0 = (int)(u0 - x0 * u_step);
		x0 = 0;
	}
	if (x1 > FONT_PAGE_SIZE)
		x1 = FONT_PAGE_SIZE;
	if (y0 < 0)
	{
		v0 = (int)(v0 - y0 * v_step);
		y0 = 0;
	}
	if (y1 > FONT_PAGE_SIZE)
		y1 = FONT_PAGE_SIZE;
	if (x1 <= x0 || y1 <= y0)
		return;
	uint16_t* dest = buffer + (y0 * stride + x0);
	int       u_inc = (int)(u_step * FONT_FIXED_ONE);
	int       v_inc = (int)(v_step * FONT_FIXED_ONE);
	int       v = v0 << 16;
	int       u_start = u0 << 16;
	for (int row = y0; row < y1; row++)
	{
		uint16_t* source = surface + (v >> 16) * pitch;
		uint16_t* line = dest;
		int       u = u_start;
		for (int column = x0; column < x1; column++)
		{
			uint16_t sum = (source[u >> 16] * alpha) >> 16;
			uint16_t first = sum;
			if (column < FONT_PAGE_SIZE - 1)
				sum += source[(u >> 16) + 1] >> 12;
			else
				sum += sum;
			if (row < FONT_PAGE_SIZE - 1)
			{
				sum += source[(u >> 16) + FONT_PAGE_SIZE] >> 12;
				if (column < FONT_PAGE_SIZE - 1)
					sum += source[(u >> 16) + FONT_PAGE_SIZE + 1] >> 12;
				else
					sum += first;
			}
			else
			{
				sum *= 2;
			}
			sum >>= 2;
			if (sum)
			{
				uint8_t* bytes = (uint8_t*)dest;
				*dest = (blend[sum][bytes[1] & 0xf] << 8) + blend[sum][bytes[0]] +
				        (colours[sum] & FONT_PIXEL_RGB_MASK) + (*dest & FONT_PIXEL_ALPHA_MASK);
			}
			dest++;
			u += u_inc;
		}
		v += v_inc;
		dest = line + stride;
	}
}

void GatheringText::DrawText2Texture(uint16_t* buffer, int stride, wchar_t* text, int len, float x, float y, float size,
                                     float aspect, uint16_t colour)
{
	static uint16_t gradient[FONT_BLEND_LEVELS];
	if (!text || len <= 0)
		return;
	for (int i = 0; i < FONT_BLEND_LEVELS; i++)
		gradient[i] = (colour & FONT_PIXEL_ALPHA_MASK) +
		              (((i * (colour & FONT_PIXEL_RED_MASK)) >> 4) & FONT_PIXEL_RED_MASK) +
		              (((i * (colour & FONT_PIXEL_GREEN_MASK)) >> 4) & FONT_PIXEL_GREEN_MASK) +
		              (((i * (colour & FONT_PIXEL_BLUE_MASK)) >> 4) & FONT_PIXEL_BLUE_MASK);
	if (len > (int)wcslen(text))
		len = wcslen(text);
	float scale = size * aspect / FONT_WIDTH_DIVISOR;
	y -= (int)(FontCache::overhang_bottom * size / FONT_CHAR_ROWS);
	size += (int)(FontCache::overhang_top * size / FONT_CHAR_ROWS);
	THAI_RESET();
	for (; *text; text++)
	{
		wchar_t ch = THAI_PROCESS(*text);
		if (ch == '\r' || ch == '\n')
			continue;
		if (ch == ' ')
		{
			x += (FontCache::font[Font].Space.LeftBearing + FontCache::font[Font].Space.Width +
			      FontCache::font[Font].Space.RightBearing) *
			     scale;
			continue;
		}
		if (ch == FONT_CHAR_NON_BREAKING_SPACE)
			continue;
		CacheEntry* entry = FontCache::AddToCache(*text, Font);
		if (entry)
		{
			FontChar* character = &FontCache::font[entry->Font].Chars[entry->Index];
			FontCache::page[entry->Page].Lock();
			x += scale * character->Spacing.LeftBearing;
			DrawChar2Texture(entry, buffer, stride, x, y, scale, size, gradient);
			x += scale * character->Spacing.Width;
			x += scale * character->Spacing.RightBearing;
		}
	}
	for (int page = 0; page < FONT_CACHE_PAGES; page++)
	{
		FontCache::page[page].Damaged = false;
		FontCache::page[page].Unlock();
	}
}

void GatheringText::DrawTextRawOriented(LHMatrix& matrix, int axis_x, int axis_y, wchar_t* text, int count, float x,
                                        float y, float z, float size, float scale, LH3DColor* color_top,
                                        bool32_t z_test, LH3DColor* color_bottom)
{
	y -= (int)(FontCache::overhang_bottom * size / FONT_CHAR_ROWS);
	size += (int)(FontCache::overhang_top * size / FONT_CHAR_ROWS);
	LH3DColor top = *color_top;
	LH3DColor bottom = color_bottom ? *color_bottom : *color_top;
	if (count <= 0)
		return;
	if (count > (int)wcslen(text))
		count = wcslen(text);
	int num_vertices = count * FONT_VERTICES_PER_CHAR;
	int num_indices = num_vertices / FONT_VERTICES_PER_CHAR * FONT_INDICES_PER_CHAR;
	if (num_vertices >= v_max[LH3D_ATMOS_BUFFER_SHARED])
		return;
	if (num_indices >= v_max[LH3D_ATMOS_BUFFER_SHARED] * 2)
		return;
	LHPoint pos;
	pos = matrix.GetPos();
	wchar_t* start = text;
	uint32_t done = 0;
	int      axis_z = 0;
	if (axis_x == 0 || axis_y == 0)
	{
		axis_z = 1;
		if (axis_x == 1 || axis_y == 1)
			axis_z = 2;
	}
	LHPoint xvec;
	LHPoint yvec;
	xvec = *(LHPoint*)&matrix.m[axis_x * 3];
	yvec = *(LHPoint*)&matrix.m[axis_y * 3];
	LHPoint zvec((LHPoint*)&matrix.m[axis_z * 3]);
	LHPoint offset;
	offset = LHPoint(0.0f, 0.0f, 0.0f);
	if (x != 0.0f)
		offset += xvec * x;
	if (y != 0.0f)
		offset += yvec * y;
	if (z != 0.0f)
		offset += zvec * z;
	LHPoint start_offset = offset;
	xvec *= size / FONT_WIDTH_DIVISOR;
	yvec *= size;
	xvec *= scale;
	int      curpage;
	bool32_t was_locked;
	for (int pass = 0; pass < FONT_CACHE_PAGES; pass++)
	{
		LHPoint*   pnt = LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_SHARED];
		float*     uv = LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED];
		LH3DColor* col = LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_SHARED];
		long*      idx = LH3DAtmos::v_idx[LH3D_ATMOS_BUFFER_SHARED];
		offset = start_offset;
		int n = 0;
		int ni = 0;
		curpage = -1;
		THAI_RESET();
		text = start;
		for (int i = count; i > 0; i--, text++)
		{
			wchar_t ch = THAI_PROCESS(*text);
			if (ch == '\n')
				continue;
			if (ch == '\r')
				continue;
			if (ch == ' ')
			{
				offset += xvec * (FontCache::font[Font].Space.LeftBearing + FontCache::font[Font].Space.Width +
				                  FontCache::font[Font].Space.RightBearing);
				continue;
			}
			if (ch == FONT_CHAR_NON_BREAKING_SPACE)
				continue;
			CacheEntry* entry = FontCache::AddToCache(ch, Font);
			if (!entry)
				continue;
			FontChar* glyph = &FontCache::font[entry->Font].Chars[entry->Index];
			if (ch == ' ')
				continue;
			if (ch == FONT_CHAR_NON_BREAKING_SPACE)
				continue;
			if (ch == '\r')
				continue;
			if (curpage < 0)
			{
				uint32_t bit = 1 << entry->Page;
				if (!(done & bit))
				{
					curpage = entry->Page;
					done |= bit;
					was_locked = FontCache::page[curpage].Locked;
					FontCache::page[curpage].Lock();
				}
			}
			if (entry->Page == curpage)
			{
				idx[ni++] = n;
				idx[ni++] = n + 2;
				idx[ni++] = n + 3;
				idx[ni++] = n + 3;
				idx[ni++] = n + 1;
				idx[ni++] = n;
				offset += xvec * glyph->Spacing.LeftBearing;
				float u = entry->X * (1.0f / FONT_CACHE_LINE_WIDTH) - FONT_TEXTURE_HALF_TEXEL;
				float v = entry->Line * FONT_LINE_V + FONT_TEXTURE_HALF_TEXEL;
				pnt[n] = pos + offset;
				col[n] = top;
				uv[n * 2] = u;
				uv[n * 2 + 1] = v;
				n++;
				pnt[n] = pos + offset + yvec;
				float v2 = v + FONT_GLYPH_HEIGHT_V;
				col[n] = bottom;
				uv[n * 2] = u;
				uv[n * 2 + 1] = v2;
				n++;
				LHPoint right = pos + offset + xvec * (glyph->Spacing.Width + FONT_QUAD_MARGIN);
				float   u_width = glyph->Width * FONT_TEXTURE_HALF_TEXEL + 1.0f / FONT_CACHE_LINE_WIDTH;
				pnt[n] = right;
				col[n] = top;
				uv[n * 2] = u + u_width;
				uv[n * 2 + 1] = v;
				n++;
				pnt[n] = right + yvec;
				col[n] = bottom;
				uv[n * 2] = u + u_width;
				uv[n * 2 + 1] = v2;
				n++;
				offset += xvec * (glyph->Spacing.Width + glyph->Spacing.RightBearing);
			}
			else
			{
				offset += xvec * (glyph->Spacing.LeftBearing + glyph->Spacing.Width + glyph->Spacing.RightBearing);
			}
		}
		if (ni == 0)
			break;
		if (!was_locked)
			FontCache::page[curpage].Unlock();
		LH3DRender::SetMaterial(FontCache::page[curpage].Material, 0);
		if (!z_test)
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
		LH3DTech::Draw3DWorldTriangle(n, pnt, col, uv, ni / FONT_INDICES_PER_TRIANGLE, idx, NULL, false);
	}
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
}

inline CacheEntry* FontCache::Find(wchar_t code, uint8_t font)
{
	if (!IsInCache(font, code))
	{
		return NULL;
	}
	CacheEntry* entry = &cache[HASH(code, font)];
	for (int i = 0; i < FONT_CACHE_ENTRIES; i++)
	{
		if (entry->Code == code && entry->Font == font)
		{
			return entry;
		}
		entry++;
		if (entry >= &cache[FONT_CACHE_ENTRIES])
		{
			entry = cache;
		}
	}
	return NULL;
}

void GatheringText::DrawTextRaw(wchar_t* text, int count, float x, float y, float z, float size, LH3DColor* color_top,
                                bool32_t z_test, LH3DColor* color_bottom, float clip_top, float clip_bottom)
{
	float bottom_overhang = FontCache::overhang_bottom * size / FONT_CHAR_ROWS;
	float top_overhang = FontCache::overhang_top * size / FONT_CHAR_ROWS;
	y -= (int)bottom_overhang;
	clip_top -= (int)bottom_overhang;
	size += (int)top_overhang;
	clip_bottom += (int)top_overhang - (int)bottom_overhang;
	if (z < LH3DTech::GetNearClipping() + FONT_NEAR_CLIP_MARGIN)
		z = LH3DTech::GetNearClipping() + FONT_NEAR_CLIP_MARGIN;
	bool32_t  small_text = size < FONT_SMALL_SIZE;
	LH3DColor top_color = *color_top;
	if (color_bottom)
		color_top = color_bottom;
	LH3DColor bottom_color = *color_top;
	if (count <= 0)
		return;
	if (count > (int)wcslen(text))
		count = wcslen(text);
	int required_points = count * FONT_VERTICES_PER_CHAR;
	int required_indices = required_points / FONT_VERTICES_PER_CHAR * FONT_INDICES_PER_CHAR;
	if (required_points >= v_max[LH3D_ATMOS_BUFFER_SHARED] || required_indices >= v_max[LH3D_ATMOS_BUFFER_SHARED] * 2)
		return;
	float    scale = size / FONT_WIDTH_DIVISOR;
	int      pages_locked = 0;
	wchar_t* text_start = text;
	float    glyph_v = FONT_GLYPH_HEIGHT_V;
	if (small_text)
		glyph_v = FONT_GLYPH_HEIGHT_V * FONT_SMALL_SCALE;
	float visible_size = size;
	float top_clip = 0.0f;
	float full_size = size;
	if (y < clip_top)
	{
		float delta = clip_top - y;
		y = clip_top;
		top_clip = delta;
		size -= delta;
	}
	if (y + size > clip_bottom)
	{
		visible_size -= y + size - clip_bottom;
		size = clip_bottom - y;
	}
	if (size <= 0.0f)
		return;
	top_clip = top_clip / full_size * glyph_v;
	float    bottom_v = visible_size / full_size * glyph_v;
	float    left = x;
	int      page_index;
	bool32_t was_locked;
	for (int pass = 0; pass < FONT_CACHE_PAGES; pass++)
	{
		LHPoint*   points = LH3DAtmos::v_pnt[LH3D_ATMOS_BUFFER_SHARED];
		float*     uvs = LH3DAtmos::v_uv[LH3D_ATMOS_BUFFER_SHARED];
		LH3DColor* colors = LH3DAtmos::v_col[LH3D_ATMOS_BUFFER_SHARED];
		long*      indices = LH3DAtmos::v_idx[LH3D_ATMOS_BUFFER_SHARED];
		int        point_count = 0;
		int        index_count = 0;
		page_index = -1;
		THAI_RESET();
		x = 0.0f;
		text = text_start;
		for (int i = count; i > 0; i--, text++)
		{
			wchar_t ch = THAI_PROCESS(*text);
			if (ch == '\n' || ch == '\r')
				continue;
			if (ch == ' ')
			{
				x += (FontCache::font[Font].Space.LeftBearing + FontCache::font[Font].Space.Width +
				      FontCache::font[Font].Space.RightBearing) *
				     scale;
				continue;
			}
			if (ch == FONT_CHAR_NON_BREAKING_SPACE)
				continue;
			CacheEntry* entry = FontCache::AddToCache(ch, Font);
			if (!entry)
				continue;
			FontChar* character = &FontCache::font[entry->Font].Chars[entry->Index];
			if (page_index < 0 && !(pages_locked & (1 << entry->Page)))
			{
				pages_locked |= 1 << entry->Page;
				page_index = entry->Page;
				was_locked = FontCache::page[page_index].Locked;
				FontCache::page[page_index].Lock();
			}
			if (entry->Page == page_index)
			{
				indices[index_count++] = point_count;
				indices[index_count++] = point_count + 2;
				indices[index_count++] = point_count + 3;
				indices[index_count++] = point_count + 3;
				indices[index_count++] = point_count + 1;
				indices[index_count++] = point_count;
				x += scale * character->Spacing.LeftBearing;
				float u = entry->X / (float)FONT_PAGE_SIZE + FONT_TEXTURE_HALF_TEXEL;
				float v = entry->Line * FONT_LINE_V + FONT_TEXTURE_HALF_TEXEL;
				if (small_text)
					v += FONT_SMALL_V_OFFSET;
				points[point_count] = LHPoint(left + x, y, z);
				colors[point_count] = top_color;
				uvs[point_count * 2] = u;
				uvs[point_count * 2 + 1] = v + top_clip;
				point_count++;
				points[point_count] = LHPoint(left + x, y + size, z);
				colors[point_count] = bottom_color;
				uvs[point_count * 2] = u;
				uvs[point_count * 2 + 1] = v + bottom_v;
				point_count++;
				float right = x + (character->Width + FONT_GLYPH_MARGIN) * scale;
				float u_width = (character->Width + FONT_GLYPH_MARGIN) * FONT_TEXTURE_HALF_TEXEL;
				if (small_text)
					u_width *= FONT_SMALL_SCALE;
				points[point_count] = LHPoint(left + right, y, z);
				colors[point_count] = top_color;
				uvs[point_count * 2] = u + u_width;
				uvs[point_count * 2 + 1] = v + top_clip;
				point_count++;
				points[point_count] = LHPoint(left + right, y + size, z);
				colors[point_count] = bottom_color;
				uvs[point_count * 2] = u + u_width;
				uvs[point_count * 2 + 1] = v + bottom_v;
				point_count++;
				x += scale * (character->Spacing.Width + character->Spacing.RightBearing);
			}
			else
			{
				x += (character->Spacing.RightBearing + character->Spacing.Width + character->Spacing.LeftBearing) *
				     scale;
			}
		}
		if (index_count == 0)
			break;
		if (!was_locked)
			FontCache::page[page_index].Unlock();
		LH3DRender::SetMaterial(FontCache::page[page_index].Material, 0);
		if (!z_test)
			LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_ALWAYS);
		LH3DTech::Draw3DScreenTriangle(point_count, points, colors, uvs, index_count / FONT_INDICES_PER_TRIANGLE,
		                               indices, NULL, false);
	}
	LH3DRender::SetRenderState(D3DRENDERSTATE_ZFUNC, D3DCMP_LESSEQUAL);
}

void GatheringText::DrawBubble(float left, float top, float right, float bottom, float z, float corner_size,
                               float tail_x, bool32_t tail_on_right, unsigned long colour, bool32_t draw_tail,
                               int alpha_top, int alpha_bottom)
{
	if (numgt == 0 || bubtex == NULL || bubmat == NULL)
	{
		return;
	}
	static LHPoint   points[BUBBLE_VERTICES];
	static LH3DColor colors[BUBBLE_VERTICES];
	static float     uvs[BUBBLE_VERTICES * 2];
	float            width = right - left;
	float            height = bottom - top;
	if (width <= 0.0f || height <= 0.0f)
	{
		return;
	}
	if (corner_size > width * 0.5f)
	{
		corner_size = width * 0.5f;
	}
	if (corner_size > height * 0.5f)
	{
		corner_size = height * 0.5f;
	}
	float colourAlpha = RGBA_GETALPHA(colour);
	float alphaSlope = colourAlpha / height * (alpha_bottom - alpha_top) * BUBBLE_ALPHA_SCALE;
	float alphaBase = alpha_top * colourAlpha * BUBBLE_ALPHA_SCALE;
	colour &= LH3D_COLOR_RGB_MASK;
	int index = 0;
	for (int row = 0; row < BUBBLE_GRID_SIZE; row++)
	{
		for (int col = 0; col < BUBBLE_GRID_SIZE; col++)
		{
			float x;
			float y;
			float u;
			float v;
			switch (row)
			{
			case 0:
				v = draw_tail ? BUBBLE_TAIL_TOP_V : 0.0f;
				y = top;
				break;
			case 1:
				v = 0.5f;
				y = top + corner_size;
				break;
			case 2:
				v = 0.5f;
				y = bottom - corner_size;
				break;
			case 3:
				v = 1.0f;
				y = bottom;
				break;
			}
			switch (col)
			{
			case 0:
				u = 0.0f;
				x = left;
				break;
			case 1:
				u = 0.5f;
				x = left + corner_size;
				break;
			case 2:
				u = 0.5f;
				x = right - corner_size;
				break;
			case 3:
				u = 1.0f;
				x = right;
				break;
			}
			LHCoord screen((int)x, (int)y);
			LH3DTech::Get3DPointFromScreen(screen, points[index], z);
			colors[index] = LH3DColor(((int)((y - top) * alphaSlope + alphaBase) << 24) + colour);
			uvs[index * 2] = u * BUBBLE_TEXTURE_CELL;
			uvs[index * 2 + 1] = v * BUBBLE_TEXTURE_CELL;
			index++;
		}
	}
	float tailMargin = corner_size * BUBBLE_TAIL_MARGIN;
	if (tail_x < left + tailMargin)
	{
		tail_x = left + tailMargin;
	}
	if (tail_x > right - tailMargin)
	{
		tail_x = right - tailMargin;
	}
	if (tail_on_right)
	{
		left = tail_x - corner_size * BUBBLE_TAIL_TIP_RIGHT;
	}
	else
	{
		left = tail_x - corner_size * BUBBLE_TAIL_TIP_LEFT;
	}
	right = left + corner_size;
	top = bottom - corner_size * BUBBLE_TAIL_OVERLAP;
	bottom = top + corner_size;
	for (int i = BUBBLE_GRID_VERTICES; i < BUBBLE_VERTICES; i++)
	{
		float x;
		float y;
		float u;
		float v;
		switch (i & 3)
		{
		case 0:
			x = left;
			y = top;
			u = 0.0f;
			v = 0.0f;
			break;
		case 1:
			x = right;
			y = top;
			u = 1.0f;
			v = 0.0f;
			break;
		case 2:
			x = left;
			y = bottom;
			u = 0.0f;
			v = 1.0f;
			break;
		case 3:
			x = right;
			y = bottom;
			u = 1.0f;
			v = 1.0f;
			break;
		}
		LHCoord screen((int)x, (int)y);
		LH3DTech::Get3DPointFromScreen(screen, points[i], z);
		colors[i] = LH3DColor(((int)(alphaSlope * height + alphaBase) << 24) + colour);
		if (tail_on_right)
		{
			u = 1.0f - u;
		}
		uvs[i * 2] = (u + 1.0f) * BUBBLE_TEXTURE_CELL;
		uvs[i * 2 + 1] = v * BUBBLE_TEXTURE_CELL;
	}
	LH3DTech::Draw3DWorldTriangle(draw_tail ? BUBBLE_VERTICES : BUBBLE_GRID_VERTICES, points, colors, uvs,
	                              draw_tail ? BUBBLE_GRID_TRIANGLES + BUBBLE_TAIL_TRIANGLES : BUBBLE_GRID_TRIANGLES,
	                              (long*)bubble_indices, bubmat, false);
}
