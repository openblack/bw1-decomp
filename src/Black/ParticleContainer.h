#ifndef BW1_DECOMP_PARTICLE_CONTAINER_INCLUDED_H
#define BW1_DECOMP_PARTICLE_CONTAINER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h>                      /* For enum SPOT_VISUAL_TYPE */
#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */
#include "LHPTR.h"            /* For LHPTR */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;

class GParticleContainer : public GameThingWithPos
{
public:
	// BW1W120 0063e090 BW1M119 0106ac90
	static void ProcessParticleContainers();
	static void DrawParticleContainers(); // 0063e0d0

	LHPTR<GameThingWithPos>        thing;
	uint32_t                       field_0x2c;
	uint32_t                       field_0x30;
	float                          field_0x34;
	bool                           field_0x38;
	LHListNode<GParticleContainer> next;

	// Override methods

	// BW1W120 0063e1d0 BW1M119 0111a0d0
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0063e3c0 BW1M119 01000fb0
	virtual void SetPlayer(GPlayer* param_1);
	// BW1W120 00560f70 BW1M119 01119690
	virtual char* GetDebugText() { return "ParticleContainer:"; }
	// BW1W120 0063e6d0 BW1M119 011196e0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0063e5d0 BW1M119 01119890
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 00560f60 BW1M119 01119650
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_GPARTICLE_CONTAINER; }
	// BW1W120 0063e3f0 BW1M119 01119d70
	virtual void SetScale(float param_1);
	// BW1W120 00560f40 BW1M119 011195c0
	virtual const char* GetText() { return "Particle Container"; }
	// BW1W120 00560f50 BW1M119 01119600
	virtual bool32_t IsParticleContainer() { return true; }
	// BW1W120 0063e540 BW1M119 01001ee0
	static GParticleContainer* CreateSpotVisual(const MapCoords& pos, SPOT_VISUAL_TYPE type, float scale,
	                                            GameThingWithPos* thing);

	// BW1W120 inlined BW1M119 inlined
	GParticleContainer() { SetToZero(); }

	// BW1W120 0063e1b0 BW1M119 010a0640
	void SetToZero();
};

#endif /* BW1_DECOMP_PARTICLE_CONTAINER_INCLUDED_H */
