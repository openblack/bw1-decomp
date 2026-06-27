#ifndef BW1_DECOMP_ALIGNMENT_INCLUDED_H
#define BW1_DECOMP_ALIGNMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class GAlignment: public Base
{
public:
    float value; /* 0x8 */
    float field_0xc;

    // Override methods

    // BW1W120 004740e0 BW1M100 101debf0 GAlignment::_dt(void)
    virtual ~GAlignment();
};

#endif /* BW1_DECOMP_ALIGNMENT_INCLUDED_H */
