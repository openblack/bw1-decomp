#ifndef BW1_DECOMP_MAGIC_FLOCK_GROUND_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_FLOCK_GROUND_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;

class GMagicFlockGroundInfo : public GMagicInfo
{
public:
	// Override methods

	// BW1W120 004357e0 BW1M119 01526450
	virtual ~GMagicFlockGroundInfo();
};

#endif /* BW1_DECOMP_MAGIC_FLOCK_GROUND_INFO_INCLUDED_H */
