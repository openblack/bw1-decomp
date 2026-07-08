#ifndef BW1_DECOMP_GLOBAL_INCLUDED_H
#define BW1_DECOMP_GLOBAL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Debug.h" /* For struct GDebug */

// Forward Declares

class GAudio;

struct GGlobal
{
	GAudio* audio; /* 0x0 */
	GDebug  debug;
	FuncPtr(name = 'GGlobal__field_0x2d2ac', call_type = '__cdecl', result = 'void*', args = [], arg_labels = [],
	        decorated_name = 'GGlobal__field_0x2d2ac', indirection_level = 1) field_0x2d2ac;
	uint32_t field_0x2d2b0;
	uint32_t field_0x2d2b4;
	uint32_t field_0x2d2b8;
	uint32_t field_0x2d2bc;
	uint32_t field_0x2d2c0;
	uint32_t field_0x2d2c4;
	uint32_t field_0x2d2c8;
	uint32_t field_0x2d2cc;
	uint32_t field_0x2d2d0;
	uint32_t field_0x2d2d4;
	uint32_t field_0x2d2d8;
	uint32_t field_0x2d2dc;
	uint32_t field_0x2d2e0;
	FuncPtr(name = 'GGlobal__field_0x2d2e4', call_type = '__cdecl', result = 'void*', args = [], arg_labels = [],
	        decorated_name = 'GGlobal__field_0x2d2e4', indirection_level = 1) field_0x2d2e4;
	uint8_t field_0x2d2e8[0xc];
	char    current_directory[0x100]; /* 0x2d2f4 */
	uint8_t field_0x2d3f4[0x10c];

	// Non-virtual methods

	// BW1W120 005910f0 BW1M100 1032d3a0 GGlobal::DisplayPlayerTextMessages(void)
	void DisplayPlayerTextMessages();
};

#endif /* BW1_DECOMP_GLOBAL_INCLUDED_H */
