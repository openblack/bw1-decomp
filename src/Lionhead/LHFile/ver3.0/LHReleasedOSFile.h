#ifndef BW1_DECOMP_LH_RELEASED_OS_FILE_INCLUDED_H
#define BW1_DECOMP_LH_RELEASED_OS_FILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHFile.h"   /* For enum LH_FILE_MODE */
#include "LHOSFile.h" /* For struct LHOSFile */

class LHReleasedOSFile : public LHOSFile
{
public:
	char field_0x8[0x104]; /* 0x8 */

	// Override methods

	// BW1W120 0042fd40 BW1M119 01553860
	virtual ~LHReleasedOSFile() {}
	// BW1W120 007bc7e0 BW1M119 01165b70 (LHCombined Release)
	virtual LH_FILE_RESULT Open(const char* path, LH_FILE_MODE mode);

	// Constructors

	// BW1W120 007e6d10 BW1M119 inlined
	LHReleasedOSFile() {}
};

#endif /* BW1_DECOMP_LH_RELEASED_OS_FILE_INCLUDED_H */
