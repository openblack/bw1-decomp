#ifndef BW1_DECOMP_EDITING_DEBUG_BOX_INCLUDED_H
#define BW1_DECOMP_EDITING_DEBUG_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */
#include <uchar.h>  /* For char16_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupEdit;
struct SetupStaticText;

enum EDITING_DEBUG_BOX_CONTROL_ID
{
	EDITING_DEBUG_BOX_CONTROL_ID_EDIT = 1,
	EDITING_DEBUG_BOX_CONTROL_ID_TITLE = 2,
	EDITING_DEBUG_BOX_CONTROL_ID_CANCEL = 3,
	EDITING_DEBUG_BOX_CONTROL_ID_OK = 4,
};

class EditingDebugBox : public DialogBoxBase
{
public:
	SetupStaticText* TitleText;    /* 0x10 */
	SetupEdit*       Edit;         /* 0x14 */
	SetupBigButton*  OkButton;     /* 0x18 */
	SetupBigButton*  CancelButton; /* 0x1c */
	void (*DoneCallback)();        /* 0x20 */
	char16_t  Title[0x100];        /* 0x24 */
	char16_t* Text;                /* 0x224 */

	// BW1W120 00cd0b2c
	static EditingDebugBox* Instance;

	// BW1W120 0053d520 BW1M119 015ca010
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 0053d6f0 BW1M119 015c9fb0
	virtual void Destroy();
	// BW1W120 0053d700 BW1M119 015c9f30
	virtual void InitControls();

	// BW1W120 0053d760 BW1M119 015c9e20
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2);
};

static_assert(sizeof(EditingDebugBox) == 0x228, "EditingDebugBox size is incorrect");

#endif /* BW1_DECOMP_EDITING_DEBUG_BOX_INCLUDED_H */
