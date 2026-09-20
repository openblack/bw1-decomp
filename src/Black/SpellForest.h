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

class SpellForest : public Spell
{
public:
	// Override methods

	// BW1W120 0055d220 BW1M100 1051fef0 SpellForest::_dt(void)
	virtual ~SpellForest();
	// BW1W120 00725500 BW1M100 10521390 SpellForest::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055d210 BW1M100 10520090 SpellForest::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 00725d50 BW1M100 105200d0 SpellForest::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00725c90 BW1M100 10520200 SpellForest::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055d200 BW1M100 10520050 SpellForest::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 00725730 BW1M100 10520d80 SpellForest::HasEnoughChantsAndLifeForRecast(void)
	virtual void HasEnoughChantsAndLifeForRecast();
	// BW1W120 007259c0 BW1M100 10520820 SpellForest::Process(void)
	virtual uint32_t Process();
	// BW1W120 00725830 BW1M100 10520880 SpellForest::SpellEvent(SpellEventInfo const &)
	virtual void SpellEvent(const SpellEventInfo* param_1);
	// BW1W120 0055d1e0 BW1M100 1051ff90 SpellForest::CloseDown(void)
	virtual void CloseDown();
	// BW1W120 00725540 BW1M100 10521300 SpellForest::InitWithPos(GameThing *, MapCoords const &, SpellCastData *, PSysProcessInfo const &)
	virtual int InitWithPos(GameThing* param_1, const MapCoords* param_2, SpellCastData* param_3,
	                        const PSysProcessInfo* param_4);
	// BW1W120 007259e0 BW1M100 10520730 SpellForest::CalculateCostToMaintain(void)
	virtual float CalculateCostToMaintain();
	// BW1W120 00725750 BW1M100 10520cc0 SpellForest::AdjustSpellSeedPos(MapCoords *)
	virtual void AdjustSpellSeedPos(MapCoords* param_1);
	// BW1W120 007256c0 BW1M100 10520ee0 SpellForest::SetMaxObjectsToCreate(long)
	virtual void SetMaxObjectsToCreate(int param_1);
	// BW1W120 007256f0 BW1M100 10520e00 SpellForest::GetMaxObjectsToCreate(void)
	virtual int GetMaxObjectsToCreate();
};

#endif /* BW1_DECOMP_SPELL_FOREST_INCLUDED_H */
