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

    // BW1W120 0055d250 BW1M100 1030e480 SpellFlock::_dt(void)
    virtual ~SpellFlock();
    // BW1W120 00724780 BW1M100 1051c560 SpellFlock::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 007248a0 BW1M100 1051c390 SpellFlock::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 00723280 BW1M100 1051e660 SpellFlock::NeedsContinualPackets(GInterfaceStatus *)
    virtual bool NeedsContinualPackets(GInterfaceStatus* param_1);
    // BW1W120 007233d0 BW1M100 1051e2b0 SpellFlock::Process(void)
    virtual uint32_t Process();
    // BW1W120 00723270 BW1M100 1051e760 SpellFlock::CloseDown(void)
    virtual void CloseDown();
    // BW1W120 007232d0 BW1M100 1051e4a0 SpellFlock::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
    virtual int InitWithPos(GameThing* param_1, const MapCoords* param_2, SpellCastData* param_3, const PSysProcessInfo* param_4);
    // BW1W120 00723240 BW1M100 1051e7b0 SpellFlock::CalculateCostToMaintain(void)
    virtual float CalculateCostToMaintain();
};

#endif /* BW1_DECOMP_SPELL_FLOCK_INCLUDED_H */
