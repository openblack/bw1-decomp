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

    // BW1W120 00425c00 BW1M100 inlined Arrow::_dt(void)
    virtual ~Arrow();
    // BW1W120 00425bf0 BW1M100 inlined Arrow::GetPlayer(void)
    virtual GPlayer* GetPlayer();
};

#endif /* BW1_DECOMP_ARROW_INCLUDED_H */
