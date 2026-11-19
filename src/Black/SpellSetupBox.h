#ifndef BW1_DECOMP_SPELL_SETUP_BOX_INCLUDED_H
#define BW1_DECOMP_SPELL_SETUP_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */
#include "SetupGameData.h" /* For class setupgamedata */

struct SetupBigButton;
struct SetupEdit;
struct SetupMultiList;
struct SetupStaticText;

enum SPELL_SETUP_BOX_CONTROL_ID
{
	SPELL_SETUP_BOX_CONTROL_ID_ACCEPT = 0,
	SPELL_SETUP_BOX_CONTROL_ID_CANCEL = 1,
	SPELL_SETUP_BOX_CONTROL_ID_ONE_SHOT_SPELL_LIST = 2,
	SPELL_SETUP_BOX_CONTROL_ID_SPELL_LIST = 3,
	SPELL_SETUP_BOX_CONTROL_ID_HELP = 998,
};

class SpellSetupBox : public DialogBoxBase
{
public:
	// BW1W120 00cd1668
	static SpellSetupBox* Instance;

	setupgamedata*   OriginalSettings; /* 0x10 */
	setupgamedata    Settings;
	SetupEdit*       Help; /* 0x440 */
	SetupBigButton*  Accept;
	SetupBigButton*  Cancel;
	SetupMultiList*  SpellList;
	SetupMultiList*  OneShotSpellList; /* 0x450 */
	SetupStaticText* SpellLabel;
	SetupStaticText* OneShotSpellLabel;

	// BW1W120 00547970 BW1M119 015d2d90
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00547c30 BW1M119 015d2d30
	virtual void Destroy();
	// BW1W120 00547c40 BW1M119 015d2ba0
	virtual void InitControls();

	// BW1W120 00547dc0 BW1M119 015d28f0
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y);
};
static_assert(sizeof(SpellSetupBox) == 0x45c, "Data type is of wrong size");

#endif /* BW1_DECOMP_SPELL_SETUP_BOX_INCLUDED_H */
