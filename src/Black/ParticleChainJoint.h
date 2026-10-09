#ifndef BW1_DECOMP_PARTICLE_CHAIN_JOINT_INCLUDED_H
#define BW1_DECOMP_PARTICLE_CHAIN_JOINT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class Chain;
class GameOSFile;
class GameThing;

class ParticleChainJoint : public RenderParticle
{
public:
	Chain*   ParentChain;
	uint32_t JointIndex;
	float    RandJitter;
	bool32_t JitterEnabled;

	// Override methods

	// BW1W120 00679e80 BW1M119 013f92d0
	virtual void DrawAt(const DrawData& data);
	// BW1W120 006c8a80 BW1M119 014837e0
	virtual void SetRandJitter(float jitter);
	// BW1W120 0055f0d0 BW1M119 0142bda0
	virtual char* GetDebugText() { return "##a_class:"; }
	// BW1W120 006959d0 BW1M119 014250f0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006cc540 BW1M119 0148be80
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055f0c0 BW1M119 0142bd60
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_RENDER_PARTICLE_CHAIN_JOINT; }

	// BW1W120 0055f090 BW1M119 inlined
	ParticleChainJoint() : ParentChain(NULL), JointIndex(0), RandJitter(5.0f), JitterEnabled(false) {}
};

#endif /* BW1_DECOMP_PARTICLE_CHAIN_JOINT_INCLUDED_H */
