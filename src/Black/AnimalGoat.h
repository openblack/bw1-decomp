#ifndef BW1_DECOMP_ANIMAL_GOAT_INCLUDED_H
#define BW1_DECOMP_ANIMAL_GOAT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

class Base;
class GameThing;
class Object;

class Goat: public Cow
{
public:

    // Override methods

    // BW1W120 0041d6e0 BW1M100 101710a0 Goat::_dt(void)
    virtual ~Goat();
    // BW1W120 0041d6d0 BW1M100 10171160 Goat::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0041d6c0 BW1M100 10171130 Goat::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0041c9d0 BW1M100 1016e580 Goat::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_GOAT_INCLUDED_H */
