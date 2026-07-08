#ifndef BW1_DECOMP_ANIMATED_STATIC_INFO_INCLUDED_H
#define BW1_DECOMP_ANIMATED_STATIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "FeatureInfo.h" /* For struct GFeatureInfo */

// Forward Declares

class Base;

class GAnimatedStaticInfo : public GFeatureInfo
{
public:
	// Override methods

	// BW1W120 00421f20 BW1M100 100a67f0 GAnimatedStaticInfo::_dt(void)
	virtual ~GAnimatedStaticInfo();
};

#endif /* BW1_DECOMP_ANIMATED_STATIC_INFO_INCLUDED_H */
