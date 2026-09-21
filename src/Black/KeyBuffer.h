#ifndef BW1_DECOMP_KEY_BUFFER_INCLUDED_H
#define BW1_DECOMP_KEY_BUFFER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t, uint8_t, uintptr_t */
#include <stddef.h>
#include <chlasm/LHKeyBoard.h>

#include "Base.h" /* For struct Base */

class GKeyInput;

class GKeyBuffer : public Base
{
public:
	GKeyInput* Inputs;
	uint16_t   field_0xc;
	uint16_t   BufferedKeys;

	// Override methods

	// BW1W120 0054b950 BW1M119 01362f40
	virtual ~GKeyBuffer();

	// Constructors

	// BW1W120 0054b930 BW1M119 inlined
	GKeyBuffer();
	// BW1W120 005e1ac0 BW1M119 01520220
	bool32_t Init(unsigned short capacity);
	// BW1W120 005e1bf0 BW1M119 011843b0
	void AddKeyIfDifferentToPrevious(LH_KEY key, unsigned short modifier);
};

class GKeyInput : public Base
{
public:
	LH_KEY         Key;      /* 0x8 */
	unsigned short Modifier; /* 0xc */

	// Override methods

	// BW1W120 005e1b40 BW1M119 010dc500
	virtual ~GKeyInput();
};

static_assert(sizeof(GKeyInput) == 0x10, "GKeyInput stride is incorrect");
static_assert(offsetof(GKeyInput, Key) == 0x8, "GKeyInput key offset is incorrect");
static_assert(offsetof(GKeyInput, Modifier) == 0xc, "GKeyInput modifier offset is incorrect");
static_assert(sizeof(GKeyBuffer) == 0x10, "GKeyBuffer size is incorrect");

#endif /* BW1_DECOMP_KEY_BUFFER_INCLUDED_H */
