#ifndef BW1_DECOMP_CREATURE_PREVIOUS_LESSON_INCLUDED_H
#define BW1_DECOMP_CREATURE_PREVIOUS_LESSON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

struct CreaturePreviousLesson
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint8_t field_0xc[0x1200];
};
static_assert(sizeof(struct CreaturePreviousLesson) == 0x120c, "Data type is of wrong size");

// win1.41 008d042c mac 107874e4 CreaturePreviousLesson::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__22CreaturePreviousLesson asm("??_R4CreaturePreviousLesson@@6B@");

// win1.41 008d0430 mac 107874ec CreaturePreviousLesson::`vftable'
extern const struct BaseVftable __vt__22CreaturePreviousLesson asm("??_7CreaturePreviousLesson@@6B@");

// Override methods

// win1.41 004e03a0 mac 10245f80 CreaturePreviousLesson::_dt(void)
void __fastcall __dt__22CreaturePreviousLessonFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreaturePreviousLesson@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_PREVIOUS_LESSON_INCLUDED_H */
