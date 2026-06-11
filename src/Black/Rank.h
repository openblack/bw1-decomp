#ifndef BW1_DECOMP_RANK_INCLUDED_H
#define BW1_DECOMP_RANK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class Rank: public Base
{
public:

    // Override methods

    // win1.41 006e0b80 mac inlined Rank::_dt(void)
    virtual ~Rank();
};

#endif /* BW1_DECOMP_RANK_INCLUDED_H */
