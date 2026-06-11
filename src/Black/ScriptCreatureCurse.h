#ifndef BW1_DECOMP_SCRIPT_CREATURE_CURSE_INCLUDED_H
#define BW1_DECOMP_SCRIPT_CREATURE_CURSE_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

class Creature;

struct ScriptCreatureCurse
{
    float height; /* 0x0 */
    float strength;
    float alignment;

    // Non-virtual methods

    // win1.41 006f6190 mac 105e86b0 ScriptCreatureCurse::Init(Creature *)
    void Init(Creature* creature);
    // win1.41 006f61e0 mac 105e85d0 ScriptCreatureCurse::ResolveLoad(Creature *)
    void ResolveLoad(Creature* creature);
};

#endif /* BW1_DECOMP_SCRIPT_CREATURE_CURSE_INCLUDED_H */
