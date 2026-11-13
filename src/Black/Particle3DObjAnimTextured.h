#ifndef BW1_DECOMP_PARTICLE_3D_OBJ_ANIM_TEXTURED_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_OBJ_ANIM_TEXTURED_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Particle3DObj.h" /* For struct Particle3DObj */

#define PARTICLE_ANIM_TEXTURE_SIZE 256

// Forward Declares

class Base;
class GameOSFile;

class Particle3DObjAnimTextured : public Particle3DObj
{
public:
	long    TextureHeight;
	long    TextureWidth;
	bool    SlideU;
	bool    SlideV;
	uint8_t field_0x32;
	long    NumFrames;

	// Override methods

	// BW1W120 006c7e40 BW1M119 inlined
	virtual ~Particle3DObjAnimTextured();
	// BW1W120 00695600 BW1M119 01425520
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cc160 BW1M119 0148c280
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0067a530 BW1M119 013f8520
	virtual void DrawAt(const DrawData& data);

	// BW1W120 006c7df0 BW1M119 014854a0
	Particle3DObjAnimTextured();
};

#endif /* BW1_DECOMP_PARTICLE_3D_OBJ_ANIM_TEXTURED_INCLUDED_H */
