#include "MPFEData.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

// Descriptive static scope; the original checksum is shared with matchmaking.
uint64_t MPFEData::CreatureFileChecksum;
