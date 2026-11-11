#ifndef BW1_DECOMP_HELP_TEXT_INCLUDED_H
#define BW1_DECOMP_HELP_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <chlasm/HelpTextEnums.h> /* For enum HELP_TEXT_NARRATOR */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHColor.h>   /* For struct LHColor */
#include <Lionhead/LH3DLib/development/LHRegion.h>  /* For struct LHRegion */
#include <Lionhead/LHLib/ver5.0/LHWin.h>            /* For operator new(size_t, const char*, uint32_t) */

#include <re_common.h> /* For bool32_t */

#include "Base.h" /* For struct Base */

#ifdef VERSION_BW1W100
#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) ((line) - 1)
#endif

struct GatheringText;
class HelpSystem;

#define HELP_TEXT_NUM_LINES             6
#define HELP_TEXT_NUM_SETTLED_LINES     4
#define HELP_TEXT_MAX_WORD_LENGTH       48
#define HELP_TEXT_DRAW_PRIORITY         20000
#define HELP_TEXT_SCREEN_LINES          30.0f
#define HELP_TEXT_SCREEN_LINES_BIGGER   28.0f
#define HELP_TEXT_BACKGROUND_ALPHA      0x80
#define HELP_TEXT_HIGHLIGHT_TIME        0.18f
#define HELP_TEXT_FIRST_LINE_SCALE      0.86f
#define HELP_TEXT_LINE_SCALE            0.93f
#define HELP_TEXT_SCROLL_SPEED          0.003f
#define HELP_TEXT_SCROLL_FINISHED       0.9999f
#define HELP_TEXT_OLD_LINE_ALPHA_DROP   20
#define HELP_TEXT_PAUSE_FADE_IN_SPEED   0.003f
#define HELP_TEXT_PAUSE_FADE_OUT_SPEED  0.002f
#define HELP_TEXT_PAUSE_SPIN_SPEED      0.0015f
#define HELP_TEXT_PAUSE_DISTANCE        15.0f
#define HELP_TEXT_PAUSE_SPACING         30.0f
#define HELP_TEXT_PAUSE_TEXT_SIZE       2.0f
#define HELP_TEXT_PAUSE_LETTER_ANGLE    (1.0f / 3.0f)
#define HELP_TEXT_PAUSE_PITCH_DISTANCE  10.0f
#define HELP_TEXT_PAUSE_SCREEN_FRACTION 20
#define HELP_TEXT_PAUSE_TEXT_FOV_RATIO  0.35f
#define HELP_TEXT_CANNON_FADE_OUT_SPEED 0.001f
#define HELP_TEXT_FIGHT_MAX_CLIP_ALPHA  0.1f
#define HELP_TEXT_CHAT_ALPHA            200
#define HELP_TEXT_CHAT_ALPHA_STEP       32
#define HELP_TEXT_CHAT_MIN_ALPHA        31
#define HELP_TEXT_CHAT_MIN_SIZE         5
#define HELP_TEXT_CHAT_MAX_LINES        3
#define HELP_TEXT_TIMER_X               20.0f
#define HELP_TEXT_TIMER_BOTTOM          50
#define HELP_TEXT_TIMER_SIZE            30.0f
#define HELP_TEXT_TIMER_LOW             45
#define HELP_TEXT_TIMER_VERY_LOW        20
#define HELP_TEXT_GAME_TURNS_PER_SECOND 10
#define HELP_TEXT_SECONDS_PER_MINUTE    60
#define HELP_TEXT_MINUTES_PER_HOUR      60

struct HelpTextLine
{
	wchar_t*           Text;
	float              Number;
	HELP_TEXT_NARRATOR Narrator;
	LHColor            Colour;
};

class HelpText : public Base
{
public:
	enum ALIGNENUM
	{
		ALIGN_TOP = 0,
		ALIGN_CENTRE = 1,
		ALIGN_BOTTOM = 2,
	};

	GatheringText* Font; /* 0x8 */
	GatheringText* DefaultFont;
	GatheringText* EvilFont;
	GatheringText* GoodFont;
	GatheringText* NeutralFont;
	LH3DColor      BackgroundColour;
	LH3DColor      HighlightColour;
	LHRegion       Region;
	HelpTextLine   Lines[HELP_TEXT_NUM_LINES];
	int            CurrentLine;
	int            DrawLine;
	float          TextSize;
	float          DefaultTextSize;
	int            Alpha;
	float          ScrollProgress;
	bool32_t       TextCleared;
	bool32_t       SingleLine;
	bool32_t       DialogWindowOpen;
	bool           BeingDrawn;

