#ifndef BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H
#define BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class ParticleLightMap : public RenderParticle
{
public:
	uint8_t field_0x18[0x34];

	// Override methods

	// BW1W120 006ca450 BW1M119 0142c560
	virtual ~ParticleLightMap();
	// BW1W120 006ca440 BW1M119 0142c650
	virtual char* GetDebugText();
	// BW1W120 00695180 BW1M119 014258a0
	virtual uint32_t Load(GameOSFile& file);
	// BW1W120 0067b220 BW1M119 013f7820
	virtual void DrawAt(const DrawData& data);

	// BW1W120 006ca3f0 BW1M119 01481300
	ParticleLightMap();
};

#endif /* BW1_DECOMP_PARTICLE_LIGHT_MAP_INCLUDED_H */
