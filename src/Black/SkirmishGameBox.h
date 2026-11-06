#ifndef BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <stdlib.h> /* For _MAX_PATH */
#include <string>   /* For std::wstring */
#include <vector>   /* For std::vector */

#include <string> /* For std::wstring */
#include <vector> /* For std::vector */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupList;
struct SetupStaticText;

enum SKIRMISH_GAME_BOX_CONTROL_ID
{
	SKIRMISH_GAME_BOX_CONTROL_ID_LIST = 0,
	SKIRMISH_GAME_BOX_CONTROL_ID_TEXT = 1,
	SKIRMISH_GAME_BOX_CONTROL_ID_START = 998,
	SKIRMISH_GAME_BOX_CONTROL_ID_BACK = 999,
};

class SkirmishGameBox : public DialogBoxBase
{
public:
	SetupList*                List;               /* 0x10 */
	std::vector<std::wstring> Paths;              /* 0x14 */
	SetupStaticText*          Text;               /* 0x24 */
	SetupBigButton*           BackButton;         /* 0x28 */
	SetupBigButton*           StartButton;        /* 0x2c */
	char16_t                  MapPath[_MAX_PATH]; /* 0x30 */
	bool                      StartRequested;     /* 0x238 */

	// BW1W120 00cd0b88
	static SkirmishGameBox* Instance;

	// BW1W120 00544820 BW1M119 015c1910
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00544b90 BW1M119 015c15a0
	virtual void Destroy();
	// BW1W120 00544bd0 BW1M119 015c1240
	virtual void InitControls();

	// BW1W120 0053bda0 BW1M119 015cc260
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
	{
		if (Instance != NULL)
		{
			Instance->Callback(message, box, control, data1, data2);
		}
	}

	// BW1W120 00544990 BW1M119 null
	void Open(char16_t* title);
	// BW1W120 00544a80 BW1M119 015c1600
	void AddLine(char16_t* name, char16_t* path);
	// BW1W120 00544df0 BW1M119 015c0f10
	void __stdcall Callback(int message, SetupBox* box, SetupControl* control, int data1, int data2);
};

static_assert(sizeof(SkirmishGameBox) == 0x23c, "SkirmishGameBox size is incorrect");

#endif /* BW1_DECOMP_SKIRMISH_GAME_BOX_INCLUDED_H */
