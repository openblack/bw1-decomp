#ifndef BW1_DECOMP_ALIGNMENT_INFO_INCLUDED_H
#define BW1_DECOMP_ALIGNMENT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GAlignmentInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 00414120 BW1M119 010a7630
	virtual ~GAlignmentInfo();
	// BW1W120 004140c0 BW1M119 010a7df0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_ALIGNMENT_INFO_INCLUDED_H */
