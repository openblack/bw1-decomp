#ifndef BW1_DECOMP_ANIMAL_HORSE_INCLUDED_H
#define BW1_DECOMP_ANIMAL_HORSE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

class Base;
class GameThing;
class Object;

class Horse: public Cow
{
public:

    // Override methods

    // win1.41 0041d790 mac 10120c80 Horse::_dt(void)
    virtual ~Horse();
    // win1.41 0041d780 mac 10171060 Horse::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041d770 mac 10171030 Horse::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041cb40 mac 1016e1f0 Horse::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_HORSE_INCLUDED_H */
