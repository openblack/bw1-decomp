#ifndef BW1_DECOMP_ALIGNMENT_INFO_INCLUDED_H
#define BW1_DECOMP_ALIGNMENT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For ALIGNMENT_TYPE_LAST, EFFECT_TYPE_LAST */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GAlignmentInfo : public GBaseInfo
{
public:
	// How much an effect on each type of thing moves the alignment of whoever caused it.
	float Modifiers[ALIGNMENT_TYPE_LAST]; /* 0x10 */

	// Override methods

	// BW1W120 004140c0 BW1M119 010a7df0
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos)
	{
		num_infos = sizeof(Infos) / sizeof(Infos[0]);
		return GetInfo();
	}

	// Static data

	// One per EFFECT_TYPE.
	// BW1W120 00c4ce20
	static GAlignmentInfo Infos[EFFECT_TYPE_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 010a7d50
	static GAlignmentInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Alignment.h.
	INFO_DATA_BLOCK(Modifiers, Modifiers)
	INFO_ROOT_LOADERS("Alignment.h", 26)
};

#endif /* BW1_DECOMP_ALIGNMENT_INFO_INCLUDED_H */
