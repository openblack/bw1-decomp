#ifndef BW1_DECOMP_PHYSICS_OBJECT_INCLUDED_H
#define BW1_DECOMP_PHYSICS_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

class PhysicsObject : public Base
{
public:
	uint8_t  field_0x8[0x1a0];
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
