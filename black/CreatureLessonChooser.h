#ifndef BW1_DECOMP_CREATURE_LESSON_CHOOSER_INCLUDED_H
#define BW1_DECOMP_CREATURE_LESSON_CHOOSER_INCLUDED_H

#include <assert.h> /* For static_assert */

enum LESSON_TYPE
{
  LESSON_TYPE_0x0 = 0x0,
  LESSON_TYPE_0x1 = 0x1,
  _LESSON_TYPE_COUNT = 0x2
};
static_assert(sizeof(enum LESSON_TYPE) == 0x4, "Data type is of wrong size");

static const char* LESSON_TYPE_strs[_LESSON_TYPE_COUNT] = {
  "LESSON_TYPE_0x0",
  "LESSON_TYPE_0x1",
};

#endif /* BW1_DECOMP_CREATURE_LESSON_CHOOSER_INCLUDED_H */
