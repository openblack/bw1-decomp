#ifndef BW1_DECOMP_GAME_AREA_INCLUDED_H
#define BW1_DECOMP_GAME_AREA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

class GameArea: public Base
{
public:

    // Override methods

    // win1.41 00557220 mac 102fe950 GameArea::_dt(void)
    virtual ~GameArea();
};

#endif /* BW1_DECOMP_GAME_AREA_INCLUDED_H */
