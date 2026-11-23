#ifndef BW1_DECOMP_LHCONVERT_INCLUDED_H
#define BW1_DECOMP_LHCONVERT_INCLUDED_H

#include <Lionhead/LH3DLib/development/LHColor.h> /* For struct LHColor */
#include <Lionhead/LHLib/ver5.0/LHFlic.h>         /* For struct FlicHeader */
#include <Lionhead/LHLib/ver5.0/LHReturn.h>       /* For enum LH_RETURN */

struct LHSprite;
struct LHSpriteList;

#define LH_BITMAP_ROW_ALIGNMENT 4

class LHConvert : public FlicHeader
{
public:
	// BW1W120 007efcf0 BW1M119 011341c0 (LHCombined Release)
	LH_RETURN ToSprites(char* file_name, LHSpriteList* sprite_list, LHColor* colors, unsigned long flags,
	                    long* sprite_count, FlicHeader* flic_header, unsigned long* unused);

	// BW1W120 007f03c0 BW1M119 01133bb0 (LHCombined Release)
	LH_RETURN CopySpriteIn24(LHSprite* sprite, long width, long height, LHColor* start, LHColor* end, long stride,
	                         LHColor* key, LHColor* marker, unsigned long flags);
	// BW1W120 007f0270 BW1M119 01133dc0 (LHCombined Release)
	LH_RETURN CopySpriteIn24To16(LHSprite* sprite, long width, long height, LHColor* start, LHColor* end, long stride,
	                             LHColor* key, LHColor* marker, unsigned long flags);
	// BW1W120 007f0210 BW1M119 01134010 (LHCombined Release)
	LH_RETURN IsColumnAllOneColor(LHColor* start, long width, long height, LHColor* color);
	// BW1W120 007f01c0 BW1M119 011340f0 (LHCombined Release)
	LH_RETURN IsLineAllOneColor(LHColor* start, LHColor* end, LHColor* color);
};

// BW1W120 007ef8e0 BW1M119 null
LH_RETURN LHLoadBMP(char* file_name, LHSprite* sprite);
// BW1W120 007efb60 BW1M119 011346d0 (LHCombined Release)
LH_RETURN LHLoadABMP(char* file_name, LHSprite* sprite, unsigned long unused);

#endif /* BW1_DECOMP_LHCONVERT_INCLUDED_H */
