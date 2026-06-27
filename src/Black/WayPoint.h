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

    // BW1W120 00770b50 BW1M100 1015fc80 WayPoint::_dt(void)
    virtual ~WayPoint();
    // BW1W120 00770c00 BW1M100 1015fa00 WayPoint::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00770b30 BW1M100 1015f750 WayPoint::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00770b20 BW1M100 1015f710 WayPoint::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00770b40 BW1M100 1015f790 WayPoint::GetText(void)
    virtual const char* GetText();
};

class Waypoint: public GameThingWithPos
{
public:
    uint8_t field_0x28[0x4];
};

#endif /* BW1_DECOMP_WAY_POINT_INCLUDED_H */
