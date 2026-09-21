#ifndef BW1_DECOMP_DATA_INCLUDED_H
#define BW1_DECOMP_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class GData : public Base
{
public:
	uint32_t RandSeed; /* 0x8 */
	uint32_t field_0xc;
	uint32_t GameTurn; /* 0x10 */
	uint32_t field_0x14;
	uint32_t NumCreatedObjects; /* 0x18 */
	uint32_t field_0x1c;
	uint32_t field_0x20;
	uint32_t field_0x24;

	// Override methods

	// BW1W120 00510610 BW1M119 01419130
	virtual ~GData() {}

	// Constructors

	// BW1W120 00510500 BW1M119 010c3f70
	GData();

	// Non-virtual methods

	// BW1W120 00510650 BW1M119 0102d930
	uint32_t Rand(uint32_t max, const char* src_file, uint32_t src_line);
	// BW1W120 00510750 BW1M119 010c3dd0
	void Reset();
	// BW1W120 0050f960 BW1M119 012b4010
	void InitialiseShapes();
};

#endif /* BW1_DECOMP_DATA_INCLUDED_H */
