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

	// BW1W120 0055f0e0 BW1M119 0142bde0
	virtual ~ParticleChainJoint();
	// BW1W120 0055f0d0 BW1M119 0142bda0
	virtual char* GetDebugText();
	// BW1W120 006959d0 BW1M119 014250f0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006cc540 BW1M119 0148be80
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055f0c0 BW1M119 0142bd60
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_PARTICLE_CHAIN_JOINT_INCLUDED_H */
