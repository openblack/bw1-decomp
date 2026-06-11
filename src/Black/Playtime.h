#ifndef BW1_DECOMP_PLAYTIME_INCLUDED_H
#define BW1_DECOMP_PLAYTIME_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;

class Playtime: public GameThing
{
public:

    // Override methods

    // win1.41 0066c410 mac inlined Playtime::_dt(void)
    virtual ~Playtime();
};

#endif /* BW1_DECOMP_PLAYTIME_INCLUDED_H */
