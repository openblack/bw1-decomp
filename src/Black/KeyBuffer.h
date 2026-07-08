#ifndef BW1_DECOMP_KEY_BUFFER_INCLUDED_H
#define BW1_DECOMP_KEY_BUFFER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t, uintptr_t */

#include "Base.h" /* For struct Base */

class GKeyBuffer : public Base
{
public:
	uintptr_t field_0x8;
	uint8_t   field_0xc;
	uint8_t   field_0xd;
	uint16_t  buffered_keys;

	// Override methods

	// BW1W120 0054b950 BW1M100 10167a10 GKeyBuffer::_dt(void)
	virtual ~GKeyBuffer();

	// Constructors

	// BW1W120 0054b930 BW1M100 inlined GKeyBuffer::GKeyBuffer(void)
	GKeyBuffer();
};

class GKeyInput : public Base
{
public:
	// Override methods

	// BW1W120 005e1b40 BW1M100 1016c7e0 GKeyInput::_dt(void)
	virtual ~GKeyInput();
};

#endif /* BW1_DECOMP_KEY_BUFFER_INCLUDED_H */
