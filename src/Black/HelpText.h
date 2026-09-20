#ifndef BW1_DECOMP_HELP_TEXT_INCLUDED_H
#define BW1_DECOMP_HELP_TEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include <chlasm/HelpTextEnums.h>

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHRegion.h>  /* For struct LHRegion */

#include "Base.h" /* For struct Base */

struct GatheringText;
class HelpSystem;

class HelpText : public Base
{
public:
	// Type name recovered from Mac symbols; enumerator names are descriptive.
	enum ALIGNENUM
	{
		ALIGN_TOP = 0,
		ALIGN_CENTRE = 1,
		ALIGN_BOTTOM = 2
	};

	// Descriptive names. Windows Reset/SendText use six entries with a 0x10 stride.
	struct TextEntry
	{
		char16_t*          Text;
		float              Value;
		HELP_TEXT_NARRATOR Narrator;
		uint8_t            Blue;
		uint8_t            Green;
		uint8_t            Red;
		uint8_t            field_0xf;
	};

	GatheringText* Font; /* 0x8: a font object, not a string */
	GatheringText* DefaultFont;
	GatheringText* EvilFont;
	GatheringText* GoodFont;
	GatheringText* field_0x18;
	LH3DColor      BackgroundColour; /* 0x1c */
	LH3DColor      field_0x20;
	LHRegion       Region;         /* 0x24 */
	TextEntry      TextHistory[6]; /* 0x34 */
	int            LatestText;     /* 0x94 */
	int            CurrentText;
	float          TextSize;
	float          DefaultTextSize;
	int            TextAlpha;
	float          ScrollProgress;
	int            TextCleared;
	int            field_0xb0;
	int            DialogOpen;
	bool           TextBeingDrawn; /* 0xb8; remaining bytes are alignment */

	// Override methods

	// BW1W120 005cb070 BW1M100 103575a0 HelpText::~HelpText(void)
	virtual ~HelpText();

	// Constructors

	// BW1W120 005cad40 BW1M100 103579b0 HelpText::HelpText(const LHRegion&)
	HelpText(const LHRegion& region);

	// BW1W120 005cb090 BW1M100 103574e0 HelpText::Create(const LHRegion&, HelpSystem*)
	static HelpText* Create(const LHRegion& region, HelpSystem* help_system);
	// BW1W120 005cadc0 BW1M100 10357760 HelpText::SetToZero(void)
	void SetToZero();
	// BW1W120 005cb000 BW1M100 10357720 HelpText::ClearTextDisplayed(void)
	void ClearTextDisplayed();
	// BW1W120 005cb010 BW1M100 103576d0 HelpText::CloseDialogWindow(void)
	void CloseDialogWindow();
	// BW1W120 005cb020 BW1M100 10357640 HelpText::Reset(bool)
	void Reset(bool clear_history);
	// BW1W120 005cb0e0 void HelpText::SetHelpSystem(HelpSystem*)
	void SetHelpSystem(HelpSystem* help_system);

