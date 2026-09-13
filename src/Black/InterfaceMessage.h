#ifndef BW1_DECOMP_INTERFACE_MESSAGE_INCLUDED_H
#define BW1_DECOMP_INTERFACE_MESSAGE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include "InterfaceCollide.h"
#include <Lionhead/LH3DLib/development/LHCoord.h>

enum INTERFACE_MESSAGE_TYPES
{
	INTERFACE_MESSAGE_TYPES_0 = 0x0,
	_INTERFACE_MESSAGE_TYPES_COUNT = 0x1
};
static_assert(sizeof(enum INTERFACE_MESSAGE_TYPES) == 0x4, "Data type is of wrong size");

static const char* INTERFACE_MESSAGE_TYPES_strs[_INTERFACE_MESSAGE_TYPES_COUNT] = {
	"INTERFACE_MESSAGE_TYPES_0",
};

struct GInterfaceMessage
{
	INTERFACE_MESSAGE_TYPES Message;
	LHCoord                 Position;
	GInterfaceCollide       Collide;
};

static_assert(sizeof(GInterfaceMessage) == 0x3c, "GInterfaceMessage stride is incorrect");

#endif /* BW1_DECOMP_INTERFACE_MESSAGE_INCLUDED_H */
