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

	// BW1W120 0056e160 BW1M100 1031c660 EndGameBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 0056e730 BW1M100 1031c600 EndGameBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 0053be30 BW1M100 1031ba50 EndGameBox::CanESCOut(void)
	virtual bool CanESCOut();
	// BW1W120 0056e740 BW1M100 1031c100 EndGameBox::InitControls(void)
	virtual void InitControls();
};

#endif /* BW1_DECOMP_END_GAME_BOX_INCLUDED_H */
