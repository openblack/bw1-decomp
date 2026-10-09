#ifndef BW1_DECOMP_PARTICLE_3D_PNT_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_PNT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class Particle3DPnt : public RenderParticle
{
public:
	// Override methods

	// BW1W120 0055ef00 BW1M119 inlined
	virtual char* GetDebugText() { return "##a_class:"; }
	// BW1W120 00695010 BW1M119 inlined
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006cbb30 BW1M119 inlined
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055eef0 BW1M119 inlined
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_PARTICLE_3D_PNT; }
	// BW1W120 0055ef10 BW1M119 inlined
	virtual void DrawAt(const DrawData& data) {}

	// BW1W120 0055ee60 BW1M119 inlined
	Particle3DPnt() {}
};

#endif /* BW1_DECOMP_PARTICLE_3D_PNT_INCLUDED_H */
