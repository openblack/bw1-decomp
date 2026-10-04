#ifndef BW1_DECOMP_GATHERING_BOX_INCLUDED_H
#define BW1_DECOMP_GATHERING_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LHLib/ver5.0/LHLinkedList.h> /* For class LHLinkedList */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

struct IncomingBubbleInfo;

class GatheringBox : public DialogBoxBase
{
public:
	// BW1W120 00d0643c
	static GatheringBox* Instance;
	// BW1W120 005751d0 BW1M119 0132ac40
	static void                       InitialiseForCurrentGame();
	uint8_t                           field_0x10[0xd0];
	int                               IncomingTextCount;
	uint32_t                          field_0xe4;
	LHLinkedList<IncomingBubbleInfo*> IncomingText;

	// BW1W120 00635d40 BW1M119 013840c0
	void UpdateIncomingText();

	// Override methods

	// BW1W120 00570e90 BW1M119 0132f410
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall* param_3)(int, SetupBox*, SetupControl*, int, int));
	// BW1W120 00572530 BW1M119 0132ec50
	virtual void Destroy();
	// Vtable +0x20 at 008deb4c.
	// BW1W120 00572540 BW1M119 0132ebd0
	virtual void InitControls();
};

#endif /* BW1_DECOMP_GATHERING_BOX_INCLUDED_H */
