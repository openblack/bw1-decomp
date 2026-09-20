#ifndef BW1_DECOMP_FRONT_END_SETUP_MULTIPLAYER_INCLUDED_H
#define BW1_DECOMP_FRONT_END_SETUP_MULTIPLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h"     /* For struct DialogBoxBase */
#include "FrontEndSetupGame.h" /* For setupgamedata */

class SpellSetupBox;
class SetupEdit;
class SetupBigButton;
class SetupStaticText;
class SetupSlider;
class SetupCheckBox;
class SetupButton;
class SetupList;

class SetupLandscapeBox : public DialogBoxBase
{
public:
	// Recovered prefix only. Do not allocate until the complete layout and constructor are established.
	// Member names are descriptive; InitSubDialogs remains owned by FrontEndSetupMultiplayer.cpp.
	bool             ReloadSettings;   /* 0x10 */
	setupgamedata*   OriginalSettings; /* 0x14 */
	setupgamedata    Settings;         /* 0x18 */
	SpellSetupBox*   SpellDialog;      /* 0x444 */
	SetupEdit*       Name;
	SetupEdit*       Help;
	SetupBigButton*  Accept;
	SetupBigButton*  Cancel;
	SetupStaticText* NameLabel;
	SetupStaticText* PlayerCountLabel;
	SetupStaticText* Label0x460;
	SetupStaticText* Label0x464;
	SetupStaticText* Label0x468;
	SetupStaticText* ListLabel0x46c;
	SetupStaticText* ListLabel0x470;
	SetupSlider*     PlayerCount; /* 0x474 */
	SetupSlider*     Slider0x478;
	SetupSlider*     Slider0x47c;
	SetupSlider*     Slider0x480;
	SetupCheckBox*   CitadelTowns;
	SetupCheckBox*   NeutralTowns;
	SetupCheckBox*   Creatures;
	SetupCheckBox*   Rocks;
	SetupCheckBox*   Trees;
	SetupCheckBox*   Fields;
	SetupCheckBox*   Fish;
	uint32_t         field_0x4a0;
	SetupButton*     SpellButton;
	SetupList*       List0x4a8;
	SetupList*       List0x4ac;

	// Override methods

	// BW1W120 00546280 BW1M100 105cd3c0 void SetupLandscapeBox::Init(unsigned int, unsigned int, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00546d10 BW1M100 105cd360 void SetupLandscapeBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 0054a210 BW1M100 105cdd70 void SetupLandscapeBox::InitSubDialogs(void)
	virtual void InitSubDialogs();
	// BW1W120 00546d20 BW1M100 105cce40 void SetupLandscapeBox::InitControls(void)
	virtual void InitControls();
};

static_assert(offsetof(SetupLandscapeBox, Settings) == 0x18, "SetupLandscapeBox settings offset is incorrect");
static_assert(offsetof(SetupLandscapeBox, SpellDialog) == 0x444, "SetupLandscapeBox child offset is incorrect");
static_assert(offsetof(SetupLandscapeBox, List0x4ac) == 0x4ac, "SetupLandscapeBox list offset is incorrect");

#endif /* BW1_DECOMP_FRONT_END_SETUP_MULTIPLAYER_INCLUDED_H */
