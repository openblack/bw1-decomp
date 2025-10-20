#ifndef BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct GestureSystemData
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0x654];
};
static_assert(sizeof(struct GestureSystemData) == 0x65c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bec418 mac inlined GestureSystemData::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__17GestureSystemData asm("??_R0?AVGestureSystemData@@@8");
// win1.41 009ad1f0 mac inlined GestureSystemData::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__17GestureSystemData asm("??_R1A@?0A@A@GestureSystemData@@8");
// win1.41 009ad208 mac inlined GestureSystemData::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__17GestureSystemData asm("??_R2GestureSystemData@@8");
// win1.41 009ad218 mac inlined GestureSystemData::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__17GestureSystemData asm("??_R3GestureSystemData@@8");
// win1.41 008df7dc mac 107330c0 GestureSystemData::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__17GestureSystemData asm("??_R4GestureSystemData@@6B@");
// win1.41 008df7e0 mac 107330c8 GestureSystemData::`vftable'
extern const struct BaseVftable __vt__17GestureSystemData asm("??_7GestureSystemData@@6B@");

// Constructors

// win1.41 0054baf0 mac inlined GestureSystemData::GestureSystemData(void)
struct GestureSystemData* __fastcall __ct__17GestureSystemDataFv(struct GestureSystemData* this) asm("??0GestureSystemData@@QAE@XZ");

// Override methods

// win1.41 00579690 mac 1042dc90 GestureSystemData::_dt(void)
void __fastcall __dt__17GestureSystemDataFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGestureSystemData@@UAEPAXI@Z");

#endif /* BW1_DECOMP_GESTURE_SYSTEM_DATA_INCLUDED_H */
