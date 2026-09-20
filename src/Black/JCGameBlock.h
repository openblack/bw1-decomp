#ifndef BW1_DECOMP_JC_GAME_BLOCK_INCLUDED_H
#define BW1_DECOMP_JC_GAME_BLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

struct MapCell;
class Object;

struct GameBlock
{
	// BW1W120 005dded0 BW1M100 105e8020 void GameBlock::Clean(void)
	static void Clean();
	uint32_t    size; /* 0x0 */
	uint32_t    capacity;
	Object**    array;
	Object*     LastInserted;
	Object*     LastRemoved; /* 0x10 */

	// Static methods
	// BW1W120 005ddc00 void GameBlock::Init(void)
	static void Init();
	// BW1W120 005ddc90 void GameBlock::Release(void)
	static void Release();

	// BW1W120 005ddce0 BW1M100 10054520 void GameBlock::Insert(Object *, MapCell *)
	static void Insert(Object* param_1, MapCell* param_2);
	// BW1W120 005ddd50 BW1M100 100543b0 void GameBlock::Remove(Object *, MapCell *)
	static void Remove(Object* obj, MapCell* cell);

	// Non-virtual methods

	// BW1W120 005dddc0 BW1M100 10054690 void GameBlock::Insert(Object *)
	void Insert(Object* obj);
	// BW1W120 005dde60 BW1M100 10054790 void GameBlock::Remove(Object *)
	void Remove(Object* obj);
};

#endif /* BW1_DECOMP_JC_GAME_BLOCK_INCLUDED_H */
