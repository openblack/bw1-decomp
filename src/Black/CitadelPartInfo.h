#ifndef BW1_DECOMP_CITADEL_PART_INFO_INCLUDED_H
#define BW1_DECOMP_CITADEL_PART_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */
#include "InfoLoaders.h"       /* For INFO_DATA_BLOCK */

class GCitadelPartInfo : public GMultiMapFixedInfo
{
public:
	uint32_t field_0x120;
	uint32_t field_0x124;
	float    life;
	uint32_t field_0x12c;
	float    field_0x130;

	// TODO(#377): The original declared this class in CitadelPart.h.
	INFO_DATA_BLOCK(field_0x120, field_0x130)
	INFO_DERIVED_LOADERS(GMultiMapFixedInfo, "CitadelPart.h", 14)
};

#endif /* BW1_DECOMP_CITADEL_PART_INFO_INCLUDED_H */
