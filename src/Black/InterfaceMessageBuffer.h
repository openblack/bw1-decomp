#ifndef BW1_DECOMP_INTERFACE_MESSAGE_BUFFER_INCLUDED_H
#define BW1_DECOMP_INTERFACE_MESSAGE_BUFFER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h"             /* For struct Base */
#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */
#include "InterfaceCollide.h"
#include <Lionhead/LH3DLib/development/LHCoord.h>

struct GInterfaceMessage
{
	INTERFACE_MESSAGE_TYPES Message;
	LHCoord                 Position;
	GInterfaceCollide       Collide;
};

static_assert(sizeof(GInterfaceMessage) == 0x3c, "GInterfaceMessage stride is incorrect");

class GInterfaceMessageBuffer : public Base
{
public:
	GInterfaceMessage* Messages;
	unsigned short     Capacity;
	unsigned short     Count;
	uint32_t           field_0x10;

	// Override methods

	// BW1W120 005ce2a0 BW1M119 01370590
	virtual ~GInterfaceMessageBuffer();

	// Non-virtual methods

	// BW1W120 005d9e80 BW1M119 01370430
	void Init(unsigned short param_1);
	// BW1W120 inlined BW1M119 0149d0f0
	void FreeMsgBuffer()
	{
		if (Messages != NULL)
		{
			delete[] Messages;
		}
		Messages = NULL;
	}
	// BW1W120 005d9f10 BW1M119 0109e1e0
	bool Add(INTERFACE_MESSAGE_TYPES param_1, GInterfaceCollide* param_2, LHCoord* param_3);
};

#endif /* BW1_DECOMP_INTERFACE_MESSAGE_BUFFER_INCLUDED_H */
