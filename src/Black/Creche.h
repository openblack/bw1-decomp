#ifndef BW1_DECOMP_CRECHE_INCLUDED_H
#define BW1_DECOMP_CRECHE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class Creature;
class GPlayer;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;

class Creche : public Abode
{
public:
	// Override methods

	// BW1W120 0050aa00 BW1M119 012a6b20
	virtual ~Creche();
	// BW1W120 0050aa30 BW1M119 012a7100
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0050a9f0 BW1M119 012a6d50
	virtual char* GetDebugText();
	// BW1W120 0050a9e0 BW1M119 012a6d10
	virtual uint32_t GetSaveType();
	// BW1W120 0050a990 BW1M119 inlined
	virtual MapCoords GetArrivePos();
	// BW1W120 0050a9b0 BW1M119 012a6c50
	virtual bool32_t CanActAsAContainer(Creature* param_1);
	// BW1W120 0050a9c0 BW1M119 012a6ca0
	virtual bool32_t IsStoragePit(Creature* param_1);
	// BW1W120 0050ab90 BW1M119 012a6d90
	virtual float ReduceLife(float value, GPlayer* player);
	// BW1W120 0050a9d0 BW1M119 012a6ce0
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 0050aa50 BW1M119 012a6fe0
	virtual void DeleteDependancys();
	// BW1W120 0050ab50 BW1M119 012a6df0
	virtual void MakeFunctional();

	// Static methods

	// BW1W120 0050aad0 BW1M119 012a6ea0
	static Creche* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
	                      float food, int wood);
};

#endif /* BW1_DECOMP_CRECHE_INCLUDED_H */
