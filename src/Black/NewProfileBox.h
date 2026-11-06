#ifndef BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H
#define BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupEdit;
struct SetupPicture;

enum NEW_PROFILE_BOX_CONTROL_ID
{
	NEW_PROFILE_BOX_CONTROL_ID_OK = 1,
	NEW_PROFILE_BOX_CONTROL_ID_CANCEL = 2,
	NEW_PROFILE_BOX_CONTROL_ID_NAME = 3,
	NEW_PROFILE_BOX_CONTROL_ID_SYMBOL = 123,
};

class NewProfileBox : public DialogBoxBase
{
public:
	SetupEdit*      NameEdit;      /* 0x10 */
	SetupBigButton* OkButton;      /* 0x14 */
	SetupBigButton* CancelButton;  /* 0x18 */
	SetupPicture*   SymbolPicture; /* 0x1c */
	bool            Cancelled;     /* 0x20 */

	// BW1W120 00cd0b24
	static NewProfileBox* Instance;

	// BW1W120 0053ce80 BW1M119 015ca7b0
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0053d150 BW1M119 015ca750
	virtual void Destroy();
	// BW1W120 0053bd10 BW1M119 015ccca0
	virtual bool CanESCOut() { return false; }
	// BW1W120 0053d160 BW1M119 015ca650
	virtual void InitControls();

	// BW1W120 0053d210 BW1M119 015ca330
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2);

	// BW1W120 inlined
	~NewProfileBox() {}
};

static_assert(sizeof(NewProfileBox) == 0x24, "NewProfileBox size is incorrect");

#endif /* BW1_DECOMP_NEW_PROFILE_BOX_INCLUDED_H */
