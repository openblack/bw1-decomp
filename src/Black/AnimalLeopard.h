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

    // BW1W120 0041fca0 BW1M100 10171210 Leopard::_dt(void)
    virtual ~Leopard();
    // BW1W120 0041fc90 BW1M100 101712e0 Leopard::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0041fc80 BW1M100 101712a0 Leopard::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0041c2e0 BW1M100 1016f8c0 Leopard::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_LEOPARD_INCLUDED_H */
