#ifndef BW1_DECOMP_PARTICLE_CHAIN_JOINT_INCLUDED_H
#define BW1_DECOMP_PARTICLE_CHAIN_JOINT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class ParticleChainJoint : public RenderParticle
{
public:
	// Override methods

	// BW1W120 0055f0e0 BW1M100 10422de0 ParticleChainJoint::_dt(void)
	virtual ~ParticleChainJoint();
	// BW1W120 0055f0d0 BW1M100 10422da0 ParticleChainJoint::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 006959d0 BW1M100 1041c0e0 ParticleChainJoint::Load(GameOSFile &)
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006cc540 BW1M100 10483800 ParticleChainJoint::Save(GameOSFile &)
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055f0c0 BW1M100 10422d60 ParticleChainJoint::GetSaveType(void)
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_PARTICLE_CHAIN_JOINT_INCLUDED_H */
