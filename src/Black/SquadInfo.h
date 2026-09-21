#ifndef BW1_DECOMP_SQUAD_INFO_INCLUDED_H
#define BW1_DECOMP_SQUAD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GSquadInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 006e07b0 BW1M119 0113c920
	virtual ~GSquadInfo();
	// BW1W120 006e0750 BW1M119 0113cb70
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_SQUAD_INFO_INCLUDED_H */
