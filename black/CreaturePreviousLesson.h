#ifndef BW1_DECOMP_CREATURE_PREVIOUS_LESSON_INCLUDED_H
#define BW1_DECOMP_CREATURE_PREVIOUS_LESSON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct CreaturePreviousLesson
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint8_t field_0xc[0x1200];
};
static_assert(sizeof(struct CreaturePreviousLesson) == 0x120c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf938 mac inlined CreaturePreviousLesson::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__22CreaturePreviousLesson asm("??_R0?AVCreaturePreviousLesson@@@8");
// win1.41 009aaea0 mac inlined CreaturePreviousLesson::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__22CreaturePreviousLesson asm("??_R1A@?0A@A@CreaturePreviousLesson@@8");
// win1.41 009aaeb8 mac inlined CreaturePreviousLesson::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__22CreaturePreviousLesson asm("??_R2CreaturePreviousLesson@@8");
// win1.41 009aaec8 mac inlined CreaturePreviousLesson::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__22CreaturePreviousLesson asm("??_R3CreaturePreviousLesson@@8");
// win1.41 008d042c mac 107874e4 CreaturePreviousLesson::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__22CreaturePreviousLesson asm("??_R4CreaturePreviousLesson@@6B@");
// win1.41 008d0430 mac 107874ec CreaturePreviousLesson::`vftable'
extern const struct BaseVftable __vt__22CreaturePreviousLesson asm("??_7CreaturePreviousLesson@@6B@");

// Override methods

// win1.41 004e03a0 mac 10245f80 CreaturePreviousLesson::_dt(void)
void __fastcall __dt__22CreaturePreviousLessonFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreaturePreviousLesson@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_PREVIOUS_LESSON_INCLUDED_H */
