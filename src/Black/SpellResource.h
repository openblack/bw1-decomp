#ifndef BW1_DECOMP_SPELL_RESOURCE_INCLUDED_H
#define BW1_DECOMP_SPELL_RESOURCE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Spell.h" /* For struct Spell */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
struct SpellEventInfo;

class SpellResource : public Spell
{
public:
	uint8_t field_0xec[0x4];

	// Override methods

	// BW1W120 0055cfc0 BW1M119 01527610
	virtual char* GetDebugText() { return "SpellFood:"; }
	// BW1W120 007252f0 BW1M119 015269a0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00725350 BW1M119 015268c0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055cfb0 BW1M119 015275d0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_SPELL_RESOURCE; }
	// BW1W120 00724c90 BW1M119 015273d0
	virtual bool HasEnoughChantsAndLifeForRecast();
	// BW1W120 00724d80 BW1M119 01527130
	virtual void SpellEvent(const SpellEventInfo& param_1);

	// BW1W120 inlined BW1M119 inlined
	SpellResource() { SetToZero(); }

	// BW1W120 00724c80 BW1M119 015274a0
	void SetToZero();
};

#endif /* BW1_DECOMP_SPELL_RESOURCE_INCLUDED_H */
