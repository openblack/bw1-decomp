#ifndef BW1_DECOMP_DATA_INCLUDED_H
#define BW1_DECOMP_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct GData
{
  struct Base super;  /* 0x0 */
  uint32_t rand_seed;
  uint32_t field_0xc;
  uint32_t game_turn;  /* 0x10 */
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
};
static_assert(sizeof(struct GData) == 0x28, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be8988 mac inlined GData::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__5GData asm("??_R0?AVGData@@@8");
// win1.41 009ab7a0 mac inlined GData::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__5GData asm("??_R1A@?0A@A@GData@@8");
// win1.41 009ab7b8 mac inlined GData::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__5GData asm("??_R2GData@@8");
// win1.41 009ab7c8 mac inlined GData::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__5GData asm("??_R3GData@@8");
// win1.41 008d6030 mac 10730b70 GData::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__5GData asm("??_R4GData@@6B@");
// win1.41 008d6034 mac 10730b78 GData::`vftable'
extern const struct BaseVftable __vt__5GData asm("??_7GData@@6B@");

// Constructors

// win1.41 00510500 mac 100c0a70 GData::GData(void)
struct GData* __fastcall __ct__5GDataFv(struct GData* this) asm("??0GData@@QAE@XZ");

// Non-virtual methods

// win1.41 00510650 mac 1002adb0 GData::Rand(long)
uint32_t __fastcall Rand__5GDataFl(struct GData* this, const void* edx, uint32_t max, const char* src_file, uint32_t src_line) asm("?Rand@GData@@QAEIJ@Z");
// win1.41 00510750 mac 100c08f0 GData::Reset(void)
void __fastcall Reset__5GDataFv(struct GData* this) asm("?Reset@GData@@QAEXXZ");

// Override methods

// win1.41 00510610 mac 1056c340 GData::_dt(void)
void __fastcall __dt__5GDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGData@@UAEPAXI@Z");

#endif /* BW1_DECOMP_DATA_INCLUDED_H */
