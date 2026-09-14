#ifndef BW1_DECOMP_SKIP_BOX_INCLUDED_H
#define BW1_DECOMP_SKIP_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SetupCheckBox;

class SkipBox : public DialogBoxBase
{
public:
	// Descriptive member names recovered from InitControls.
	SetupCheckBox* Options[4];     /* 0x10 */
	int            SelectedOption; /* 0x20 */

	// Override methods

	// BW1W120 005441c0 BW1M100 105bb390 SkipBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00544430 BW1M100 105bb330 SkipBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 0053bd60 BW1M100 105c5e80 SkipBox::CanESCOut(void)
	virtual bool CanESCOut();
	// BW1W120 00544440 BW1M100 105bb270 SkipBox::InitControls(void)
	virtual void InitControls();
};

static_assert(sizeof(SkipBox) == 0x24, "SkipBox size is incorrect");
static_assert(offsetof(SkipBox, SelectedOption) == 0x20, "SkipBox option offset is incorrect");

#endif /* BW1_DECOMP_SKIP_BOX_INCLUDED_H */
