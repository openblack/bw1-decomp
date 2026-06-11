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

    // win1.41 0041d6e0 mac 101710a0 Goat::_dt(void)
    virtual ~Goat();
    // win1.41 0041d6d0 mac 10171160 Goat::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041d6c0 mac 10171130 Goat::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041c9d0 mac 1016e580 Goat::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_GOAT_INCLUDED_H */
