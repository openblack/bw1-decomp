#ifndef BW1_DECOMP_ANIMATED_STATIC_INFO_INCLUDED_H
#define BW1_DECOMP_ANIMATED_STATIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "FeatureInfo.h" /* For struct GFeatureInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GAnimatedStaticInfo : public GFeatureInfo
{
public:
	uint8_t field_0x124[0x8];

	// Override methods

	// BW1W120 00421f20 BW1M119 010a9ff0
	virtual ~GAnimatedStaticInfo();

	// Static data

	// BW1W120 00c54d30
	static GAnimatedStaticInfo Infos[ANIMATED_STATIC_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 010ab370
	static GAnimatedStaticInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in AnimatedStatic.h.
	INFO_DATA_BLOCK(field_0x124, field_0x124)
	INFO_DERIVED_LOADERS(GFeatureInfo, "AnimatedStatic.h", 10)
};

#endif /* BW1_DECOMP_ANIMATED_STATIC_INFO_INCLUDED_H */
