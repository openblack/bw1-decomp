#ifndef BW1_DECOMP_LH_SEGMENT_INCLUDED_H
#define BW1_DECOMP_LH_SEGMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <string.h> /* For memset */

struct LHSegment
{
	uint8_t  name[0x21]; /* 0x0 */
	uint32_t size;       /* 0x24 */
	uint8_t* buffer;

	// Constructors

	// Inliner IL size: 49
	// BW1W120 inlined BW1M119 010d1550
	LHSegment()
	{
		size = 0;
		buffer = NULL;
		memset(name, 0, sizeof(name));
	}
};

#endif /* BW1_DECOMP_LH_SEGMENT_INCLUDED_H */
