#ifndef BW1_DECOMP_FONT_INCLUDED_H
#define BW1_DECOMP_FONT_INCLUDED_H

#include <stdint.h> /* For uint8_t */

#include "LH3DVideo.h" /* For LH3DVideo::Col */

#define FONT_NO_CURSOR -1

enum FONT_SIZE
{
	FONT_SIZE_SMALL,
	FONT_SIZE_MEDIUM,
	FONT_SIZE_LARGE,
	FONT_SIZE_LAST
};

class Font
{
public:
	uint8_t field_0x0[0x480];

	// Non-virtual methods

	// BW1W120 00844690 BW1M119 0104d3d0 (LHCombined Release)
	void Central(char* text, int y, LH3DVideo::Col* colour, LH3DVideo::Col* background);
	// BW1W120 008447b0 BW1M119 0112c380 (LHCombined Release)
	void Mess(char* text, int x, int y, LH3DVideo::Col* colour, LH3DVideo::Col* background, int cursor);
	// BW1W120 00844a20 BW1M119 0111bae0 (LHCombined Release)
	int Length(char* text);
};

#endif /* BW1_DECOMP_FONT_INCLUDED_H */
