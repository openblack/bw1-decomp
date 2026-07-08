#ifndef BW1_DECOMP_LEASH_SELECTOR_INFO_INCLUDED_H
#define BW1_DECOMP_LEASH_SELECTOR_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h" /* For struct GObjectInfo */

// Forward Declares

class Base;

class GLeashSelectorInfo : public GObjectInfo
{
public:
	// Override methods

	// BW1W120 0042b3d0 BW1M100 10182f90 GLeashSelectorInfo::_dt(void)
	virtual ~GLeashSelectorInfo();
};

#endif /* BW1_DECOMP_LEASH_SELECTOR_INFO_INCLUDED_H */
