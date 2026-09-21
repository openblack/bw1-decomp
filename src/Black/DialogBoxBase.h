#ifndef BW1_DECOMP_DIALOG_BOX_BASE_INCLUDED_H
#define BW1_DECOMP_DIALOG_BOX_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <stddef.h>
#include <re_common.h> /* For bool32_t */

// Forward Declares

class SetupBox;
class SetupControl;

class DialogBoxBase
{
public:
	// Descriptive name for the intrusive dialog list.
	// BW1W120 00cc6298
	static DialogBoxBase* First;
	SetupBox*             setup_box; /* 0x4 */
	uint8_t               field_0x8;
	uint8_t               field_0x9;
	uint8_t               field_0xa;
	uint8_t               field_0xb;
	DialogBoxBase*        next;

	// Override methods

	// BW1W120 00513400 BW1M119 012b55a0
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00513590 BW1M119 012b5480
	virtual void Destroy();
	// BW1W120 005127d0 BW1M119 01107290
	virtual void InitSubDialogs();
	// BW1W120 005135f0 BW1M119 012b53c0
	virtual void Show();
	// BW1W120 005127e0 BW1M119 011072d0
	virtual void CloseNotification();
	// BW1W120 005127f0 BW1M119 010b7fc0
	virtual bool WantsKeyControl();
	// BW1W120 00512800 BW1M119 01107310
	virtual bool WantsMouseControl();
	// BW1W120 00512810 BW1M119 01357800
	virtual bool CanESCOut();
	// BW1W120 purecall
	virtual void InitControls() = 0;

	// Static methods

	// BW1W120 005136e0 BW1M119 012b50d0
	static void HideAll();

	// Non-virtual methods
	// BW1W120 00513770 BW1M119 012b5060
	bool32_t IsVisible();

	// Constructors

	// BW1W120 005133a0 BW1M119 012b5830
	DialogBoxBase();
	// BW1W120 005133c0 BW1M119 012b5760
	~DialogBoxBase();
};

#endif /* BW1_DECOMP_DIALOG_BOX_BASE_INCLUDED_H */
