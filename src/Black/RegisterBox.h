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
	// Descriptive member names, recovered from Init and InitControls.
	SetupEdit*   NameEdit; /* 0x10 */
	SetupEdit*   PasswordEdit;
	SetupButton* RegisterButton;
	SetupButton* ContinueButton;
	SetupButton* LoginButton;
	bool         Completed; /* 0x24 */

	// Override methods

	// BW1W120 0053d7d0 BW1M100 105c2d30 void RegisterBox::Init(unsigned int, unsigned int, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0053db00 BW1M100 105c2cd0 void RegisterBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 0053db10 BW1M100 105c2bd0 void RegisterBox::InitControls(void)
	virtual void InitControls();
};

static_assert(sizeof(RegisterBox) == 0x28, "RegisterBox size is incorrect");
static_assert(offsetof(RegisterBox, Completed) == 0x24, "RegisterBox completion offset is incorrect");

#endif /* BW1_DECOMP_REGISTER_BOX_INCLUDED_H */
