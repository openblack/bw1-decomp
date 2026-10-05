#ifndef BW1_DECOMP_HELP_SPRITES_GUIDANCE_INCLUDED_H
#define BW1_DECOMP_HELP_SPRITES_GUIDANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For HELP_SPRITES_GUIDANCE_LAST */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GHelpSpritesGuidance : public GBaseInfo
{
public:
	uint8_t field_0x10[0x88];

	// Override methods

	// BW1W120 0071aa60 BW1M119 01515320
	virtual ~GHelpSpritesGuidance();
	// BW1W120 0071a9f0 BW1M119 0151a3b0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Non-virtual methods

	// BW1W120 0071d300 BW1M119 01514c60
	uint32_t GetRandomSample() const;

	// Static data

	// BW1W120 00d99bd8
	static GHelpSpritesGuidance Infos[HELP_SPRITES_GUIDANCE_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 0151a300
	static GHelpSpritesGuidance* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in SoundGuidance.h.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("SoundGuidance.h", 27)
};

#endif /* BW1_DECOMP_HELP_SPRITES_GUIDANCE_INCLUDED_H */
