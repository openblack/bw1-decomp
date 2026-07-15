#ifndef BW1_DECOMP_LH3D_MEM_INCLUDED_H
#define BW1_DECOMP_LH3D_MEM_INCLUDED_H

#include <stddef.h>    /* For size_t */
#include <re_common.h> /* For bool32_t */

struct LH3DMem
{
	// BW1W120 00ef6540 BW1M100 101bc42c
	static uint32_t g_total_count;
	// BW1W120 00ef6544 BW1M100 101bc428
	static uint32_t g_total_amount;
	// BW1W120 00ef6548 BW1M100 101bc434
	static uint32_t g_current_count;
	// BW1W120 00ef654c BW1M100 101bc430
	static uint32_t g_current_amount;
	// BW1W120 00EF6550 BW1M100 101bc438
	static bool32_t g_open;

	// Static methods

	// BW1W120 00842ce0 BW1M100 10139fb0 LH3DMem::Alloc(long)
	static LH3DMem* Alloc(size_t size);
	// BW1W120 00842d60 BW1M100 100c8720 LH3DMem::Free(void)
	void Free();
};

#endif /* BW1_DECOMP_LH3D_MEM_INCLUDED_H */
