#ifndef BW1_DECOMP_INTERFACE_ACTION_STATE_TABLE_INCLUDED_H
#define BW1_DECOMP_INTERFACE_ACTION_STATE_TABLE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

#include "InterfaceActionState.h" /* For INTERFACE_ACTION_STATE_LAST */

// Forward Declares

class GInterface;

struct InterfaceActionStateTableEntry
{
	bool32_t (GInterface::*State)();
	bool32_t (GInterface::*CleanState)();
	int      LockedSelectMode;
	bool32_t HandObjectRelated;
	bool32_t CollideObjectRelated;
	bool32_t AllowsLandscapeMovement;

	// BW1W120 00d17da8
	static InterfaceActionStateTableEntry StateTable[INTERFACE_ACTION_STATE_LAST];
};
static_assert(sizeof(InterfaceActionStateTableEntry) == 0x30, "Data type is of wrong size");

#endif /* BW1_DECOMP_INTERFACE_ACTION_STATE_TABLE_INCLUDED_H */
