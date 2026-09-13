#ifndef BW1_DECOMP_CREATURE_DANCE_LINE_INPUT_INCLUDED_H
#define BW1_DECOMP_CREATURE_DANCE_LINE_INPUT_INCLUDED_H

#include <windows.h>
#include <mmsystem.h>
#include <assert.h>
#include <stddef.h>
#include <stdint.h>
#include <string.h>

// TODO: Original Windows-only names are unrecovered. The analysis arrays are
// established by 00437360/00437430; Init inlines their constructor at 0054f5a6.
struct LineInputAnalysis
{
	float History[0x400];
	int   HistoryIndex;
	float Threshold;
	float field_0x1008;
	float Transform[0x400];
	float Spectrum[0x200];
	float Samples[0x200];
	int   field_0x300c;
	int   Active;
	int   field_0x3014;
	int   field_0x3018;
	float field_0x301c;
	float field_0x3020;
	float field_0x3024;
	float field_0x3028;
	int   field_0x302c;
	int   Tempo;
	int   field_0x3034;
	int   field_0x3038;
	float field_0x303c;
	float StrengthHistory[0x20];
	int   TempoHistory[0x20];
	float field_0x3140[0x20];
	float TempoBins[0xc8];
	DWORD LastDetectionTick;
	float field_0x34e4;
	LineInputAnalysis()
	{
		memset(this, 0, sizeof(*this));
		Threshold = 1000.0f;
		Tempo = 120;
		fn_00437340();
	}
	~LineInputAnalysis() { fn_004373E0(); }
	// BW1W120 00437340
	void fn_00437340();
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
	LineInputAnalysis Analysis; /* 0x28 */
	uint32_t          field_0x3510;
	uint32_t          field_0x3514;
	uint32_t          field_0x3518; // Not initialized by the original constructor.
	CreatureDanceLineInput()
	{
		Active = 0;
		field_0x1c = 0;
		field_0x18 = 0;
		Handle = 0;
		Buffer = 0;
		field_0x3510 = 0;
		field_0x3514 = 0;
	}
	~CreatureDanceLineInput() { fn_00437C00(); }
	// BW1W120 00437a40
	void fn_00437A40();
	// BW1W120 00437c00
	void fn_00437C00();
};

static_assert(sizeof(LineInputAnalysis) == 0x34e8, "LineInputAnalysis size is incorrect");
static_assert(offsetof(CreatureDanceLineInput, Analysis) == 0x28, "Line-input analysis offset is incorrect");
static_assert(sizeof(CreatureDanceLineInput) == 0x351c, "CreatureDanceLineInput size is incorrect");

#endif /* BW1_DECOMP_CREATURE_DANCE_LINE_INPUT_INCLUDED_H */
