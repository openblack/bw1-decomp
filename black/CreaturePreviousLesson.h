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

static struct BaseVftable* __vt__22CreaturePreviousLesson = (struct BaseVftable*)0x008d0430;

#endif /* BW1_DECOMP_CREATURE_PREVIOUS_LESSON_INCLUDED_H */
