#ifndef BW1_DECOMP_SPELL_WATER_INCLUDED_H
#define BW1_DECOMP_SPELL_WATER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Spell.h" /* For struct Spell */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class Reaction;

class SpellWater : public Spell
{
public:
	uint8_t   field_0xec[0x4];
	Reaction* PuttingOutFireReaction; /* 0xf0 */

	// Override methods

	// BW1W120 0055d020 BW1M119 015265e0
	virtual ~SpellWater();
	// BW1W120 0055d010 BW1M119 015266c0
	virtual char* GetDebugText();
	// BW1W120 007253b0 BW1M119 015267e0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00725420 BW1M119 01526700
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055d000 BW1M119 01526680
	virtual uint32_t GetSaveType();
	// BW1W120 00724ed0 BW1M119 01526a80
	virtual uint32_t Process();
};

#endif /* BW1_DECOMP_SPELL_WATER_INCLUDED_H */
