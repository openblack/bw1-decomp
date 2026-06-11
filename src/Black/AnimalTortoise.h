#ifndef BW1_DECOMP_ANIMAL_TORTOISE_INCLUDED_H
#define BW1_DECOMP_ANIMAL_TORTOISE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

class Base;
class GameThing;
class Object;

class Tortoise: public Cow
{
public:

    // Override methods

    // win1.41 0041db60 mac 101209b0 Tortoise::_dt(void)
    virtual ~Tortoise();
    // win1.41 0041db50 mac 1016d0a0 Tortoise::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041db40 mac 1016d060 Tortoise::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041ce80 mac 1016d9a0 Tortoise::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_TORTOISE_INCLUDED_H */
