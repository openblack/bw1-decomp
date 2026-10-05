#ifndef BW1_DECOMP_JOB_INFO_INCLUDED_H
#define BW1_DECOMP_JOB_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For JOB_INFO_LAST, SEASON_LAST, enum JOB_ACTIVITY */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GJobInfo : public GBaseInfo
{
public:
	uint32_t     field_0x10[6];
	JOB_ACTIVITY Activity[SEASON_LAST];
	uint32_t     field_0x38[8];

	// Static data

	// BW1W120 00d19cc8
	static GJobInfo InfoList[JOB_INFO_LAST];

	// Override methods

	// BW1W120 005e1720 BW1M119 011082e0
	virtual ~GJobInfo();
	// BW1W120 005e16c0 BW1M119 011083e0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static methods

	// BW1W120 inlined BW1M119 011081e0
	static GJobInfo* GetInfo() { return InfoList; }

	// Non-virtual methods

	// BW1W120 005e1740 BW1M119 01108170
	uint32_t GetJobActivity() const;

	// TODO(#377): The original declared this class in Job.h.
	INFO_DATA_BLOCK(field_0x10, field_0x38)
	INFO_ROOT_LOADERS("Job.h", 15)
};

static_assert(sizeof(GJobInfo) == 0x58, "Data type is of wrong size");

#endif /* BW1_DECOMP_JOB_INFO_INCLUDED_H */
