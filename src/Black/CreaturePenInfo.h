#ifndef BW1_DECOMP_CREATURE_PEN_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_PEN_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "CitadelPartInfo.h" /* For struct GCitadelPartInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GCreaturePenInfo : public GCitadelPartInfo
{
public:
	// Override methods

	// BW1W120 004eee30 BW1M100 10274c20 GCreaturePenInfo::_dt(void)
	virtual ~GCreaturePenInfo();
	// BW1W120 004eedc0 BW1M100 102755a0 GCreaturePenInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_CREATURE_PEN_INFO_INCLUDED_H */
