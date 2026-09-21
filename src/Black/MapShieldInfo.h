#ifndef BW1_DECOMP_MAP_SHIELD_INFO_INCLUDED_H
#define BW1_DECOMP_MAP_SHIELD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */

// Forward Declares

class Base;

class GMapShieldInfo : public GSingleMapFixedInfo
{
public:
	// Override methods

	// BW1W120 0072bdf0 BW1M119 0153aa00
	virtual ~GMapShieldInfo();
};

#endif /* BW1_DECOMP_MAP_SHIELD_INFO_INCLUDED_H */
