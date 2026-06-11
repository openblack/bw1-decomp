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

    // win1.41 0041ec20 mac 101718e0 Crow::_dt(void)
    virtual ~Crow();
    // win1.41 0041ec10 mac 101719a0 Crow::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041ec00 mac 10171970 Crow::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041bf10 mac 10170590 Crow::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_CROW_INCLUDED_H */
