#ifndef BW1_DECOMP_SPEED_THRESHOLD_INCLUDED_H
#define BW1_DECOMP_SPEED_THRESHOLD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For SPEED_THRESHOLD_LAST */

#include "BaseInfo.h" /* For class GBaseInfo */

class GSpeedThreshold : public GBaseInfo
{
public:
	int WalkThreshold; /* 0x10 */
	int RunThreshold;  /* 0x14 */

	// Static data

	// BW1W120 00d38348
	static GSpeedThreshold InfoList[SPEED_THRESHOLD_LAST];

	// Override methods

	// BW1W120 00606b70 BW1M119 013c2b30
	virtual GBaseInfo* GetBaseInfo(uint32_t& num_infos)
	{
		num_infos = SPEED_THRESHOLD_LAST;
		return GetInfo();
	}

	// Static methods

	// BW1W120 inlined BW1M119 0101e170
	static GSpeedThreshold* GetInfo() { return InfoList; }

	// Non-virtual methods

	// BW1W120 inlined BW1M119 0119f6e0
	char* get_start() { return (char*)&WalkThreshold; }
	// BW1W120 inlined BW1M119 0119f720
	unsigned long get_size() { return (char*)&RunThreshold - get_start() + sizeof(RunThreshold); }
};

#endif /* BW1_DECOMP_SPEED_THRESHOLD_INCLUDED_H */
