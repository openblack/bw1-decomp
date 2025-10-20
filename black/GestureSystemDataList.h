#ifndef BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct GestureSystemDataList
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0x8];
};
static_assert(sizeof(struct GestureSystemDataList) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bec3f0 mac inlined GestureSystemDataList::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21GestureSystemDataList asm("??_R0?AVGestureSystemDataList@@@8");
// win1.41 009ad1a0 mac inlined GestureSystemDataList::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21GestureSystemDataList asm("??_R1A@?0A@A@GestureSystemDataList@@8");
// win1.41 009ad1b8 mac inlined GestureSystemDataList::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21GestureSystemDataList asm("??_R2GestureSystemDataList@@8");
// win1.41 009ad1c8 mac inlined GestureSystemDataList::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21GestureSystemDataList asm("??_R3GestureSystemDataList@@8");
// win1.41 008df7bc mac 10733088 GestureSystemDataList::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__21GestureSystemDataList asm("??_R4GestureSystemDataList@@6B@");
// win1.41 008df7c0 mac 10733090 GestureSystemDataList::`vftable'
extern const struct BaseVftable __vt__21GestureSystemDataList asm("??_7GestureSystemDataList@@6B@");

// Constructors

// win1.41 0054baa0 mac inlined GestureSystemDataList::GestureSystemDataList(void)
struct GestureSystemDataList* __fastcall __ct__21GestureSystemDataListFv(struct GestureSystemDataList* this) asm("??0GestureSystemDataList@@QAE@XZ");

// Non-virtual methods

// win1.41 00579af0 mac 1032b530 GestureSystemDataList::Load(char *)
bool __fastcall Load__21GestureSystemDataListFPc(struct GestureSystemDataList* this, const void* edx, char* param_1) asm("?Load@GestureSystemDataList@@QAE_NPAD@Z");

// Override methods

// win1.41 0054bac0 mac 100d4da0 GestureSystemDataList::_dt(void)
void __fastcall __dt__21GestureSystemDataListFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGestureSystemDataList@@UAEPAXI@Z");

#endif /* BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H */
