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

    // BW1W120 0041d920 BW1M100 10170f30 Zebra::_dt(void)
    virtual ~Zebra();
    // BW1W120 0041d910 BW1M100 10170ff0 Zebra::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0041d900 BW1M100 10170fc0 Zebra::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0041cc30 BW1M100 1016df70 Zebra::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_ZEBRA_INCLUDED_H */
