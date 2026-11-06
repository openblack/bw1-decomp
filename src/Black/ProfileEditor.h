#ifndef BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H
#define BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupEdit;
struct SetupList;
struct SetupPicture;

#define PROFILE_EDITOR_NUM_TOOLTIPS 8

enum PROFILE_EDITOR_CONTROL_ID
{
	PROFILE_EDITOR_CONTROL_ID_LIST = 0,
	PROFILE_EDITOR_CONTROL_ID_CLOSE = 1,
	PROFILE_EDITOR_CONTROL_ID_NEW = 2,
	PROFILE_EDITOR_CONTROL_ID_DELETE = 3,
	PROFILE_EDITOR_CONTROL_ID_QUIT = 4,
	PROFILE_EDITOR_CONTROL_ID_NAME = 5,
	PROFILE_EDITOR_CONTROL_ID_SYMBOL = 123,
	PROFILE_EDITOR_CONTROL_ID_TATTOO = 998,
};

enum PROFILE_EDITOR_MESSAGE_BOX
{
	PROFILE_EDITOR_MESSAGE_BOX_NONE = 0,
	PROFILE_EDITOR_MESSAGE_BOX_DELETE = 1,
	PROFILE_EDITOR_MESSAGE_BOX_2 = 2,
	PROFILE_EDITOR_MESSAGE_BOX_3 = 3,
	PROFILE_EDITOR_MESSAGE_BOX_4 = 4,
	PROFILE_EDITOR_MESSAGE_BOX_QUIT = 5,
	PROFILE_EDITOR_MESSAGE_BOX_6 = 6,
};

class ProfileEditor : public DialogBoxBase
{
public:
	SetupList*      ProfileList;   /* 0x10 */
	SetupBigButton* CloseButton;   /* 0x14 */
	SetupBigButton* NewButton;     /* 0x18 */
	SetupBigButton* DeleteButton;  /* 0x1c */
	SetupBigButton* QuitButton;    /* 0x20 */
	SetupEdit*      NameEdit;      /* 0x24 */
	SetupPicture*   SymbolPicture; /* 0x28 */
	uint32_t        field_0x2c;
	SetupControl*   TooltipControls[PROFILE_EDITOR_NUM_TOOLTIPS]; /* 0x30 */
	SetupBigButton* TattooButton;                                 /* 0x50 */
	bool            ProfileAdded;                                 /* 0x54 */

	// BW1W120 00cd0b34
	static ProfileEditor* Instance;
	// BW1W120 00cd0b38
	static SetupBox* ActivatedBox;
	// BW1W120 00cd0b3c
	static PROFILE_EDITOR_MESSAGE_BOX MessageBoxState;
	// BW1W120 00cd0b04
	static bool RestartRequired;
	// BW1W120 00cd0b05
	static bool NewProfileShown;
	// BW1W120 00cd069c
	static char16_t InUseProfile[0x20];
	// BW1W120 00bea290
	static int InUseProfileIndex;
	// BW1W120 00bea298
	static int LastProfileIndex;

	// BW1W120 0053dd30 BW1M119 015c93d0
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0053e210 BW1M119 015c9370
	virtual void Destroy();
	// BW1W120 0053bd30 BW1M119 015ccc40
	virtual bool CanESCOut() { return Instance == NULL || !RestartRequired; }
	// BW1W120 0053e380 BW1M119 015c8fb0
	virtual void InitControls();

	// BW1W120 0053e6a0 BW1M119 015c8970
	static void MakeRestartBox();
	// BW1W120 0053e6f0 BW1M119 015c88c0
	static void MakeCloseBox();
	// BW1W120 0053e740 BW1M119 015c7c90
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2);

	// BW1W120 0053e220 BW1M119 015c91c0
	void UpdateTattooEdit();
	// BW1W120 0053e320 BW1M119 015c90f0
	void UpdateEditableControls();
	// BW1W120 0053e440 BW1M119 015c8cb0
	void UpdateCurrentProfile();
	// BW1W120 0053e510 BW1M119 015c8a00
	void RebuildList();

	// BW1W120 inlined
	ProfileEditor() { ProfileAdded = false; }

	// BW1W120 inlined
	~ProfileEditor() {}
};

static_assert(sizeof(ProfileEditor) == 0x58, "ProfileEditor size is incorrect");

#endif /* BW1_DECOMP_PROFILE_EDITOR_INCLUDED_H */
