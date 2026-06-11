#ifndef BW1_DECOMP_CREATURE_MENTAL_BELIEFS_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_BELIEFS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

// Forward Declares

class Creature;
class GameThingWithPos;

class CreatureBeliefList: public Base
{
public:
    uint32_t field_0x8;
    uint32_t field_0xc;
    uint32_t field_0x10;

    // Override methods

    // win1.41 004d24f0 mac 10246b60 CreatureBeliefList::_dt(void)
    virtual ~CreatureBeliefList();

    // Non-virtual methods

    // win1.41 004d7bb0 mac 10253e30 CreatureBeliefList::GetBeliefAboutObject(GameThingWithPos *)
    void* GetBeliefAboutObject(GameThingWithPos* param_1);
    // win1.41 004d7ce0 mac 10253b10 CreatureBeliefList::AddBeliefAboutObject(Creature *, GameThingWithPos *)
    void* AddBeliefAboutObject(Creature* param_1, GameThingWithPos* param_2);
};

class AllocatedBeliefList: public Base
{
public:
    uint32_t field_0x8;
    uint32_t field_0xc;
    uint32_t field_0x10;
    uint32_t field_0x14;

    // Override methods

    // win1.41 004d7910 mac 10246ad0 AllocatedBeliefList::_dt(void)
    virtual ~AllocatedBeliefList();
};

class CreatureBeliefs: public Base
{
public:
    CreatureBeliefList lists[0x2]; /* 0x8 */
    AllocatedBeliefList allocated_list; /* 0x30 */
    uint8_t field_0x48[0x228];

    // Override methods

    // win1.41 004d2510 mac 10252390 CreatureBeliefs::_dt(void)
    virtual ~CreatureBeliefs();

    // Non-virtual methods

    // win1.41 004d8ea0 mac 10250c70 CreatureBeliefs::Initialise(void)
    void Initialise();
};

#endif /* BW1_DECOMP_CREATURE_MENTAL_BELIEFS_INCLUDED_H */
