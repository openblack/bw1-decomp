#ifndef BW1_DECOMP_ANIMAL_SEAGULL_INCLUDED_H
#define BW1_DECOMP_ANIMAL_SEAGULL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

class Base;
class GameThing;
class Object;

class Seagull: public Dove
{
public:

    // Override methods

    // win1.41 0041ee60 mac 101716c0 Seagull::_dt(void)
    virtual ~Seagull();
    // win1.41 0041ee50 mac 10171790 Seagull::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041ee40 mac 10171750 Seagull::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041bff0 mac 10170260 Seagull::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_SEAGULL_INCLUDED_H */
