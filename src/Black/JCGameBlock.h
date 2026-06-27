#ifndef BW1_DECOMP_JC_GAME_BLOCK_INCLUDED_H
#define BW1_DECOMP_JC_GAME_BLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

struct MapCell;
class Object;

struct GameBlock
{
    uint32_t size; /* 0x0 */
    uint32_t capacity;
    Object** array;
    Object* last_inserted;
    Object* last_removed; /* 0x10 */

    // Static methods

    // BW1W120 005ddce0 BW1M100 10054520 GameBlock::Insert(Object *, MapCell *)
    static void Insert(Object* param_1, MapCell* param_2);
    // BW1W120 005ddd50 BW1M100 100543b0 GameBlock::Remove(Object*)
    static void Remove(Object* obj, MapCell* cell);

    // Non-virtual methods

    // BW1W120 005dddc0 BW1M100 10054690 GameBlock::Insert(Object*)
    void Insert(Object* obj);
    // BW1W120 005dde60 BW1M100 10054790 GameBlock::Remove(Object *, MapCell *)
    void Remove(Object* obj);
};

#endif /* BW1_DECOMP_JC_GAME_BLOCK_INCLUDED_H */
