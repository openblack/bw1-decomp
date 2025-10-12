#ifndef BW1_DECOMP_CREATURE_MENTAL_DEBUG_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_DEBUG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct CreatureMentalDebug
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
  uint32_t field_0x14;
  uint32_t field_0x18;
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  uint32_t field_0x28;
  uint8_t field_0x2c[0x10];
  uint32_t field_0x3c;
  uint8_t field_0x40[0xc];
};
static_assert(sizeof(struct CreatureMentalDebug) == 0x4c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd830 mac inlined CreatureMentalDebug::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19CreatureMentalDebug asm("??_R0?AVCreatureMentalDebug@@@8");
// win1.41 009aa2c0 mac inlined CreatureMentalDebug::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19CreatureMentalDebug asm("??_R1A@?0A@A@CreatureMentalDebug@@8");
// win1.41 009aa2d8 mac inlined CreatureMentalDebug::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19CreatureMentalDebug asm("??_R2CreatureMentalDebug@@8");
// win1.41 009aa2e8 mac inlined CreatureMentalDebug::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19CreatureMentalDebug asm("??_R3CreatureMentalDebug@@8");
// win1.41 008cf8c8 mac 1078766c CreatureMentalDebug::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__19CreatureMentalDebug asm("??_R4CreatureMentalDebug@@6B@");
// win1.41 008cf8cc mac 10787674 CreatureMentalDebug::`vftable'
extern const struct BaseVftable __vt__19CreatureMentalDebug asm("??_7CreatureMentalDebug@@6B@");

// Override methods

// win1.41 004d2540 mac 10246630 CreatureMentalDebug::_dt(void)
void __fastcall __dt__19CreatureMentalDebugFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureMentalDebug@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_MENTAL_DEBUG_INCLUDED_H */
