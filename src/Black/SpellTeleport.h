#ifndef BW1_DECOMP_SPELL_TELEPORT_INCLUDED_H
#define BW1_DECOMP_SPELL_TELEPORT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SpellWithObjects.h" /* For struct SpellWithObjects */

// Forward Declares

class Base;
class GameThing;
struct MapCoords;
struct PSysProcessInfo;
class Spell;
struct SpellCastData;

class SpellTeleport: public SpellWithObjects
{
public:

    // Override methods

    // win1.41 0055d870 mac 103b19e0 SpellTeleport::_dt(void)
    virtual ~SpellTeleport();
    // win1.41 0055d860 mac 103b1ad0 SpellTeleport::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0055d850 mac 103b1a90 SpellTeleport::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 005fbeb0 mac 103b1550 SpellTeleport::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
    virtual int InitWithPos(GameThing* param_1, const MapCoords* param_2, SpellCastData* param_3, const PSysProcessInfo* param_4);
};

#endif /* BW1_DECOMP_SPELL_TELEPORT_INCLUDED_H */
