#ifndef BW1_DECOMP_LH3D_MEM_INCLUDED_H
#define BW1_DECOMP_LH3D_MEM_INCLUDED_H

#include <stddef.h>    /* For size_t */
#include <re_common.h> /* For bool32_t */

struct LH3DMem
{
	// BW1W120 00ef6540 BW1M119 011e36cc (LHCombined Release)
	static uint32_t g_total_count;
	// BW1W120 00ef6544 BW1M119 011e36c8 (LHCombined Release)
	static uint32_t g_total_amount;
	// BW1W120 00ef6548 BW1M119 011e36c4 (LHCombined Release)
	static uint32_t g_current_count;
	// BW1W120 00ef654c BW1M119 011e36c0 (LHCombined Release)
	static uint32_t g_current_amount;
	// BW1W120 00ef6550 BW1M119 011e36bc (LHCombined Release)
	static bool32_t g_open;

	// Static methods

	// BW1W120 00842ce0 BW1M119 0113ad10 (LHCombined Release)
	static void* Alloc(long size);
	// BW1W120 00842d60 BW1M119 010c86b0 (LHCombined Release)
	static void Free(void* ptr);
};

#endif /* BW1_DECOMP_LH3D_MEM_INCLUDED_H */
