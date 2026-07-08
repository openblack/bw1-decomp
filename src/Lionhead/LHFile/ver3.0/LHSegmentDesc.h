#ifndef BW1_DECOMP_LH_SEGMENT_DESC_INCLUDED_H
#define BW1_DECOMP_LH_SEGMENT_DESC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

struct LHSegmentDesc
{
	char     name[0x21]; /* 0x0 */
	uint32_t size;       /* 0x24 */
	uint32_t offset;     /* 0x28 */

	// Constructors

	// BW1W120 007bd350 LHSegmentDesc::LHSegmentDesc(char *, int, int)
	LHSegmentDesc(char* name, int size, int offset);
};
static_assert(sizeof(LHSegmentDesc) == 0x2c, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_SEGMENT_DESC_INCLUDED_H */
