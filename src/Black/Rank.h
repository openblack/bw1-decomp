#ifndef BW1_DECOMP_RANK_INCLUDED_H
#define BW1_DECOMP_RANK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class Rank: public Base
{
public:

    // Override methods

    // BW1W120 006e0b80 BW1M100 inlined Rank::_dt(void)
    virtual ~Rank();
};

#endif /* BW1_DECOMP_RANK_INCLUDED_H */
