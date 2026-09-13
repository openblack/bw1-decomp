#ifndef BW1_DECOMP_MPFE_DATA_INCLUDED_H
#define BW1_DECOMP_MPFE_DATA_INCLUDED_H

#include <stdint.h>
#include "WinCondition.h"

class ChannelBox;

// Declaration-only view. Data remains in the extracted object until its full
// frontend layout is recovered; do not define or allocate an empty MPFEData.
class MPFEData
{
public:
	// Verified prefix only; the original object continues beyond +16c4.
	uint8_t      field_0x0[0xa64];
	ChannelBox*  ActiveDialog;
	uint8_t      field_0xa68[0xb6c];
	WinCondition Conditions[15]; /* 0x15d4 */
	// BW1W120 00d3f038. Descriptive singleton name.
	static MPFEData Data;
	// BW1W120 00d408b0. TODO: Original declaration scope is unrecovered.
	static uint64_t CreatureFileChecksum;
	// BW1W120 006227c0 BW1M100 103989b0 MPFEData::Reset(void)
	void Reset();
};

#endif /* BW1_DECOMP_MPFE_DATA_INCLUDED_H */
