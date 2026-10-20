#ifndef BW1_DECOMP_CREATURE_PREVIOUS_LESSON_INCLUDED_H
#define BW1_DECOMP_CREATURE_PREVIOUS_LESSON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */

#define MAX_LESSON_TEXTS 16

class CreaturePreviousLesson : public Base
{
public:
	uint32_t NumLessonTexts;
	char     OriginText[0x100]; /* 0xc */
	char     FeedbackText[0x100];
	char     LessonTexts[MAX_LESSON_TEXTS][0x100];

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	CreaturePreviousLesson() { NumLessonTexts = 0; }
};
static_assert(sizeof(CreaturePreviousLesson) == 0x120c, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_PREVIOUS_LESSON_INCLUDED_H */
