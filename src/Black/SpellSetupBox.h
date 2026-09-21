#ifndef BW1_DECOMP_SPELL_SETUP_BOX_INCLUDED_H
#define BW1_DECOMP_SPELL_SETUP_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SpellSetupBox : public DialogBoxBase
{
public:
	// Override methods

	// BW1W120 00547970 BW1M119 015d2d90
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 00547c30 BW1M119 015d2d30
	virtual void Destroy();
	// BW1W120 00547c40 BW1M119 015d2ba0
	virtual void InitControls();
};

#endif /* BW1_DECOMP_SPELL_SETUP_BOX_INCLUDED_H */
