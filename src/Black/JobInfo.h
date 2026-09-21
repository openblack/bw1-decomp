#ifndef BW1_DECOMP_JOB_INFO_INCLUDED_H
#define BW1_DECOMP_JOB_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GJobInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 005e1720 BW1M119 011082e0
	virtual ~GJobInfo();
	// BW1W120 005e16c0 BW1M119 011083e0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Non-virtual methods

	// BW1W120 005e1740 BW1M119 01108170
	uint32_t GetJobActivity() const;
};

#endif /* BW1_DECOMP_JOB_INFO_INCLUDED_H */
