#ifndef BW1_DECOMP_SPOOKY_VOICE_INFO_INCLUDED_H
#define BW1_DECOMP_SPOOKY_VOICE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For NUM_SPOOKY_NAMES */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GSpookyVoiceInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0x22];

	// Override methods

	// BW1W120 0072e220 BW1M119 01151080
	virtual ~GSpookyVoiceInfo();
	// BW1W120 0072e1c0 BW1M119 011511a0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// fabricated name
	// BW1W120 00da0850
	static GSpookyVoiceInfo Infos[NUM_SPOOKY_NAMES];

	// Static methods

	// BW1W120 inlined BW1M119 01150f80
	static GSpookyVoiceInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in SpookyVoices.h.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("SpookyVoices.h", 41)
};

#endif /* BW1_DECOMP_SPOOKY_VOICE_INFO_INCLUDED_H */
