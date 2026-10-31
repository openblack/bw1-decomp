#ifndef BW1_DECOMP_PARTICLE_3D_OBJ_ANIM_TEXTURED_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_OBJ_ANIM_TEXTURED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Particle3DObj.h" /* For struct Particle3DObj */

// Forward Declares

class Base;
class GameOSFile;

class Particle3DObjAnimTextured : public Particle3DObj
{
public:
	uint32_t field_0x28;
	uint32_t field_0x2c;
	uint8_t  field_0x30;
	uint8_t  field_0x31;
	uint8_t  field_0x32;
	uint32_t field_0x34;

	// Override methods

	// BW1W120 006c7e40 BW1M119 inlined
	virtual ~Particle3DObjAnimTextured();
	// BW1W120 00695600 BW1M119 01425520
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cc160 BW1M119 0148c280
	virtual bool32_t Save(GameOSFile& file);

	// BW1W120 006c7df0 BW1M119 014854a0
	Particle3DObjAnimTextured();
};

#endif /* BW1_DECOMP_PARTICLE_3D_OBJ_ANIM_TEXTURED_INCLUDED_H */
