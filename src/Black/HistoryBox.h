#ifndef BW1_DECOMP_HISTORY_BOX_INCLUDED_H
#define BW1_DECOMP_HISTORY_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

// Forward Declares

struct SetupBigButton;
struct SetupButton;

enum HISTORY_BOX_CONTROL_ID
{
	HISTORY_BOX_CONTROL_ID_PREVIOUS = 1,
	HISTORY_BOX_CONTROL_ID_NEXT = 2,
	HISTORY_BOX_CONTROL_ID_DONE = 999,
};

class HistoryBox : public DialogBoxBase
{
public:
	SetupBigButton* PreviousButton; /* 0x10 */
	SetupButton*    DoneButton;     /* 0x14 */
	SetupBigButton* NextButton;     /* 0x18 */

	// BW1W120 00cd0b90
	static HistoryBox* Instance;

	// BW1W120 00545230 BW1M119 015c0920
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 005453b0 BW1M119 015c08c0
	virtual void Destroy();
	// BW1W120 00545460 BW1M119 015c0710
	virtual bool WantsKeyControl();
	// BW1W120 00545470 BW1M119 015c0620
	virtual bool WantsMouseControl();
	// BW1W120 005454f0 BW1M119 015c05e0
	virtual bool CanESCOut();
	// BW1W120 005453c0 BW1M119 015c0880
	virtual void InitControls();

	// BW1W120 0053bdd0 BW1M119 015cc7d0
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2)
	{
		if (Instance != NULL)
		{
			Instance->Callback(message, box, control, data1, data2);
		}
	}

	// BW1W120 005453d0 BW1M119 015c0750
	void __stdcall Callback(int message, SetupBox* box, SetupControl* control, int data1, int data2);
};

static_assert(sizeof(HistoryBox) == 0x1c, "HistoryBox size is incorrect");

#endif /* BW1_DECOMP_HISTORY_BOX_INCLUDED_H */
