#ifndef BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H
#define BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h"        /* For struct DialogBoxBase */
#include "MultiplayerConstants.h" /* For MAX_MULTIPLAYER_PLAYERS */

struct SetupBigButton;
struct SetupCheckBox;
struct SetupHLineGraph;
struct SetupList;
struct SetupStaticText;
struct SetupTabButton;

#define MULTIPLAYER_CONDITION_BOX_NUM_TABS 5

enum MULTIPLAYER_CONDITION_BOX_CONTROL_ID
{
	MULTIPLAYER_CONDITION_BOX_CONTROL_ID_CHECK_BOX_FIRST = 1,
	MULTIPLAYER_CONDITION_BOX_CONTROL_ID_CHECK_BOX_LAST = 4,
	MULTIPLAYER_CONDITION_BOX_CONTROL_ID_LIST = 5,
	MULTIPLAYER_CONDITION_BOX_CONTROL_ID_GAME_OVER_TAB = 6,
	MULTIPLAYER_CONDITION_BOX_CONTROL_ID_TAB = 7,
	MULTIPLAYER_CONDITION_BOX_CONTROL_ID_BACK = 8,
};

class MultiplayerConditionBox : public DialogBoxBase
{
public:
	SetupTabButton*  Tabs[2];                             /* 0x10 */
	SetupBigButton*  BackButton;                          /* 0x18 */
	SetupCheckBox*   CheckBoxes[MAX_MULTIPLAYER_PLAYERS]; /* 0x1c */
	SetupHLineGraph* ScoreGraph;                          /* 0x2c */
	SetupList*       ConditionList;                       /* 0x30 */
	SetupStaticText* TitleText;                           /* 0x34 */
	int              CurrentTab;                          /* 0x38 */

	// Override methods

	// BW1W120 0056eef0 BW1M119 null
	virtual void Init(uint32_t width, uint32_t height,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0056f260 BW1M119 null
	virtual void Destroy();
	// BW1W120 0056f460 BW1M119 null
	virtual void InitControls();

	// BW1W120 00d06058
	static MultiplayerConditionBox* Instance;

	// BW1W120 0056f270 BW1M119 null
	static uint32_t __stdcall ConditionDraw(SetupList* list, int index, int x_min, int y_min, int x_max, int y_max,
	                                        int clip_min, int clip_max);
	// BW1W120 0056f6b0 BW1M119 null
	void UpdateGraph(uint32_t player_mask);
	// BW1W120 0056f7d0 BW1M119 null
	void __stdcall Callback(int message, SetupBox* box, SetupControl* control, int x, int y);

	// BW1W120 0053be70 BW1M119 null
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y)
	{
		if (Instance != NULL)
		{
			Instance->Callback(message, box, control, x, y);
		}
	}
};

#endif /* BW1_DECOMP_MULTIPLAYER_CONDITION_BOX_INCLUDED_H */
