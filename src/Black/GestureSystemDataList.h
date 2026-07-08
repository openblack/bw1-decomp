#ifndef BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H
#define BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

class GestureSystemDataList : public Base
{
public:
	uint8_t field_0x8[0x8];

	// Override methods

	// BW1W120 0054bac0 BW1M100 100d4da0 GestureSystemDataList::_dt(void)
	virtual ~GestureSystemDataList();

	// Constructors

	// BW1W120 0054baa0 BW1M100 inlined GestureSystemDataList::GestureSystemDataList(void)
	GestureSystemDataList();

	// Non-virtual methods

	// BW1W120 00579af0 BW1M100 1032b530 GestureSystemDataList::Load(char *)
	bool Load(char* param_1);
};

#endif /* BW1_DECOMP_GESTURE_SYSTEM_DATA_LIST_INCLUDED_H */
