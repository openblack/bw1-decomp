#ifndef BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H
#define BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class ParticleCreator;

class ParticleLightMap : public RenderParticle
{
public:
	ParticleCreator* Creator;
	float            field_0x1c;
	uint32_t         field_0x20;
	uint32_t         field_0x24;
	uint32_t         field_0x28;
	uint8_t          field_0x2c[0x8];
	uint16_t         field_0x34;
	LHPoint          field_0x38;
	uint32_t         field_0x44;
	void*            Bitmap;

	// Override methods

	// BW1W120 006ca450 BW1M119 0142c560
	virtual ~ParticleLightMap();
	// BW1W120 006ca440 BW1M119 0142c650
	virtual char* GetDebugText();
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
