#ifndef BW1_DECOMP_SPELL_FOREST_INCLUDED_H
#define BW1_DECOMP_SPELL_FOREST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Spell.h" /* For struct Spell */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
struct MapCoords;
struct PSysProcessInfo;
struct SpellCastData;
struct SpellEventInfo;

class SpellForest: public Spell
{
public:

    // Override methods

    // win1.41 0055d220 mac 1051fef0 SpellForest::_dt(void)
    virtual ~SpellForest();
    // win1.41 00725500 mac 10521390 SpellForest::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0055d210 mac 10520090 SpellForest::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00725d50 mac 105200d0 SpellForest::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00725c90 mac 10520200 SpellForest::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055d200 mac 10520050 SpellForest::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00725730 mac 10520d80 SpellForest::HasEnoughChantsAndLifeForRecast(void)
    virtual void HasEnoughChantsAndLifeForRecast();
    // win1.41 007259c0 mac 10520820 SpellForest::Process(void)
    virtual uint32_t Process();
    // win1.41 00725830 mac 10520880 SpellForest::SpellEvent(SpellEventInfo const &)
    virtual void SpellEvent(const SpellEventInfo* param_1);
    // win1.41 0055d1e0 mac 1051ff90 SpellForest::CloseDown(void)
    virtual void CloseDown();
    // win1.41 00725540 mac 10521300 SpellForest::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
    virtual int InitWithPos(GameThing* param_1, const MapCoords* param_2, SpellCastData* param_3, const PSysProcessInfo* param_4);
    // win1.41 007259e0 mac 10520730 SpellForest::CalculateCostToMaintain(void)
    virtual float CalculateCostToMaintain();
    // win1.41 00725750 mac 10520cc0 SpellForest::AdjustSpellSeedPos(MapCoords *)
    virtual void AdjustSpellSeedPos(MapCoords* param_1);
    // win1.41 007256c0 mac 10520ee0 SpellForest::SetMaxObjectsToCreate(long)
    virtual void SetMaxObjectsToCreate(int param_1);
    // win1.41 007256f0 mac 10520e00 SpellForest::GetMaxObjectsToCreate(void)
    virtual int GetMaxObjectsToCreate();
};

#endif /* BW1_DECOMP_SPELL_FOREST_INCLUDED_H */
