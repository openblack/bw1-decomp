#ifndef BW1_DECOMP_SPELL_FLOCK_FLYING_INCLUDED_H
#define BW1_DECOMP_SPELL_FLOCK_FLYING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SpellFlock.h" /* For struct SpellFlock */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class Spell;

class SpellFlockFlying : public SpellFlock
{
public:
	// Override methods

	// BW1W120 0055d2a0 BW1M119 01525230
	virtual ~SpellFlockFlying();
	// BW1W120 0055d290 BW1M119 01526400
	virtual char* GetDebugText();
	// BW1W120 007249d0 BW1M119 015239a0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00724ac0 BW1M119 01523820
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055d280 BW1M119 015263c0
	virtual uint32_t GetSaveType();
	// BW1W120 00723a30 BW1M119 015250b0
	virtual void GetParticleType();
	// BW1W120 00724100 BW1M119 01524610
	virtual void Draw();
	// BW1W120 00723bc0 BW1M119 015247b0
	virtual uint32_t Process();
};

#endif /* BW1_DECOMP_SPELL_FLOCK_FLYING_INCLUDED_H */
