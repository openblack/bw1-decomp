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

	// Override methods

	// BW1W120 0072e250 BW1M119 01150ea0
	virtual ~GSpookyVoices();
};

#endif /* BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H */
