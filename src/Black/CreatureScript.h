#ifndef BW1_DECOMP_CREATURE_SCRIPT_INCLUDED_H
#define BW1_DECOMP_CREATURE_SCRIPT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SubArgument.h" /* For struct SubArgument */

// Forward Declares

class CreatureSubActionAgenda;
struct LHPoint;
class Object;

class SubArgumentInteger: public SubArgument
{
public:

    // Override methods

    // win1.41 004ff6f0 mac 10290fd0 SubArgumentInteger::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda *, unsigned long)
    virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* param_1, uint32_t param_2);
};

class SubArgumentObjectAndInteger: public SubArgument
{
public:

    // Override methods

    // win1.41 004ff6d0 mac 10291050 SubArgumentObjectAndInteger::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda *, unsigned long)
    virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* param_1, uint32_t param_2);
    // win1.41 0047c880 mac inlined SubArgumentObjectAndInteger::HasDestination(void)
    virtual uint32_t HasDestination();
    // win1.41 0047c890 mac inlined SubArgumentObjectAndInteger::GetDestination(void)
    virtual LHPoint* GetDestination();
};

class SubArgumentPoint: public SubArgument
{
public:

    // Override methods

    // win1.41 004ff780 mac 10290e40 SubArgumentPoint::SetArgumentOfSubActionAgenda(CreatureSubActionAgenda *, unsigned long)
    virtual void SetArgumentOfSubActionAgenda(CreatureSubActionAgenda* param_1, uint32_t param_2);
    // win1.41 004791c0 mac 102914c0 SubArgumentPoint::HasDestination(void)
    virtual uint32_t HasDestination();
    // win1.41 004791d0 mac 10291500 SubArgumentPoint::GetDestination(void)
    virtual LHPoint* GetDestination();
    // win1.41 004791b0 mac inlined SubArgumentPoint::GetObject(void)
    virtual Object* GetObject();
};

#endif /* BW1_DECOMP_CREATURE_SCRIPT_INCLUDED_H */
