#ifndef BW1_DECOMP_ATMOS_TYPE_INFO_INCLUDED_H
#define BW1_DECOMP_ATMOS_TYPE_INFO_INCLUDED_H

#include "Audio.h"

#define ATMOS_ALIGNMENT_GROUP_THRESHOLD (-0.6)
#define ATMOS_VOLUME_FAST_MIN           0.1f
#define ATMOS_VOLUME_FAST_MAX           0.8f
#define ATMOS_VOLUME_STEP_SLOW          0.02f
#define ATMOS_VOLUME_STEP_FAST          0.04f
#define ATMOS_DEBUG_CATEGORY            1
#define ATMOS_DEBUG_STEP_PERCENT        100.0f

enum ATMOS_ALIGNMENT_GROUP
{
	ATMOS_ALIGNMENT_GROUP_ABOVE_THRESHOLD = 1,
	ATMOS_ALIGNMENT_GROUP_AT_OR_BELOW_THRESHOLD = 2,
};

struct AtmosTypeInfo
{
	char*    Name;
	char*    Filename;
	bool32_t ScaleVolume;

	// BW1W120 009cb048
	static AtmosTypeInfo Types[NUM_ATMOS_TYPES];
};

#endif
