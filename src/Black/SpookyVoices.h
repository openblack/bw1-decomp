#ifndef BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H
#define BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class GSpookyVoices : public Base
{
public:
	// BW1W120 0072e870 BW1M119 01150520
	static void GetPlayerName();
	// BW1W120 0072e2a0 BW1M119 01150d90
	static void Init();
	// BW1W120 0072e310 BW1M119 010913c0
	static void Process();

	// BW1W120 0072e250 BW1M119 01150ea0
	virtual ~GSpookyVoices();

	// BW1W120 0072e5c0 BW1M119 011509a0
	int GetNextSoundexCode(wchar_t*& text);
	// BW1W120 0072e630 BW1M119 01150870
	bool PerformSoundexComparison(wchar_t* first, wchar_t* second);
	// BW1W120 0072e6e0 BW1M119 01150790
	bool SoundexOverlap(wchar_t* name, wchar_t* words);
};

#endif /* BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H */
