#ifndef BW1_DECOMP_FIRE_FLY_INCLUDED_H
#define BW1_DECOMP_FIRE_FLY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MapCoords.h" /* For struct MapCoords */
#include "Object.h"    /* For struct Object */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct LH3DSprite;
class LHOSFile;
class PhysicsObject;

class FireFly : public Object
{
public:
	uint32_t    field_0x54;
	LH3DSprite* sprite;
	uint32_t    field_0x5c;
	MapCoords   field_0x60;
	MapCoords   field_0x6c;
	MapCoords   field_0x78;
	uint8_t     field_0x84[0xc];
	uint32_t    field_0x90;
	uint32_t    field_0x94;
	uint32_t    field_0x98;
	float       field_0x9c;
	float       field_0xa0;
	float       field_0xa4;
	float       field_0xa8;
	float       field_0xac;
	float       field_0xb0;
	float       field_0xb4;
	float       field_0xb8;
	float       field_0xbc;
	uint8_t     field_0xc0;

	// Override methods

	// BW1W120 0052a310 BW1M100 100d9be0 FireFly::_dt(void)
	virtual ~FireFly();
	// BW1W120 0052a4c0 BW1M100 100d9ab0 FireFly::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0052a300 BW1M100 100d66d0 FireFly::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0052bbc0 BW1M100 100d6850 FireFly::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0052b870 BW1M100 100d7020 FireFly::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0052a2f0 BW1M100 100d6690 FireFly::GetSaveType(void)
	virtual uint32_t GetSaveType();
	// BW1W120 0052a1d0 BW1M100 100da180 FireFly::IsMoving( const(void))
	virtual bool IsMoving();
	// BW1W120 0052aa90 BW1M100 100d9130 FireFly::Draw(void)
	virtual void Draw();
	// BW1W120 0052a510 BW1M100 100d9950 FireFly::CallVirtualFunctionsForCreation(MapCoords const &)
	virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
	// BW1W120 0052a1a0 BW1M100 100da240 FireFly::InteractsWithPhysicsObjects(void)
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0052a1b0 BW1M100 100da1f0 FireFly::ReactToPhysicsImpact(PhysicsObject *, bool)
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 0052a1c0 BW1M100 100da1b0 FireFly::CanBecomeAPhysicsObject(void)
	virtual bool CanBecomeAPhysicsObject();
	// BW1W120 0052bf10 BW1M100 100d6710 FireFly::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);

	// Static methods

	// BW1W120 0052a200 BW1M100 100d9f20 FireFly::Create(MapCoords const &)
	static FireFly* Create(MapCoords* coord);

	// Constructors

	// BW1W120 0052a280 BW1M100 100d9e20 FireFly::FireFly(const MapCoords&)
	FireFly(MapCoords* coords);
	// BW1W120 0052a340 BW1M100 100d9e04 FireFly::FireFly(void)
	FireFly();
};

#endif /* BW1_DECOMP_FIRE_FLY_INCLUDED_H */
