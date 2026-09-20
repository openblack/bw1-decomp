#ifndef BW1_DECOMP_SPELL_SETUP_BOX_INCLUDED_H
#define BW1_DECOMP_SPELL_SETUP_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h"     /* For struct DialogBoxBase */
#include "FrontEndSetupGame.h" /* For setupgamedata */

class SetupEdit;
class SetupBigButton;
class SetupMultiList;
class SetupStaticText;

class SpellSetupBox : public DialogBoxBase
{
public:
	// Recovered prefix only; complete allocation size and constructor still need corroboration.
	// These names describe the fields used by the recovered Init/InitControls bodies.
	setupgamedata*   OriginalSettings; /* 0x10 */
	setupgamedata    Settings;         /* 0x14 */
	SetupEdit*       Help;             /* 0x440 */
	SetupBigButton*  Accept;
	SetupBigButton*  Cancel;
	SetupMultiList*  OneShotList;
	SetupMultiList*  SpellList;
	SetupStaticText* OneShotLabel;
	SetupStaticText* SpellLabel; /* 0x458 */

	// Override methods

	// BW1W120 00547970 BW1M100 105cc310 void SpellSetupBox::Init(unsigned int, unsigned int, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00547c30 BW1M100 105cc2b0 void SpellSetupBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 00547c40 BW1M100 105cc120 void SpellSetupBox::InitControls(void)
	virtual void InitControls();
};

static_assert(offsetof(SpellSetupBox, Settings) == 0x14, "SpellSetupBox settings offset is incorrect");
static_assert(offsetof(SpellSetupBox, Help) == 0x440, "SpellSetupBox help offset is incorrect");
static_assert(offsetof(SpellSetupBox, SpellLabel) == 0x458, "SpellSetupBox label offset is incorrect");

#endif /* BW1_DECOMP_SPELL_SETUP_BOX_INCLUDED_H */
