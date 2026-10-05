#ifndef BW1_DECOMP_ALIGNMENT_INFO_INCLUDED_H
#define BW1_DECOMP_ALIGNMENT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For NUM_DISCRETE_ALIGNMENTS */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GAlignmentInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0x38];

	// Override methods

	// BW1W120 00414120 BW1M119 010a7630
	virtual ~GAlignmentInfo();
	// BW1W120 004140c0 BW1M119 010a7df0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00c4ce20
	static GAlignmentInfo Infos[NUM_DISCRETE_ALIGNMENTS];

	// Static methods

	// BW1W120 inlined BW1M119 010a7d50
	static GAlignmentInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Alignment.h.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("Alignment.h", 26)
};

#endif /* BW1_DECOMP_ALIGNMENT_INFO_INCLUDED_H */
