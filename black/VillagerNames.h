#ifndef BW1_DECOMP_VILLAGER_NAMES_INCLUDED_H
#define BW1_DECOMP_VILLAGER_NAMES_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */
#include <uchar.h> /* For char16_t */

#include <lionhead/lh3dlib/development/LH3DColor.h> /* For struct LH3DColor */
#include <lionhead/lh3dlib/development/LHPoint.h> /* For struct LHPoint */
#include <reversing_utils/re_common.h> /* For bool32_t */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "DrawingObject.h" /* For struct DrawingObject */

// Forward Declares

struct VillagerName;

struct VillagerNameBlock
{
  uint8_t field_0x0[0x14];
};
static_assert(sizeof(struct VillagerNameBlock) == 0x14, "Data type is of wrong size");

// Static methods

// win1.41 00762720 mac 1058ba90 VillagerNameBlock::Alloc(void)
struct VillagerName* __cdecl Alloc__17VillagerNameBlockFv(void) asm("?Alloc@VillagerNameBlock@@SAPAUVillagerName@@XZ");
// win1.41 00762780 mac 1058b960 VillagerNameBlock::Delete(VillagerName *)
void __cdecl Delete__17VillagerNameBlockFP12VillagerName(struct VillagerName* name) asm("?Delete@VillagerNameBlock@@SAXPAUVillagerName@@@Z");

// Constructors

// win1.41 00762820 mac inlined VillagerNameBlock::VillagerNameBlock(void)
struct VillagerNameBlock* __fastcall __ct__17VillagerNameBlockFv(struct VillagerNameBlock* this) asm("??0VillagerNameBlock@@QAE@XZ");

// Non-virtual methods

// win1.41 007627e0 mac 10012bf0 VillagerNameBlock::DeleteAll(void)
bool32_t __fastcall DeleteAll__17VillagerNameBlockFv(struct VillagerNameBlock* this) asm("?DeleteAll@VillagerNameBlock@@QAEIXZ");
// win1.41 00762900 mac inlined VillagerNameBlock::~VillagerNameBlock()
void __fastcall __dt__17VillagerNameBlockFv(struct VillagerNameBlock* this) asm("??_DVillagerNameBlock@@QAEXXZ");
// win1.41 00762970 mac inlined VillagerNameBlock::FreeAll(void)
void __fastcall FreeAll__17VillagerNameBlockFv(struct VillagerNameBlock* this) asm("?FreeAll@VillagerNameBlock@@QAEXXZ");

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

// Object Oriented datastructures

// win1.41 00c24558 mac inlined VillagerName::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12VillagerName asm("??_R0?AUVillagerName@@@8");
// win1.41 009b9dd8 mac inlined VillagerName::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12VillagerName asm("??_R1A@?0A@A@VillagerName@@8");
// win1.41 009b9df0 mac inlined VillagerName::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12VillagerName asm("??_R2VillagerName@@8");
// win1.41 009b9e00 mac inlined VillagerName::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12VillagerName asm("??_R3VillagerName@@8");
// win1.41 0099a9b8 mac 109e9588 VillagerName::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12VillagerName asm("??_R4VillagerName@@6B@");
// win1.41 0099a9bc mac 109e9590 VillagerName::`vftable'
extern const struct VillagerNameVftable __vt__12VillagerName asm("??_7VillagerName@@6B@");

// Static methods

// win1.41 007629e0 mac 1058b1a0 VillagerName::Add(float, LHPoint, wchar_t *, LH3DColor &)
struct VillagerName* __cdecl Add__12VillagerNameFf7LHPointPwR9LH3DColor(float text_size, struct LHPoint point, const char16_t* text, const struct LH3DColor* p_color) asm("?Add@VillagerName@@SAPAV1@MULHPoint@@PA_WAAULH3DColor@@@Z");

// Non-virtual methods

// win1.41 00762dc0 mac 1058add0 VillagerName::Draw(void)
void __fastcall Draw__12VillagerNameFv(struct VillagerName* this) asm("?Draw@VillagerName@@QAEXXZ");

// Override methods

// win1.41 007628a0 mac 100b5250 VillagerName::AddDrawing(void)
void __fastcall AddDrawing__12VillagerNameFv(struct VillagerName* this) asm("?AddDrawing@VillagerName@@UAEXXZ");

#endif /* BW1_DECOMP_VILLAGER_NAMES_INCLUDED_H */
