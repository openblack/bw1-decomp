#ifndef BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H
#define BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

class Base;
class GameThing;
class Object;

class Pigeon: public Dove
{
public:

    // Override methods

    // win1.41 0041eda0 mac 101717d0 Pigeon::_dt(void)
    virtual ~Pigeon();
    // win1.41 0041ed90 mac 101718a0 Pigeon::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041ed80 mac 10171860 Pigeon::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041bf80 mac 101703f0 Pigeon::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H */
