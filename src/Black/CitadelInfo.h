#ifndef BW1_DECOMP_CITADEL_INFO_INCLUDED_H
#define BW1_DECOMP_CITADEL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ContainerInfo.h" /* For struct GContainerInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GCitadelInfo : public GContainerInfo
{
public:
	// Override methods

	// BW1W120 004629d0 BW1M100 101bb390 GCitadelInfo::_dt(void)
	virtual ~GCitadelInfo();
	// BW1W120 00462980 BW1M100 101bb430 GCitadelInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_CITADEL_INFO_INCLUDED_H */
