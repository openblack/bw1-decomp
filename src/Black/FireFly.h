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
	static void DrawAll(); // 0052b790
	// BW1W120 0052a1e0 BW1M119 010deda0
	static void OnClearMap();
	// BW1W120 0052b7a0 BW1M119 0107fcb0
	static void ProcessAll();

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

	// BW1W120 0052a310 BW1M119 010de920
	virtual ~FireFly();
	// BW1W120 0052a4c0 BW1M119 010de7f0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0052a300 BW1M119 010db2f0
	virtual char* GetDebugText();
	// BW1W120 0052bbc0 BW1M119 010db470
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0052b870 BW1M119 010dbcb0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0052a2f0 BW1M119 010db2b0
	virtual uint32_t GetSaveType();
	// BW1W120 0052a1d0 BW1M119 010deeb0
	virtual bool32_t IsMoving() const;
	// BW1W120 0052aa90 BW1M119 010dde70
	virtual void Draw();
	// BW1W120 0052a510 BW1M119 010de690
	virtual void CallVirtualFunctionsForCreation(const MapCoords& param_1);
	// BW1W120 0052a1a0 BW1M119 010def70
	virtual bool InteractsWithPhysicsObjects();
	// BW1W120 0052a1b0 BW1M119 010def20
	virtual void ReactToPhysicsImpact(PhysicsObject* param_1, bool param_2);
	// BW1W120 0052a1c0 BW1M119 010deee0
	virtual bool32_t CanBecomeAPhysicsObject();
	// BW1W120 0052bf10 BW1M119 010db330
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);

	// Static methods

	// BW1W120 0052a200 BW1M119 010dec40
	static FireFly* Create(const MapCoords& coord);

	// Constructors

	// BW1W120 0052a280 BW1M119 010deb50
	FireFly(const MapCoords& coords);
	// BW1W120 0052a340 BW1M119 010deac0
	FireFly();
};

#endif /* BW1_DECOMP_FIRE_FLY_INCLUDED_H */
