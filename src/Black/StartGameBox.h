#ifndef BW1_DECOMP_START_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_START_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

class SetupBigButton;
class SetupButton;
class SetupList;
class SetupStaticText;

class StartGameBox : public DialogBoxBase
{
public:
	SetupStaticText* text; /* 0x10 */
	SetupList*       list;
	SetupButton*     button;
	SetupBigButton*  big_button;

	// Override methods

	// BW1W120 005445b0 BW1M100 105bae70 StartGameBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 00544730 BW1M100 105bae10 StartGameBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 00544740 BW1M100 105bad90 StartGameBox::InitControls(void)
	virtual void InitControls();
};

#endif /* BW1_DECOMP_START_GAME_BOX_INCLUDED_H */
