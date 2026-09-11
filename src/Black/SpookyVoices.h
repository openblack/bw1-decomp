#ifndef BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H
#define BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class GSpookyVoices : public Base
{
public:
	// BW1W120 0072e310 BW1M100 1008f120 GSpookyVoices::Process(void)
	static void Process();

	// Override methods

	// BW1W120 0072e250 BW1M100 10148e30 GSpookyVoices::_dt(void)
	virtual ~GSpookyVoices();
};

#endif /* BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H */
