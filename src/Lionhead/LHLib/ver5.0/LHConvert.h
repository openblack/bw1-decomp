#ifndef BW1_DECOMP_LHCONVERT_INCLUDED_H
#define BW1_DECOMP_LHCONVERT_INCLUDED_H

#include <stdint.h>

#include "LHReturn.h"

struct FlicHeader;
struct LHColor;
struct LHSprite;
struct LHSpriteList;

// Image-to-sprite conversion. The global instance lives at 0xE85874.
// LHSys::LHSys calls fn_007EF7D0 with ecx = this + 0x8b8 (convert + 0x84);
// it writes word [ecx+4] = 0. The nested type at this tail remains unidentified.
class LHConvert
{
public:
	uint8_t field_0x0[0x90];

	// BW1W120 007efcf0 BW1M119 011341c0 (LHCombined Release)
	LH_RETURN ToSprites(char* file_name, LHSpriteList* sprite_list, LHColor* colors, unsigned long flags, long* param_5,
	                    FlicHeader* flic_header, unsigned long* param_7);

	// BW1W120 007f0270 BW1M119 01133bb0 (LHCombined Release)
	LH_RETURN CopySpriteIn24(LHSprite* sprite, long param_2, long param_3, LHColor* param_4, LHColor* param_5,
	                         long param_6, LHColor* param_7, LHColor* param_8, unsigned long flags);
	// BW1W120 007f03c0 BW1M119 01133dc0 (LHCombined Release)
	LH_RETURN CopySpriteIn24To16(LHSprite* sprite, long param_2, long param_3, LHColor* param_4, LHColor* param_5,
	                             long param_6, LHColor* param_7, LHColor* param_8, unsigned long flags);
	// BW1W120 007f01c0 BW1M119 011340f0 (LHCombined Release)
	LH_RETURN IsLineAllOneColor(LHColor* start, LHColor* end, LHColor* color);
};

// BW1W120 007efb60 BW1M119 011346d0 (LHCombined Release)
LH_RETURN LHLoadABMP(char* file_name, LHSprite* sprite, unsigned long param_3);

#endif /* BW1_DECOMP_LHCONVERT_INCLUDED_H */
