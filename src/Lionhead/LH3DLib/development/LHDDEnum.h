#ifndef BW1_DECOMP_LHDD_ENUM_INCLUDED_H
#define BW1_DECOMP_LHDD_ENUM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct LHDDEnum
{
	char    DisplayName[0xf8]; /* 0x0 */
	uint8_t field_0xf8[0x3e0];

	// Non-virtual methods

	// BW1W120 007dd010 BW1M119 0114e5a0 (LHCombined Release)
	~LHDDEnum();
};

#endif /* BW1_DECOMP_LHDD_ENUM_INCLUDED_H */
