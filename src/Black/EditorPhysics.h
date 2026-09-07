#ifndef BW1_DECOMP_EDITOR_PHYSICS_INCLUDED_H
#define BW1_DECOMP_EDITOR_PHYSICS_INCLUDED_H

#include <assert.h> /* For static_assert */

// One row of data/physicsconstants.txt, indexed by Object::GetPhysicsConstantsType().
struct PhysicsData
{
	float field_0x0;
	float field_0x4;
	float field_0x8;
	float field_0xc;
	float field_0x10;
	float field_0x14;
};

static_assert(sizeof(PhysicsData) == 0x18, "PhysicsData size is incorrect");

class EditorPhysics
{
public:
	// BW1W120 00cc63e0
	static PhysicsData PhysicsConstants[0x18];

	// Non-virtual methods

	// BW1W120 005249d0 EditorPhysics::Load(void)
	void Load();
};

#endif /* BW1_DECOMP_EDITOR_PHYSICS_INCLUDED_H */
