#ifndef BW1_DECOMP_MPFE_START_GAME_OKAY_TO_START_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_OKAY_TO_START_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

class MPFEStartGameOkayToStartMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 inlined BW1M119 0139b7e0
	virtual ~MPFEStartGameOkayToStartMessage() {}

	// Static methods

	// BW1W120 0062fbc0 BW1M119 013aede0
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);

	// Constructors

	// BW1W120 0062fb40 BW1M119 013aefc0
	MPFEStartGameOkayToStartMessage();
};

#endif /* BW1_DECOMP_MPFE_START_GAME_OKAY_TO_START_MESSAGE_INCLUDED_H */
