#ifndef BW1_DECOMP_SKIP_BOX_INCLUDED_H
#define BW1_DECOMP_SKIP_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

#define SKIP_BOX_NUM_OPTIONS 4

enum SKIP_BOX_CONTROL_ID
{
	SKIP_BOX_CONTROL_ID_OK = 11,
	SKIP_BOX_CONTROL_ID_OPTION = 60,
};

enum SKIP_BOX_PATCH_TEXT
{
	SKIP_BOX_PATCH_TEXT_TITLE = 4,
	SKIP_BOX_PATCH_TEXT_PLAY_ALL = 5,
	SKIP_BOX_PATCH_TEXT_SKIP_TUTORIAL = 6,
	SKIP_BOX_PATCH_TEXT_SKIP_TRAINING = 7,
	SKIP_BOX_PATCH_TEXT_KEEP_CREATURE = 8,
};

struct SetupCheckBox;

class SkipBox : public DialogBoxBase
{
public:
	SetupCheckBox* Options[SKIP_BOX_NUM_OPTIONS]; /* 0x10 */
	int            Selected;                      /* 0x20 */

	// BW1W120 00cd0b80
	static SkipBox* Instance;

	// BW1W120 005441c0 BW1M119 015c21f0
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00544430 BW1M119 015c2190
	virtual void Destroy();
	// BW1W120 0053bd60 BW1M119 015ccb90
	virtual bool CanESCOut() { return false; }
	// BW1W120 00544440 BW1M119 015c20d0
	virtual void InitControls();

	// BW1W120 00544480 BW1M119 015c1e80
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2);
};

static_assert(sizeof(SkipBox) == 0x24, "SkipBox size is incorrect");

#endif /* BW1_DECOMP_SKIP_BOX_INCLUDED_H */
