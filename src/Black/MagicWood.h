#ifndef BW1_DECOMP_MAGIC_WOOD_INCLUDED_H
#define BW1_DECOMP_MAGIC_WOOD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMPRESSIVE_TYPE */

#include "PileWood.h" /* For struct PileWood */

// Forward Declares

class Base;
class Creature;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
class Object;

class MagicWood : public PileWood
{
public:
	GPlayer* Player; /* 0xb4 */

	// Override methods

	// BW1W120 00600df0 BW1M119 013c2440
	virtual ~MagicWood();
	// BW1W120 00600da0 BW1M119 013c20d0
	virtual GPlayer* GetPlayer();
	// BW1W120 00600de0 BW1M119 013c21e0
	virtual char* GetDebugText();
	// BW1W120 00600f60 BW1M119 013c2220
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 00600f20 BW1M119 013c22b0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00600dd0 BW1M119 013c21a0
	virtual uint32_t GetSaveType();
	// BW1W120 00600db0 BW1M119 013c2110
	virtual IMPRESSIVE_TYPE GetImpressiveType();
	// BW1W120 00600dc0 BW1M119 013c2150
	virtual bool32_t IsAWoodPileOutsideStoragePit(Creature* creature);
	// BW1W120 00600f10 BW1M119 013c2340
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);

	// BW1W120 00600d40 BW1M119 013c25f0
	MagicWood();
	// BW1W120 00600e20 BW1M119 013c24d0
	MagicWood(const MapCoords& coords, GPlayer* player, uint32_t resource, MultiMapFixed* parent,
	          bool32_t create_reaction);
};

#endif /* BW1_DECOMP_MAGIC_WOOD_INCLUDED_H */
