#ifndef BW1_DECOMP_VORTEX_INFO_INCLUDED_H
#define BW1_DECOMP_VORTEX_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GVortexInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 005fd3f0 BW1M119 013c0fa0
	virtual ~GVortexInfo();
	// BW1W120 005fd390 BW1M119 013c1360
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_VORTEX_INFO_INCLUDED_H */
