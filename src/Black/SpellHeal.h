#ifndef BW1_DECOMP_SPELL_HEAL_INCLUDED_H
#define BW1_DECOMP_SPELL_HEAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Spell.h" /* For struct Spell */

// Forward Declares

class Base;
class GameThing;
struct MapCoords;
struct PSysProcessInfo;
struct SpellCastData;

class SpellHeal: public Spell
{
public:

    // Override methods

    // win1.41 0055d1b0 mac 10533d20 SpellHeal::_dt(void)
    virtual ~SpellHeal();
    // win1.41 0055d1a0 mac 10533e00 SpellHeal::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0055d190 mac 10533dc0 SpellHeal::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0072d870 mac 1052ed50 SpellHeal::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
    virtual int InitWithPos(GameThing* param_1, const MapCoords* param_2, SpellCastData* param_3, const PSysProcessInfo* param_4);
};

#endif /* BW1_DECOMP_SPELL_HEAL_INCLUDED_H */
