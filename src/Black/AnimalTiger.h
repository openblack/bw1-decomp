#ifndef BW1_DECOMP_ANIMAL_TIGER_INCLUDED_H
#define BW1_DECOMP_ANIMAL_TIGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalLion.h" /* For struct Lion */

// Forward Declares

class Base;
class GameThing;
class Object;

class Tiger: public Lion
{
public:

    // Override methods

    // BW1W120 00421440 BW1M100 10177fa0 Tiger::_dt(void)
    virtual ~Tiger();
    // BW1W120 00421430 BW1M100 10178060 Tiger::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00421420 BW1M100 10178030 Tiger::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0041c430 BW1M100 1016f530 Tiger::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_TIGER_INCLUDED_H */
