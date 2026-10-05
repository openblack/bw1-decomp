#ifndef BW1_DECOMP_LEASH_SELECTOR_INFO_INCLUDED_H
#define BW1_DECOMP_LEASH_SELECTOR_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "ObjectInfo.h"  /* For struct GObjectInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GLeashSelectorInfo : public GObjectInfo
{
public:
	uint32_t field_0x100;

	// BW1W120 00c58380
	static GLeashSelectorInfo Instance;

	// Override methods

	INFO_DATA_BLOCK(field_0x100, field_0x100)
	INFO_DERIVED_LOADERS(GObjectInfo, "Balance.cpp", 85)
};

#endif /* BW1_DECOMP_LEASH_SELECTOR_INFO_INCLUDED_H */
