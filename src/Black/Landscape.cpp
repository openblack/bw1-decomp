#include "Landscape.h"

#include "ColourConstants.h" /* For White */
#include <string>            /* For the std::basic_string instantiations */

uint32_t GLandscape::DrawObjectActive[3000];
Object*  GLandscape::DrawObjects[3000];
int      GLandscape::DrawObjectCount;
int      GLandscape::DrawListRebuildCount = 1;
