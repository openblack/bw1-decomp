#ifndef BW1_DECOMP_PARTICLE_PLAYER_SYMBOL_INCLUDED_H
#define BW1_DECOMP_PARTICLE_PLAYER_SYMBOL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameOSFile;

class ParticlePlayerSymbol : public RenderParticle
{
public:
	uint32_t field_0x18;
	uint32_t field_0x1c;

	// Override methods

	// BW1W120 006c9d50 BW1M119 01482240
	virtual ~ParticlePlayerSymbol();
	// BW1W120 0067ae20 BW1M119 01083130
	virtual void DrawAt(const DrawData& data);
	// BW1W120 00695870 BW1M119 01425290
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cc3e0 BW1M119 0148c010
	virtual bool32_t Save(GameOSFile& file);

	// BW1W120 006c9d10 BW1M119 01482430
	ParticlePlayerSymbol();
};

#endif /* BW1_DECOMP_PARTICLE_PLAYER_SYMBOL_INCLUDED_H */
