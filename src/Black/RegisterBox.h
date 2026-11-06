#ifndef BW1_DECOMP_REGISTER_BOX_INCLUDED_H
#define BW1_DECOMP_REGISTER_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupButton;
struct SetupEdit;

enum REGISTER_BOX_CONTROL_ID
{
	REGISTER_BOX_CONTROL_ID_OK = 1,
	REGISTER_BOX_CONTROL_ID_REGISTER = 2,
	REGISTER_BOX_CONTROL_ID_CANCEL = 3,
	REGISTER_BOX_CONTROL_ID_NAME = 4,
	REGISTER_BOX_CONTROL_ID_PASSWORD = 5,
};

class RegisterBox : public DialogBoxBase
{
public:
	SetupEdit*   NameEdit;       /* 0x10 */
	SetupEdit*   PasswordEdit;   /* 0x14 */
	SetupButton* OkButton;       /* 0x18 */
	SetupButton* CancelButton;   /* 0x1c */
	SetupButton* RegisterButton; /* 0x20 */
	bool         Cancelled;      /* 0x24 */

	// BW1W120 00cd0b30
	static RegisterBox* Instance;

	// BW1W120 0053d7d0 BW1M119 015c9b30
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0053db00 BW1M119 015c9ad0
	virtual void Destroy();
	// BW1W120 0053db10 BW1M119 015c9a40
	virtual void InitControls();

	// BW1W120 0053dbb0 BW1M119 015c9830
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2);

	// BW1W120 inlined
	~RegisterBox() {}
};

static_assert(sizeof(RegisterBox) == 0x28, "RegisterBox size is incorrect");

#endif /* BW1_DECOMP_REGISTER_BOX_INCLUDED_H */
