#ifndef BW1_DECOMP_PRSS_INCLUDED_H
#define BW1_DECOMP_PRSS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include <chlasm/LHKeyBoard.h> /* For enum LH_KEY */

// Forward Declares

struct MouseInput;

class Prss
{
public:
	uint32_t field_0x4;
	uint32_t field_0x8;
	uint32_t field_0xc;

	// Override methods

	// BW1W120 00842130 BW1M100 10063270 Prss::Terminate(void)
	virtual void Terminate();
	// BW1W120 00842160 BW1M100 100631e0 Prss::PrssKey(LH_KEY, unsigned short)
	virtual void PrssKey(LH_KEY key, uint16_t param_2);
	// BW1W120 00842170 BW1M100 10063170 Prss::PrssMouse(MouseInput *)
	virtual void PrssMouse(MouseInput* param_1);
	// BW1W120 004f7200 BW1M100 10062140 Prss::StringFunction(long, char *, int)
	virtual void StringFunction(int param_1, char* param_2, int param_3);
};

#endif /* BW1_DECOMP_PRSS_INCLUDED_H */
