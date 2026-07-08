#ifndef BW1_DECOMP_DATA_INCLUDED_H
#define BW1_DECOMP_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class GData : public Base
{
public:
	uint32_t rand_seed; /* 0x8 */
	uint32_t field_0xc;
	uint32_t game_turn; /* 0x10 */
	uint32_t field_0x14;
	uint32_t field_0x18;
	uint32_t field_0x1c;
	uint32_t field_0x20;
	uint32_t field_0x24;

	// Override methods

	// BW1W120 00510610 BW1M100 1056c340 GData::_dt(void)
	virtual ~GData();

	// Constructors

	// BW1W120 00510500 BW1M100 100c0a70 GData::GData(void)
	GData();

	// Non-virtual methods

	// BW1W120 00510650 BW1M100 1002adb0 GData::Rand(long)
	uint32_t Rand(uint32_t max, const char* src_file, uint32_t src_line);
	// BW1W120 00510750 BW1M100 100c08f0 GData::Reset(void)
	void Reset();
};

#endif /* BW1_DECOMP_DATA_INCLUDED_H */
