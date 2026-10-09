#ifndef BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H
#define BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class AtomCore;
class Base;
class DrawData;
class GameOSFile;
class GameThing;
struct LHMatrix;
struct LHPoint;
class Object;
class Particle3DAnim;
class Particle3DSprite;

class RenderParticle : public PSysBase
{
public:
	bool Enabled;

	// Override methods

	// BW1W120 0055ef70 BW1M119 0130d7e0
	virtual ~RenderParticle() {}
	// BW1W120 0055ef60 BW1M119 0142c8b0
	virtual char* GetDebugText() { return "##a_class:"; }
	// BW1W120 00694fb0 BW1M119 01425b80
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 006cbad0 BW1M119 0148c8e0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055ef50 BW1M119 0142c870
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_UNUSED_000; }

	// BW1W120 purecall BW1M119 purecall
	virtual void DrawAt(const DrawData& data) = 0;
	// BW1W120 0055ee80 BW1M119 0142bc00
	virtual Particle3DAnim* AsParticle3DAnim() { return NULL; }
	// BW1W120 0055ee90 BW1M119 0142be80
	virtual Particle3DSprite* IsParticle3DSprite() { return NULL; }
	// BW1W120 0055eea0 BW1M119 0106b850
	virtual void GameUpdate(AtomCore* core) {}
	// BW1W120 006c79b0 BW1M119 01485d00
	virtual float GetLowestPoint(const LHMatrix& matrix);
	// BW1W120 006c79d0 BW1M119 01485c40
	virtual void GetRandomSurfacePos(const LHMatrix& matrix, LHPoint* pos);
	// BW1W120 0055eeb0 BW1M119 0142bc40
	virtual void GetRandomSurfacePosInit() {}
	// BW1W120 006c79c0 BW1M119 01485cc0
	virtual float GetRadius(float radius) const;
	// BW1W120 0055eec0 BW1M119 0142bc90
	virtual Object* GetGameObject() { return NULL; }
	// BW1W120 0055eed0 BW1M119 0142bcd0
	virtual void SetRandJitter(float jitter) {}
	// BW1W120 0055eee0 BW1M119 0142bd10
	virtual void SendPotentialInterfaceObject() {}

	// BW1W120 inlined BW1M119 0108ace0
	RenderParticle() : Enabled(true) {}
};

#endif /* BW1_DECOMP_P_SYS_RENDER_PARTICLE_INCLUDED_H */
