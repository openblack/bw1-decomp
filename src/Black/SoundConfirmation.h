#ifndef BW1_DECOMP_SOUND_CONFIRMATION_INCLUDED_H
#define BW1_DECOMP_SOUND_CONFIRMATION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class GConfirmation: public Base
{
public:

    // Override methods

    // BW1W120 0071a4e0 BW1M100 1050d010 GConfirmation::_dt(void)
    virtual ~GConfirmation();
};

#endif /* BW1_DECOMP_SOUND_CONFIRMATION_INCLUDED_H */
