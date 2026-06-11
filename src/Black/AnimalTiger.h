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

    // win1.41 00421440 mac 10177fa0 Tiger::_dt(void)
    virtual ~Tiger();
    // win1.41 00421430 mac 10178060 Tiger::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00421420 mac 10178030 Tiger::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041c430 mac 1016f530 Tiger::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_TIGER_INCLUDED_H */
