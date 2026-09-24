#ifndef BW1_DECOMP_PHYSICS_OBJECT_INCLUDED_H
#define BW1_DECOMP_PHYSICS_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHMatrix.h> /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/LHPoint.h>  /* For struct LHPoint */

#include <Lionhead/LH3DLib/development/PhysOb.h> /* For struct PhysOb */

#include "Base.h" /* For struct Base */

// Forward Declares

class GInterfaceStatus;
class Object;

// fabricated names, from how Object uses them.
enum PHYSICS_OBJECT_FLAG
{
	// Set when the object leaves the hand rather than being thrown by another object.
	PHYSICS_OBJECT_FLAG_FROM_HAND = 0x4,
	// The object came to rest where it was released.
	PHYSICS_OBJECT_FLAG_LANDED = 0x8,
	// The 3D object's paper/disappear state was switched off for the flight and is restored by
	// Object::EndPhysics.
	PHYSICS_OBJECT_FLAG_WAS_PAPER = 0x20,
	PHYSICS_OBJECT_FLAG_WAS_DISAPPEARING = 0x40,
};

class PhysicsObject : public Base
{
public:
	// BW1W120 006442b0 BW1M119 0111dbd0
	static void DeleteAll();
	// BW1W120 00644fc0 BW1M119 0103b7a0
	static void GameTurnUpdate();
	static void DrawAll(); // 00646de0
	// BW1W120 00646950 BW1M119 0111bc70
	static PhysicsObject* SearchForPhysicsObject(Object* object);
	// BW1W120 006443a0 BW1M119 0111d510
	static PhysicsObject* AddObject(Object* object, const LHPoint& velocity, const LHPoint& angular_velocity,
	                                Object* thrower, GInterfaceStatus* status);
	// BW1W120 00646a00 BW1M119 0111b470
	static void RemoveObject(Object* object, bool param_2, bool param_3);
	// BW1W120 00644800 BW1M119 0111d080
	static void RaiseUntilNotIntersecting(PhysicsObject** physics_object);

	static PhysOb   PredictionPhysOb;
	static uint32_t PredictionActive;
	static Object*  PredictionObject;

	uint8_t  field_0x8[0x20];
	PhysOb   Physics; /* 0x28 */
	uint8_t  field_0x1a4[0x4];
	float    field_0x1a8;
	uint32_t field_0x1ac;
	uint32_t field_0x1b0;
	uint32_t field_0x1b4;
	float    field_0x1b8;
	uint32_t field_0x1bc;
	uint32_t field_0x1c0;
	uint32_t field_0x1c4;
	float    field_0x1c8;
	uint32_t field_0x1cc;
	uint32_t field_0x1d0;
	uint32_t field_0x1d4;
	uint32_t Flags;

	// Override methods

	// BW1W120 00644d70 BW1M119 0111d940
	virtual ~PhysicsObject();

	// Constructors

	// BW1W120 00644330 BW1M119 0111d9d0
	PhysicsObject();
};

#endif /* BW1_DECOMP_PHYSICS_OBJECT_INCLUDED_H */
