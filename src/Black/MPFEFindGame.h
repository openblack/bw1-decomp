#ifndef BW1_DECOMP_MPFE_FIND_GAME_INCLUDED_H
#define BW1_DECOMP_MPFE_FIND_GAME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupCheckBox;
struct SetupStaticText;

enum MPFE_FIND_GAME_CONTROL_ID
{
	MPFE_FIND_GAME_CONTROL_ID_BACK = 1,
	MPFE_FIND_GAME_CONTROL_ID_TEXT = 2,
	MPFE_FIND_GAME_CONTROL_ID_LAN = 3,
	MPFE_FIND_GAME_CONTROL_ID_INTERNET = 4,
	MPFE_FIND_GAME_CONTROL_ID_NEXT = 5,
};

class MPFEFindGame : public DialogBoxBase
{
public:
	SetupBigButton*  BackButton;       /* 0x10 */
	SetupBigButton*  NextButton;       /* 0x14 */
	SetupStaticText* Text;             /* 0x18 */
	SetupCheckBox*   InternetCheckBox; /* 0x1c */
	SetupCheckBox*   LanCheckBox;      /* 0x20 */
	bool             LanSelected;      /* 0x24 */

	// BW1W120 00d40ee8
	static MPFEFindGame Instance;

	// Override methods

	// BW1W120 0062f650 BW1M119 013adb40
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0062f8c0 BW1M119 013adb10
	virtual void Destroy();
	// BW1W120 0062f8d0 BW1M119 013ad9c0
	virtual void InitControls();

	// Static methods

	// BW1W120 0062f9e0 BW1M119 013ad820
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2);

	// Constructors

	// BW1W120 0062f5a0 BW1M119 inlined
	MPFEFindGame();
	// BW1W120 0062f5f0 BW1M119 013adf30
	~MPFEFindGame();
};

static_assert(sizeof(MPFEFindGame) == 0x28, "MPFEFindGame size is incorrect");

#endif /* BW1_DECOMP_MPFE_FIND_GAME_INCLUDED_H */
