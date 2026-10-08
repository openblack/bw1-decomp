#ifndef BW1_DECOMP_MPFE_MESSAGE_OBJECT_INCLUDED_H
#define BW1_DECOMP_MPFE_MESSAGE_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For NULL */
#include <wchar.h>  /* For wchar_t */

// Forward Declares

struct MPFEPlayerDetails;

class MPFEMessageObject
{
public:
	wchar_t* Message;

	// Override methods

	// BW1W120 004403a0 BW1M119 0139b4b0
	virtual ~MPFEMessageObject()
	{
		if (Message != NULL)
		{
			delete Message;
		}
	}
	// BW1W120 00626a00 BW1M119 013a33b0
	virtual void Send(MPFEPlayerDetails* player);

	// Static methods

	// BW1W120 00626a70 BW1M119 013a2fa0
	static void ProcessIncomingMessage(wchar_t* message, MPFEPlayerDetails* from, wchar_t* name);
};

static_assert(sizeof(MPFEMessageObject) == 0x8, "MPFEMessageObject size is incorrect");

#endif /* BW1_DECOMP_MPFE_MESSAGE_OBJECT_INCLUDED_H */
