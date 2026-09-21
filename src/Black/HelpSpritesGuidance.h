#ifndef BW1_DECOMP_HELP_SPRITES_GUIDANCE_INCLUDED_H
#define BW1_DECOMP_HELP_SPRITES_GUIDANCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GHelpSpritesGuidance : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 0071aa60 BW1M119 01515320
	virtual ~GHelpSpritesGuidance();
	// BW1W120 0071a9f0 BW1M119 0151a3b0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Non-virtual methods

	// BW1W120 0071d300 BW1M119 01514c60
	uint32_t GetRandomSample() const;
};

#endif /* BW1_DECOMP_HELP_SPRITES_GUIDANCE_INCLUDED_H */
