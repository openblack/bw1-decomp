#ifndef BW1_DECOMP_INTERFACE_MESSAGE_BUFFER_INCLUDED_H
#define BW1_DECOMP_INTERFACE_MESSAGE_BUFFER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h"             /* For struct Base */
#include "InterfaceMessage.h" /* For enum INTERFACE_MESSAGE_TYPES */

// Forward Declares

class GInterfaceCollide;
struct LHCoord;

class GInterfaceMessageBuffer : public Base
{
public:
	uint8_t field_0x8[0xc];

	// Override methods

	// BW1W120 005ce2a0 BW1M100 10368cb0 GInterfaceMessageBuffer::_dt(void)
	virtual ~GInterfaceMessageBuffer();

	// Non-virtual methods

	// BW1W120 005d9e80 BW1M100 10368b50 GInterfaceMessageBuffer::Init(unsigned short)
	void Init(unsigned short param_1);
	// BW1W120 005d9f10 BW1M100 1009c3b0 GInterfaceMessageBuffer::Add(INTERFACE_MESSAGE_TYPES, GInterfaceCollide *, LHCoord *)
	bool Add(INTERFACE_MESSAGE_TYPES param_1, GInterfaceCollide* param_2, LHCoord* param_3);
};

#endif /* BW1_DECOMP_INTERFACE_MESSAGE_BUFFER_INCLUDED_H */
