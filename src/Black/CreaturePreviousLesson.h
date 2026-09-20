#ifndef BW1_DECOMP_CREATURE_PREVIOUS_LESSON_INCLUDED_H
#define BW1_DECOMP_CREATURE_PREVIOUS_LESSON_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

class CreaturePreviousLesson : public Base
{
public:
	uint32_t field_0x8;
	uint8_t  field_0xc[0x1200];

	// Override methods

	// BW1W120 004e03a0 BW1M100 10245f80 CreaturePreviousLesson::_dt(void)
	virtual ~CreaturePreviousLesson();
};

#endif /* BW1_DECOMP_CREATURE_PREVIOUS_LESSON_INCLUDED_H */
