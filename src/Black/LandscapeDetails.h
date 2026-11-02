#ifndef BW1_DECOMP_LANDSCAPE_DETAILS_INCLUDED_H
#define BW1_DECOMP_LANDSCAPE_DETAILS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

struct LandscapeDetails
{
	char          Name[0xc8];
	char          FileName[0x258]; /* 0xc8 */
	unsigned long NumTeams;        /* 0x320 */
	unsigned long ID;              /* 0x324 */
	uint8_t       field_0x328[0x4];
};

static_assert(sizeof(LandscapeDetails) == 0x32c, "LandscapeDetails size is incorrect");

#endif /* BW1_DECOMP_LANDSCAPE_DETAILS_INCLUDED_H */
