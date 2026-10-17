#include "MPFEDownloads.h"

#include "ColourConstants.h" /* For White */
/* Creature Isle's build of this unit has no <string> initializers. */
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110) && !defined(VERSION_BW1WCI)
#include <string>
#endif

void MPFEDownloads::FileCompleted() {}

void MPFEDownloads::FileError() {}
