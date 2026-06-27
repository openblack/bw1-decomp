#ifndef BW1_DECOMP_ANIMAL_SHEEP_INCLUDED_H
#define BW1_DECOMP_ANIMAL_SHEEP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

class Base;
class GameThing;
class Object;

class Sheep: public Cow
{
public:

    // Override methods

    // BW1W120 0041d550 BW1M100 10120ff0 Sheep::_dt(void)
    virtual ~Sheep();
    // BW1W120 0041d540 BW1M100 101711d0 Sheep::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0041d530 BW1M100 101711a0 Sheep::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0041c8e0 BW1M100 100a0150 Sheep::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_SHEEP_INCLUDED_H */