	// Override methods

	// BW1W120 005cb070 BW1M119 0135f5d0
	virtual ~HelpText();

	// Constructors

	// BW1W120 005cad40 BW1M119 0135f9e0
	HelpText(const LHRegion& region);

	// Static methods

	// BW1W120 005cb090 BW1M119 0135f510
	static HelpText* Create(const LHRegion& region, HelpSystem* help_system);
	// BW1W120 005cd020 BW1M119 01020fc0
	static void __stdcall Draw3DTextStub(void* help_text);

	// Non-virtual methods

	// BW1W120 005cadc0 BW1M119 0135f790
	void SetToZero();
	// BW1W120 005cb000 BW1M119 0135f750
	void ClearTextDisplayed();
	// BW1W120 005cb010 BW1M119 0135f700
	void CloseDialogWindow();
	// BW1W120 005cb020 BW1M119 0135f670
	void Reset(bool full);
	// BW1W120 005cb0e0 BW1M119 inlined
	void CallVirtualFunctionsForCreation(HelpSystem* help_system);
	// BW1W120 005cb0f0 BW1M119 inlined
	bool32_t IsWhiteSpace(wchar_t c) const;
	// BW1W120 005cb120 BW1M119 0135f450
	int SkipWhiteSpace(wchar_t* text, wchar_t** end) const;
	// BW1W120 005cb190 BW1M119 inlined
	bool32_t IsCommandStartChar(wchar_t c) const;
	// BW1W120 005cb1b0 BW1M119 inlined
	bool32_t IsDigit(wchar_t c) const;
	// BW1W120 005cb1d0 BW1M119 0135f3b0
	bool32_t IsCommandDataChar(wchar_t c) const;
	// BW1W120 005cb200 BW1M119 inlined
	bool32_t IsColorCommandChar(wchar_t c) const;
	// BW1W120 005cb220 BW1M119 0135f310
	bool32_t IsCommandChar(wchar_t c) const;
	// BW1W120 005cb2a0 BW1M119 0135f150
	int RunCommand(wchar_t* text, bool32_t run_commands);
	// BW1W120 005cb3e0 BW1M119 inlined
	void ProcessIconCommand(int action);
	// BW1W120 005cb400 BW1M119 0135efc0
	void ProcessColorCommand(unsigned long colour);
	// BW1W120 005cb4c0 BW1M119 inlined
	int ProcessNumberCommand(int number);
	// BW1W120 005cb4e0 BW1M119 0135ee80
	wchar_t* SkipCommandData(wchar_t* text) const;
	// BW1W120 005cb590 BW1M119 0135eb80
	int GetNextWordAndParseCommands(wchar_t* text, wchar_t** end, wchar_t* word, bool32_t run_commands);
	// BW1W120 005cb750 BW1M119 0135e840
	void CalculateCurrentDisplayWidthAndHeight(const LHRegion& region, wchar_t* text, float* width, float* height);
	// BW1W120 005cb960 BW1M119 0135dde0
	float DrawAndProcessText(const LHRegion& region, wchar_t* text, ALIGNENUM align, float y_offset,
	                         bool32_t run_commands);
	// BW1W120 005cbec0 BW1M119 0135dd40
	int CountWords(wchar_t* text);
	// BW1W120 005cbf10 BW1M119 0101a0c0
	void DrawPauseText();
	// BW1W120 005cc760 BW1M119 0101f760
	void DrawScriptText();
	// BW1W120 005ccab0 BW1M119 01026480
	void Draw3DText();
	// BW1W120 005cce60 BW1M119 01018a80
	void Draw3D();
	// BW1W120 005ccea0 BW1M119 inlined
	void SetFont(int narrator);
	// BW1W120 005cced0 BW1M119 0135cec0
	void SendText(wchar_t* text, float number, HELP_TEXT_NARRATOR narrator);
	// BW1W120 005ccf50 BW1M119 0135ce20
	void SetStartDrawSettings();
};

struct HelpTextInfo
{
	HELP_TEXT_NARRATOR Narrator;
	bool32_t           ShouldBeDrawn;
	char16_t*          Text;

