#ifndef BW1_DECOMP_CD_BOX_INCLUDED_H
#define BW1_DECOMP_CD_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

enum CD_BOX_CONTROL_ID
{
	CD_BOX_CONTROL_ID_TRACK = 1,
	CD_BOX_CONTROL_ID_PREV = 2,
	CD_BOX_CONTROL_ID_NEXT = 3,
	CD_BOX_CONTROL_ID_PLAY = 4,
	CD_BOX_CONTROL_ID_STOP = 5,
	CD_BOX_CONTROL_ID_CHECK_BOX = 6,
	CD_BOX_CONTROL_ID_OK = 11,
};

struct SetupBigButton;
struct SetupButton;
struct SetupCheckBox;

class CDBox : public DialogBoxBase
{
public:
	SetupBigButton* PrevButton;   /* 0x10 */
	SetupBigButton* NextButton;   /* 0x14 */
	SetupBigButton* PlayButton;   /* 0x18 */
	SetupBigButton* StopButton;   /* 0x1c */
	SetupButton*    TrackButton;  /* 0x20 */
	SetupBigButton* OkButton;     /* 0x24 */
	SetupCheckBox*  CheckBox;     /* 0x28 */
	int             CurrentTrack; /* 0x2c */
	int             NumTracks;    /* 0x30 */

	// BW1W120 00cd0b7c
	static CDBox* Instance;

	// BW1W120 00543d80 BW1M119 015c27c0
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00544040 BW1M119 015c2770
	virtual void Destroy();
	// BW1W120 00544050 BW1M119 015c26b0
	virtual void InitControls();

	// BW1W120 005440b0 BW1M119 015c24d0
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int data1, int data2);
};

static_assert(sizeof(CDBox) == 0x34, "CDBox size is incorrect");

#endif /* BW1_DECOMP_CD_BOX_INCLUDED_H */
