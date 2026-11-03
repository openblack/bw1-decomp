#ifndef BW1_DECOMP_LANDSCAPE_DETAILS_INCLUDED_H
#define BW1_DECOMP_LANDSCAPE_DETAILS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

struct LandscapeDetails
{
	char          Name[200];
	char          FileName[200];      /* 0xc8 */
	char          ServerAddress[200]; /* 0x190 */
	char          ServerPath[200];    /* 0x258 */
	unsigned long NumTeams;           /* 0x320 */
	unsigned long ID;                 /* 0x324 */
	bool          ThumbnailOnDisk;    /* 0x328 */
	bool          MapOnDisk;
	bool          FromDatabase;
};

static_assert(sizeof(LandscapeDetails) == 0x32c, "LandscapeDetails size is incorrect");

#endif /* BW1_DECOMP_LANDSCAPE_DETAILS_INCLUDED_H */
