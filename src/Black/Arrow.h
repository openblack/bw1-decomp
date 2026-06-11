#ifndef BW1_DECOMP_ARROW_INCLUDED_H
#define BW1_DECOMP_ARROW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileObject.h" /* For struct MobileObject */

// Forward Declares

class Base;
class GPlayer;
class GameThing;

class Arrow: public MobileObject
{
public:

    // Override methods

    // win1.41 00425c00 mac inlined Arrow::_dt(void)
    virtual ~Arrow();
    // win1.41 00425bf0 mac inlined Arrow::GetPlayer(void)
    virtual GPlayer* GetPlayer();
};

#endif /* BW1_DECOMP_ARROW_INCLUDED_H */
