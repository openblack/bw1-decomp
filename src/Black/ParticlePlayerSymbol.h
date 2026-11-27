#ifndef BW1_DECOMP_PARTICLE_PLAYER_SYMBOL_INCLUDED_H
#define BW1_DECOMP_PARTICLE_PLAYER_SYMBOL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameOSFile;
class PlayerSymbolSprite;

class ParticlePlayerSymbol : public RenderParticle
{
public:
	PlayerSymbolSprite* Sprite;
	uint32_t            PlayerNumber;

	// Override methods

	// BW1W120 006c9d50 BW1M119 01482240
	virtual ~ParticlePlayerSymbol();
	// BW1W120 0067ae20 BW1M119 01083130
	virtual void DrawAt(const DrawData& data);
	// BW1W120 00695870 BW1M119 01425290
	virtual bool32_t Load(GameOSFile& file);
	// BW1W120 006cc3e0 BW1M119 0148c010
	virtual bool32_t Save(GameOSFile& file);

	// BW1W120 006c9d30 BW1M119 0142bf70
	virtual uint32_t GetSaveType();
	// BW1W120 006c9d40 BW1M119 0142bfb0
	virtual char* GetDebugText();
	// BW1W120 006c9da0 BW1M119 01482300
	virtual void ResolveLoad();

	// BW1W120 006c9d10 BW1M119 01482430
	ParticlePlayerSymbol();
	// BW1W120 006c9d70 BW1M119 01482370
	ParticlePlayerSymbol(uint8_t player_number);

	// BW1W120 006c9db0 BW1M119 inlined
	void CreateSprite();
};

#endif /* BW1_DECOMP_PARTICLE_PLAYER_SYMBOL_INCLUDED_H */
