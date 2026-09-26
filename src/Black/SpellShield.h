#ifndef BW1_DECOMP_SPELL_SHIELD_INCLUDED_H
#define BW1_DECOMP_SPELL_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "SpellWithObjects.h" /* For struct SpellWithObjects */

// Forward Declares

class Base;
class GMagicInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Living;
struct MapCoords;
struct PSysProcessInfo;
class Reaction;
class Spell;
struct SpellCastData;

class SpellShield : public SpellWithObjects
{
public:
	uint8_t field_0xf4[0x18];

	// Override methods

	// BW1W120 0072b480 BW1M119 0153cd30
	virtual ~SpellShield();
	// BW1W120 0072b500 BW1M119 0153bfd0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0072b450 BW1M119 0153ac60
	virtual float GetRadius();
	// BW1W120 0072b440 BW1M119 0153acc0
	virtual float Get2DRadius();
	// BW1W120 0072b470 BW1M119 0153ce60
	virtual char* GetDebugText();
	// BW1W120 0072bb40 BW1M119 0153af90
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0072bc40 BW1M119 0153ad10
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0072b460 BW1M119 0153ce20
	virtual uint32_t GetSaveType();
	// BW1W120 0072ba80 BW1M119 0153b430
	virtual float GetImpressiveValue(Living* param_1, Reaction* param_2);
	// BW1W120 0072b430 BW1M119 0153cde0
	virtual bool32_t IsSpellShield();
	// BW1W120 0072b780 BW1M119 0153bbe0
	virtual void UpdateStruckReaction();
	// BW1W120 0072b7c0 BW1M119 0153bb40
	virtual void SetUpDestroyedReaction();
	// BW1W120 0072b750 BW1M119 0153bc90
	virtual uint32_t Process();
	// BW1W120 0072b840 BW1M119 0153ba00
	virtual void CloseDown();
	// BW1W120 0072b5f0 BW1M119 0153bd20
	virtual int InitWithPos(GameThing* param_1, const MapCoords& param_2, SpellCastData* param_3,
	                        const PSysProcessInfo& param_4);
	// BW1W120 0072b7f0 BW1M119 0153baa0
	virtual float CalculateCostToMaintain();

	// Non-virtual methods

	// BW1W120 0072b820 BW1M119 0153ba50
	GMagicInfo* GetMagicInfo() const;
};

#endif /* BW1_DECOMP_SPELL_SHIELD_INCLUDED_H */
