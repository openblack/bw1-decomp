#ifndef BW1_DECOMP_DIALOG_BOX_OPTIONS_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

class DialogBoxImmersion;
class MiniDialogBoxOptions;
struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupSlider;
enum DIALOG_BOX_OPTIONS_CONTROL_ID
{
	DIALOG_BOX_OPTIONS_CONTROL_ID_MASTER_VOLUME = 100,
	DIALOG_BOX_OPTIONS_CONTROL_ID_MUSIC_VOLUME = 101,
	DIALOG_BOX_OPTIONS_CONTROL_ID_VIDEO_UP_BUTTON = 102,
	DIALOG_BOX_OPTIONS_CONTROL_ID_VIDEO_UP = 103,
	DIALOG_BOX_OPTIONS_CONTROL_ID_VIDEO_DOWN = 104,
	DIALOG_BOX_OPTIONS_CONTROL_ID_LEFT_HANDED = 105,
	DIALOG_BOX_OPTIONS_CONTROL_ID_TEXT_TOP_TO_BOTTOM = 106,
	DIALOG_BOX_OPTIONS_CONTROL_ID_HELP_BUTTON = 107,
	DIALOG_BOX_OPTIONS_CONTROL_ID_HELP_UP = 108,
	DIALOG_BOX_OPTIONS_CONTROL_ID_HELP_DOWN = 109,
	DIALOG_BOX_OPTIONS_CONTROL_ID_TEXT_BUTTON = 110,
	DIALOG_BOX_OPTIONS_CONTROL_ID_TEXT_UP = 111,
	DIALOG_BOX_OPTIONS_CONTROL_ID_TEXT_DOWN = 112,
	DIALOG_BOX_OPTIONS_CONTROL_ID_TOOL_TIP_BUTTON = 113,
	DIALOG_BOX_OPTIONS_CONTROL_ID_TOOL_TIP_DOWN = 114,
	DIALOG_BOX_OPTIONS_CONTROL_ID_TOOL_TIP_UP = 115,
	DIALOG_BOX_OPTIONS_CONTROL_ID_CREATURE_HELP = 116,
	DIALOG_BOX_OPTIONS_CONTROL_ID_MINI_AUTOSAVE = 117,
	DIALOG_BOX_OPTIONS_CONTROL_ID_MINI_PUSH_SCROLL = 118,
	DIALOG_BOX_OPTIONS_CONTROL_ID_HELP_TEXT_SPEED = 120,
	DIALOG_BOX_OPTIONS_CONTROL_ID_CONTROL_OPTIONS = 121,
	DIALOG_BOX_OPTIONS_CONTROL_ID_BACK = 122,
	DIALOG_BOX_OPTIONS_CONTROL_ID_QUIT_GAME = 123,
#if defined(VERSION_BW1W130)
	DIALOG_BOX_OPTIONS_CONTROL_ID_USE_GLOVE = 128,
	DIALOG_BOX_OPTIONS_CONTROL_ID_ACCELERATION_BUTTON = 129,
	DIALOG_BOX_OPTIONS_CONTROL_ID_ACCELERATION_UP = 130,
	DIALOG_BOX_OPTIONS_CONTROL_ID_ACCELERATION_DOWN = 131,
	DIALOG_BOX_OPTIONS_CONTROL_ID_CLICK_SENSOR_BUTTON = 132,
	DIALOG_BOX_OPTIONS_CONTROL_ID_CLICK_SENSOR_UP = 133,
	DIALOG_BOX_OPTIONS_CONTROL_ID_CLICK_SENSOR_DOWN = 134,
#endif
	DIALOG_BOX_OPTIONS_CONTROL_ID_TITLE = 999,
};

class DialogBoxOptions : public DialogBoxBase
{
public:
	SetupButton*    HelpLevelButton;
	SetupBigButton* HelpLevelDown;
	SetupBigButton* HelpLevelUp;
	SetupButton*    TextLevelButton;
	SetupBigButton* TextLevelDown;
	SetupBigButton* TextLevelUp;
	SetupButton*    ToolTipLevelButton;
	SetupBigButton* ToolTipLevelDown;
	SetupBigButton* ToolTipLevelUp;
	SetupCheckBox*  CreatureHelp;
	SetupCheckBox*  LeftHanded;
	SetupCheckBox*  TextTopToBottom;
	SetupSlider*    HelpTextSpeed;
	SetupBigButton* Back;
	int             ToolTipLevel;
	int             TextLevel;
	int             HelpLevel;
	int             VideoLevel;
#if defined(VERSION_BW1W130)
	int AccelerationLevel;
	int ClickSensorLevel;
#endif
	int                   MaxVideoLevel;
	int                   AppliedVideoLevel;
	MiniDialogBoxOptions* mini; /* 0x60 */
	DialogBoxImmersion*   immersion;

	// BW1W120 00513860 BW1M119 012b8bb0
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00513da0 BW1M119 012b8b40
	virtual void Destroy();
	// BW1W120 00513830 BW1M119 012b9230
	virtual bool CanESCOut();
	// BW1W120 00513dc0 BW1M119 012b8a70
	virtual void InitControls();

	// BW1W120 00513810 BW1M119 012b91c0
	DialogBoxOptions();
	// Nonvirtual; implementation remains extracted.
	// BW1W120 00513850 BW1M119 012b9130
	~DialogBoxOptions();
	// BW1W120 005140c0 BW1M119 012b7c10
	static void __stdcall ControlCallback(int event, SetupBox* box, SetupControl* control, int x, int y);

	// BW1W120 00513e10 BW1M119 012b8980
	void SetHelpRadio(int level);
	// BW1W120 00513ea0 BW1M119 inlined
	int GetHelpRadio();
	// BW1W120 00513eb0 BW1M119 012b8870
	void SetVideoRadio(int level);
	// BW1W120 00513f80 BW1M119 inlined
	int GetVideoRadio();
	// BW1W120 00513f90 BW1M119 012b8530
	void SetTextRadio(int level);
	// BW1W120 00514010 BW1M119 inlined
	int GetTextRadio();
	// BW1W120 00514020 BW1M119 012b8440
	void SetToolTipRadio(int level);
	// BW1W120 005140b0 BW1M119 inlined
	int GetToolTipRadio();
#if defined(VERSION_BW1W130)
	// BW1W120 null BW1M119 null
	void SetAccelerationRadio(int level);
	// BW1W120 null BW1M119 null
	int GetAccelerationRadio();
	// BW1W120 null BW1M119 null
	void SetClickSensorRadio(int level);
	// BW1W120 null BW1M119 null
	int GetClickSensorRadio();
#endif
	// BW1W120 00514620 BW1M119 012b7740
	void ReadRegistrySettings();
	// BW1W120 005148b0 BW1M119 012b74a0
	void WriteRegistrySettings();
};

#if defined(VERSION_BW1W130)
static_assert(sizeof(DialogBoxOptions) == 0x70, "DialogBoxOptions size is incorrect");
#else
static_assert(sizeof(DialogBoxOptions) == 0x68, "DialogBoxOptions size is incorrect");
#endif

#endif /* BW1_DECOMP_DIALOG_BOX_OPTIONS_INCLUDED_H */
