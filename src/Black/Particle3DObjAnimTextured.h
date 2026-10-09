#ifndef BW1_DECOMP_PARTICLE_3D_OBJ_ANIM_TEXTURED_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_OBJ_ANIM_TEXTURED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Particle3DObj.h" /* For struct Particle3DObj */

// Forward Declares

class Base;

class Particle3DObjAnimTextured : public Particle3DObj
{
public:
	uint8_t field_0x28[0x10];

	// Override methods

	// BW1W120 006c7e40 BW1M119 inlined
	virtual ~Particle3DObjAnimTextured();

	// BW1W120 006c7df0 BW1M119 014854a0
	Particle3DObjAnimTextured();
};

#endif /* BW1_DECOMP_PARTICLE_3D_OBJ_ANIM_TEXTURED_INCLUDED_H */
