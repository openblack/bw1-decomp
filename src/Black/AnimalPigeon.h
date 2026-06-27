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

    // BW1W120 0041eda0 BW1M100 101717d0 Pigeon::_dt(void)
    virtual ~Pigeon();
    // BW1W120 0041ed90 BW1M100 101718a0 Pigeon::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0041ed80 BW1M100 10171860 Pigeon::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0041bf80 BW1M100 101703f0 Pigeon::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_PIGEON_INCLUDED_H */
