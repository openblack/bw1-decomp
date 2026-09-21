#ifndef BW1_DECOMP_MAIN_MENU_INCLUDED_H
#define BW1_DECOMP_MAIN_MENU_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class MainMenu : public DialogBoxBase
{
public:
	uint8_t field_0x10[0x28];

	// Override methods

	// BW1W120 0053f910 BW1M119 015c7430
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0053fb50 BW1M119 015c73c0
	virtual void Destroy();
	// BW1W120 0053bd50 BW1M119 015ccc00
	virtual bool CanESCOut();
	// BW1W120 0053fba0 BW1M119 015c6ce0
	virtual void InitControls();
};

#endif /* BW1_DECOMP_MAIN_MENU_INCLUDED_H */
