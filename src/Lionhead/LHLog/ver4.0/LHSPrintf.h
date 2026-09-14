#ifndef BW1_DECOMP_LH_SPRINTF_INCLUDED_H
#define BW1_DECOMP_LH_SPRINTF_INCLUDED_H

#include <assert.h>

// BW1W120 LHLogR import 008a9360: ?UNICODE_sprintf@@YAHPAG0ZZ.
// Original UTF-16 formatting helper; keep its unsigned-short, cdecl variadic ABI.
__declspec(dllimport) int __cdecl UNICODE_sprintf(unsigned short* output, unsigned short* format, ...);

class LHSPrintf
{
public:
	char Text[0x401]; // GetBufSize excludes the terminator; the DLL assignment copies all 0x401 bytes.
	// BW1W120 LHLogR 100029d0, import 008a935c. Variadic member uses cdecl.
	__declspec(dllimport) LHSPrintf(char* format, ...);
};

static_assert(sizeof(LHSPrintf) == 0x401, "LHSPrintf size is incorrect");

#endif
