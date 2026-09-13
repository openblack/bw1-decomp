#ifndef BW1_DECOMP_CREATURE_DANCE_LINE_INPUT_INCLUDED_H
#define BW1_DECOMP_CREATURE_DANCE_LINE_INPUT_INCLUDED_H

#include <windows.h>
#include <mmsystem.h>

// TODO: Original Windows-only type/method names are unrecovered. These are prefix
// declarations for calls into extracted code, NOT complete allocation layouts.
struct LineInputAnalysis
{
	// BW1W120 004373e0
	void fn_004373E0();
};

struct CreatureDanceLineInput
{
	WAVEFORMATEX      Format;
	int               Active; /* 0x14 */
	int               field_0x18;
	int               field_0x1c;
	HWAVEIN           Handle; /* 0x20 */
	void*             Buffer;
	LineInputAnalysis Analysis; /* 0x28; remaining analysis state is not declared */
	// BW1W120 00437c00
	void fn_00437C00();
};

#endif /* BW1_DECOMP_CREATURE_DANCE_LINE_INPUT_INCLUDED_H */
