#ifndef BW1_DECOMP_LH_RELEASED_FILE_INCLUDED_H
#define BW1_DECOMP_LH_RELEASED_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHFile.h" /* For enum LH_FILE_MODE, struct LHFile */

class LHReleasedFile : public LHFile
{
public:
	// Override methods

	// BW1W120 007bd730 BW1M119 0116a290 (LHCombined Release)
	virtual uint32_t Open(LH_FILE_MODE mode);

	// Constructors

	// BW1W120 0047f6d0 BW1M119 011d1110
	LHReleasedFile();
	// BW1W120 00837350 BW1M119 inlined
	LHReleasedFile(const char* name);
};

#endif /* BW1_DECOMP_LH_RELEASED_FILE_INCLUDED_H */
