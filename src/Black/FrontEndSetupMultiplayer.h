#ifndef BW1_DECOMP_FRONT_END_SETUP_MULTIPLAYER_INCLUDED_H
#define BW1_DECOMP_FRONT_END_SETUP_MULTIPLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */
#include "SetupGameData.h" /* For class setupgamedata */

struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;
struct SetupEdit;
struct SetupList;
struct SetupSlider;
struct SetupStaticText;
class SpellSetupBox;

enum SETUP_LANDSCAPE_BOX_CONTROL_ID
{
	SETUP_LANDSCAPE_BOX_CONTROL_ID_ACCEPT = 0,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_CANCEL = 1,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_NAME = 2,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_GUARANTEED_PLAYERS = 3,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_CITADEL_TOWNS = 4,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_NEUTRAL_TOWNS = 5,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_CREATURE_ALLOWED = 6,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_ROCKS_ALLOWED = 7,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_TREES_ALLOWED = 8,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_FIELDS_ALLOWED = 9,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_FISH_ALLOWED = 10,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_SLIDER_1 = 11,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_SLIDER_0 = 12,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_SLIDER_2 = 13,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_FIRST_MAP_LIST = 14,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_SECOND_MAP_LIST = 15,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_SPELLS = 17,
	SETUP_LANDSCAPE_BOX_CONTROL_ID_HELP = 998,
};

class SetupLandscapeBox : public DialogBoxBase
{
public:
	// BW1W120 00cd1664
	static SetupLandscapeBox* Instance;

	bool             ReloadSettings; /* 0x10 */
	setupgamedata*   OriginalSettings;
	setupgamedata    Settings;
	SpellSetupBox*   SpellDialog; /* 0x444 */
	SetupEdit*       Name;
	SetupEdit*       Help;
	SetupBigButton*  Accept; /* 0x450 */
	SetupBigButton*  Cancel;
	SetupStaticText* NameLabel;
	SetupStaticText* GuaranteedPlayersLabel;
	SetupStaticText* SliderLabels[SETUP_GAME_DATA_NUM_SLIDERS]; /* 0x460 */
	SetupStaticText* FirstMapLabel;
	SetupStaticText* SecondMapLabel; /* 0x470 */
	SetupSlider*     GuaranteedPlayers;
	SetupSlider*     Sliders[SETUP_GAME_DATA_NUM_SLIDERS];
	SetupCheckBox*   CitadelTowns; /* 0x484 */
	SetupCheckBox*   NeutralTowns;
	SetupCheckBox*   CreatureAllowed;
	SetupCheckBox*   RocksAllowed; /* 0x490 */
	SetupCheckBox*   TreesAllowed;
	SetupCheckBox*   FieldsAllowed;
	SetupCheckBox*   FishAllowed;
	uint32_t         field_0x4a0;
	SetupButton*     SpellsButton;
	SetupList*       FirstMapList; /* 0x4a8 */
	SetupList*       SecondMapList;

	// BW1W120 00546280 BW1M119 015d3c30
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00546d10 BW1M119 015d3bd0
	virtual void Destroy();
	// BW1W120 0054a210 BW1M119 015d45e0
	virtual void InitSubDialogs();
	// BW1W120 00546d20 BW1M119 015d36b0
	virtual void InitControls();

	// BW1W120 005471e0 BW1M119 015d3020
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y);
};
static_assert(sizeof(SetupLandscapeBox) == 0x4b0, "Data type is of wrong size");

#endif /* BW1_DECOMP_FRONT_END_SETUP_MULTIPLAYER_INCLUDED_H */
