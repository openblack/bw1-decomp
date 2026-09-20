#ifndef BW1_DECOMP_BW_GAME_SPY_INCLUDED_H
#define BW1_DECOMP_BW_GAME_SPY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LayerCommunication.h" /* For struct LayerCommunication */

class BWGameSpy : public LayerCommunication
{
public:
	// Override methods

	// BW1W120 0043e290 BW1M100 105d1460 BWGameSpy::Connect(void)
	virtual uint32_t Connect();
};

#endif /* BW1_DECOMP_BW_GAME_SPY_INCLUDED_H */
