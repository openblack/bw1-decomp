#ifndef BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H
#define BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Spell.h" /* For struct Spell, struct SpellVftable */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class SpellWithObjects : public Spell
{
public:
	uint8_t field_0xec[0x8];

	// Override methods

	// BW1W120 0055cf80 BW1M119 01310c60
	virtual ~SpellWithObjects();
	// BW1W120 00720fd0 BW1M119 0151ea10
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055cf70 BW1M119 01521560
	virtual char* GetDebugText();
	// BW1W120 007210f0 BW1M119 0151e710
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 007211d0 BW1M119 0151e540
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055cf60 BW1M119 01521520
	virtual uint32_t GetSaveType();
	// BW1W120 007212f0 BW1M119 0151e450
	virtual void ProcessSpellSeed();
	// BW1W120 00721290 BW1M119 0151e4b0
	virtual uint32_t Process();
	// BW1W120 00721300 BW1M119 0151e390
	virtual void CloseDown();
	// BW1W120 0055cea0 BW1M119 inlined
	virtual int GetMaxObjectsToCreate();
	// BW1W120 0055cf50 BW1M119 013b9a60
	virtual bool GetSetObjectsDyingOnCloseDown();
};

#endif /* BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H */
