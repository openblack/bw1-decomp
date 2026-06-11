#ifndef BW1_DECOMP_CREATURE_SUB_ACTION_INCLUDED_H
#define BW1_DECOMP_CREATURE_SUB_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */

#include "Base.h" /* For struct Base */
#include "CreatureAction.h" /* For enum CREATURE_SUB_STATE_ACTIONS */

// Forward Declares

class Creature;
class SubArgument;

class CreatureSubAction: public Base
{
public:
    uint8_t field_0x8[0x4];
    uint32_t field_0xc;
    uint8_t field_0x10[0x4];
    LHPoint field_0x14;
    uint8_t field_0x20[0xc];
    uint32_t field_0x2c;
    uint8_t field_0x30[0x30];

    // Override methods

    // win1.41 00473dd0 mac 101deb60 CreatureSubAction::_dt(void)
    virtual ~CreatureSubAction();

    // Constructors

    // win1.41 00473db0 mac 101e0720 CreatureSubAction::CreatureSubAction(void)
    CreatureSubAction();
};

class CreatureSubActionAgenda: public Base
{
public:
    uint32_t field_0x8;
    uint32_t field_0xc;
    uint32_t field_0x10;
    uint32_t field_0x14;
    uint32_t field_0x18;
    int field_0x1c;
    uint32_t field_0x20;
    uint32_t field_0x24;
    CreatureSubAction sub_actions[0x20];
    Creature* creature; /* 0xc28 */
    uint32_t field_0xc2c;
    uint32_t field_0xc30;
    uint32_t field_0xc34;
    uint32_t field_0xc38;
    uint32_t field_0xc3c;
    uint32_t field_0xc40;
    uint32_t field_0xc44;
    uint32_t field_0xc48;
    uint32_t field_0xc4c;

    // Override methods

    // win1.41 00473df0 mac 101e0670 CreatureSubActionAgenda::_dt(void)
    virtual ~CreatureSubActionAgenda();

    // Constructors

    // win1.41 004ff1b0 mac 1028cea0 CreatureSubActionAgenda::CreatureSubActionAgenda(Creature*)
    CreatureSubActionAgenda(Creature* creature);

    // Non-virtual methods

    // win1.41 004ff240 mac 1028cc30 CreatureSubActionAgenda::AddSubAction(CREATURE_SUB_STATE_ACTIONS, SubArgument *, int (__thiscall Creature::*)(void const *, void *, struct MapCoords *), void (__thiscall Creature::*)(void const *, void *))
    void AddSubAction(CREATURE_SUB_STATE_ACTIONS param_1, SubArgument* param_2, int (__thiscall*)(Creature *, const void *, void *, MapCoords *) param_3, void (__thiscall*)(Creature *, const void *, void *) param_4);
    // win1.41 004ff3a0 mac 1028cb10 CreatureSubActionAgenda::AddMainSubAction(CREATURE_SUB_STATE_ACTIONS, SubArgument *, int (__thiscall Creature::*)(void const *, void *, struct MapCoords *), void (__thiscall Creature::*)(void const *, void *))
    void AddMainSubAction(CREATURE_SUB_STATE_ACTIONS param_1, SubArgument* param_2, int (__thiscall*)(Creature *, const void *, void *, MapCoords *) param_3, void (__thiscall*)(Creature *, const void *, void *) param_4);
};

#endif /* BW1_DECOMP_CREATURE_SUB_ACTION_INCLUDED_H */
