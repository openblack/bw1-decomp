#ifndef BW1_DECOMP_MPFE_START_GAME_OKAY_TO_START_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_OKAY_TO_START_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEStartGameOkayToStartMessage : public MPFEMessageObject
{
public:
	// Override methods

	// BW1W120 0062fb90 BW1M119 0139b7e0
	virtual ~MPFEStartGameOkayToStartMessage();
};

#endif /* BW1_DECOMP_MPFE_START_GAME_OKAY_TO_START_MESSAGE_INCLUDED_H */
