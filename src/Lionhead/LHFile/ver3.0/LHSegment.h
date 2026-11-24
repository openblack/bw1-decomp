#ifndef BW1_DECOMP_LH_SEGMENT_INCLUDED_H
#define BW1_DECOMP_LH_SEGMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t, uint8_t */
#include <string.h> /* For memset */

#define LH_SEGMENT_NAME_LENGTH 32

struct LHSegment
{
	char     Name[LH_SEGMENT_NAME_LENGTH + 1]; /* 0x0 */
	uint32_t Size;                             /* 0x24 */
	uint8_t* Data;

	// Constructors

	// Inliner IL size: 49
	// BW1W120 inlined BW1M119 010d1550
	LHSegment()
	{
		Size = 0;
		Data = NULL;
		memset(Name, 0, sizeof(Name));
	}
};

#endif /* BW1_DECOMP_LH_SEGMENT_INCLUDED_H */
