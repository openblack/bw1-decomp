#ifndef BW1_DECOMP_ANIMAL_ZEBRA_INCLUDED_H
#define BW1_DECOMP_ANIMAL_ZEBRA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalCow.h" /* For struct Cow */

// Forward Declares

class Base;
class GameThing;
class Object;

class Zebra: public Cow
{
public:

    // Override methods

    // win1.41 0041d920 mac 10170f30 Zebra::_dt(void)
    virtual ~Zebra();
    // win1.41 0041d910 mac 10170ff0 Zebra::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041d900 mac 10170fc0 Zebra::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041cc30 mac 1016df70 Zebra::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_ZEBRA_INCLUDED_H */
