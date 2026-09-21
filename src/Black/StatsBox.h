#ifndef BW1_DECOMP_STATS_BOX_INCLUDED_H
#define BW1_DECOMP_STATS_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "DialogBoxBase.h" /* For struct DialogBoxBase */

class StatsBox : public DialogBoxBase
{
public:
	uint8_t field_0x10[0x64];

	// Override methods

	// BW1W120 0056d370 BW1M119 01325f50
	virtual void Init(uint32_t param_1, uint32_t param_2,
	                  void(__stdcall*)(int, SetupBox*, SetupControl*, int, int) param_3);
	// BW1W120 0056d980 BW1M119 01325ef0
	virtual void Destroy();
	// BW1W120 0056d990 BW1M119 01325e30
	virtual void InitControls();
};

#endif /* BW1_DECOMP_STATS_BOX_INCLUDED_H */
