#ifndef BW1_DECOMP_END_GAME_BOX_INCLUDED_H
#define BW1_DECOMP_END_GAME_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class EndGameBox : public DialogBoxBase
{
public:
	uint8_t field_0x10[0xac];

	// Override methods

	// BW1W120 0056e160 BW1M119 01324d10
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 0056e730 BW1M119 01324cb0
	virtual void Destroy();
	// BW1W120 0053be30 BW1M119 01324100
	virtual bool CanESCOut();
	// BW1W120 0056e740 BW1M119 013247b0
	virtual void InitControls();
};

#endif /* BW1_DECOMP_END_GAME_BOX_INCLUDED_H */
