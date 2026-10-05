#include "GameTimeConstants.h"
#include "TribeInfo.h"

#include "MapCoords.h"
#include "Utils.h"

char* GTribeInfo::TribeTextArray[TRIBE_TYPE_LAST + 1] = {
	"CELTIC", "AFRICAN", "AZTEC", "JAPANESE", "INDIAN", "EGYPTIAN", "GREEK", "NORSE", "TIBETAN", "LAST_ERROR",
};

// BW1W120 00da59fc
JustMapXZ MapXZDirections[4] = {
	JustMapXZ(1, 0),
	JustMapXZ(0, 1),
	JustMapXZ(0xffff, 0),
	JustMapXZ(0, 0xffff),
};
