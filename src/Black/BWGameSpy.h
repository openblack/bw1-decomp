#ifndef BW1_DECOMP_BW_GAME_SPY_INCLUDED_H
#define BW1_DECOMP_BW_GAME_SPY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LayerCommunication.h" /* For struct LayerCommunication */

class BWGameSpy: public LayerCommunication
{
public:

    // Override methods

    // win1.41 0043e290 mac 105d1460 BWGameSpy::Connect(void)
    virtual uint32_t Connect();
};

#endif /* BW1_DECOMP_BW_GAME_SPY_INCLUDED_H */
