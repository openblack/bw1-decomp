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

	// BW1W120 005cad90 BW1M100 103575a0 HelpText::_dt(void)
	virtual ~HelpText();

	// Constructors

	// BW1W120 005cad40 BW1M100 103579b0 HelpText::HelpText(LHRegion const &)
	HelpText(const LHRegion& region);

	// BW1W120 005cb090. Static factory: no ECX input, pointer returned in EAX, plain RET.
	// Mac: Create__8HelpTextFRC8LHRegionP10HelpSystem. Windows symbol map needs correction.
	static HelpText* Create(const LHRegion& region, HelpSystem* help_system);
	// BW1W120 005cadc0. TODO: font table and shared text-highlight Zoomer bindings.
	void SetToZero();
	// BW1W120 005cb000
	void ClearTextDisplayed();
	// BW1W120 005cb010
	void CloseDialogWindow();
	// BW1W120 005cb020
	void Reset(bool clear_history);
	// BW1W120 005cb0e0. Descriptive name; the original Windows body is just RET 4.
	void SetHelpSystem(HelpSystem* help_system);

	// Parser results are full-register integers on Windows, not byte-sized bools.
	// Values: 0 word/command, 1 newline, 2 stop, 3 space, 4 percentage, 5 number, 6 U+F8FE.
	// Helper names marked descriptive were inlined in the available Mac symbol evidence.
	// BW1W120 005cb0f0 (descriptive name)
	int IsWhiteSpace(char16_t character) const;
	// BW1W120 005cb120 Mac: SkipWhiteSpace__8HelpTextCFPwPPw
	int SkipWhiteSpace(char16_t* text, char16_t** next) const;
	// BW1W120 005cb190 Mac: IsCommandChar__8HelpTextCFw
	int IsCommandChar(char16_t character) const;
	// BW1W120 005cb1b0 (descriptive name)
	int IsNumberChar(char16_t character) const;
	// BW1W120 005cb1d0 Mac: IsCommandDataChar__8HelpTextCFw
	int IsCommandDataChar(char16_t character) const;
	// BW1W120 005cb200 (descriptive name)
	int IsColorCommand(char16_t character) const;
	// BW1W120 005cb220 (descriptive name)
	int IsNamedCommand(char16_t character) const;
	// BW1W120 005cb2a0 Mac: RunCommand__8HelpTextFPwi
	int RunCommand(char16_t* text, int process_messages);
	// BW1W120 005cb3e0 (descriptive name).
	void ProcessMessageCommand(int action);
	// BW1W120 005cb400 Mac: ProcessColorCommand__8HelpTextFUl
	void ProcessColorCommand(unsigned long colour);
	// BW1W120 005cb4c0 (descriptive name)
	int ProcessNumberCommand(int command);
	// BW1W120 005cb4e0 Mac: SkipCommandData__8HelpTextCFPw
	char16_t* SkipCommandData(char16_t* text) const;
	// BW1W120 005cb590 Mac: GetNextWordAndParseCommands__8HelpTextFPwPPwPwi
	int GetNextWordAndParseCommands(char16_t* text, char16_t** next, char16_t* word, int process_messages);
	// BW1W120 005cb750 Mac: CalculateCurrentDisplayWidthAndHeight__8HelpTextFRC8LHRegionPwPfPf
	void CalculateCurrentDisplayWidthAndHeight(const LHRegion& region, char16_t* text, float* width, float* height);
	// BW1W120 005cb960. TODO: shared highlight Zoomers, language and audio-word selection bindings.
	// Mac: DrawAndProcessText__8HelpTextFRC8LHRegionPwQ28HelpText9ALIGNENUMfi
	float DrawAndProcessText(const LHRegion& region, char16_t* text, ALIGNENUM alignment, float y_offset,
	                         int process_messages);
	// BW1W120 005cbec0 Mac: CountWords__8HelpTextFPw
	int CountWords(char16_t* text);
	// BW1W120 005cbf10. TODO: pause/speed-status animation and rendering dependencies.
	void DrawPauseText();
	// BW1W120 005cc760. TODO: subtitle animation, frame timing and widescreen bindings.
	void DrawScriptText();
	// BW1W120 005ccab0. TODO: frontend chat history, camera/editor overlays and multiplayer timer.
	void Draw3DText();
	// BW1W120 005cce60. TODO: LH3D region-fill helper at 0081e360.
	void Draw3D();
	// BW1W120 005ccea0 (descriptive name)
	void ProcessFontCommand(int font);
	// BW1W120 005cced0 Mac: SendText__8HelpTextFPwf18HELP_TEXT_NARRATOR
	void SendText(char16_t* text, float value, HELP_TEXT_NARRATOR narrator);
	// BW1W120 005ccf50 Mac: SetStartDrawSettings__8HelpTextFv
	void SetStartDrawSettings();
	// BW1W120 005cd020. TODO: Draw3DText followed by the editor overlay at 005178d0.
	static void __stdcall Draw3DTextStub(void* context);
};

static_assert(sizeof(HelpText::TextEntry) == 0x10, "HelpText history entry size is incorrect");
static_assert(sizeof(HelpText) == 0xbc, "HelpText size is incorrect");

// Database entries are 12 bytes, distinct from the on-screen HelpText object.
struct HelpTextData
{
	uint32_t  field_0x0;
	uint32_t  field_0x4;
	char16_t* Text;

	// Mac: __dt__12HelpTextDataFv. Inlined in Windows database array deletion.
	~HelpTextData();
	// BW1W120 005cad00. Descriptive name; Mac database SetData confirms parameter types.
	void SetData(int index, HELP_TEXT_NARRATOR narrator, char16_t* sound, char16_t* text);
};

static_assert(sizeof(HelpTextData) == 0xc, "HelpTextData size is incorrect");

struct HelpTextDataBase
{
	// BW1W120 00d17ca8. TODO: Original global name unknown.
	static HelpTextDataBase HelpTextDatabase;
	// BW1W120 00d17c98. Descriptive name; filled from InfoScriptMultiplayer2.txt.
	static HelpTextDataBase MultiplayerTextDatabase;

	HelpTextData* array; /* 0x0 */
	uint32_t      count;

	// Mac: __ct__16HelpTextDataBaseFv; inlined by Windows startup helpers.
	HelpTextDataBase();
	~HelpTextDataBase();
	// Mac: DeleteAll__16HelpTextDataBaseFv; inlined into Windows teardown/reload.
	void DeleteAll();
	// BW1W120 005ccfc0. Descriptive name; entry is not defined as a function in Ghidra.
	void Reload();

	// Non-virtual methods

	// BW1W120 inlined BW1M100 100924c0 HelpTextDataBase::GetHelpText(unsigned long) const
	char16_t* GetHelpText(unsigned long index) const { return array[index < count && index != 0 ? index : 0].Text; }
	// BW1W120 005ccf80 Mac: SetData__16HelpTextDataBaseFiUl18HELP_TEXT_NARRATORPwPw
	void SetData(int index, unsigned long text_id, HELP_TEXT_NARRATOR narrator, char16_t* sound, char16_t* text);
};

#endif /* BW1_DECOMP_HELP_TEXT_INCLUDED_H */
