#ifndef BW1_DECOMP_DIALOG_BOX_IMMERSION_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_IMMERSION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupButton;
struct SetupStaticText;
enum DIALOG_BOX_IMMERSION_CONTROL_ID
{
	DIALOG_BOX_IMMERSION_CONTROL_ID_BACK = 122,
	DIALOG_BOX_IMMERSION_CONTROL_ID_LEVEL_BUTTON = 125,
	DIALOG_BOX_IMMERSION_CONTROL_ID_LEVEL_DOWN = 126,
	DIALOG_BOX_IMMERSION_CONTROL_ID_LEVEL_UP = 127,
	DIALOG_BOX_IMMERSION_CONTROL_ID_TEXT = 999,
};

class DialogBoxImmersion : public DialogBoxBase
{
public:
	SetupStaticText* Title;
	SetupStaticText* Description;
	SetupBigButton*  LevelDown;
	SetupBigButton*  LevelUp;
	SetupButton*     LevelButton;
	SetupBigButton*  Back;
	uint32_t         field_0x28;
	int              Level;

	// BW1W120 00514a80 BW1M119 012b6f30
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00514d70 BW1M119 012b6ed0
	virtual void Destroy();
	// BW1W120 00514d80 BW1M119 012b6e60
	virtual void InitControls();

	// BW1W120 005149d0 BW1M119 inlined
	DialogBoxImmersion();
	// BW1W120 005149f0 BW1M119 inlined
	~DialogBoxImmersion();
	// BW1W120 00514da0 BW1M119 012b6c30
	static void __stdcall ControlCallback(int event, SetupBox* box, SetupControl* control, int x, int y);

	// BW1W120 00514a00 BW1M119 012b73b0
	void SetLevelRadio(int level);
};

static_assert(sizeof(DialogBoxImmersion) == 0x30, "DialogBoxImmersion size is incorrect");

#endif /* BW1_DECOMP_DIALOG_BOX_IMMERSION_INCLUDED_H */
