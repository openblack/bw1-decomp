#ifndef BW1_DECOMP_SETUP_MULTIPLAYER_MAIN_INCLUDED_H
#define BW1_DECOMP_SETUP_MULTIPLAYER_MAIN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */
#include "SetupGameData.h" /* For class setupgamedata */

struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupEdit;
class SetupLandscapeBox;

enum SETUP_MULTIPLAYER_MAIN_CONTROL_ID
{
	SETUP_MULTIPLAYER_MAIN_CONTROL_ID_ACCEPT = 0,
	SETUP_MULTIPLAYER_MAIN_CONTROL_ID_DOWNLOADED_LEVELS = 1,
	SETUP_MULTIPLAYER_MAIN_CONTROL_ID_RANDOM_LANDSCAPES = 2,
	SETUP_MULTIPLAYER_MAIN_CONTROL_ID_SELECT_MAP = 3,
	SETUP_MULTIPLAYER_MAIN_CONTROL_ID_SETUP_RANDOM_LANDSCAPE = 4,
	SETUP_MULTIPLAYER_MAIN_CONTROL_ID_HELP = 998,
};

class SetupMultiplayerMain : public DialogBoxBase
{
public:
	// BW1W120 00cd1680
	static SetupMultiplayerMain* Instance;

	bool               ReloadSettings; /* 0x10 */
	SetupEdit*         Help;
	SetupBigButton*    Accept;
	SetupButton*       SelectMapButton;
	SetupButton*       SetupRandomLandscapeButton; /* 0x20 */
	uint32_t           field_0x24;
	SetupCheckBox*     DownloadedLevels;
	SetupCheckBox*     RandomLandscapes;
	setupgamedata*     CurrentData;     /* 0x30 */
	setupgamedata      Data;            /* 0x34 */
	SetupLandscapeBox* LandscapeDialog; /* 0x460 */

	// Override methods

	// BW1W120 00549b60 BW1M119 015d4a80
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00549f80 BW1M119 015d4a20
	virtual void Destroy();
	// BW1W120 0054a180 BW1M119 015d46a0
	virtual void InitSubDialogs();
	// BW1W120 00549f90 BW1M119 015d4920
	virtual void InitControls();

	// BW1W120 0054a020 BW1M119 015d4780
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y);

	// BW1W120 inlined
	SetupMultiplayerMain() { ReloadSettings = false; }

	// BW1W120 inlined
	~SetupMultiplayerMain() {}
};
static_assert(sizeof(SetupMultiplayerMain) == 0x464, "Data type is of wrong size");

#endif /* BW1_DECOMP_SETUP_MULTIPLAYER_MAIN_INCLUDED_H */
