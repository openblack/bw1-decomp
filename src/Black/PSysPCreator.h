#ifndef BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H
#define BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class RenderParticleCreatureRef : public RenderParticle
{
public:
	// Override methods

	// BW1W120 006c7ee0 BW1M119 0142c140
	virtual ~RenderParticleCreatureRef();
	// BW1W120 006c7ec0 BW1M119 0142c240
	virtual char* GetDebugText();
};

class RenderParticleGJMesh : public RenderParticle
{
public:
	// Override methods

	// BW1W120 006c8ac0 BW1M119 01483670
	virtual ~RenderParticleGJMesh();
};

class RenderParticleGJMeshRotatingUV : public RenderParticleGJMesh
{
public:
	// Override methods

	// BW1W120 006c8b90 BW1M119 014834c0
	virtual ~RenderParticleGJMeshRotatingUV();
};

class RenderParticleGameObject : public RenderParticle
{
public:
	// Override methods

	// BW1W120 006c9ed0 BW1M119 01481a60
	virtual ~RenderParticleGameObject();
	// BW1W120 006c9ec0 BW1M119 0142bf20
	virtual char* GetDebugText();
};

class RenderParticleGameObjectRef : public RenderParticle
{
public:
	// Override methods

	// BW1W120 006c8130 BW1M119 01484b90
	virtual ~RenderParticleGameObjectRef();
	// BW1W120 006c8120 BW1M119 0142c0f0
	virtual char* GetDebugText();
	// BW1W120 006957e0 BW1M119 014253a0
	virtual uint32_t Load(GameOSFile& file);
};

class RenderParticleGoldenShower : public RenderParticleGameObjectRef
{
public:
	// Override methods

	// BW1W120 0055efe0 BW1M119 01484dd0
	virtual ~RenderParticleGoldenShower();
	// BW1W120 0055efd0 BW1M119 0142c050
	virtual char* GetDebugText();
};

class RenderParticleMist : public RenderParticle
{
public:
	// Override methods

	// BW1W120 006c9cc0 BW1M119 014824c0
	virtual ~RenderParticleMist();
	// BW1W120 006c9cb0 BW1M119 0142c6d0
	virtual char* GetDebugText();
};

class RenderParticleVolBlendMesh : public RenderParticle
{
public:
	// Override methods

	// BW1W120 006ca750 BW1M119 01480cd0
	virtual ~RenderParticleVolBlendMesh();
};

#endif /* BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H */
