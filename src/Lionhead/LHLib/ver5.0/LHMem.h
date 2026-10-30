#ifndef BW1_DECOMP_LH_MEM_INCLUDED_H
#define BW1_DECOMP_LH_MEM_INCLUDED_H

#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint8_t */

#include "LHReturn.h" /* For enum LH_RETURN */

class LHMem
{
public:
	// BW1W120 007e69d0 BW1M119 01141da0 (LHCombined Release)
	static void* __stdcall Alloc(size_t size);
	// BW1W120 007e69e0
	static void* __stdcall AllocFilled(size_t size, int fill);
	// BW1W120 007e6a30 BW1M119 01141cc0 (LHCombined Release)
	static int __stdcall Free(void* mem);
};

struct LHBankToMem
{
	void**  Mem;
	uint8_t Bank;

	// BW1W120 007e6a50 BW1M119 01141c60 (LHCombined Release)
	LH_RETURN Convert();
};

#endif /* BW1_DECOMP_LH_MEM_INCLUDED_H */
