#ifndef BW1_DECOMP_ANIMAL_CROW_INCLUDED_H
#define BW1_DECOMP_ANIMAL_CROW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalDove.h" /* For struct Dove */

// Forward Declares

class Base;
class GameThing;
class Object;

class Crow: public Dove
{
public:

    // Override methods

    // BW1W120 0041ec20 BW1M100 101718e0 Crow::_dt(void)
    virtual ~Crow();
    // BW1W120 0041ec10 BW1M100 101719a0 Crow::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0041ec00 BW1M100 10171970 Crow::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0041bf10 BW1M100 10170590 Crow::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_CROW_INCLUDED_H */
