#ifndef BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H
#define BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHMultiplayer/ver4.0/LHFileDownload.h> /* For class LHFileDownload */
#include <Lionhead/LHLib/ver5.0/LHLinkedList.h>           /* For LHLinkedList */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct LandscapeDetails;

class SetupOnlineLandscapes : public DialogBoxBase
{
public:
	LHFileDownload                  FileDownload; /* 0x10 */
	uint8_t                         field_0x7c[0x3c];
	LHLinkedList<LandscapeDetails*> Landscapes; /* 0xb8 */
	uint8_t                         field_0xc0[0x408];
	// Override methods

	// BW1W120 00547ff0 BW1M119 015d2610
	virtual void Init(uint32_t background_style, uint32_t tall_background,
	                  void(__stdcall* callback)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 005482a0 BW1M119 015d25a0
	virtual void Destroy();
	// BW1W120 00549910 BW1M119 015d09e0
	virtual void Show();
	// BW1W120 005482b0 BW1M119 015d2540
	virtual void InitControls();

	// BW1W120 00548ab0 BW1M119 null
	static void __stdcall ControlCallback(int message, SetupBox* box, SetupControl* control, int x, int y);

	// BW1W120 0053c620
	~SetupOnlineLandscapes() {}
};

#endif /* BW1_DECOMP_SETUP_ONLINE_LANDSCAPES_INCLUDED_H */
