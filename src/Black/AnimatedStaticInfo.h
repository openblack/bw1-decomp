#ifndef BW1_DECOMP_ANIMATED_STATIC_INFO_INCLUDED_H
#define BW1_DECOMP_ANIMATED_STATIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/AllMeshes.h> /* For enum ANIM_LIST */

#include "FeatureInfo.h" /* For struct GFeatureInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GAnimatedStaticInfo : public GFeatureInfo
{
public:
	uint32_t  field_0x124;
	ANIM_LIST Anim;

	// Static data

	// BW1W120 00c54d30
	static GAnimatedStaticInfo Infos[ANIMATED_STATIC_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 010ab370
	static GAnimatedStaticInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in AnimatedStatic.h.
	INFO_DATA_BLOCK(field_0x124, Anim)
	INFO_DERIVED_LOADERS(10, "AnimatedStatic.h", GFeatureInfo)
};

#endif /* BW1_DECOMP_ANIMATED_STATIC_INFO_INCLUDED_H */
