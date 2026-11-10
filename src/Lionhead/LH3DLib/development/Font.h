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
	uint32_t field_0x0;
	int      Height;
	uint8_t  field_0x8[0x478];

	// Non-virtual methods

	// BW1W120 00844690 BW1M119 0104d3d0 (LHCombined Release)
	void Central(char* text, int y, LH3DVideo::Col* colour, LH3DVideo::Col* background);
	// BW1W120 008447b0 BW1M119 0112c380 (LHCombined Release)
	void Mess(char* text, int x, int y, LH3DVideo::Col* colour, LH3DVideo::Col* background, int cursor);
	// BW1W120 00844a20 BW1M119 0111bae0 (LHCombined Release)
	int Length(char* text);
};

// BW1W120 00ef6768 BW1M119 011f6388 (LHCombined Release)
extern Font Fonts[FONT_SIZE_LAST];

// BW1W120 00844620 BW1M119 010c01a0 (LHCombined Release)
int LoadFonts();
// BW1W120 00844650 BW1M119 01066ad0 (LHCombined Release)
void FreeFonts();

#endif /* BW1_DECOMP_FONT_INCLUDED_H */
