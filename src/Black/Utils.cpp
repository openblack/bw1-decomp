#include "GameTimeConstants.h"
#include "Utils.h"

#include "MapCoords.h"

// BW1W120 00da59fc
JustMapXZ MapXZDirections[4] = {
	JustMapXZ(1, 0),
	JustMapXZ(0, 1),
	JustMapXZ(0xffff, 0),
	JustMapXZ(0, 0xffff),
};
