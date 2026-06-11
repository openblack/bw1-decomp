#ifndef BW1_DECOMP_ANIMAL_COW_INCLUDED_H
#define BW1_DECOMP_ANIMAL_COW_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include "Animal.h" /* For struct Animal */

// Forward Declares

class Base;
class Creature;
class GameThing;
class GameThingWithPos;
class Living;

class Cow: public Animal
{
public:

    // Override methods

    // win1.41 0041d120 mac 101206f0 Cow::_dt(void)
    virtual ~Cow();
    // win1.41 0041d100 mac 10171d80 Cow::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041d0f0 mac 10171d50 Cow::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041d110 mac 1012e4c0 Cow::IsCow(Creature *)
    virtual uint32_t IsCow(Creature* param_1);
    // win1.41 0041d1b0 mac 1000e870 Cow::DecideWhatToDo(void)
    virtual bool DecideWhatToDo();
};

#endif /* BW1_DECOMP_ANIMAL_COW_INCLUDED_H */
