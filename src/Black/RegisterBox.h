#ifndef BW1_DECOMP_REGISTER_BOX_INCLUDED_H
#define BW1_DECOMP_REGISTER_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SetupEdit;
class SetupButton;

class RegisterBox : public DialogBoxBase
{
public:
	SetupEdit*   NameEdit; /* 0x10 */
	SetupEdit*   PasswordEdit;
	SetupButton* RegisterButton;
	SetupButton* ContinueButton;
	SetupButton* LoginButton;
	bool         Completed; /* 0x24 */

	// Override methods

	// BW1W120 0053d7d0 BW1M100 105c2d30 RegisterBox::Init(unsigned long, unsigned long, void (*)(int, SetupBox*, SetupControl*, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0053db00 BW1M100 105c2cd0 RegisterBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 0053db10 BW1M100 105c2bd0 RegisterBox::InitControls(void)
	virtual void InitControls();
};

#endif /* BW1_DECOMP_REGISTER_BOX_INCLUDED_H */
