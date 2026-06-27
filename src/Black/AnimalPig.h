#ifndef BW1_DECOMP_ANIMAL_PIG_INCLUDED_H
#define BW1_DECOMP_ANIMAL_PIG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

class Base;
class GameThing;
class Object;

class Pig: public Cow
{
public:

    // Override methods

    // BW1W120 0041d9d0 BW1M100 101207f0 Pig::_dt(void)
    virtual ~Pig();
    // BW1W120 0041d9c0 BW1M100 10170ef0 Pig::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0041d9b0 BW1M100 10170ec0 Pig::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0041cd90 BW1M100 100a0190 Pig::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_PIG_INCLUDED_H */
