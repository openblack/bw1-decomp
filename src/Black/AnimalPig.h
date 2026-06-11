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

    // win1.41 0041d9d0 mac 101207f0 Pig::_dt(void)
    virtual ~Pig();
    // win1.41 0041d9c0 mac 10170ef0 Pig::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041d9b0 mac 10170ec0 Pig::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041cd90 mac 100a0190 Pig::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_PIG_INCLUDED_H */
