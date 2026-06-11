#ifndef BW1_DECOMP_CREATURE_RECEIVE_SPELL_INCLUDED_H
#define BW1_DECOMP_CREATURE_RECEIVE_SPELL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */

// Forward Declares

class Creature;

struct CreatureReceiveSpell
{
    Creature* creature; /* 0x0 */
    CreatureReceiveSpell__TPerSpellData data[0x10];
    GJVector__CreatureReceiveSpell__QueueData queue_data; /* 0x184 */
    uint8_t field_0x194[0x8];
    LHPoint field_0x19c;
    LHPoint field_0x1a8;
    LHPoint field_0x1b4;
    LHPoint field_0x1c0;
    float field_0x1cc;
    uint32_t field_0x1d0;
    uint8_t field_0x1d4;

    // Constructors

    // win1.41 004f5240 mac 102802a0 CreatureReceiveSpell::CreatureReceiveSpell(Creature *)
    CreatureReceiveSpell(Creature* creature);
};

#endif /* BW1_DECOMP_CREATURE_RECEIVE_SPELL_INCLUDED_H */
