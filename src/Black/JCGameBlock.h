#ifndef BW1_DECOMP_JC_GAME_BLOCK_INCLUDED_H
#define BW1_DECOMP_JC_GAME_BLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LAND_BLOCKS_SIDE */

// Forward Declares

struct MapCell;
class Object;

struct GameBlock
{
	// BW1W120 005dded0 BW1M119 015efd20
	static void Clean();
	uint32_t    size; /* 0x0 */
	uint32_t    capacity;
	Object**    array;
	Object*     LastInserted;
	Object*     LastRemoved; /* 0x10 */

	// Static methods

	// BW1W120 005ddc00 BW1M119 015f0120
	static void Open();
	// BW1W120 005ddc90 BW1M119 015f0030
	static void Close();
	// BW1W120 005ddce0 BW1M119 01056ec0
	static void Insert(Object* param_1, MapCell* param_2);
	// BW1W120 005ddd50 BW1M119 01057130
	static void Remove(Object* obj, MapCell* cell);

	// Non-virtual methods

	// BW1W120 005dddc0 BW1M119 01057030
	void Insert(Object* obj);
	// BW1W120 005dde60 BW1M119 01056d50
	void Remove(Object* obj);
};

// BW1W120 00d189d8 BW1M119 null
extern GameBlock* GameBlocks[LAND_BLOCKS_SIDE][LAND_BLOCKS_SIDE];
// BW1W120 00d199e0 BW1M119 null
extern GameBlock GameBlockEverywhere;

#endif /* BW1_DECOMP_JC_GAME_BLOCK_INCLUDED_H */
