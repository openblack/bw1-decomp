#ifndef BW1_DECOMP_LH_SPRINTF_INCLUDED_H
#define BW1_DECOMP_LH_SPRINTF_INCLUDED_H

#include <assert.h>

// BW1W120 007aee08 BW1M119 0116e4c0 (LHCombined Release)
__declspec(dllimport) int __cdecl UNICODE_sprintf(unsigned short* output, unsigned short* format, ...);

class LHSPrintf
{
public:
	char Text[0x401]; // GetBufSize excludes the terminator; the DLL assignment copies all 0x401 bytes.
	// BW1W120 100029d0 BW1M119 0116e140 (LHCombined Release)
	__declspec(dllimport) LHSPrintf(char* format, ...);
};

static_assert(sizeof(LHSPrintf) == 0x401, "LHSPrintf size is incorrect");

class LHSPrintfW
{
public:
	unsigned short Text[0x401];
	// BW1W120 10002ab0 BW1M119 0116de60 (LHCombined Release)
	__declspec(dllimport) LHSPrintfW(unsigned short* format, ...);
};

#endif
