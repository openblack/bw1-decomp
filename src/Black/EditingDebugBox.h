#ifndef BW1_DECOMP_EDITING_DEBUG_BOX_INCLUDED_H
#define BW1_DECOMP_EDITING_DEBUG_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <stddef.h> /* For wchar_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SetupStaticText;
class SetupEdit;
class SetupBigButton;

class EditingDebugBox : public DialogBoxBase
{
public:
	SetupStaticText* PromptText; /* 0x10 */
	SetupEdit*       Edit;
	SetupBigButton*  CancelButton;
	SetupBigButton*  ContinueButton;
	uint32_t         field_0x20;
	wchar_t          Prompt[0x100]; /* 0x24 */
	wchar_t*         InitialText;   /* 0x224 */

	// Override methods

	// BW1W120 0053d520 BW1M100 105c3250 EditingDebugBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox*, SetupControl*, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0053d6f0 BW1M100 105c31f0 EditingDebugBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 0053d700 BW1M100 105c3130 EditingDebugBox::InitControls(void)
	virtual void InitControls();
};

#endif /* BW1_DECOMP_EDITING_DEBUG_BOX_INCLUDED_H */
