#ifndef BW1_DECOMP_JC_GAME_BLOCK_INCLUDED_H
#define BW1_DECOMP_JC_GAME_BLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

// Forward Declares

struct MapCell;
struct Object;

struct GameBlock
{
  uint32_t size;  /* 0x0 */
  uint32_t capacity;
  struct Object** array;
  struct Object* last_inserted;
  struct Object* last_removed;  /* 0x10 */
};
static_assert(sizeof(struct GameBlock) == 0x14, "Data type is of wrong size");

// Static methods

// win1.41 005ddce0 mac 10054520 GameBlock::Insert(Object *, MapCell *)
void __cdecl Insert__9GameBlockFP6ObjectP7MapCell(struct Object* param_1, struct MapCell* param_2) asm("?Insert@GameBlock@@SAXPAVObject@@PAUMapCell@@@Z");
// win1.41 005ddd50 mac 100543b0 GameBlock::Remove(Object*)
void __cdecl Remove__9GameBlockFP6ObjectP7MapCell(struct Object* obj, struct MapCell* cell) asm("?Remove@GameBlock@@SAXPAVObject@@PAUMapCell@@@Z");

// Non-virtual methods

// win1.41 005dddc0 mac 10054690 GameBlock::Insert(Object*)
void __fastcall Insert__9GameBlockFP6Object(struct GameBlock* this, const void* edx, struct Object* obj) asm("?Insert@GameBlock@@QAEXPAVObject@@@Z");
// win1.41 005dde60 mac 10054790 GameBlock::Remove(Object *, MapCell *)
void __fastcall Remove__9GameBlockFP6Object(struct GameBlock* this, const void* edx, struct Object* obj) asm("?Remove@GameBlock@@QAEXPAVObject@@@Z");

#endif /* BW1_DECOMP_JC_GAME_BLOCK_INCLUDED_H */
