#ifndef BW1_DECOMP_INTERFACE_HAND_STATE_INCLUDED_H
#define BW1_DECOMP_INTERFACE_HAND_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */
#include "HandState.h" /* For enum HAND_STATES */

class InterfaceHandState: public Base
{
public:
    HAND_STATES hand_state; /* 0x8 */

    // Override methods

    // win1.41 005ce360 mac 1035c790 InterfaceHandState::_dt(void)
    virtual ~InterfaceHandState();
};

#endif /* BW1_DECOMP_INTERFACE_HAND_STATE_INCLUDED_H */
