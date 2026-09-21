#ifndef BW1_DECOMP_EDITOR_ANIM_INCLUDED_H
#define BW1_DECOMP_EDITOR_ANIM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include <chlasm/LHKeyBoard.h>                 /* For enum LH_KEY */
#include <Lionhead/LH3DLib/development/Prss.h> /* For struct Prss */

class AnimEdit : public Prss
{
public:
	// Override methods

	// BW1W120 0051cde0 BW1M119 inlined
	virtual Prss* ProcessTurn();
	// BW1W120 0051d460 BW1M119 inlined
	virtual void Display();
	// BW1W120 0051de20 BW1M119 inlined
	virtual void PrssKey(LH_KEY param_1, uint16_t param_2);
	// BW1W120 0051e370 BW1M119 inlined
	virtual void ClickFunction(int param_1, int param_2, int param_3);
};

#endif /* BW1_DECOMP_EDITOR_ANIM_INCLUDED_H */
