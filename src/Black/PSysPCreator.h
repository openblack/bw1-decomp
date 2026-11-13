#ifndef BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H
#define BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHMatrix.h> /* For struct LHMatrix */
#include <Lionhead/LH3DLib/development/LHPoint.h>  /* For struct LHPoint */

#include "GJMesh.h"             /* For class GJMesh */
#include "GTPointer.h"          /* For class GTPointer */
#include "PSysLightMap.h"       /* For class PSysLightMap */
#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class Creature;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class GoldenShower;
class LH3DMist;
class LH3DObject;
struct LH3DMesh;
class Object;
class ParticleCreator;

class RenderParticleCreatureRef : public RenderParticle
{
public:
	GTPointer<Creature> field_0x18;

	// Override methods

	// BW1W120 006c7ee0 BW1M119 0142c140
	virtual ~RenderParticleCreatureRef();
	// BW1W120 006c7ec0 BW1M119 0142c240
	virtual char* GetDebugText();
	// BW1W120 00695770 BW1M119 01425460
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cc2e0 BW1M119 0148c1d0
	virtual bool32_t Save(GameOSFile& file);
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
	GJMesh Mesh;               /* 0x18 */
	bool   ModulateColour;     /* 0x20 */
	bool   UseLandscapeColour; /* 0x21 */
	bool   FollowLandscape;    /* 0x22 */

	// Override methods

	// BW1W120 006c8ac0 BW1M119 01483670
	virtual ~RenderParticleGJMesh();
	// BW1W120 0067c150 BW1M119 013f5b00
	virtual void DrawAt(const DrawData& data);
};
static_assert(sizeof(RenderParticleGJMesh) == 0x24, "Data type is of wrong size");

class RenderParticleGJMeshRotatingUV : public RenderParticleGJMesh
{
public:
	float LastU; /* 0x24 */
	float LastV; /* 0x28 */
	float U;     /* 0x2c */
	float V;     /* 0x30 */
	float NextU; /* 0x34 */
	float NextV; /* 0x38 */
	float WrapU; /* 0x3c */
	float WrapV; /* 0x40 */

	// Override methods

	// BW1W120 006c8b90 BW1M119 014834c0
	virtual ~RenderParticleGJMeshRotatingUV();
	// BW1W120 0067cba0 BW1M119 013f5980
	virtual void DrawAt(const DrawData& data);
};
static_assert(sizeof(RenderParticleGJMeshRotatingUV) == 0x44, "Data type is of wrong size");

class RenderParticleGameObject : public RenderParticle
{
public:
	GTPointer<Object> GameObject;
	GameThingWithPos* field_0x20;
	LHMatrix          field_0x24;
	uint8_t           field_0x54;

	// Override methods

	// BW1W120 006c9ed0 BW1M119 01481a60
	virtual ~RenderParticleGameObject();
	// BW1W120 006c9ec0 BW1M119 0142bf20
	virtual char* GetDebugText();
	// BW1W120 006958d0 BW1M119 014251b0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cc440 BW1M119 0148bf40
	virtual bool32_t Save(GameOSFile& file);
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
	GTPointer<Object> GameObject;

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
	// BW1W120 006cc350 BW1M119 0148c120
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 006957e0 BW1M119 014253a0
	virtual bool32_t Load(GameOSFile& file);

	// BW1W120 006c80f0 BW1M119 01484d10
	RenderParticleGameObjectRef();
	// BW1W120 006c8150 BW1M119 01484c40
	RenderParticleGameObjectRef(Object* object);
};

class RenderParticleGoldenShower : public RenderParticleGameObjectRef
{
public:
	GoldenShower* Shower; /* 0x20 */

	// Override methods

	// BW1W120 0067b0f0 BW1M119 013f7b70
	virtual void DrawAt(const DrawData& data);
	// BW1W120 00695850 BW1M119 01425330
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cc3c0 BW1M119 0148c0b0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 0055efc0 BW1M119 0142c000
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_RENDER_PARTICLE_GOLDEN_SHOWER; }
	// BW1W120 006c80c0 BW1M119 01484dd0
	virtual ~RenderParticleGoldenShower();
	// BW1W120 0055efd0 BW1M119 0142c050
	virtual char* GetDebugText() { return PSYS_DEBUG_TEXT; }

	// BW1W120 0055efa0 BW1M119 inlined
	RenderParticleGoldenShower() { Shower = NULL; }
	// BW1W120 inlined BW1M119 inlined
	RenderParticleGoldenShower(Object* object) : RenderParticleGameObjectRef(object) { Shower = NULL; }
};

#define PARTICLE_MIST_MIN_MATRIX_SCALE 0.0001f

class RenderParticleMist : public RenderParticle
{
public:
	ParticleCreator* Creator;
	uint32_t         field_0x1c;
	bool             TakeRatioFromMatrix;
	PSysLightMap     LightMap;
	LH3DMist*        Mist;

	// Override methods

	// BW1W120 006c9cc0 BW1M119 014824c0
	virtual ~RenderParticleMist();
	// BW1W120 006c9cb0 BW1M119 0142c6d0
	virtual char* GetDebugText();
	// BW1W120 00695030 BW1M119 01425a40
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cbb50 BW1M119 0148c7a0
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00699d60 BW1M119 014207c0
	virtual void ResolveLoad();
	// BW1W120 0067a670 BW1M119 013f8290
	virtual void DrawAt(const DrawData& data);

	// BW1W120 006c9c70 BW1M119 014825e0
	RenderParticleMist();
};
static_assert(sizeof(RenderParticleMist) == 0x48, "Data type is of wrong size");

#define VOL_BLEND_TEXTURE_SIZE 256

class RenderParticleVolBlendMesh : public RenderParticle
{
public:
	float       BlendAmount; /* 0x18 */
	LH3DMesh*   Mesh1;       /* 0x1c */
	LH3DMesh*   Mesh2;       /* 0x20 */
	LH3DMesh*   BlendMesh;   /* 0x24 */
	LH3DObject* Object3D;    /* 0x28 */
	long        NumFrames;   /* 0x2c */
	long        FrameWidth;  /* 0x30 */
	long        FrameHeight; /* 0x34 */

	// Override methods

	// BW1W120 006ca750 BW1M119 01480cd0
	virtual ~RenderParticleVolBlendMesh();
	// BW1W120 0067ccb0 BW1M119 013f52e0
	virtual void DrawAt(const DrawData& data);
};
static_assert(sizeof(RenderParticleVolBlendMesh) == 0x38, "Data type is of wrong size");

#endif /* BW1_DECOMP_P_SYS_P_CREATOR_INCLUDED_H */
