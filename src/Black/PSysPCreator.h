#ifndef BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H
#define BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class GoldenShower;

class RenderParticleCreatureRef : public RenderParticle
{
public:
	uint8_t field_0x18[0x8];

	// Override methods

	// BW1W120 006c7ee0 BW1M119 0142c140
	virtual ~RenderParticleCreatureRef();
	// BW1W120 006c7ec0 BW1M119 0142c240
	virtual char* GetDebugText();
	// BW1W120 006c7ed0 BW1M119 0142c290
	virtual void DrawAt(const DrawData& data);
	// BW1W120 006c8060 BW1M119 01484ed0
	virtual void GameUpdate(AtomCore* core);
	// BW1W120 006c7f30 BW1M119 01484fd0
	virtual void GetRandomSurfacePos(const LHMatrix& matrix, LHPoint* pos);

	// BW1W120 006c7f10 BW1M119 014851c0
	RenderParticleCreatureRef();
};

class RenderParticleGJMesh : public RenderParticle
{
public:
	// Override methods

	// BW1W120 006c8ac0 BW1M119 01483670
	virtual ~RenderParticleGJMesh();
	// BW1W120 0067c150 BW1M119 013f5b00
	virtual void DrawAt(const DrawData& data);
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
	uint8_t field_0x18[0x40];

	// Override methods

	// BW1W120 006c9ed0 BW1M119 01481a60
	virtual ~RenderParticleGameObject();
	// BW1W120 006c9ec0 BW1M119 0142bf20
	virtual char* GetDebugText();
	// BW1W120 0067b170 BW1M119 013f79a0
	virtual void DrawAt(const DrawData& data);
	// BW1W120 006ca170 BW1M119 01481560
	virtual void GameUpdate(AtomCore* core);

	// BW1W120 006c9e60 BW1M119 01482070
	RenderParticleGameObject();
};

class RenderParticleGameObjectRef : public RenderParticle
{
public:
	uint8_t field_0x18[0x8];

	// Override methods

	// BW1W120 006c8500 BW1M119 01484430
	virtual void GameUpdate(AtomCore* core);
	// BW1W120 006c8230 BW1M119 014844f0
	virtual void GetRandomSurfacePos(const LHMatrix& matrix, LHPoint* pos);
	// BW1W120 006c81c0 BW1M119 01484940
	virtual void GetRandomSurfacePosInit();
	// BW1W120 006c81a0 BW1M119 01484b00
	virtual Object* GetGameObject();
	// BW1W120 006c81b0 BW1M119 01484ab0
	virtual void DrawAt(const DrawData& data);
	// BW1W120 006c8130 BW1M119 01484b90
	virtual ~RenderParticleGameObjectRef();
	// BW1W120 006c8120 BW1M119 0142c0f0
	virtual char* GetDebugText();
	// BW1W120 006957e0 BW1M119 014253a0
	virtual uint32_t Load(GameOSFile& file);

	// BW1W120 006c80f0 BW1M119 01484d10
	RenderParticleGameObjectRef();
};

class RenderParticleGoldenShower : public RenderParticleGameObjectRef
{
public:
	GoldenShower* Shower; /* 0x20 */

	// Override methods

	// BW1W120 0067b0f0 BW1M119 013f7b70
	virtual void DrawAt(const DrawData& data);
	// BW1W120 00695850 BW1M119 01425330
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006cc3c0 BW1M119 0148c0b0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055efc0 BW1M119 0142c000
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_RENDER_PARTICLE_GOLDEN_SHOWER; }
	// BW1W120 006c80c0 BW1M119 01484dd0
	virtual ~RenderParticleGoldenShower();
	// BW1W120 0055efd0 BW1M119 0142c050
	virtual char* GetDebugText() { return "##a_class:"; }

	// BW1W120 0055efa0 BW1M119 inlined
	RenderParticleGoldenShower() { Shower = NULL; }
};

class RenderParticleMist : public RenderParticle
{
public:
	uint8_t field_0x18[0x30];

	// Override methods

	// BW1W120 006c9cc0 BW1M119 014824c0
	virtual ~RenderParticleMist();
	// BW1W120 006c9cb0 BW1M119 0142c6d0
	virtual char* GetDebugText();
	// BW1W120 0067a670 BW1M119 013f8290
	virtual void DrawAt(const DrawData& data);

	// BW1W120 006c9c70 BW1M119 014825e0
	RenderParticleMist();
};

class RenderParticleVolBlendMesh : public RenderParticle
{
public:
	// Override methods

	// BW1W120 006ca750 BW1M119 01480cd0
	virtual ~RenderParticleVolBlendMesh();
	// BW1W120 0067ccb0 BW1M119 013f52e0
	virtual void DrawAt(const DrawData& data);
};

#endif /* BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H */
