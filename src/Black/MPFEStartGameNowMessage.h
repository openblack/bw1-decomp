#ifndef BW1_DECOMP_MPFE_START_GAME_NOW_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_NOW_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

// Forward Declares

struct MPFEPlayerDetails;

class MPFEStartGameNowMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 inlined BW1M119 0139e310
	virtual ~MPFEStartGameNowMessage() {}

	// Static methods

	// BW1W120 006301a0 BW1M119 013ae410
	static void ProcessIncoming(wchar_t* message, MPFEPlayerDetails* from);

	// Constructors

	// BW1W120 00630110 BW1M119 013ae550
	MPFEStartGameNowMessage(wchar_t* name);
};

#endif /* BW1_DECOMP_MPFE_START_GAME_NOW_MESSAGE_INCLUDED_H */
