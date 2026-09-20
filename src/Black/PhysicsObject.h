#ifndef BW1_DECOMP_PHYSICS_OBJECT_INCLUDED_H
#define BW1_DECOMP_PHYSICS_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <Lionhead/LH3DLib/development/LHMatrix.h> /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/LHPoint.h>  /* For struct LHPoint */

#include "Base.h" /* For struct Base */

// Forward Declares

class GInterfaceStatus;
class Object;

class PhysicsObject : public Base
{
public:
	// BW1W120 006442b0 BW1M100 10114020 PhysicsObject::DeleteAll(void)
	static void DeleteAll();
	// BW1W120 00644fc0 BW1M100 10038e40 PhysicsObject::GameTurnUpdate(void)
	static void GameTurnUpdate();
	static void DrawAll(); // 00646de0
	// BW1W120 00646950 BW1M100 10112550 PhysicsObject::SearchForPhysicsObject(Object *)
	static PhysicsObject* SearchForPhysicsObject(Object* object);
	// BW1W120 006443a0 BW1M100 1011d510 PhysicsObject::AddObject(Object *, LHPoint const &, LHPoint const &, Object *, GInterfaceStatus *)
	static PhysicsObject* AddObject(Object* object, const LHPoint& param_2, const LHPoint& param_3, Object* param_4,
	                                GInterfaceStatus* param_5);

	uint8_t  field_0x8[0x88];
	LHPoint  field_0x90;
	uint8_t  field_0x9c[0x8];
	LHMatrix Matrix; /* 0xa4 */
	uint8_t  field_0xd4[0x30];
	LHPoint  Velocity; /* 0x104 */
	uint8_t  field_0x110[0x98];
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
	uint32_t field_0x1d8;

	// Override methods

	// BW1W120 00644d70 BW1M100 10113d90 PhysicsObject::_dt(void)
	virtual ~PhysicsObject();

	// Constructors

	// BW1W120 00644330 BW1M100 10113e20 PhysicsObject::PhysicsObject(void)
	PhysicsObject();
};

#endif /* BW1_DECOMP_PHYSICS_OBJECT_INCLUDED_H */
