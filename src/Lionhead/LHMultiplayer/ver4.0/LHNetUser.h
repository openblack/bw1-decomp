#ifndef BW1_DECOMP_LH_NET_USER_INCLUDED_H
#define BW1_DECOMP_LH_NET_USER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

struct LH_USER_ID
{
	uint32_t id;

	// BW1W120 100010b0 BW1M119 0100e950
	LH_USER_ID() { id = 0; }
	// BW1W120 100010d0
	operator unsigned long() { return id; }
};
static_assert(sizeof(LH_USER_ID) == 0x4, "Data type is of wrong size");

struct LHNetUser
{
	struct LH_USER_ID id; /* 0x0 */
};
static_assert(sizeof(LHNetUser) == 0x4, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH_NET_USER_INCLUDED_H */
