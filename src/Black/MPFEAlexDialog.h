#ifndef BW1_DECOMP_MPFE_ALEX_DIALOG_INCLUDED_H
#define BW1_DECOMP_MPFE_ALEX_DIALOG_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <wchar.h>  /* For wchar_t */

#include "MPFEData.h" /* For enum TeamEnums */

// Requester types, named from the MPFEData function that queues each one.
enum MPFEREQUESTER_ENUM
{
	MPFEREQUESTER_CLIENT_WAIT_START = 15,
};

class MPFERequesterQ
{
public:
	MPFEREQUESTER_ENUM Type;
	unsigned long      Colour;
	wchar_t            Name[0x100];
	TeamEnums          Team; /* 0x208 */
};

static_assert(sizeof(MPFERequesterQ) == 0x20c, "MPFERequesterQ size is incorrect");

#endif /* BW1_DECOMP_MPFE_ALEX_DIALOG_INCLUDED_H */
