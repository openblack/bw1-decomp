#ifndef BW1_DECOMP_VILLAGER_NAME_BLOCK_INCLUDED_H
#define BW1_DECOMP_VILLAGER_NAME_BLOCK_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */

#include "DrawingObject.h" /* For struct DrawingObject */

// Forward Declares

struct VillagerName;

struct VillagerNameVftable
{
  void (__fastcall* AddDrawing)(struct VillagerName* this);  /* 0x0 */
};
static_assert(sizeof(struct VillagerNameVftable) == 0x4, "Data type is of wrong size");

struct VillagerName
{
  struct DrawingObject super;  /* 0x0 */
  float left;
  float top;
  float right;
  float bottom;  /* 0x10 */
  float arrow_x;
  float arrow_y;
  float depth;
  float text_size;  /* 0x20 */
  float field_0x24;
  int num_lines;
  float text_padding;
  char16_t field_0x30[0x100];
  uint8_t field_0x230[0x200];
  char16_t* lines[0x8];  /* 0x430 */
  struct LH3DColor color;  /* 0x450 */
  struct LHPoint point;
  struct VillagerName* next;  /* 0x460 */
};
static_assert(sizeof(struct VillagerName) == 0x464, "Data type is of wrong size");

static struct DrawingObjectVftable* const __vt__12VillagerName = (struct DrawingObjectVftable* const)0x0099a9bc;

// Static methods

// win1.41 007629e0 mac 1058b1a0 VillagerName::Add(float, LHPoint, wchar_t *, LH3DColor &)
struct VillagerName* __cdecl Add__12VillagerNameFf7LHPointPwR9LH3DColor(float text_size, struct LHPoint point, const char16_t* text, const struct LH3DColor* p_color);

// Override methods

// win1.41 007628a0 mac 100b5250 VillagerName::AddDrawing(void)
void __fastcall AddDrawing__12VillagerNameFv(struct VillagerName* this);

// win1.41 00762720 mac 1058ba90 VillagerNameBlock::Alloc(void)
struct VillagerName* __cdecl Alloc__17VillagerNameBlockFv(void);
// win1.41 00762780 mac 1058b960 VillagerNameBlock::Delete(VillagerName *)
void __cdecl Delete__17VillagerNameBlockFP12VillagerName(struct VillagerName* name);

#endif /* BW1_DECOMP_VILLAGER_NAME_BLOCK_INCLUDED_H */
