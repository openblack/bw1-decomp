#ifndef BW1_DECOMP_MPFE_START_GAME_TRANSFER_FILES_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_START_GAME_TRANSFER_FILES_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEStartGameTransferFilesMessage : public MPFEMessageObject
{
public:
	// Constructors

	// BW1W120 00630000 BW1M119 013ae7b0
	MPFEStartGameTransferFilesMessage();
};

#endif /* BW1_DECOMP_MPFE_START_GAME_TRANSFER_FILES_MESSAGE_INCLUDED_H */
