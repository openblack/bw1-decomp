#ifndef BW1_DECOMP_SPELL_FLOCK_INCLUDED_H
#define BW1_DECOMP_SPELL_FLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SpellWithObjects.h" /* For struct SpellWithObjects */

// Forward Declares

class Base;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
struct MapCoords;
struct PSysProcessInfo;
class Spell;
struct SpellCastData;

class SpellFlock : public SpellWithObjects
{
public:
	// Override methods

	// BW1W120 0055d250 BW1M119 01310dc0
	virtual ~SpellFlock();
	// BW1W120 00724780 BW1M119 01523ce0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 007248a0 BW1M119 01523b10
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00723280 BW1M119 01525dd0
	virtual bool NeedsContinualPackets(GInterfaceStatus* param_1);
	// BW1W120 007233d0 BW1M119 01525a20
	virtual uint32_t Process();
	// BW1W120 00723270 BW1M119 01525ed0
	virtual void CloseDown();
	// BW1W120 007232d0 BW1M119 01525c10
	virtual int InitWithPos(GameThing* param_1, const MapCoords& param_2, SpellCastData* param_3,
	                        const PSysProcessInfo& param_4);
	// BW1W120 00723240 BW1M119 01525f20
	virtual float CalculateCostToMaintain();
};

#endif /* BW1_DECOMP_SPELL_FLOCK_INCLUDED_H */
