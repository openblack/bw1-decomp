#ifndef BW1_DECOMP_SOUND_CONFIRMATION_INCLUDED_H
#define BW1_DECOMP_SOUND_CONFIRMATION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class GConfirmation : public Base
{
public:
	uint8_t field_0x8[0x1c];

	// BW1W120 0071a560 BW1M119 01514920
	static void Init();
	// BW1W120 0071a610 BW1M119 01514860
	static void Start(float* value, float range, int unused);
	// BW1W120 0071a640 BW1M119 01514820
	static void Stop();
	// BW1W120 0071a650 BW1M119 0108ffe0
	static void Process();

	// Override methods

	// BW1W120 0071a4e0 BW1M119 015149f0
	virtual ~GConfirmation();
};
static_assert(sizeof(GConfirmation) == 0x24, "Data type is of wrong size");

#endif /* BW1_DECOMP_SOUND_CONFIRMATION_INCLUDED_H */