	// Parser results are full-register integers on Windows, not byte-sized bools.
	// Values: 0 word/command, 1 newline, 2 stop, 3 space, 4 percentage, 5 number, 6 U+F8FE.
	// Helper names marked descriptive were inlined in the available Mac symbol evidence.
	// BW1W120 005cb0f0 int HelpText::IsWhiteSpace(unsigned short) const
	int IsWhiteSpace(char16_t character) const;
	// BW1W120 005cb120 BW1M100 10357420 HelpText::SkipWhiteSpace(wchar_t*, wchar_t**) const
	int SkipWhiteSpace(char16_t* text, char16_t** next) const;
	// BW1W120 005cb190 BW1M100 103572e0 HelpText::IsCommandChar(wchar_t) const
	int IsCommandChar(char16_t character) const;
	// BW1W120 005cb1b0 int HelpText::IsNumberChar(unsigned short) const
	int IsNumberChar(char16_t character) const;
	// BW1W120 005cb1d0 BW1M100 10357380 HelpText::IsCommandDataChar(wchar_t) const
	int IsCommandDataChar(char16_t character) const;
	// BW1W120 005cb200 int HelpText::IsColorCommand(unsigned short) const
	int IsColorCommand(char16_t character) const;
	// BW1W120 005cb220 int HelpText::IsNamedCommand(unsigned short) const
	int IsNamedCommand(char16_t character) const;
	// BW1W120 005cb2a0 BW1M100 10357120 HelpText::RunCommand(wchar_t*, int)
	int RunCommand(char16_t* text, int process_messages);
	// BW1W120 005cb3e0 void HelpText::ProcessMessageCommand(int)
	void ProcessMessageCommand(int action);
	// BW1W120 005cb400 BW1M100 10356f90 HelpText::ProcessColorCommand(unsigned long)
	void ProcessColorCommand(unsigned long colour);
	// BW1W120 005cb4c0 int HelpText::ProcessNumberCommand(int)
	int ProcessNumberCommand(int command);
	// BW1W120 005cb4e0 BW1M100 10356e50 HelpText::SkipCommandData(wchar_t*) const
	char16_t* SkipCommandData(char16_t* text) const;
	// BW1W120 005cb590 BW1M100 10356b50 HelpText::GetNextWordAndParseCommands(wchar_t*, wchar_t**, wchar_t*, int)
	int GetNextWordAndParseCommands(char16_t* text, char16_t** next, char16_t* word, int process_messages);
	// BW1W120 005cb750 BW1M100 10356810 HelpText::CalculateCurrentDisplayWidthAndHeight(const LHRegion&, wchar_t*, float*, float*)
	void CalculateCurrentDisplayWidthAndHeight(const LHRegion& region, char16_t* text, float* width, float* height);
	// BW1W120 005cb960 BW1M100 10355db0 HelpText::DrawAndProcessText(const LHRegion&, wchar_t*, HelpText::ALIGNENUM, float, int)
	float DrawAndProcessText(const LHRegion& region, char16_t* text, ALIGNENUM alignment, float y_offset,
	                         int process_messages);
	// BW1W120 005cbec0 BW1M100 10355d10 HelpText::CountWords(wchar_t*)
	int CountWords(char16_t* text);
	// BW1W120 005cbf10 BW1M100 10017510 HelpText::DrawPauseText(void)
	void DrawPauseText();
	// BW1W120 005cc760 BW1M100 1001cbf0 HelpText::DrawScriptText(void)
	void DrawScriptText();
	// BW1W120 005ccab0 BW1M100 100238f0 HelpText::Draw3DText(void)
	void Draw3DText();
	// BW1W120 005cce60 BW1M100 10015ef0 HelpText::Draw3D(void)
	void Draw3D();
	// BW1W120 005ccea0 void HelpText::ProcessFontCommand(int)
	void ProcessFontCommand(int font);
	// BW1W120 005cced0 BW1M100 10354ae0 HelpText::SendText(wchar_t*, float, HELP_TEXT_NARRATOR)
	void SendText(char16_t* text, float value, HELP_TEXT_NARRATOR narrator);
	// BW1W120 005ccf50 BW1M100 10354a40 HelpText::SetStartDrawSettings(void)
	void SetStartDrawSettings();
	// BW1W120 005cd020 BW1M100 1001e450 HelpText::Draw3DTextStub(void*)
	static void __stdcall Draw3DTextStub(void* context);
};

// Database entries are 12 bytes, distinct from the on-screen HelpText object.
struct HelpTextData
{
	uint32_t  field_0x0;
	uint32_t  field_0x4;
	char16_t* Text;

	// BW1W120 inlined BW1M100 10357cb0 HelpTextData::~HelpTextData(void)
	~HelpTextData();
	// BW1W120 005cad00 void HelpTextData::SetData(int, HELP_TEXT_NARRATOR, unsigned short*, unsigned short*)
	void SetData(int index, HELP_TEXT_NARRATOR narrator, char16_t* sound, char16_t* text);
};

struct HelpTextDataBase
{
	// BW1W120 00d17ca8. TODO: Original global name unknown.
	static HelpTextDataBase HelpTextDatabase;
	// BW1W120 00d17c98. Descriptive name; filled from InfoScriptMultiplayer2.txt.
	static HelpTextDataBase MultiplayerTextDatabase;

	HelpTextData* array; /* 0x0 */
	uint32_t      count;

	// BW1W120 inlined BW1M100 10357d40 HelpTextDataBase::HelpTextDataBase(void)
	HelpTextDataBase();
	// BW1W120 inlined HelpTextDataBase::~HelpTextDataBase(void)
	~HelpTextDataBase();
	// BW1W120 inlined BW1M100 10357c30 HelpTextDataBase::DeleteAll(void)
	void DeleteAll();
	// BW1W120 005ccfc0 void HelpTextDataBase::Reload(void)
	void Reload();

	// Non-virtual methods

	// BW1W120 inlined BW1M100 100924c0 HelpTextDataBase::GetHelpText(unsigned long) const
	char16_t* GetHelpText(unsigned long index) const { return array[index < count && index != 0 ? index : 0].Text; }
	// BW1W120 005ccf80 BW1M100 10354900 HelpTextDataBase::SetData(int, unsigned long, HELP_TEXT_NARRATOR, wchar_t*, wchar_t*)
	void SetData(int index, unsigned long text_id, HELP_TEXT_NARRATOR narrator, char16_t* sound, char16_t* text);
};

#endif /* BW1_DECOMP_HELP_TEXT_INCLUDED_H */
