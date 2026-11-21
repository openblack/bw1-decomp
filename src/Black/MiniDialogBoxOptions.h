#ifndef BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H
#define BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupSlider;
struct SetupStaticText;

class MiniDialogBoxOptions : public DialogBoxBase
{
public:
#if defined(VERSION_BW1W130)
	SetupSlider*     MasterVolume;
	SetupSlider*     MusicVolume;
	SetupButton*     AccelerationButton;
	SetupBigButton*  AccelerationUp;
	SetupBigButton*  AccelerationDown;
	SetupButton*     ClickSensorButton;
	SetupBigButton*  ClickSensorUp;
	SetupBigButton*  ClickSensorDown;
	SetupBigButton*  VideoDown;
	SetupBigButton*  VideoUp;
	SetupBigButton*  Back;
	SetupBigButton*  QuitButton;
	SetupStaticText* SoundTitle;
	SetupStaticText* VideoTitle;
	SetupStaticText* SoundsOffText;
	SetupStaticText* GloveTitle;
	SetupCheckBox*   AutoSave;
	SetupCheckBox*   UseGlove;
	SetupCheckBox*   PushScroll;
	uint32_t         field_0x5c;
	uint32_t         field_0x60;
	SetupButton*     VideoButton;
#else
	SetupSlider*     MasterVolume;
	SetupSlider*     MusicVolume;
	SetupBigButton*  VideoDown;
	SetupBigButton*  VideoUp;
	SetupBigButton*  Back;
	SetupBigButton*  QuitButton;
	SetupStaticText* SoundTitle;
	SetupStaticText* VideoTitle;
	SetupStaticText* SoundsOffText;
	SetupCheckBox*   AutoSave;
	SetupCheckBox*   PushScroll;
	uint32_t         field_0x3c;
	uint32_t         field_0x40;
	SetupButton*     VideoButton;
#endif

	// BW1W120 00514f50 BW1M119 012b5bd0
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00515680 BW1M119 012b5b70
	virtual void Destroy();
	// BW1W120 00515810 BW1M119 012b5880
	virtual bool CanESCOut();
	// BW1W120 00515690 BW1M119 012b58e0
	virtual void InitControls();

	// BW1W120 00514f20 BW1M119 inlined
	MiniDialogBoxOptions();
	// BW1W120 00514f40 BW1M119 inlined
	~MiniDialogBoxOptions();
	// BW1W120 00515830 BW1M119 null
	static void __stdcall ControlCallback(int event, SetupBox* box, SetupControl* control, int x, int y);
};

#if defined(VERSION_BW1W130)
static_assert(sizeof(MiniDialogBoxOptions) == 0x68, "MiniDialogBoxOptions size is incorrect");
#else
static_assert(sizeof(MiniDialogBoxOptions) == 0x48, "MiniDialogBoxOptions size is incorrect");
#endif

#endif /* BW1_DECOMP_MINI_DIALOG_BOX_OPTIONS_INCLUDED_H */
