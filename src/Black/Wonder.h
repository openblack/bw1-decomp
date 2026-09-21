#ifndef BW1_DECOMP_WONDER_INCLUDED_H
#define BW1_DECOMP_WONDER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DObject.h> /* For enum LH3DObject__ObjectType */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class Creature;
class GAbodeInfo;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class MultiMapFixed;
class Object;
class Town;

class Wonder : public Abode
{
public:
	float power; /* 0xc4 */

	// Override methods

	// BW1W120 00561220 BW1M119 01169330
	virtual ~Wonder();
	// BW1W120 00778e40 BW1M119 01169e60
	virtual void ToBeDeleted(int param_1);
	// BW1W120 00561210 BW1M119 01169570
	virtual char* GetDebugText();
	// BW1W120 007790f0 BW1M119 01169710
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 00779080 BW1M119 011697e0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00561200 BW1M119 01169530
	virtual uint32_t GetSaveType();
	// BW1W120 005611b0 BW1M119 inlined
	virtual MapCoords GetArrivePos();
	// BW1W120 005611e0 BW1M119 011694a0
	virtual uint32_t CanActAsAContainer(Creature* param_1);
	// BW1W120 005611f0 BW1M119 011694f0
	virtual uint32_t IsStoragePit(Creature* param_1);
	// BW1W120 00779160 BW1M119 01169660
	virtual void CallVirtualFunctionsForCreation(const MapCoords& coords);
	// BW1W120 00779190 BW1M119 011695b0
	virtual LH3DObject::ObjectType Get3DType();
	// BW1W120 00778f30 BW1M119 01169bc0
	virtual bool32_t Built();
	// BW1W120 00779070 BW1M119 011698c0
	virtual void SetPower(float param_1);
	// BW1W120 00778fc0 BW1M119 011699a0
	virtual void AddToPlayer();
	// BW1W120 00778f50 BW1M119 01169ab0
	virtual void RemoveFromPlayer();

	// Static methods

	// BW1W120 00778e80 BW1M119 01169c80
	static Wonder* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
	                      float food, int wood);

	// Constructors

	// BW1W120 00778e00 BW1M119 01169ee0
	Wonder(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food,
	       int wood);

	// Non-virtual methods

	// BW1W120 00779060 BW1M119 inlined
	void SetToZero();
};

#endif /* BW1_DECOMP_WONDER_INCLUDED_H */
