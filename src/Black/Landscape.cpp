#include "Landscape.h"

#include "ColourConstants.h" /* For White */
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

uint32_t GLandscape::DrawObjectActive[3000];
Object*  GLandscape::DrawObjects[3000];
int      GLandscape::DrawObjectCount;
int      GLandscape::DrawListRebuildCount = 1;
