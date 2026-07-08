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

	// BW1W120 0071aa60 BW1M100 1050d8c0 GHelpSpritesGuidance::_dt(void)
	virtual ~GHelpSpritesGuidance();
	// BW1W120 0071a9f0 BW1M100 105128d0 GHelpSpritesGuidance::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);

	// Non-virtual methods

	// BW1W120 0071d300 BW1M100 1050d290 GHelpSpritesGuidance::GetRandomSample(void) const
	uint32_t GetRandomSample();
};

#endif /* BW1_DECOMP_HELP_SPRITES_GUIDANCE_INCLUDED_H */
