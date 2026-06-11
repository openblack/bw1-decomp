#ifndef BW1_DECOMP_WAY_POINT_INCLUDED_H
#define BW1_DECOMP_WAY_POINT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GameThing;

class WayPoint: public GameThingWithPos
{
public:

    // Override methods

    // win1.41 00770b50 mac 1015fc80 WayPoint::_dt(void)
    virtual ~WayPoint();
    // win1.41 00770c00 mac 1015fa00 WayPoint::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00770b30 mac 1015f750 WayPoint::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00770b20 mac 1015f710 WayPoint::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00770b40 mac 1015f790 WayPoint::GetText(void)
    virtual const char* GetText();
};

class Waypoint: public GameThingWithPos
{
public:
    uint8_t field_0x28[0x4];
};

#endif /* BW1_DECOMP_WAY_POINT_INCLUDED_H */
