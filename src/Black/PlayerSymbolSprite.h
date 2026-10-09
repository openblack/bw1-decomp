#ifndef BW1_DECOMP_PLAYER_SYMBOL_SPRITE_INCLUDED_H
#define BW1_DECOMP_PLAYER_SYMBOL_SPRITE_INCLUDED_H

// Forward Declares

struct LHPoint;

class PlayerSymbolSprite
{
public:
	// Non-virtual methods

	// BW1W120 0069d750 BW1M119 01083430
	void SetPos(const LHPoint& pos);
	// BW1W120 0069d790 BW1M119 01022560
	void AddDrawing();
};

#endif /* BW1_DECOMP_PLAYER_SYMBOL_SPRITE_INCLUDED_H */
