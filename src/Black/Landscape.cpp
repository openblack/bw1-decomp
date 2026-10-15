#include "Landscape.h"

#include "ColourConstants.h" /* For White */
// The BW1W100/BW1W110 build of this unit has no std::basic_string initializers.
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string> /* For the std::basic_string instantiations */
#endif

uint32_t GLandscape::DrawObjectActive[3000];
Object*  GLandscape::DrawObjects[3000];
int      GLandscape::DrawObjectCount;
int      GLandscape::DrawListRebuildCount = 1;
