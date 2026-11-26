#ifndef BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H
#define BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysLightMap.h"       /* For class PSysLightMap */
#include "PSysRenderParticle.h" /* For struct RenderParticle */

#define PARTICLE_LIGHT_MAP_DEFAULT_JITTER 5.0f

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class ParticleCreator;

class ParticleLightMap : public RenderParticle
{
public:
	ParticleCreator* Creator;
	float            RandJitter;
	bool32_t         UseRandJitter;
	float            ShiftX;
	float            ShiftZ;
	PSysLightMap     LightMap;

	// Override methods

	// BW1W120 006ca440 BW1M119 0142c650
	virtual char* GetDebugText();
	// BW1W120 006ca430 BW1M119 0142c610
	virtual uint32_t GetSaveType();
	// BW1W120 006cbcb0 BW1M119 0148c600
	virtual bool32_t Save(GameOSFile& file);
	// BW1W120 00699da0 BW1M119 014206a0
	virtual void ResolveLoad();
	// BW1W120 00695180 BW1M119 014258a0
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 0067b220 BW1M119 013f7820
	virtual void DrawAt(const DrawData& data);

	// BW1W120 006ca3f0 BW1M119 01481300
	ParticleLightMap();
};

#endif /* BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H */
