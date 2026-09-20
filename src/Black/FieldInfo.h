#ifndef BW1_DECOMP_FIELD_INFO_INCLUDED_H
#define BW1_DECOMP_FIELD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

class Base;

class GFieldInfo : public GMultiMapFixedInfo
{
public:
	// Override methods

	// BW1W120 00527cc0 BW1M100 100d5dc0 GFieldInfo::_dt(void)
	virtual ~GFieldInfo();
};

#endif /* BW1_DECOMP_FIELD_INFO_INCLUDED_H */
