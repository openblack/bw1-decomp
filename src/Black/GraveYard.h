#ifndef BW1_DECOMP_GRAVEYARD_INCLUDED_H
#define BW1_DECOMP_GRAVEYARD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class Creature;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;

class Graveyard : public Abode
{
public:
	// Override methods

	// BW1W120 0055e010 BW1M119 010fd5a0
	virtual ~Graveyard();
	// BW1W120 00595cb0 BW1M119 010fe070
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0055e000 BW1M119 010fd820
	virtual char* GetDebugText();
	// BW1W120 00595f50 BW1M119 010fd860
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00595ee0 BW1M119 010fd940
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055dff0 BW1M119 010fd7e0
	virtual uint32_t GetSaveType();
	// BW1W120 0055df90 BW1M119 inlined
	virtual MapCoords GetArrivePos();
	// BW1W120 0055dfd0 BW1M119 010fd750
	virtual bool32_t CanActAsAContainer(Creature* param_1);
	// BW1W120 0055dfe0 BW1M119 010fd7a0
	virtual bool32_t IsStoragePit(Creature* param_1);
	// BW1W120 00595dd0 BW1M119 010fdd00
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 0055dfb0 BW1M119 010fd6d0
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 00595cd0 BW1M119 010fe020
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 00595ce0 BW1M119 010fded0
	virtual void DeleteDependancys();
	// BW1W120 00595e00 BW1M119 010fdb40
	virtual void MakeFunctional();
	// BW1W120 0055dfc0 BW1M119 010fd710
	virtual bool32_t CanBeHiddenIn();

	// Static methods

	// BW1W120 00595d70 BW1M119 010fdd90
	static Graveyard* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
	                         float food, int wood);
};

#endif /* BW1_DECOMP_GRAVEYARD_INCLUDED_H */
