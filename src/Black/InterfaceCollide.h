#ifndef BW1_DECOMP_INTERFACE_COLLIDE_INCLUDED_H
#define BW1_DECOMP_INTERFACE_COLLIDE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

struct Bubble;
struct Leash;
class Object;

class GInterfaceCollide: public Base
{
public:
    MapCoords pos; /* 0x8 */
    float pos_distance; /* 0x14 */
    Object* object;
    float object_distance;
    Bubble* bubble; /* 0x20 */
    float bubble_distance;
    Leash* leash;
    float leash_distance;

    // Override methods

    // win1.41 005ce380 mac 1017a1d0 GInterfaceCollide::_dt(void)
    virtual ~GInterfaceCollide();
};

#endif /* BW1_DECOMP_INTERFACE_COLLIDE_INCLUDED_H */
