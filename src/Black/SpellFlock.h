#ifndef BW1_DECOMP_SPELL_FLOCK_INCLUDED_H
#define BW1_DECOMP_SPELL_FLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SpellWithObjects.h" /* For struct SpellWithObjects */

// Forward Declares

class Base;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
struct MapCoords;
struct PSysProcessInfo;
class Spell;
struct SpellCastData;

class SpellFlock: public SpellWithObjects
{
public:

    // Override methods

    // win1.41 0055d250 mac 1030e480 SpellFlock::_dt(void)
    virtual ~SpellFlock();
    // win1.41 00724780 mac 1051c560 SpellFlock::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 007248a0 mac 1051c390 SpellFlock::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00723280 mac 1051e660 SpellFlock::NeedsContinualPackets(GInterfaceStatus *)
    virtual bool NeedsContinualPackets(GInterfaceStatus* param_1);
    // win1.41 007233d0 mac 1051e2b0 SpellFlock::Process(void)
    virtual uint32_t Process();
    // win1.41 00723270 mac 1051e760 SpellFlock::CloseDown(void)
    virtual void CloseDown();
    // win1.41 007232d0 mac 1051e4a0 SpellFlock::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
    virtual int InitWithPos(GameThing* param_1, const MapCoords* param_2, SpellCastData* param_3, const PSysProcessInfo* param_4);
    // win1.41 00723240 mac 1051e7b0 SpellFlock::CalculateCostToMaintain(void)
    virtual float CalculateCostToMaintain();
};

#endif /* BW1_DECOMP_SPELL_FLOCK_INCLUDED_H */
