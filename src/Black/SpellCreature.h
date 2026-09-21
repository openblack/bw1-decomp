#ifndef BW1_DECOMP_SPELL_CREATURE_INCLUDED_H
#define BW1_DECOMP_SPELL_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Spell.h" /* For struct Spell */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class Object;
struct PSysProcessInfo;
struct SpellCastData;

class SpellCreature : public Spell
{
public:
	// Override methods

	// BW1W120 00722240 BW1M119 01521620
	virtual ~SpellCreature();
	// BW1W120 00722230 BW1M119 01521740
	virtual char* GetDebugText();
	// BW1W120 00722520 BW1M119 01521870
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00722590 BW1M119 01521780
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00722220 BW1M119 01521700
	virtual uint32_t GetSaveType();
	// BW1W120 00722490 BW1M119 01521a70
	virtual void ProcessSpellSeed();
	// BW1W120 007222c0 BW1M119 01521f40
	virtual uint32_t GetCreatureCastOn();
	// BW1W120 00722380 BW1M119 01521c60
	virtual uint32_t Process();
	// BW1W120 007224f0 BW1M119 01521a20
	virtual void CloseDown();
	// BW1W120 007222d0 BW1M119 01521d90
	virtual int InitWithObject(GameThing* param_1, Object* param_2, SpellCastData* param_3,
	                           const PSysProcessInfo& param_4);
};

#endif /* BW1_DECOMP_SPELL_CREATURE_INCLUDED_H */
