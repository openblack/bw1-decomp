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

	// BW1W120 0055d220 BW1M119 01527650
	virtual ~SpellForest();
	// BW1W120 00725500 BW1M119 01528af0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055d210 BW1M119 015277f0
	virtual char* GetDebugText();
	// BW1W120 00725d50 BW1M119 01527830
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00725c90 BW1M119 01527960
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055d200 BW1M119 015277b0
	virtual uint32_t GetSaveType();
	// BW1W120 00725730 BW1M119 015284e0
	virtual void HasEnoughChantsAndLifeForRecast();
	// BW1W120 007259c0 BW1M119 01527f80
	virtual uint32_t Process();
	// BW1W120 00725830 BW1M119 01527fe0
	virtual void SpellEvent(const SpellEventInfo& param_1);
	// BW1W120 0055d1e0 BW1M119 015276f0
	virtual void CloseDown();
	// BW1W120 00725540 BW1M119 01528a60
	virtual int InitWithPos(GameThing* param_1, const MapCoords& param_2, SpellCastData* param_3,
	                        const PSysProcessInfo& param_4);
	// BW1W120 007259e0 BW1M119 01527e90
	virtual float CalculateCostToMaintain();
	// BW1W120 00725750 BW1M119 01528420
	virtual void AdjustSpellSeedPos(MapCoords* param_1);
	// BW1W120 007256c0 BW1M119 01528640
	virtual void SetMaxObjectsToCreate(int param_1);
	// BW1W120 007256f0 BW1M119 01528560
	virtual int GetMaxObjectsToCreate();
};

#endif /* BW1_DECOMP_SPELL_FOREST_INCLUDED_H */
