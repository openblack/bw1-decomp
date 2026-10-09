#ifndef BW1_DECOMP_PARTICLE_3D_SPRITE_INCLUDED_H
#define BW1_DECOMP_PARTICLE_3D_SPRITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysRenderParticle.h" /* For struct RenderParticle */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class LH3DSprite;
class ParticleCreator;

class Particle3DSprite : public RenderParticle
{
public:
	uint8_t          Alpha;
	ParticleCreator* Creator;
	LH3DSprite*      Sprite;
	uint8_t          FrameOffset;
	uint8_t          Flag0 : 1;
	uint8_t          Flag1 : 1;
	uint8_t          Flag2 : 1;
	uint8_t          Flag3 : 1;
	float            PreviousScale;
	float            Scale;

	// Override methods

	// BW1W120 0067ae80 BW1M119 01055150
	virtual void DrawAt(const DrawData& data);
	// BW1W120 006c9e40 BW1M119 01057680
	virtual void GameUpdate(AtomCore* core);
	// BW1W120 006cc630 BW1M119 0148bdb0
	virtual uint32_t Save(GameOSFile& file);
	// BW1W120 0055f040 BW1M119 0142bb40
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_RENDER_PARTICLE_3D_SPRITE; }
	// BW1W120 00699d80 BW1M119 01420730
	virtual void ResolveLoad();
	// BW1W120 006c9e00 BW1M119 01094130
	virtual ~Particle3DSprite();
	// BW1W120 0055f050 BW1M119 inlined
	virtual char* GetDebugText() { return "##a_class:"; }
	// BW1W120 0055f060 BW1M119 inlined
	virtual Particle3DSprite* IsParticle3DSprite() { return this; }
	// BW1W120 00695ac0 BW1M119 inlined
	virtual uint32_t Load(GameOSFile& file);

	// BW1W120 0055f000 BW1M119 inlined
	Particle3DSprite()
	{
		Alpha = 0xff;
		FrameOffset = 0;
		Flag0 = 0;
		Flag1 = 0;
		Flag2 = 0;
		Flag3 = 0;
		PreviousScale = 1.0f;
		Scale = 1.0f;
		Sprite = NULL;
		Creator = NULL;
	}
};

#endif /* BW1_DECOMP_PARTICLE_3D_SPRITE_INCLUDED_H */
