#ifndef BW1_DECOMP_MPFE_START_GAME_READY_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_READY_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

class MPFEStartGameReadyMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 inlined BW1M119 013aef10
	virtual ~MPFEStartGameReadyMessage() {}

	// Static methods

	// BW1W120 0062fd30 BW1M119 013ae860
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);

	// Constructors

	// BW1W120 0062fc70 BW1M119 013aecf0
	MPFEStartGameReadyMessage(wchar_t answer);
};

#endif /* BW1_DECOMP_MPFE_START_GAME_READY_MESSAGE_INCLUDED_H */
