#ifndef BW1_DECOMP_HELP_PROFILE_INCLUDED_H
#define BW1_DECOMP_HELP_PROFILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h"       /* For struct Base */
#include "HelpSystem.h" /* For enum HELP_EVENT_TYPE */

struct CameraHelpAccumulator
{
	uint32_t TotalTriggerCount;
	uint32_t field_0x4;
	uint8_t  TriggerTimeHead;
	uint8_t  TriggerTimeCount;
	uint8_t  TriggeredThisFrame;
	uint8_t  field_0xb;
	uint32_t TriggerTimes[0x40];

	// Non-virtual methods

	// BW1W120 00448f20 BW1M119 011a5e10
	void Reset();
};

static_assert(sizeof(CameraHelpAccumulator) == 0x10c, "Data type is of wrong size");

class HelpProfile : public Base
{
public:
	// Descriptive clock name, advanced by Process.
	// BW1W120 00c5afd8
	static unsigned int AccumulatedTime;
	// BW1W120 005c4660 BW1M119 0108b5e0
	void Process();
	// BW1W120 005c4820 BW1M119 01353010
	uint32_t Save(GameOSFile& file);
	// BW1W120 005c4830 BW1M119 01352f40
	uint32_t              Load(GameOSFile& file);
	CameraHelpAccumulator accumulators[0x31]; /* 0x8 */
	uint32_t              field_0x3354;

	// Override methods

	// BW1W120 005c4560 BW1M119 01353a00
	virtual ~HelpProfile();

	// Static methods

	// BW1W120 005c4500 BW1M119 01353930
	static HelpProfile* Create();

	// Non-virtual methods

	// BW1W120 005c46e0 BW1M119 0108b900
	void Trigger(HELP_EVENT_TYPE param_1);
	// BW1W120 005c4770 BW1M119 013538a0
	void SetToZero();
};

#endif /* BW1_DECOMP_HELP_PROFILE_INCLUDED_H */
