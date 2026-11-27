#ifndef BW1_DECOMP_SPRITE_BANK_INCLUDED_H
#define BW1_DECOMP_SPRITE_BANK_INCLUDED_H

// Forward Declares

struct LH3DSprite;

class SpriteBank
{
public:
	// Static methods

	// BW1W120 006a8510 BW1M119 01093fc0
	static void ReleaseSprite(LH3DSprite* sprite);
};

#endif /* BW1_DECOMP_SPRITE_BANK_INCLUDED_H */
