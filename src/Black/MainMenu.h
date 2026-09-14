#ifndef BW1_DECOMP_MAIN_MENU_INCLUDED_H
#define BW1_DECOMP_MAIN_MENU_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SetupButton;
class SetupStaticText;

class MainMenu : public DialogBoxBase
{
public:
	// Descriptive member names recovered from Init.
	SetupButton*     Buttons[5]; /* 0x10 */
	SetupStaticText* TitleText;  /* 0x24 */
	uint8_t          field_0x28[0x10];

	// Override methods

	// BW1W120 0053f910 BW1M100 105c0610 MainMenu::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0053fb50 BW1M100 105c05a0 MainMenu::Destroy(void)
	virtual void Destroy();
	// BW1W120 0053bd50 BW1M100 105c5ef0 MainMenu::CanESCOut(void)
	virtual bool CanESCOut();
	// BW1W120 0053fba0 BW1M100 105bff40 MainMenu::InitControls(void)
	virtual void InitControls();
};

static_assert(sizeof(MainMenu) == 0x38, "MainMenu size is incorrect");
static_assert(offsetof(MainMenu, TitleText) == 0x24, "MainMenu title offset is incorrect");

#endif /* BW1_DECOMP_MAIN_MENU_INCLUDED_H */