	// BW1W120 inlined BW1M119 0150f7f0
	HelpTextInfo() : Text(NULL) {}
	// BW1W120 inlined BW1M119 0135cc50
	~HelpTextInfo()
	{
		if (Text != NULL)
		{
			delete Text;
		}
	}

	// BW1W120 005cad00 BW1M119 inlined
	void Set(bool32_t should_be_drawn, HELP_TEXT_NARRATOR narrator, wchar_t* name, wchar_t* text);
};

static_assert(sizeof(HelpTextInfo) == 0xc, "HelpTextInfo size is incorrect");

struct HelpTextData;
struct HelpTextDataPatch;
struct HelpTextDataMultiplayer;

struct HelpTextDataBase
{
	// BW1W120 00d17c78
	static int CurrentMultiplayerEntry;
	// BW1W120 00d17c80
	static int CurrentPatchEntry;
	// BW1W120 00d17c88
	static int CurrentEntry;
	// BW1W120 00d17ca0
	static HelpTextDataPatch PatchTextDatabase;
	// BW1W120 00d17ca8
	static HelpTextData HelpTextDatabase;
	// BW1W120 00d17c98
	static HelpTextDataMultiplayer MultiplayerTextDatabase;

	HelpTextInfo* array; /* 0x0 */
	uint32_t      count;

	// BW1W120 inlined BW1M119 0135fd60
	HelpTextDataBase() : array(NULL), count(0) {}

	// Non-virtual methods

	// BW1W120 inlined BW1M119 inlined
	void Init(long num_entries)
	{
		count = num_entries;
		array = NEW(93) HelpTextInfo[count];
	}
	// BW1W120 inlined BW1M119 0135fc50
	void DeleteAll()
	{
		if (count != 0)
		{
			delete[] array;
			count = 0;
		}
	}
	// BW1W120 004707f0 BW1M119 01243920
	HelpTextInfo* GetData(unsigned long index) const
	{
		if (index >= count)
		{
			index = 0;
		}
		return index <= 0 ? array : &array[index];
	}
	// BW1W120 inlined BW1M119 0135cdc0
	HelpTextInfo* GetWriteableData(unsigned long index) { return index >= count ? array : &array[index]; }
	// BW1W120 inlined BW1M119 010946e0
	wchar_t* GetHelpText(unsigned long index) const
	{
		if (index >= count)
		{
			index = 0;
		}
		return (index <= 0 ? array : &array[index])->Text;
	}

	// BW1W120 005ccf80 BW1M119 0135cce0
	void SetData(bool32_t should_be_drawn, unsigned long index, HELP_TEXT_NARRATOR narrator, wchar_t* name,
	             wchar_t* text);
	// BW1W120 005ccfc0 BW1M119 null
	void Reload();
};

struct HelpTextData : public HelpTextDataBase
{
	// BW1W120 inlined BW1M119 0135fcd0
	~HelpTextData() { DeleteAll(); }

	// Static methods

	// BW1W120 inlined BW1M119 0110db70
	static char16_t* GetTextL(unsigned long index);
};

struct HelpTextDataPatch : public HelpTextDataBase
{
	// BW1W120 inlined BW1M119 0135fbc0
	~HelpTextDataPatch() { DeleteAll(); }

	// BW1W120 inlined BW1M119 015c2470
	static char16_t* GetTextL(unsigned long index);
};

struct HelpTextDataMultiplayer : public HelpTextDataBase
{
	// BW1W120 inlined BW1M119 null
	~HelpTextDataMultiplayer() { DeleteAll(); }

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	// BW1W120 inlined BW1M119 null
	static char16_t* GetTextL(unsigned long index);
#endif
};

// BW1W120 inlined BW1M119 0110db70
inline char16_t* HelpTextData::GetTextL(unsigned long index)
{
	return HelpTextDataBase::HelpTextDatabase.GetData(index)->Text;
}

// BW1W120 inlined BW1M119 015c2470
inline char16_t* HelpTextDataPatch::GetTextL(unsigned long index)
{
	return HelpTextDataBase::PatchTextDatabase.GetHelpText(index);
}

#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
// BW1W120 inlined BW1M119 null
inline char16_t* HelpTextDataMultiplayer::GetTextL(unsigned long index)
{
	return HelpTextDataBase::MultiplayerTextDatabase.GetHelpText(index);
}
#endif

#undef ORIGINAL_LINE
#define ORIGINAL_LINE(line) (line)

#endif /* BW1_DECOMP_HELP_TEXT_INCLUDED_H */
