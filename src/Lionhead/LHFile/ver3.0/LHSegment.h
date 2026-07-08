#ifndef BW1_DECOMP_LH_SEGMENT_INCLUDED_H
#define BW1_DECOMP_LH_SEGMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

struct LHSegment
{
	uint8_t  name[0x21]; /* 0x0 */
	uint32_t size;       /* 0x24 */
	uint8_t* buffer;

	// Constructors

	// BW1W120 inlined BW1M100 1005c5c0 LHSegment::LHSegment(void)
	LHSegment();
};

#endif /* BW1_DECOMP_LH_SEGMENT_INCLUDED_H */
