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

    // BW1W120 0041d790 BW1M100 10120c80 Horse::_dt(void)
    virtual ~Horse();
    // BW1W120 0041d780 BW1M100 10171060 Horse::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0041d770 BW1M100 10171030 Horse::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0041cb40 BW1M100 1016e1f0 Horse::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_HORSE_INCLUDED_H */
