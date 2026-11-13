#ifndef BW1_DECOMP_PARTICLE_3D_ANIM_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_ANIM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class LH3DObject;
class ParticleCreator;

#define PARTICLE_3D_ANIM_MIN_BLEND 0.0001f

class Particle3DAnim : public RenderParticle
{
public:
	ParticleCreator* Creator;
	float            FrameToStartBlend;
	float            FrameToEndBlend;
	bool             UseGlobalAlpha;
	long             CycleTime;
	LH3DObject*      Object3D;

	// Override methods

	// BW1W120 006c85a0 BW1M119 inlined
	virtual ~Particle3DAnim();
	// BW1W120 006c8580 BW1M119 inlined
	virtual char* GetDebugText();
	// BW1W120 006953b0 BW1M119 01425740
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cbef0 BW1M119 0148c4a0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00699d40 BW1M119 01420840
	virtual void ResolveLoad();
	// BW1W120 0067a8e0 BW1M119 013f8030
	virtual void DrawAt(const DrawData& data);
	// BW1W120 006c8590 BW1M119 0142c420
	virtual Particle3DAnim* AsParticle3DAnim();

	// BW1W120 006c8540 BW1M119 01484380
	Particle3DAnim();

	// Non-virtual methods

	// BW1W120 006c85f0 BW1M119 01484210
	long GetCycleTimeFromFrame(long frame);
};

#endif /* BW1_DECOMP_PARTICLE_3D_ANIM_INCLUDED_H */
