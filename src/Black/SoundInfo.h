#ifndef BW1_DECOMP_SOUND_INFO_INCLUDED_H
#define BW1_DECOMP_SOUND_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GSoundInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0x2c];
	float   TownMusicNearDistance;
	float   TownMusicFarDistance;
	uint8_t field_0x44[0x8];

	// BW1W120 00d9a8f8
	static GSoundInfo Info;

	// Override methods

	// BW1W120 0071d6b0 BW1M119 0151b400
	virtual ~GSoundInfo();
	// BW1W120 0071d660 BW1M119 0151b3c0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// TODO(#377): The original declared this class in SoundMap.h.
	// Out of line: LoadBinary at 0042f750.
	INFO_DATA_BLOCK(field_0x10, field_0x44)
	INFO_ROOT_LOADERS("SoundMap.h", 19)
};

#endif /* BW1_DECOMP_SOUND_INFO_INCLUDED_H */
