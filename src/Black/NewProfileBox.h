#ifndef BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H
#define BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class SetupEdit;
class SetupBigButton;
class SetupPicture;

class NewProfileBox : public DialogBoxBase
{
public:
	// Descriptive member names, recovered from Init and InitControls.
	SetupEdit*      NameEdit; /* 0x10 */
	SetupBigButton* CancelButton;
	SetupBigButton* ContinueButton;
	SetupPicture*   SymbolPicture;
	bool            Completed; /* 0x20 */

	// Override methods

	// BW1W120 0053ce80 BW1M100 105c3a30 void NewProfileBox::Init(unsigned int, unsigned int, void (*)(int, SetupBox *, SetupControl *, int, int))
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0053d150 BW1M100 105c39d0 void NewProfileBox::Destroy(void)
	virtual void Destroy();
	// BW1W120 0053bd10 BW1M100 105c5f90 bool NewProfileBox::CanESCOut(void)
	virtual bool CanESCOut();
	// BW1W120 0053d160 BW1M100 105c3890 void NewProfileBox::InitControls(void)
	virtual void InitControls();
};

static_assert(sizeof(NewProfileBox) == 0x24, "NewProfileBox size is incorrect");
static_assert(offsetof(NewProfileBox, Completed) == 0x20, "NewProfileBox completion offset is incorrect");

#endif /* BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H */
