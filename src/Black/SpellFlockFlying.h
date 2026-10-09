#ifndef BW1_DECOMP_SPELL_FLOCK_FLYING_INCLUDED_H
#define BW1_DECOMP_SPELL_FLOCK_FLYING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SpellFlock.h" /* For struct SpellFlock */

// Forward Declares

struct SpellCastData;
struct PSysProcessInfo;
struct MapCoords;
class Base;
class GameOSFile;
class GameThing;
class Spell;

class SpellFlockFlying : public SpellFlock
{
public:
	uint8_t field_0x110[0x10];

	// Override methods

	// BW1W120 00723a80 BW1M119 01524e80
	virtual int InitWithPos(GameThing* creator, const MapCoords& pos, SpellCastData* cast_data,
	                        const PSysProcessInfo& process_info);
	// BW1W120 007239b0 BW1M119 01525230
	virtual ~SpellFlockFlying();
	// BW1W120 0055d290 BW1M119 01526400
	virtual char* GetDebugText() { return "SpellFlockFlying:"; }
	// BW1W120 007249d0 BW1M119 015239a0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00724ac0 BW1M119 01523820
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055d280 BW1M119 015263c0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_SPELL_FLOCK_FLYING; }
	// BW1W120 00723a30 BW1M119 015250b0
	virtual void GetParticleType();
	// BW1W120 00724100 BW1M119 01524610
	virtual void Draw();
	// BW1W120 00723bc0 BW1M119 015247b0
	virtual uint32_t Process();

	// BW1W120 inlined BW1M119 inlined
	SpellFlockFlying() { SetToZero(); }

	// BW1W120 007239e0 BW1M119 015251e0
	void SetToZero();
};

#endif /* BW1_DECOMP_SPELL_FLOCK_FLYING_INCLUDED_H */
