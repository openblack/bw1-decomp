#ifndef BW1_DECOMP_MPFE_STOP_GAME_START_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_STOP_GAME_START_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

class MPFEStopGameStartMessage : public MPFEMessageObject
{
public:
	// Static methods

	// BW1W120 00630380 BW1M119 013ae130
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);

	// Constructors

	// BW1W120 00630300 BW1M119 013ae2b0
	MPFEStopGameStartMessage();
};

static_assert(sizeof(MPFEStopGameStartMessage) == 0x8, "MPFEStopGameStartMessage size is incorrect");

#endif /* BW1_DECOMP_MPFE_STOP_GAME_START_MESSAGE_INCLUDED_H */
