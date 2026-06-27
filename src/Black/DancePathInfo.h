#ifndef BW1_DECOMP_DANCE_PATH_INFO_INCLUDED_H
#define BW1_DECOMP_DANCE_PATH_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;

class DancePathInfo: public GameThing
{
public:
    uint8_t field_0x14;
    uint8_t field_0x15[0x3];
    uint8_t (*) field_0x18[0xc];
    uint32_t field_0x1c;

    // Override methods

    // BW1W120 005961c0 BW1M100 100fafe0 DancePathInfo::_dt(void)
    virtual ~DancePathInfo();
};

#endif /* BW1_DECOMP_DANCE_PATH_INFO_INCLUDED_H */
