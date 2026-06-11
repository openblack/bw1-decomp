#ifndef BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H
#define BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class GSpookyVoices: public Base
{
public:

    // Override methods

    // win1.41 0072e250 mac 10148e30 GSpookyVoices::_dt(void)
    virtual ~GSpookyVoices();
};

#endif /* BW1_DECOMP_SPOOKY_VOICES_INCLUDED_H */
