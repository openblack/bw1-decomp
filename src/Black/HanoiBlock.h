#ifndef BW1_DECOMP_HANOI_BLOCK_INCLUDED_H
#define BW1_DECOMP_HANOI_BLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMMERSION_EFFECT_TYPE */

#include "MapCoords.h"        /* For struct MapCoords */
#include "MobileObject.h"     /* For struct MobileObject */
#include "MobileObjectInfo.h" /* For class GMobileObjectInfo */

// Forward Declares

class Base;
class GInterfaceStatus;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class LHOSFile;
class Object;
class PuzzleGame;

class HanoiBlock : public MobileObject
{
public:
	MapCoords   RestPos;
	HanoiBlock* BlockAbove;
	HanoiBlock* BlockBelow;
	PuzzleGame* Puzzle;

	// Override methods

	// BW1W120 00561840 BW1M119 01128020
	virtual char* GetDebugText() { return "Hanoi block: "; }
	// BW1W120 006db960 BW1M119 0112d130
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006db9f0 BW1M119 0112d020
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561830 BW1M119 01127fe0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_HANOI_BLOCK; }
	// BW1W120 006de440 BW1M119 01128060
	virtual bool32_t IsCannotBePickedUp() const;
	// BW1W120 006de3f0 BW1M119 01128130
	virtual bool32_t InterfaceSetInMagicHand(GInterfaceStatus* param_1);
	// BW1W120 00561800 BW1M119 01127f00
	virtual bool32_t CanBecomeAPhysicsObject()
	{
		if (GetInfo()->MobileObjectType != MOBILE_OBJECT_HANOI_PUZZLE_BASE)
		{
			return BlockBelow == NULL;
		}
		return false;
	}
	// BW1W120 005617f0 BW1M119 01127eb0
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* coords) { return 0; }
	// BW1W120 00561820 BW1M119 01127f90
	virtual IMMERSION_EFFECT_TYPE GetInHandImmersionTexture() { return IMMERSION_EFFECT_TYPE_HANOI; }

	// BW1W120 inlined BW1M119 inlined
	HanoiBlock() { SetIndestructable(true); }
};

#endif /* BW1_DECOMP_HANOI_BLOCK_INCLUDED_H */
