#ifndef BW1_DECOMP_HISTORY_BOX_INCLUDED_H
#define BW1_DECOMP_HISTORY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SetupBigButton;
class SetupButton;

class HistoryBox : public DialogBoxBase
{
public:
	// Descriptive member names recovered from Init.
	SetupBigButton* PreviousButton; /* 0x10 */
	SetupButton*    CloseButton;
	SetupBigButton* NextButton;

	// Override methods

	// BW1W120 00545230 BW1M100 105b9ac0 void HistoryBox::Init(unsigned int, unsigned int, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 005453b0 BW1M100 105b9a60 void HistoryBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 00545460 BW1M100 105b98b0 bool HistoryBox::WantsKeyControl(void)
	virtual bool WantsKeyControl();
	// BW1W120 00545470 BW1M100 105b97c0 bool HistoryBox::WantsMouseControl(void)
	virtual bool WantsMouseControl();
	// BW1W120 005454f0 BW1M100 105b9780 bool HistoryBox::CanESCOut(void)
	virtual bool CanESCOut();
	// BW1W120 005453c0 BW1M100 105b9a20 void HistoryBox::InitControls(void)
	virtual void InitControls();
};

static_assert(sizeof(HistoryBox) == 0x1c, "HistoryBox size is incorrect");

#endif /* BW1_DECOMP_HISTORY_BOX_INCLUDED_H */
