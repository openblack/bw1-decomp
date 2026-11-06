#ifndef BW1_DECOMP_MAIN_MENU_INCLUDED_H
#define BW1_DECOMP_MAIN_MENU_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct SetupButton;
struct SetupStaticText;

#define MAIN_MENU_PROFILE_TEXT_ID 999
#define MAIN_MENU_REOPEN_DELAY    300

enum MAIN_MENU_BUTTON
{
	MAIN_MENU_BUTTON_CONTINUE = 0,
	MAIN_MENU_BUTTON_SKIRMISH = 1,
	MAIN_MENU_BUTTON_ONLINE = 2,
	MAIN_MENU_BUTTON_OPTIONS = 3,
	MAIN_MENU_BUTTON_QUIT = 4,
	_MAIN_MENU_BUTTON_COUNT = 5
};

class MainMenu : public DialogBoxBase
{
public:
	// BW1W120 00cd0b60
	static MainMenu* Instance;
	// BW1W120 00cd0b00
	static bool LeaveGamePending;
	// BW1W120 00cd0b01
	static bool QuitPending;
	// BW1W120 00cd0b02
	static bool SkirmishPending;
	// BW1W120 00bea294
	static int CloseTime;

	SetupButton*     Buttons[_MAIN_MENU_BUTTON_COUNT]; /* 0x10 */
	SetupStaticText* ProfileText;                      /* 0x24 */
	uint8_t          field_0x28[0x8];
	int              SelectedButton; /* 0x30 */
	bool32_t         AutoSaveValid;  /* 0x34 */

	// BW1W120 0053f910 BW1M119 015c7430
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0053fb50 BW1M119 015c73c0
	virtual void Destroy();
	// BW1W120 0053bd50 BW1M119 015ccc00
	virtual bool CanESCOut() { return false; }
	// BW1W120 0053fba0 BW1M119 015c6ce0
	virtual void InitControls();

	// BW1W120 00540020 BW1M119 015c6c60
	static bool AreWeAllowedToReopen();
	// BW1W120 00540040 BW1M119 015c6980
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2);

	// BW1W120 inlined
	~MainMenu() {}
};

static_assert(sizeof(MainMenu) == 0x38, "MainMenu size is incorrect");

// BW1W120 0053f740 BW1M119 inlined
int ProcessMainMenuTabs(int message, SetupBox* box, SetupControl* control, int data1, int data2);
// BW1W120 0053f7b0 BW1M119 015c7680
void AddMainMenuTabs(int selected);
// BW1W120 0053fb70 BW1M119 015c7080
void MMQuitButton(SetupBox* box, SetupControl* control);

#endif /* BW1_DECOMP_MAIN_MENU_INCLUDED_H */
