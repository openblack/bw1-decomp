#ifndef BW1_DECOMP_START_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_START_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupButton;
struct SetupList;
struct SetupStaticText;

enum START_GAME_BOX_CONTROL_ID
{
	START_GAME_BOX_CONTROL_ID_LIST = 0,
	START_GAME_BOX_CONTROL_ID_TEXT = 1,
	START_GAME_BOX_CONTROL_ID_BUTTON = 999,
};

class StartGameBox : public DialogBoxBase
{
public:
	SetupStaticText* text; /* 0x10 */
	SetupList*       list;
	SetupButton*     button;
	SetupBigButton*  BigButton;

	// BW1W120 00cd0b84
	static StartGameBox* Instance;

	// BW1W120 005445b0 BW1M119 015c1cd0
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00544730 BW1M119 015c1c70
	virtual void Destroy();
	// BW1W120 00544740 BW1M119 015c1bf0
	virtual void InitControls();

	// BW1W120 0053bd70 BW1M119 015cc310
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
	{
		if (Instance != NULL)
		{
			Instance->Callback(message, box, control, data1, data2);
		}
	}

	// BW1W120 00544770 BW1M119 015c1ab0
	void __stdcall Callback(int message, SetupBox* box, SetupControl* control, int data1, int data2);
};

static_assert(sizeof(StartGameBox) == 0x20, "StartGameBox size is incorrect");

#endif /* BW1_DECOMP_START_GAME_BOX_INCLUDED_H */
