#ifndef BW1_DECOMP_ANIMAL_LEOPARD_INCLUDED_H
#define BW1_DECOMP_ANIMAL_LEOPARD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalLion.h" /* For struct Lion */

// Forward Declares

class Base;
class GameThing;
class Object;

class Leopard: public Lion
{
public:

    // Override methods

    // win1.41 0041fca0 mac 10171210 Leopard::_dt(void)
    virtual ~Leopard();
    // win1.41 0041fc90 mac 101712e0 Leopard::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041fc80 mac 101712a0 Leopard::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041c2e0 mac 1016f8c0 Leopard::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_LEOPARD_INCLUDED_H */
