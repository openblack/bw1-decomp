#ifndef BW1_DECOMP_MAGIC_FOOD_INCLUDED_H
#define BW1_DECOMP_MAGIC_FOOD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum IMPRESSIVE_TYPE */

#include "PileFood.h" /* For struct PileFood */

// Forward Declares

class Base;
class Creature;
class GPlayer;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;

class MagicFood : public PileFood
{
public:
	// Override methods

	// BW1W120 005fa9c0 BW1M119 013b3fa0
	virtual ~MagicFood();
	// BW1W120 005fa980 BW1M119 013b3cd0
	virtual GPlayer* GetPlayer();
	// BW1W120 005fa970 BW1M119 013b3c90
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 005fa9b0 BW1M119 013b3d90
	virtual char* GetDebugText();
	// BW1W120 005fab40 BW1M119 013b3dd0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 005fab00 BW1M119 013b3e60
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 005fa9a0 BW1M119 013b3d50
	virtual uint32_t GetSaveType();
	// BW1W120 005fa990 BW1M119 013b3d10
	virtual IMPRESSIVE_TYPE GetImpressiveType();
	// BW1W120 004e4a20 BW1M119 015ec0b0
	virtual bool32_t IsAFoodPileOutsideStoragePit(Creature* param_1);
	// BW1W120 005faab0 BW1M119 013b3ef0
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
};

#endif /* BW1_DECOMP_MAGIC_FOOD_INCLUDED_H */
