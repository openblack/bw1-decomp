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

    // win1.41 005ddce0 mac 10054520 GameBlock::Insert(Object *, MapCell *)
    static void Insert(Object* param_1, MapCell* param_2);
    // win1.41 005ddd50 mac 100543b0 GameBlock::Remove(Object*)
    static void Remove(Object* obj, MapCell* cell);

    // Non-virtual methods

    // win1.41 005dddc0 mac 10054690 GameBlock::Insert(Object*)
    void Insert(Object* obj);
    // win1.41 005dde60 mac 10054790 GameBlock::Remove(Object *, MapCell *)
    void Remove(Object* obj);
};

#endif /* BW1_DECOMP_JC_GAME_BLOCK_INCLUDED_H */
