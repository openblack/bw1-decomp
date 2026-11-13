#ifndef BW1_DECOMP_PLAYER_SYMBOL_SPRITE_INCLUDED_H
#define BW1_DECOMP_PLAYER_SYMBOL_SPRITE_INCLUDED_H

#include <stdint.h> /* For uint32_t */

// Forward Declares

struct LHPoint;

class PlayerSymbolSprite
{
public:
	// Non-virtual methods

	// BW1W120 0069d690 BW1M119 01083370
	void SetAlphaColor(uint32_t color);
	// BW1W120 0069d730 BW1M119 01083310
	void SetScale(float scale);
	// BW1W120 0069d750 BW1M119 01083430
	void SetPos(const LHPoint& pos);
	// BW1W120 0069d790 BW1M119 01022560
	void AddDrawing();
	// BW1W120 0069d7e0 BW1M119 0102df00
	void Draw();
};

#endif /* BW1_DECOMP_PLAYER_SYMBOL_SPRITE_INCLUDED_H */
