#ifndef BW1_DECOMP_CREATURE_MENTAL_DESIRE_SOURCE_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_DESIRE_SOURCE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_DESIRE_SOURCE */

// Forward Declares

class Creature;

struct CreatureDesireSource
{
    float value; /* 0x0 */
    float field_0x4;
    float field_0x8;
    CREATURE_DESIRE_SOURCE type;

    // Constructors

    // win1.41 004de150 mac 1025dac0 CreatureDesireSource::CreatureDesireSource(CREATURE_DESIRE_SOURCE, Creature* )
    CreatureDesireSource(CREATURE_DESIRE_SOURCE type, Creature* creature);
};

#endif /* BW1_DECOMP_CREATURE_MENTAL_DESIRE_SOURCE_INCLUDED_H */
