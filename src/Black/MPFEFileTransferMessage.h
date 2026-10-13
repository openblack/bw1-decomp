#ifndef BW1_DECOMP_MPFE_FILE_TRANSFER_MESSAGE_INCLUDED_H
#define BW1_DECOMP_MPFE_FILE_TRANSFER_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "MPFEMessageObject.h" /* For struct MPFEMessageObject */

class MPFEFileTransferMessage : public MPFEMessageObject
{
public:
	// Constructors

	// BW1W120 0062f430 BW1M119 013acaf0
	MPFEFileTransferMessage(wchar_t* text);
};

#endif /* BW1_DECOMP_MPFE_FILE_TRANSFER_MESSAGE_INCLUDED_H */
